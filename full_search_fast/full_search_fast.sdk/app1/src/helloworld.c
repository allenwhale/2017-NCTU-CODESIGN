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
#define max(a, b) ((a) > (b) ? (a) : (b))
#define min(a, b) ((a) < (b) ? (a) : (b))
#define max3(a, b, c) (max((a), max((b), (c))))
#define min3(a, b, c) (min((a), min((b), (c))))
#define med3(a, b, c) (max(min((a), (b)), min(max((a), (b)), (c))))

struct prefetch_package {
	char prev[48][64];
	char curr[16][32];
} __attribute__((packed)) prefetch_pkg;

typedef struct p_package {
	char prev[8][64];
	char curr[8][32];
	char padding[256];
} __attribute__((packed)) p_package;

struct package {
	p_package data[60][128];
} __attribute__((packed)) pkg;
volatile int *prefetch_pkg_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 0);
volatile int *pkg_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 4);
volatile int *mvx_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 8);
volatile int *mvy_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 12);
volatile int *sad_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 16);
volatile int *hw_active = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 20);
volatile int *curr_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 24);
void sort3(unsigned char *arr, int a, int b, int c){
	unsigned char a1, a3;
    a1 = min3(arr[a], arr[b], arr[c]);
    a3 = max3(arr[a], arr[b], arr[c]);
    arr[b] = med3(arr[a], arr[b], arr[c]);
    arr[a] = a1;
    arr[c] = a3;
}

unsigned char get_median_of_nine(unsigned char *arr){
    sort3(arr, 2, 5, 8);
    unsigned char max0 = max3(arr[0], arr[1], arr[2]);
    unsigned char med1 = med3(arr[3], arr[4], arr[5]);
    unsigned char min2 = min3(arr[6], arr[7], arr[8]);
    return med3(max0, med1, min2);
}
#define SMITH_MED9
#define OPT_SMITH_MED9
void median3x3(char image[480][720])
{
    int   row, col;
    unsigned char pix_array[9];
    for (row = 1; row < 480-1; row++){
        pix_array[1] = image[(row - 1)][-1];
        pix_array[4] = image[row][-1];
        pix_array[7] = image[(row + 1)][-1];
        pix_array[2] = image[(row - 1)][0];
        pix_array[5] = image[row][0];
        pix_array[8] = image[(row + 1)][0];
        sort3(pix_array, 1, 4, 7);
        sort3(pix_array, 2, 5, 8);
        for (col = 1; col < 720-1; col++){
            pix_array[0] = pix_array[1];
            pix_array[3] = pix_array[4];
            pix_array[6] = pix_array[7];
            pix_array[1] = pix_array[2];
            pix_array[4] = pix_array[5];
            pix_array[7] = pix_array[8];
            pix_array[2] = image[(row - 1)][col + 1];
            pix_array[5] = image[row][col + 1];
            pix_array[8] = image[(row + 1)][col + 1];
            image[row][col] = get_median_of_nine(pix_array);
        }
    }
}

int main()
{
    init_platform();
    *curr_addr = 0;
    while(1){
    	while(*curr_addr == 0);
    	if(*curr_addr & 0x10000000){
			unsigned char (*curr_pix)[480][720] = (*curr_addr) ^ 0x10000000;
			median3x3(curr_pix);
			*curr_addr = 0;
    	}else if(*curr_addr & 0x20000000){
    		unsigned char (*curr_pix)[480][720] = (*curr_addr) ^ 0x20000000;
    		struct prefetch_package *prefetch_pkg = *prefetch_pkg_addr;
    		struct package *pkg = *pkg_addr;
			for(int i = 0 ; i < 16 ; i++){
				memcpy(prefetch_pkg->curr[i], curr_pix[i + 16] + 16, 32);
			}
			for(int i = 2 ; i < 60 - 4 ; i++){
				int j = 2;
				while(j < 90 - 4){
					for(int y = 0 ; y < 8 ; y++){
						memcpy(pkg->data[i][j].curr[y], curr_pix[(i << 3) + y + 8] + (j << 3), 32);
					}
					j++;
					for(int y = 0 ; y < 8 ; y++){
						memcpy(pkg->data[i][j].curr[y], curr_pix[(i << 3) + y] + (j << 3), 32);

					}
					j++;
				}
			}
			Xil_DCacheFlushRange(pkg, sizeof(struct package));
			Xil_DCacheFlushRange(prefetch_pkg, sizeof(struct prefetch_package));
			*curr_addr = 0;
    	}
    }

    cleanup_platform();
    return 0;
}