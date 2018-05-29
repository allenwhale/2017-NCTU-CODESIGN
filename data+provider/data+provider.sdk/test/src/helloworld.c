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

volatile int *addr = (int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 0);
volatile int *wr_en = (int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 4);
volatile int *offset_x = (int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 8);
volatile int *offset_y = (int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 12);
volatile unsigned int *wr_data = (unsigned int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 16);
volatile unsigned int *rd_data = (unsigned int *)(XPAR_DATA_PROVIDER_0_S00_AXI_BASEADDR + 20);

unsigned char data[64][64];
unsigned get(int x, int y, int offset_x, int offset_y){
	x = (x + offset_x) % 64;
	y = (y + offset_y) % 64;
	unsigned res = 0;
	for(int i=0;i<4;i++){
		res |= (data[y][x] << (i * 8));
		x = (x + 1) % 64;
	}
	return res;
}
int main()
{
    init_platform();
    for(int i=0;i<64;i++)
    	for(int j=0;j<64;j++)
    		data[i][j] = (i * 64 + j) & 0xFF;
    print("Hello World\n\r");
    *offset_x = *offset_y = 0;
    for(int i=0;i<64;i++){
    	for(int j=0;j<64;j+=4){
    		*addr = i * 64 + j;
    		*wr_data = *(int*)(&data[i][j]);
    		*wr_en = 1;
    		*wr_en = 0;
    	}
    }
    int error = 0;
    for(int i=0;i<64;i++){
    	for(int j=0;j<64;j++){
    		*addr = i * 64 + j;
    		*offset_x = rand() % 64;
    		*offset_y = rand() % 64;
    		if(*rd_data != get(j, i, *offset_x, *offset_y))
    			printf("%d %d\n", i, j);
    	}
    }
    printf("done \n");
    cleanup_platform();
    return 0;
}
