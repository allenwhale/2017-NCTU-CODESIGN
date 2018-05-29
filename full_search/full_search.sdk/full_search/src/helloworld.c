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
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"

#define COUNTS_PER_USECOND  (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2000000)
#define FREQ_MHZ ((XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ+500000)/1000000)

/* Declare a microsecond-resolution timer function */
long get_usec_time()
{
	XTime time_tick;

	XTime_GetTime(&time_tick);
	return (long) (time_tick / COUNTS_PER_USECOND);
}

volatile int *prev_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 0);
volatile int *curr_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 4);
volatile int *mvx_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 8);
volatile int *mvy_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 12);
volatile int *sad_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 16);
volatile int *hw_active = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 20);

char *prev_pix, *curr_pix;
char *mvx, *mvy;
short *sad;

int ans_mvx[60][90], ans_mvy[60][90];
int ans_sad[60][90];

int main()
{
    init_platform();

	printf("start\n");
    prev_pix = (char *)malloc(720 * 480);
    curr_pix = (char *)malloc(720 * 480);
    mvx = (char *)malloc(60 * 128);
    mvy = (char *)malloc(60 * 128);
    sad = (short *)malloc(60 * 128 * 2);
    for(int r = 0 ; r < 100 ; r++){
    	printf("testing no. %d\n", r);
		memset(mvx, 0x3f, 60 * 128);
		memset(mvy, 0x3f, 60 * 128);
		memset(sad, 0x3f, 60 * 128 * 2);
		for(int i = 0 ; i < 480 ; i++){
			for(int j = 0 ; j < 720 ; j++){
				prev_pix[i * 720 + j] = rand() % 100;
				curr_pix[i * 720 + j] = rand() % 100;
			}
		}
		for(int i = 2 ; i < 56 ; i++){
			for(int j = 2 ; j < 86 ; j++){
				int min_mvx, min_mvy, min_sad = 1000000000;
				for(int x = -16 ; x < 16 ; x++){
					for(int y = -16 ; y < 16 ; y++){
						int now_sad = 0;
						for(int bx = 0 ; bx < 16 ; bx++){
							for(int by = 0 ; by < 16 ; by++){
								now_sad += abs(
										prev_pix[(i * 8 + y + by) * 720 + (j * 8 + x + bx)] -
										curr_pix[(i * 8 + by) * 720 + (j * 8 + bx)]);
							}
						}
						if(min_sad > now_sad){
							min_sad = now_sad;
							min_mvx = x;
							min_mvy = y;
						}
					}
				}
				ans_sad[i][j] = min_sad;
				ans_mvy[i][j] = min_mvy;
				ans_mvx[i][j] = min_mvx;
			}
		}
		Xil_DCacheFlushRange((INTPTR)prev_pix, 720 * 480);
		Xil_DCacheFlushRange((INTPTR)curr_pix, 720 * 480);
		Xil_DCacheFlushRange((INTPTR)mvx, 60 * 128);
		Xil_DCacheFlushRange((INTPTR)mvy, 60 * 128);
		Xil_DCacheFlushRange((INTPTR)sad, 60 * 128 * 2);
		*prev_addr = prev_pix;
		*curr_addr = curr_pix;
		*mvx_addr = mvx;
		*mvy_addr = mvy;
		*sad_addr = sad;
		*hw_active = 1;

		int start = get_usec_time();
	//    while(get_usec_time() - start < 400000);
		while(*hw_active);
		printf("%d\n", get_usec_time() - start);
		for(int i = 2 ; i < 60-4 ; i++){
	//    	printf("%02d: ", i);
			for(int j = 2 ; j < 90-4 ; j++){
	//    		printf("[%d (%d %d)] ",
	//					j,
	//					mvy[i * 128 + j] - 16, mvx[i * 128 + j] - 16);
	//    		printf("[%d (%d %d %d) (%d %d %d)] ",
	//    				j,
	//    				mvx[i * 128 + j] - 16, mvy[i * 128 + j] - 16, sad[i * 128 + j],
	//					ans_mvx[i][j], ans_mvy[i][j], ans_sad[i][j]);
				if(sad[i * 128 + j] != ans_sad[i][j])
					printf("[%d (%d %d %d) (%d %d %d)] ",
							j,
							mvx[i * 128 + j] - 16, mvy[i * 128 + j] - 16, sad[i * 128 + j],
							ans_mvx[i][j], ans_mvy[i][j], ans_sad[i][j]);
			}
	//    	printf("\n");
		}
    }
    free(prev_pix);
    free(curr_pix);
    free(mvx);
    free(mvy);
    free(sad);
    printf("end\n");
    cleanup_platform();
    return 0;
}
