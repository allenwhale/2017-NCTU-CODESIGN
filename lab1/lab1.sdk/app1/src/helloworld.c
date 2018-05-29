/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <limits.h>

#include <arm_neon.h>
typedef struct {
    char x;
    char y;
} MVector;
volatile int * curr_addr = (int *)(XPAR_SALVE_0_S00_AXI_BASEADDR + 0);
volatile int * prev_addr = (int *)(XPAR_SALVE_0_S00_AXI_BASEADDR + 4);
volatile int * curr_bsum_addr = (int *)(XPAR_SALVE_0_S00_AXI_BASEADDR + 8);
volatile int * prev_bsum_addr = (int *)(XPAR_SALVE_0_S00_AXI_BASEADDR + 12);

unsigned short curr_hsum[720*480];
int height = 480, width = 720, size=8;
#define BSIZE 16

typedef unsigned char uint8;
typedef int int32;
typedef unsigned short uint16;

#define PDSBMA
//#define PDSBMA_IN
#define FFBMA
#define FFBMA_OPT
#define SPIRAL_SCAN
#define NEON_OPT

#define SMITH_MED9
#define OPT_SMITH_MED9

#define FORCE_INLINE

#ifdef FORCE_INLINE
static inline __attribute__((always_inline))
#endif
int32 compute_sad(uint8 *prev, uint8 *curr, int width, int px, int py, int cx, int cy, int min_sad)
{
    int sad = 0;
#ifdef NEON_OPT
    for(int y=0;y<BSIZE;y+=4){
    	uint16x8_t res_step1_vec;
    	uint32x4_t res_step2_vec;
    	uint32x2_t res_step3_vec;
    	res_step1_vec = vpaddlq_u8(vabdq_u8(vld1q_u8(&prev[(py + y) * width + px]), vld1q_u8(&curr[(cy + y) * width + cx])));
    	res_step1_vec = vpadalq_u8(res_step1_vec, vabdq_u8(vld1q_u8(&prev[(py + y + 1) * width + px]), vld1q_u8(&curr[(cy + y + 1) * width + cx])));
    	res_step1_vec = vpadalq_u8(res_step1_vec, vabdq_u8(vld1q_u8(&prev[(py + y + 2) * width + px]), vld1q_u8(&curr[(cy + y + 2) * width + cx])));
    	res_step1_vec = vpadalq_u8(res_step1_vec, vabdq_u8(vld1q_u8(&prev[(py + y + 3) * width + px]), vld1q_u8(&curr[(cy + y + 3) * width + cx])));
    	res_step2_vec = vpaddlq_u16(res_step1_vec);
    	res_step3_vec = vadd_u32(vget_high_u32(res_step2_vec), vget_low_u32(res_step2_vec));
    	sad += vget_lane_u32(res_step3_vec, 0) + vget_lane_u32(res_step3_vec, 1);
#ifdef PDSBMA
        if(sad >= min_sad) return INT_MAX ;
#endif
    }
#else
    for (int y = 0; y < BSIZE; y++){
        for (int x = 0; x < BSIZE; x++){
            /* compute the sum of absolute difference */
            sad += abs(prev[(py+y)*width+(px+x)] - curr[(cy+y)*width+(cx+x)]);
#ifdef PDSBMA_IN
            if(sad >= min_sad) return INT_MAX;
#endif
        }
#ifdef PDSBMA
        if(sad >= min_sad) return INT_MAX;
#endif
    }
#endif
    return sad;
}


int match(int *x, int *y, int posx, int posy, uint8 *prev, uint8 *curr, uint16 *prev_bsum, uint16 *curr_bsum, int width)
/* Try to find the best match of the 16x16 block located at (idx, idy) of    */
/* the current image in the search window of the previous image. The search  */
/* window is defined as a 32x32 area in the previous image at the location   */
/* centered around the block position (idx, idy).                            */
/* The motion vector of both x and y components range from -16 to 15 pixels. */
{
    int min_sad, sad, mvx = 0, mvy = 0;
#ifdef FFBMA
#ifdef FFBMA_OPT
    uint16 sum[4] = {
    		curr_bsum[posy * width + posx],
			curr_bsum[posy * width + posx + BSIZE / 2],
			curr_bsum[(posy + BSIZE / 2) * width + posx],
			curr_bsum[(posy + BSIZE / 2) * width + posx + BSIZE / 2]
    };
#else
    uint16 sum = curr_bsum[posy * width + posx];
#endif
#endif
    /* Set the matching error to the largest integer value */
    min_sad = INT_MAX;
#ifdef SPIRAL_SCAN
    for(int i=0;i<BSIZE;i++){
        int step = (i << 1) | 1;
        for(int j=step;j--;){
            mvx--;
#ifdef FFBMA
            int px = posx + mvx, py = posy + mvy;
#ifdef FFBMA_OPT
			if(abs(prev_bsum[py * width + px] - sum[0]) +
					abs(prev_bsum[py * width + px + BSIZE / 2] - sum[1]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px] - sum[2]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px + BSIZE / 2] - sum[3])
					>= min_sad)
				continue;
#else
			if(abs(prev_bsum[py * width + px] - sum) >= min_sad)
				continue;
#endif
#endif
            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy, min_sad);
            if(sad <= min_sad){
                min_sad = sad;
                *x = mvx, *y = mvy;
            }
        }
        for(int j=step;j--;){
            mvy--;
#ifdef FFBMA
            int px = posx + mvx, py = posy + mvy;
#ifdef FFBMA_OPT
			if(abs(prev_bsum[py * width + px] - sum[0]) +
					abs(prev_bsum[py * width + px + BSIZE / 2] - sum[1]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px] - sum[2]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px + BSIZE / 2] - sum[3])
					>= min_sad)
				continue;
#else
			if(abs(prev_bsum[py * width + px] - sum) >= min_sad)
				continue;
#endif
#endif
            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy, min_sad);
            if(sad <= min_sad){
                min_sad = sad;
                *x = mvx, *y = mvy;
            }
        }
        for(int j=step;j--;){
            mvx++;
#ifdef FFBMA
            int px = posx + mvx, py = posy + mvy;
#ifdef FFBMA_OPT
			if(abs(prev_bsum[py * width + px] - sum[0]) +
					abs(prev_bsum[py * width + px + BSIZE / 2] - sum[1]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px] - sum[2]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px + BSIZE / 2] - sum[3])
					>= min_sad)
				continue;
#else
			if(abs(prev_bsum[py * width + px] - sum) >= min_sad)
				continue;
#endif
#endif
            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy, min_sad);
            if(sad <= min_sad){
                min_sad = sad;
                *x = mvx, *y = mvy;
            }
        }
        for(int j=step;j--;){
            mvy++;
#ifdef FFBMA
            int px = posx + mvx, py = posy + mvy;
#ifdef FFBMA_OPT
			if(abs(prev_bsum[py * width + px] - sum[0]) +
					abs(prev_bsum[py * width + px + BSIZE / 2] - sum[1]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px] - sum[2]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px + BSIZE / 2] - sum[3])
					>= min_sad)
				continue;
#else
			if(abs(prev_bsum[py * width + px] - sum) >= min_sad)
				continue;
#endif
#endif
            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy, min_sad);
            if(sad <= min_sad){
                min_sad = sad;
                *x = mvx, *y = mvy;
            }
        }
        mvx++, mvy++;
    }
#else
    for (mvy = -BSIZE; mvy < BSIZE; mvy++)
    {
        for (mvx = -BSIZE; mvx < BSIZE; mvx++)
        {
        	int px = posx + mvx, py = posy + mvy;
#ifdef FFBMA
#ifdef FFBMA_OPT
			if(abs(prev_bsum[py * width + px] - sum[0]) +
					abs(prev_bsum[py * width + px + BSIZE / 2] - sum[1]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px] - sum[2]) +
					abs(prev_bsum[(py + BSIZE / 2) * width + px + BSIZE / 2] - sum[3])
					>= min_sad)
				continue;
#else
			if(abs(prev_bsum[py * width + px] - sum) >= min_sad)
				continue;
#endif
#endif
            /* Trying to compute the matching cost at (posx, posy) */
            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy, min_sad);

            /* If the matching cost is minimal, record it */
            if (sad <= min_sad)
            {
                min_sad = sad;
                *x = mvx, *y = mvy;
            }
        }
    }
#endif
    return min_sad;
}

int main()
{
    init_platform();

    while(1){
    	while(*curr_addr == 0);
    	if(*curr_addr & 0x10000000){
    		unsigned char *curr_image = (*curr_addr) ^ 0x10000000;
    		unsigned short *curr_bsum = (*curr_bsum_addr);
    		for(int i=0;i<height;i++){
				int sum = 0;
				for(int j=0;j<size;j++)
					sum += curr_image[i * width + j];
				for(int j=0;j<width-size;j++){
					curr_hsum[i * width + j] = sum;
					sum -= curr_image[i * width + j];
					sum += curr_image[i * width + j + size];
				}
			}
			for(int j=0;j<width-size;j++){
				int sum = 0;
				for(int i=0;i<size;i++)
					sum += curr_hsum[i * width + j];
				for(int i=0;i<height-size;i++){
					curr_bsum[i * width + j] = sum;
					sum -= curr_hsum[i * width + j];
					sum += curr_hsum[(i + size) * width + j];
				}
			}
			*curr_addr = 0;
    	}else if(*curr_addr & 0x20000000){
    		unsigned char *curr_image = (*curr_addr) ^ 0x20000000;
    		unsigned short *curr_bsum = (*curr_bsum_addr);
    		unsigned char *prev_image = (*prev_addr);
    		unsigned short *prev_bsum = (*prev_bsum_addr);
    		*curr_addr = 0;
    		while(*curr_addr == 0);
    		MVector *mv = *curr_addr;
    		int x, y;
    		for (int idy = 2; idy < 60-4; idy++)
			{
				for (int idx = 3; idx < 90-4; idx+=2)
				{
					/* Find the best match of the current block in the previous frame. */
					(void) match(&x, &y, (idx*8), (idy*8), prev_image, curr_image, prev_bsum, curr_bsum, width);

					/* Store the motion vector at the current position. */
					mv[idy*90+idx].x = x, mv[idy*90+idx].y = y;
				}
			}
    		*curr_addr = 0;
    	}
    }

    cleanup_platform();
    return 0;
}
