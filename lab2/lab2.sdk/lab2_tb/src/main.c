/*
 * main.c
 *
 *  Created on: 2017¦~4¤ë4¤é
 *      Author: Administrator
 */

#include "xparameters.h"
#include <string.h>
int main(){
	volatile char *prev_regs = (char*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 0);
	volatile char *curr_regs = (char*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 16);
	volatile int *hw_active = (int*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 32);
	volatile int *sad = (int*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 36);
	char prev[16] = {10,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6};
	char curr[16] = {1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6};
	for(int i=0;i<16;i++)
		prev_regs[i] = prev[i];
	for(int i=0;i<16;i++)
		curr_regs[i] = curr[i];
	*hw_active = 1;
	while(*hw_active);
	return 0;
}

