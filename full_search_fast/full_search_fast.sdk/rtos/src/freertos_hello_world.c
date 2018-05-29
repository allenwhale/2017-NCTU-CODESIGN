/*
    FreeRTOS V8.2.1 - Copyright (C) 2015 Real Time Engineers Ltd.
    All rights reserved

    VISIT http://www.FreeRTOS.org TO ENSURE YOU ARE USING THE LATEST VERSION.

    This file is part of the FreeRTOS distribution.

    FreeRTOS is free software; you can redistribute it and/or modify it under
    the terms of the GNU General Public License (version 2) as published by the
    Free Software Foundation >>!AND MODIFIED BY!<< the FreeRTOS exception.

    >>!   NOTE: The modification to the GPL is included to allow you to     !<<
    >>!   distribute a combined work that includes FreeRTOS without being   !<<
    >>!   obliged to provide the source code for proprietary components     !<<
    >>!   outside of the FreeRTOS kernel.                                   !<<

    FreeRTOS is distributed in the hope that it will be useful, but WITHOUT ANY
    WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
    FOR A PARTICULAR PURPOSE.  Full license text is available on the following
    link: http://www.freertos.org/a00114.html

    1 tab == 4 spaces!

    ***************************************************************************
     *                                                                       *
     *    Having a problem?  Start by reading the FAQ "My application does   *
     *    not run, what could be wrong?".  Have you defined configASSERT()?  *
     *                                                                       *
     *    http://www.FreeRTOS.org/FAQHelp.html                               *
     *                                                                       *
    ***************************************************************************

    ***************************************************************************
     *                                                                       *
     *    FreeRTOS provides completely free yet professionally developed,    *
     *    robust, strictly quality controlled, supported, and cross          *
     *    platform software that is more than just the market leader, it     *
     *    is the industry's de facto standard.                               *
     *                                                                       *
     *    Help yourself get started quickly while simultaneously helping     *
     *    to support the FreeRTOS project by purchasing a FreeRTOS           *
     *    tutorial book, reference manual, or both:                          *
     *    http://www.FreeRTOS.org/Documentation                              *
     *                                                                       *
    ***************************************************************************

    ***************************************************************************
     *                                                                       *
     *   Investing in training allows your team to be as productive as       *
     *   possible as early as possible, lowering your overall development    *
     *   cost, and enabling you to bring a more robust product to market     *
     *   earlier than would otherwise be possible.  Richard Barry is both    *
     *   the architect and key author of FreeRTOS, and so also the world's   *
     *   leading authority on what is the world's most popular real time     *
     *   kernel for deeply embedded MCU designs.  Obtaining your training    *
     *   from Richard ensures your team will gain directly from his in-depth *
     *   product knowledge and years of usage experience.  Contact Real Time *
     *   Engineers Ltd to enquire about the FreeRTOS Masterclass, presented  *
     *   by Richard Barry:  http://www.FreeRTOS.org/contact
     *                                                                       *
    ***************************************************************************

    ***************************************************************************
     *                                                                       *
     *    You are receiving this top quality software for free.  Please play *
     *    fair and reciprocate by reporting any suspected issues and         *
     *    participating in the community forum:                              *
     *    http://www.FreeRTOS.org/support                                    *
     *                                                                       *
     *    Thank you!                                                         *
     *                                                                       *
    ***************************************************************************

    http://www.FreeRTOS.org - Documentation, books, training, latest versions,
    license and Real Time Engineers Ltd. contact details.

    http://www.FreeRTOS.org/plus - A selection of FreeRTOS ecosystem products,
    including FreeRTOS+Trace - an indispensable productivity tool, a DOS
    compatible FAT file system, and our tiny thread aware UDP/IP stack.

    http://www.FreeRTOS.org/labs - Where new FreeRTOS products go to incubate.
    Come and try FreeRTOS+TCP, our new open source TCP/IP stack for FreeRTOS.

    http://www.OpenRTOS.com - Real Time Engineers ltd license FreeRTOS to High
    Integrity Systems ltd. to sell under the OpenRTOS brand.  Low cost OpenRTOS
    licenses offer ticketed support, indemnification and commercial middleware.

    http://www.SafeRTOS.com - High Integrity Systems also provide a safety
    engineered and independently SIL3 certified version for use in safety and
    mission critical applications that require provable dependability.

    1 tab == 4 spaces!
*/

/* FreeRTOS includes. */
#include "FreeRTOS.h"
#include "task.h"
#include "queue.h"
#include "timers.h"
/* Xilinx includes. */
#include "xil_printf.h"
#include "xparameters.h"

#define TIMER_ID	1
#define DELAY_10_SECONDS	10000UL
#define DELAY_1_SECOND		1000UL
#define TIMER_CHECK_THRESHOLD	9
/*-----------------------------------------------------------*/

/* The Tx and Rx tasks as described at the top of this file. */
static void prvTxTask( void *pvParameters );
static void prvRxTask( void *pvParameters );
static void vTimerCallback( TimerHandle_t pxTimer );
/*-----------------------------------------------------------*/

/* The queue used by the Tx and Rx tasks, as described at the top of this
file. */
static TaskHandle_t xTxTask;
static TaskHandle_t xRxTask;
static QueueHandle_t xQueue = NULL;
static TimerHandle_t xTimer = NULL;
char HWstring[15] = "Hello World";
long RxtaskCntr = 0;

int main( void )
{


	printf( "Hello from Freertos example main\r\n" );
//	return 0;
	/* Create the two tasks.  The Tx task is given a lower priority than the
	Rx task, so the Rx task will leave the Blocked state and pre-empt the Tx
	task as soon as the Tx task places an item in the queue. */
	xTaskCreate( 	prvTxTask, 					/* The function that implements the task. */
					( const char * ) "Tx", 		/* Text name for the task, provided to assist debugging only. */
					20000000, 	/* The stack allocated to the task. */
					NULL, 						/* The task parameter is not used, so set to NULL. */
					tskIDLE_PRIORITY + 1 ,			/* The task runs at the idle priority. */
					&xTxTask );


	/* Create the queue used by the tasks.  The Rx task has a higher priority
	than the Tx task, so will preempt the Tx task and remove values from the
	queue as soon as the Tx task writes to the queue - therefore the queue can
	never have more than one item in it. */


	/* Check the queue was created. */

	/* Create a timer with a timer expiry of 10 seconds. The timer would expire
	 after 10 seconds and the timer call back would get called. In the timer call back
	 checks are done to ensure that the tasks have been running properly till then.
	 The tasks are deleted in the timer call back and a message is printed to convey that
	 the example has run successfully.
	 The timer expiry is set to 10 seconds and the timer set to not auto reload. */
	/* Check the timer was created. */

	/* start the timer with a block time of 0 ticks. This means as soon
	   as the schedule starts the timer will start running and will expire after
	   10 seconds */

	/* Start the tasks and timer running. */
	vTaskStartScheduler();

	/* If all is well, the scheduler will now be running, and the following line
	will never be reached.  If the following line does execute, then there was
	insufficient FreeRTOS heap memory available for the idle and/or timer tasks
	to be created.  See the memory management section on the FreeRTOS web site
	for more details. */
	for( ;; );
}

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
#include "xil_printf.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xtime_l.h"
#include "xil_mmu.h"
#define printf xil_printf
#define max(a, b) ((a) > (b) ? (a) : (b))
#define min(a, b) ((a) < (b) ? (a) : (b))
#define max3(a, b, c) (max((a), max((b), (c))))
#define min3(a, b, c) (min((a), min((b), (c))))
#define med3(a, b, c) (max(min((a), (b)), min(max((a), (b)), (c))))
#define COUNTS_PER_USECOND  (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2000000)
#define FREQ_MHZ ((XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ+500000)/1000000)

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
/* Declare a microsecond-resolution timer function */
long get_usec_time(){
	XTime time_tick;
	XTime_GetTime(&time_tick);
	return (long) (time_tick / COUNTS_PER_USECOND);
}

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

char prev_pix[480][720], curr_pix[480][720];
char mvx[60][128], mvy[60][128];
short sad[60][128];

volatile int *prefetch_pkg_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 0);
volatile int *pkg_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 4);
volatile int *mvx_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 8);
volatile int *mvy_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 12);
volatile int *sad_addr = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR + 16);
volatile int *hw_active = (int *)(XPAR_FULL_SEARCH_0_S00_AXI_BASEADDR +20);

#define SHAREABLE (1 << 16)
#define NON_CACHED (0)
#define WB_WA_CACHE (1) /* write back, write allocate */
#define WT_CACHE (2) /* write thru */
#define WB_CACHE (3) /* write back */
#define INNER_SHIFT (2)
#define OUTER_SHIFT (12)
#define TEX_MSB (1 << 14)
#define AP_FAULT (0) /* no access, a fault */
#define AP_FULL (3 << 10) /* full access */
#define DOMAIN(x) (x << 5)
#define INNER_NON_CACHED (NON_CACHED << INNER_SHIFT)
#define INNER_WB_WA (WB_WA_CACHE << INNER_SHIFT)
#define INNER_WT (WT_CACHE << INNER_SHIFT)
#define INNER_WB (WB_CACHE << INNER_SHIFT)
#define OUTER_NON_CACHED (TEX_MSB | (NON_CACHED << OUTER_SHIFT))
#define OUTER_WB_WA (TEX_MSB | (WB_WA_CACHE << OUTER_SHIFT))
#define OUTER_WT (TEX_MSB | (WT_CACHE << OUTER_SHIFT))
#define OUTER_WB (TEX_MSB | (WB_CACHE << OUTER_SHIFT))
#define SECTION(attributes) ((attributes) | 0x2)
#define SUPER_SECTION(attributes) ((attributes) | 0x4002)

int ans_mvx[60][90], ans_mvy[60][90], ans_sad[60][90];

int mmain()
{
	u32 DdrAttributes = SECTION(SHAREABLE | OUTER_WB_WA | AP_FULL | INNER_WB_WA | DOMAIN(0xF));
	printf("%x\n", DdrAttributes);
//	Xil_SetTlbAttributes(0x100000, DdrAttributes);

	printf("start\n");
//	prefetch_pkg = malloc(sizeof(struct prefetch_package));
//	pkg = malloc(sizeof(struct package));
//	return 0;
    int start;
    for(int r = 0 ; r < 1000 ; r++){
    	memset(sad, 0, sizeof(sad));
    	printf("test %d\n", r);
    	for(int i = 0 ; i < 480 ; i++){
    		for(int j = 0 ; j < 720 ; j++){
    			prev_pix[i][j] = rand() % 100;
    			curr_pix[i][j] = rand() % 100;
    		}
    	}
    	start = get_usec_time();
    	median3x3(prev_pix);
    	median3x3(curr_pix);
    	printf("median %d\n", get_usec_time() - start);
    	for(int i = 2 ; i < 60 - 4 ; i++){
    		for(int j = 2 ; j < 90 - 4 ; j++){
    			int min_mvx, min_mvy, min_sad = 10000000;
    			for(int x = -16 ; x < 16 ; x++){
    				for(int y = -16 ; y < 16 ; y++){
    					int now_sad = 0;
    					for(int bx = 0 ; bx < 16 ; bx++){
    						for(int by = 0 ; by < 16 ; by++){
    							now_sad += abs(prev_pix[i * 8 + y + by][j * 8 + x + bx] - curr_pix[i * 8 + by][j * 8 + bx]);
    						}
    					}
    					if(now_sad < min_sad){
    						min_sad = now_sad;
    						min_mvx = x;
    						min_mvy = y;
    					}
    				}
    			}
    			ans_sad[i][j] = min_sad;
    			ans_mvx[i][j] = min_mvx;
    			ans_mvy[i][j] = min_mvy;
    		}
    	}
    	start = get_usec_time();
		for(int i = 0 ; i < 48 ; i++){
			memcpy(prefetch_pkg.prev[i], prev_pix[i], 64);
		}
		for(int i = 0 ; i < 16 ; i++){
			memcpy(prefetch_pkg.curr[i], curr_pix[i + 16] + 16, 32);
		}
		for(int i = 2 ; i < 60 - 4 ; i++){
			int j = 2;
			while(j < 90 - 4){
				for(int y = 0 ; y < 8 ; y++){
					memcpy(pkg.data[i][j].prev[y], prev_pix[(i << 3) + y + 24] + (j << 3) - 16, 64);
					memcpy(pkg.data[i][j].curr[y], curr_pix[(i << 3) + y + 8] + (j << 3), 32);
				}
				j++;
				for(int y = 0 ; y < 8 ; y++){
					memcpy(pkg.data[i][j].prev[y], prev_pix[(i << 3) + y - 16] + (j << 3) - 16, 64);
					memcpy(pkg.data[i][j].curr[y], curr_pix[(i << 3) + y] + (j << 3), 32);

				}
				j++;
			}
		}
		printf("prepare package %d\n", get_usec_time() - start);
    	Xil_DCacheFlushRange(&pkg, sizeof(struct package));
    	Xil_DCacheFlushRange(&prefetch_pkg, sizeof(struct prefetch_package));
    	Xil_DCacheFlushRange(mvx, sizeof(mvx));
		Xil_DCacheFlushRange(mvy, sizeof(mvy));
		Xil_DCacheFlushRange(sad, sizeof(sad));
    	*prefetch_pkg_addr = &prefetch_pkg;
    	*pkg_addr = &pkg;
    	*mvx_addr = mvx;
    	*mvy_addr = mvy;
    	*sad_addr = sad;
    	*hw_active = 1;
    	start = get_usec_time();
    	printf("start\n");
    	while(*hw_active);

    	printf("%d\n", get_usec_time() - start);
    	for(int i = 2 ; i < 60 - 4 ; i++){
    		for(int j = 2 ; j < 90 - 4 ; j++){
    			if(sad[i][j] != ans_sad[i][j])
    				printf("%d %d %d %d\n", i, j, sad[i][j], ans_sad[i][j]);
    		}
    	}
    }
    printf("end\n");
    return 0;
}



/*-----------------------------------------------------------*/
static void prvTxTask( void *pvParameters )
{
	mmain();
}

/*-----------------------------------------------------------*/
static void prvRxTask( void *pvParameters )
{
char Recdstring[15] = "";

	for( ;; )
	{

	}
}

/*-----------------------------------------------------------*/
static void vTimerCallback( TimerHandle_t pxTimer )
{
	long lTimerId;
	configASSERT( pxTimer );

	lTimerId = ( long ) pvTimerGetTimerID( pxTimer );

	if (lTimerId != TIMER_ID) {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	/* If the RxtaskCntr is updated every time the Rx task is called. The
	 Rx task is called every time the Tx task sends a message. The Tx task
	 sends a message every 1 second.
	 The timer expires after 10 seconds. We expect the RxtaskCntr to at least
	 have a value of 9 (TIMER_CHECK_THRESHOLD) when the timer expires. */
	if (RxtaskCntr >= TIMER_CHECK_THRESHOLD) {
		xil_printf("FreeRTOS Hello World Example PASSED");
	} else {
		xil_printf("FreeRTOS Hello World Example FAILED");
	}

	vTaskDelete( xRxTask );
	vTaskDelete( xTxTask );
}

