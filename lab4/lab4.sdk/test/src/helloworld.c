#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <xparameters.h>
#include "xil_cache.h"
#include "xtime_l.h"
volatile int *hw_active = (int *) (XPAR_MY_DMA_0_S00_AXI_BASEADDR +  0);
volatile int *dst_addr  = (int *) (XPAR_MY_DMA_0_S00_AXI_BASEADDR +  4);
volatile int *src_addr  = (int *) (XPAR_MY_DMA_0_S00_AXI_BASEADDR +  8);
volatile int *len_copy  = (int *) (XPAR_MY_DMA_0_S00_AXI_BASEADDR +  12);

char test_text[] = "This is a 64-byte string used to test the burst copy operation. ";
char src_array[128] ;
char dst_array[128] ;
char ans_array[128] ;

#define demo1_num 64
#define demo2_num 4
#define demo3_num 64
#define test_num 1000
#define COUNTS_PER_USECOND  (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2000000)
int i,j,k;

/* ========================================================================== */
/*  Note: The 'len' parameter of my_memcpy() must be a multiple of 4 bytes.   */
/* ========================================================================== */
void hw_memcpy(void *dst, void *src, int len)
{
    /* Flush the memory area from the CPU cache */
//    Xil_DCacheFlushRange((unsigned int) src, len);
//    Xil_DCacheFlushRange((unsigned int) dst, len);

    *dst_addr = (int) dst;   // destination word address
    *src_addr = (int) src;   // source word address
    *len_copy = len;         // transfer size in bytes, must be a multiple of 4!

    *hw_active = 1;         // trigger the HW IP
    while (*hw_active);     // wait for the transfer to finish
}
long get_usec_time()
{
	XTime time_tick;

	XTime_GetTime(&time_tick);
	return (long) (time_tick / COUNTS_PER_USECOND);
}

int main(int argc, char **argv)
{
	printf("start\n");
	int task_result;
	long tcount1, tcount2;

	for(i=0; i<128; i++)
	{
		src_array[i] = i;
		dst_array[i] = 0;
	}

	 hw_memcpy((void *) dst_array, (void *) src_array, 76);

	 /*for(i=0; i<128; i++)
	 	{
		 if(i%8 == 0 )
		   printf("\n");
		 printf("%3d",dst_array[i]);

	 	}*/

	 printf("\n");

	 tcount1 = get_usec_time();

	 task_result = task1();//test one burst (64bytes)

	 if(task_result == 0)
		 printf("pass task1\n");
	 else
		 return 1;

	 task_result = task2();//test less than 64 bytes (4byte)

	 if(task_result == 0)
		 printf("pass task2\n");
	 else
		 return 1;

	 task_result = task3();//test 32 bytes copy and check 33~64 byte

	 if(task_result == 0)
		 printf("pass task3\n");
	 else
		 return 1;

	 task_result = task4();

	 if(task_result == 0)
		 printf("pass task4\n");
	 else
		 return 1;
	 tcount1 = (tcount2 = get_usec_time()) - tcount1;

	 printf("It took %ld milliseconds to test pattern.\n", tcount1/1000);

	printf("***********************************************************\n");
	printf("*********************Congratulations***********************\n");
	printf("***********************************************************\n");
    return 0;
}

int task1()
{
	char *demo_src1, *demo_dst1;
	demo_src1 = (char *) malloc(demo1_num*sizeof(char));
	demo_dst1 = (char *) malloc(demo1_num*sizeof(char));

	for(i=0; i<demo1_num; i++)
		{
			*(demo_src1+i) = 0;
			*(demo_dst1+i) = 0;
		}

	for(i=0; i<demo1_num; i++)
	{
		*(demo_src1+i) = rand()%128;
//		printf("%d\n",*(demo_src1+i));
	}

	 hw_memcpy((void *) demo_dst1, (void *) demo_src1, demo1_num);
	 for(i=0; i<demo1_num; i++)
	 	{
	 		if(*(demo_src1+i) != *(demo_dst1+i))
	 		{
	 			printf("task1 error !!\n");
	 			printf("your %dth drc num = %4d\n",i,*(demo_dst1+i));
	 			printf("the  %dth src num = %4d\n",i,*(demo_src1+i));


	 			printf("dst = ");
	 			for(j=0;j<demo1_num;j++)
	 			{
	 				printf("%4d",*(demo_dst1+j));
	 			}

	 			printf("\nsrc = ");
	 			for(j=0;j<demo1_num;j++)
	 			{
	 				printf("%4d",*(demo_src1+j));
	 			}
	 			printf("\n");
	 			return 1;
	 		}


	 	}
	 free(demo_src1);
 	 free(demo_dst1);
 	 return 0;
}

int task2()
{
	char *demo_src2, *demo_dst2;
	demo_src2 = (char *) malloc(demo2_num*sizeof(char));
	demo_dst2 = (char *) malloc(demo2_num*sizeof(char));

	for(i=0; i<demo2_num; i++)
		{
			*(demo_src2+i) = 0;
			*(demo_dst2+i) = 0;
		}

	for(i=0; i<demo2_num; i++)
	{
		*(demo_src2+i) = rand()%128;
//		printf("%d\n",*(demo_src1+i));
	}

	 hw_memcpy((void *) demo_dst2, (void *) demo_src2, demo2_num);

	 for(i=0; i<demo2_num; i++)
	 	{
	 		if(*(demo_src2+i) != *(demo_dst2+i))
	 		{
	 			printf("task2 error !!\n");
	 			printf("your %dth drc num = %d\n",i,*(demo_dst2+i));
	 			printf("the  %dth src_num = %d\n",i,*(demo_src2+i));


	 			printf("dst = ");
	 			for(j=0;j<demo2_num;j++)
	 			{
	 				printf("%4d",*(demo_dst2+j));
	 			}

	 			printf("\nsrc = ");
	 			for(j=0;j<demo2_num;j++)
	 			{
	 				printf("%4d",*(demo_src2+j));
	 			}
	 			printf("\n");
	 			return 1;


	 		}


	 	}
	 free(demo_src2);
	 free(demo_dst2);
 	 return 0;

}

int task3()
{
	char *demo_src3, *demo_dst3;
	demo_src3 = (char *) malloc(demo3_num*sizeof(char));
	demo_dst3 = (char *) malloc(demo3_num*sizeof(char));

	for(i=0; i<demo3_num; i++)
		{
			*(demo_src3+i) = 0;
			*(demo_dst3+i) = 0;
		}

	for(i=0; i<32; i++)
	{
		*(demo_src3+i) = rand()%128;
//		printf("%d\n",*(demo_src1+i));
	}

	 hw_memcpy((void *) demo_dst3, (void *) demo_src3, 32);

	 for(i=0; i<32; i++)
	 	{
	 		if(*(demo_src3+i) != *(demo_dst3+i))
	 		{
	 			printf("task3 error !!\n");
	 			printf("your %dth drc num = %d\n",i,*(demo_dst3+i));
	 			printf("the  %dth src_num = %d\n",i,*(demo_src3+i));


	 			printf("dst = ");
	 			for(j=0;j<demo3_num;j++)
	 			{
	 				printf("%4d",*(demo_dst3+j));
	 			}

	 			printf("\nsrc = ");
	 			for(j=0;j<demo3_num;j++)
	 			{
	 				printf("%4d",*(demo_src3+j));
	 			}
	 			printf("\n");
	 			return 1;

	 		}
	 	}


	 for(i=32; i<64; i++)
	 	{
	 		if(*(demo_dst3+i) != 0)
	 		{
	 			printf("task3 error !!\n");
	 			printf("your %dth drc num = %d\n",i,*(demo_dst3+i));
	 			printf("the  %dth src_num = %d\n",i,*(demo_src3+i));


	 			printf("dst = ");
	 			for(j=0;j<demo3_num;j++)
	 			{
	 				printf("%4d",*(demo_dst3+j));
	 			}

	 			printf("\nsrc = ");
	 			for(j=0;j<demo3_num;j++)
	 			{
	 				printf("%4d",*(demo_src3+j));
	 			}
	 			printf("\n");
	 			return 1;

	 		}
	 	}

	 free(demo_src3);
	 free(demo_dst3);
 	 return 0;

}
int task4()
{
	int copy_len = 0;;
	for(k=0;k<test_num;k++)
	{

		copy_len = ((rand()%574) * 4) + 4;



		char *demo_src4, *demo_dst4;
		demo_src4 = (char *) malloc(copy_len*sizeof(char));
		demo_dst4 = (char *) malloc(copy_len*sizeof(char));

		for(i=0; i<copy_len; i++)
				{
					*(demo_src4+i) = 0;
					*(demo_dst4+i) = 0;
				}
		for(i=0; i<copy_len; i++)
			{
				*(demo_src4+i) = rand()%128;
		//		printf("%d\n",*(demo_src1+i));
			}
		hw_memcpy((void *) demo_dst4, (void *) demo_src4, copy_len);
		//*(demo_src4+10) = 0;
		 for(i=0; i<copy_len; i++)
		 	{
		 		if(*(demo_src4+i) != *(demo_dst4+i))
		 		{
		 			printf("task4 error !!\n");
		 			printf("your %dth drc num = %d\n",i,*(demo_dst4+i));
		 			printf("the  %dth src_num = %d\n",i,*(demo_src4+i));

		 			printf("copy_len = %d\n",copy_len);
		 			printf("test_num = %d\n\n",k);

		 			printf("dst = ");
		 			for(j=0;j<copy_len;j++)
		 			{
		 				printf("%4d",*(demo_dst4+j));
		 			}

		 			printf("\nsrc = ");
		 			for(j=0;j<copy_len;j++)
		 			{
		 				printf("%4d",*(demo_src4+j));
		 			}
		 			printf("\n");
		 			return 1;


		 		}


		 	}
		 free(demo_src4);
		 free(demo_dst4);


	}
	 return 0;
}
