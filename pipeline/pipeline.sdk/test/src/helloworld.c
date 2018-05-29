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
#include <stdlib.h>
#include <xparameters.h>
#include <limits.h>
#include "xtime_l.h"
#define MSTEP  8
#define BSIZE 16
#define COUNTS_PER_USECOND  (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2000000)
#define FREQ_MHZ ((XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ+500000)/1000000)

/* Declare a microsecond-resolution timer function */
long get_usec_time()
{
	XTime time_tick;

	XTime_GetTime(&time_tick);
	return (long) (time_tick / COUNTS_PER_USECOND);
}

typedef unsigned char uint8;
unsigned char pix1[480][720], pix2[480][720];

int compute_sad(uint8 *prev, uint8 *curr, int width, int px, int py, int cx, int cy)
{
    int x, y;
    int sad = 0;

    for (y = 0; y < BSIZE; y++)
    {
        for (x = 0; x < BSIZE; x++)
        {
            /* compute the sum of absolute difference */
            sad += abs(prev[(py+y)*width+(px+x)] - curr[(cy+y)*width+(cx+x)]);
        }
    }
    return sad;
}

static volatile int *reg = (int*)XPAR_MATCH_0_S00_AXI_BASEADDR;
static volatile int *bank = (int*)(XPAR_MATCH_0_S00_AXI_BASEADDR + 48);
static volatile int *hw_active = (int*)(XPAR_MATCH_0_S00_AXI_BASEADDR + 52);
static volatile int *ans_mvx = (int*)(XPAR_MATCH_0_S00_AXI_BASEADDR + 56);
static volatile int *ans_mvy = (int*)(XPAR_MATCH_0_S00_AXI_BASEADDR + 60);
static volatile int *ans_min_sad = (int*)(XPAR_MATCH_0_S00_AXI_BASEADDR + 64);
int match(int *x, int *y, int posx, int posy, uint8 *prev, uint8 *curr, int width)
/* Try to find the best match of the 16x16 block located at (idx, idy) of    */
/* the current image in the search window of the previous image. The search  */
/* window is defined as a 32x32 area in the previous image at the location   */
/* centered around the block position (idx, idy).                            */
/* The motion vector of both x and y components range from -16 to 15 pixels. */
{
//
//    int min_sad, sad, mvx, mvy;
//
//    /* Set the matching error to the largest integer value */
//    min_sad = INT_MAX;
//    for (mvy = -BSIZE; mvy < BSIZE; mvy++)
//    {
//        for (mvx = -BSIZE; mvx < BSIZE; mvx++)
//        {
//            /* Trying to compute the matching cost at (posx, posy) */
//            sad = compute_sad(prev, curr, width, posx+mvx, posy+mvy, posx, posy);
//
//            /* If the matching cost is minimal, record it */
//            if (sad <= min_sad)
//            {
//                min_sad = sad;
//                *x = mvx, *y = mvy;
//            }
//        }
//    }
    for(int i=0;i<48;i++){
    	*bank = i;
    	memcpy(reg, &prev[(posy - 16 + i) * width + posx - 16], 48);
    }
    for(int i=0;i<16;i++){
    	*bank = i + 48;
    	memcpy(reg, &curr[(posy + i) * width + posx], 16);
    }
//    printf("in\n");
//    *hw_active = 1;
//    while(*hw_active);
//    if(min_sad != *ans_min_sad)
//    	printf("%d %d %d %d %d %d %d %d\n", posx, posy, *x, *y, *ans_mvx, *ans_mvy, *ans_min_sad, min_sad);
//    *x = *ans_mvx - 16;
//    *y = *ans_mvy - 16;
//    printf("%d %d %d %d\n", posx, posy, *ans_min_sad, min_sad);
    return *ans_min_sad;
}

void full_search(uint8 *prev_image, uint8 *curr_image, int width, int height)
/* Use full-search algorithm to find the motion vectors of the second */
/* image (curr_image) w.r.t. the first image (prev_image).            */
{
    int idx, idy, nx, ny;
    int x, y;

    /* Compute the number of movtion vectors per frame. */
    nx = width/MSTEP, ny = height/MSTEP;

    /* Although we declare mv[] as an 1D array, it is actually used as a 2D */
    /* array in row-major arrangement.  The width and height of mv[] are nx */
    /* and ny. For example, if the image size is 720x480, there are 45x30   */
    /* motion vectors.                                                      */

    /* Looping through the computation of the (nx-2)*(ny-2) motion vectors. */
    /* Note that we exclude the estimation of the vectors at the boundary   */
    /* positions to keep it simple. The boundary vectors are set to zero.   */
    for (idy = 2; idy < ny-4; idy++)
    {
        for (idx = 2; idx < nx-4; idx++)
        {
            /* Find the best match of the current block in the previous frame. */
            (void) match(&x, &y, (idx*MSTEP), (idy*MSTEP), prev_image, curr_image, width);

            /* Store the motion vector at the current position. */
//            mv[idy*nx+idx].x = x, mv[idy*nx+idx].y = y;
        }
    }
}

int main()
{
	int width, height, size;

    init_platform();

    print("Hello World\n\r");
    for(int i=0;i<480;i++){
		for(int j=0;j<720;j++){
			pix1[i][j] = rand() % 10;
			pix2[i][j] = rand() % 10;
		}
	}
    width = 720, height = 480;
    size = (width/MSTEP)*(height/MSTEP);
    int start = get_usec_time();
    full_search((unsigned char*)pix1, (unsigned char*)pix2, width, height);
    printf("%d\n", get_usec_time() - start);
    printf("end\n");
    cleanup_platform();
    return 0;
}
