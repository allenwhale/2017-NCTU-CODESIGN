/* /////////////////////////////////////////////////////////////////////// */
/*  File   : find_motion.c                                                 */
/*  Author : Chun-Jen Tsai                                                 */
/*  Date   : 02/06/2017                                                    */
/* ----------------------------------------------------------------------- */
/*  This program will find the 16x16 block-based motion vectors between    */
/*  two 720x480 video frames in PGM format. Note that the PGM image format */
/*  is a subset of the PNM image format.                                   */
/* /////////////////////////////////////////////////////////////////////// */

#define PDSBMA
//#define PDSBMA_IN
#define FFBMA
#define FFBMA_OPT
#define SPIRAL_SCAN
//#define NEON_OPT

#define SMITH_MED9
//#define OPT_SMITH_MED9
#define HW_SUPPORT

#define FORCE_INLINE
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include "image.h"
//#include <arm_neon.h>


#include "xparameters.h"
#include "xsdps.h"
#include "ff.h"
#include "xil_cache.h"
#include "xplatform_info.h"
#include "xtime_l.h"

#include "xgpiops.h"
#define LED 7
XGpioPs Gpio;

/* Global Timer is always clocked at half of the CPU frequency */
#define COUNTS_PER_USECOND  (XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ / 2000000)
#define FREQ_MHZ ((XPAR_CPU_CORTEXA9_CORE_CLOCK_FREQ_HZ+500000)/1000000)

/* Declare a microsecond-resolution timer function */
long get_usec_time()
{
	XTime time_tick;

	XTime_GetTime(&time_tick);
	return (long) (time_tick / COUNTS_PER_USECOND);
}
//long get_usec_time() {
//    return clock() * 1000000 / CLOCKS_PER_SEC;
//}

#define BSIZE 16  /* Block size for motion estimation */
#define MSTEP  8  /* Step size between motion vectors */

typedef struct {
    int8 x;
    int8 y;
} MVector;

/* function prototypes. */
void  median3x3(uint8 *image, int width, int height);
void  full_search(MVector *, uint8 *, uint8 *, int32, int32);
void  compute_statistics(float *, float *, float *, MVector *, int32);
void  print_motion_vectors(MVector *mv, int w, int h);

/* SD card I/O variables */
static FATFS fatfs;

void find_motion_main(void *ptr)
{
	XGpioPs_Config *gpio_cfg;
    CImage frame_1, frame_2;
    MVector *mv;
    int32 width, height, size;
    long tcount1, tcount2;
    float mean, min, max;

    /* Initialize the SD card driver. */
	if (f_mount(&fatfs, "0:/", 0))
	{
		return ;
	}

    /* Initialize the Zynq PS7 GPIO pins */
    gpio_cfg = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    if (XGpioPs_CfgInitialize(&Gpio, gpio_cfg, gpio_cfg->BaseAddr))
    {
    	return ;
    }
    XGpioPs_SetDirectionPin(&Gpio, LED, 1);
    XGpioPs_SetOutputEnablePin(&Gpio, LED, 1);

    /* Read image files into the DDR main memory */
    if (read_pnm_image("1.pgm", &frame_1))
    {
        printf("\nError: cannot read input image 1.\n");
    	return ;
    }
    width = frame_1.width, height = frame_1.height;
    if (read_pnm_image("2.pgm", &frame_2))
    {
        printf("\nError: cannot read input image 2.\n");
        return ;
    }
    if (width != frame_2.width || height != frame_2.height)
    {
        printf("\nError: Image sizes of the two frames do not match!\n");
        return ;
    }

    /* Allocate space for storing motion vectors */
    size = (width/MSTEP)*(height/MSTEP);
    if ((mv = (MVector*)malloc(sizeof(MVector)*size)) == NULL)
    {
        printf("\nError: Fail to allocate memory for mvx[]!\n");
        return ;
    }
    memset((char *) mv, 0, sizeof(MVector)*size);

    /* Turn on the LED to signal the start of computation. */
    XGpioPs_WritePin(&Gpio, LED, 0x1);
    printf("\nBegin motion estimation ...\n\n");

    /* Measuring computation time of median filtering. */
    tcount1 = get_usec_time();

    /* Perform median filter for noise removal */
    median3x3(frame_1.pix, width, height);
    median3x3(frame_2.pix, width, height);

    /* Measuring computation time of motion estimation. */
    tcount1 = (tcount2 = get_usec_time()) - tcount1;

    /* Perform full-search motion estimation */
    full_search(mv, frame_1.pix, frame_2.pix, width, height);

    /* End of computation. */
    tcount2 = get_usec_time() - tcount2;

    /* Turn off the LED to signal the end of computation. */
    XGpioPs_WritePin(&Gpio, LED, 0x0);

    /* Print the motion vector fields and some statistics of the vectors. */
    compute_statistics(&mean, &min, &max, mv, size);
    /*print_motion_vectors(mv, width/MSTEP, height/MSTEP);*/
    printf("The motion vectors has a mean of %4.1f pixels.\n", mean);
    printf("The motion vectors range between %4.1f and %4.1f pixels.\n", min, max);
    printf("It took %ld microseconds to filter the two images.\n", tcount1);
    printf("It took %ld microseconds to estimate the motion field.\n", tcount2);

    /* Free allocated memory */
    free(frame_1.pix);
    free(frame_2.pix);
    free(mv);
    while(1);
    return;
}

void matrix_to_array(uint8 *pix_array, uint8 *ptr, int width)
{
    int  idx, x, y;

    idx = 0;
    for (y = -1; y <= 1; y++)
    {
        for (x = -1; x <= 1; x++)
        {
            pix_array[idx++] = *(ptr+x+width*y);
        }
    }
}

void insertion_sort(uint8 *pix_array, int size)
{
    int idx, jdx;
    uint8 temp;

    for (idx = 1; idx < size; idx++)
    {
        for (jdx = idx; jdx > 0; jdx--)
        {
            if (pix_array[jdx] < pix_array[jdx-1])
            {
                /* swap */
                temp = pix_array[jdx];
                pix_array[jdx] = pix_array[jdx-1];
                pix_array[jdx-1] = temp;
            }
        }
    }
}
#define max(a, b) ((a) > (b) ? (a) : (b))
#define min(a, b) ((a) < (b) ? (a) : (b))
#define max3(a, b, c) (max((a), max((b), (c))))
#define min3(a, b, c) (min((a), min((b), (c))))
#define med3(a, b, c) (max(min((a), (b)), min(max((a), (b)), (c))))
void sort3(uint8 *arr, int a, int b, int c){
    uint8 a1, a3;
    a1 = min3(arr[a], arr[b], arr[c]);
    a3 = max3(arr[a], arr[b], arr[c]);
    arr[b] = med3(arr[a], arr[b], arr[c]);
    arr[a] = a1;
    arr[c] = a3;
}
uint8 get_median_of_nine(uint8 *arr){
#ifndef OPT_SMITH_MED9
    sort3(arr, 0, 3, 6);
    sort3(arr, 1, 4, 7);
#endif
    sort3(arr, 2, 5, 8);
    uint8 max0 = max3(arr[0], arr[1], arr[2]);
    uint8 med1 = med3(arr[3], arr[4], arr[5]);
    uint8 min2 = min3(arr[6], arr[7], arr[8]);
    return med3(max0, med1, min2);
}

void median3x3(uint8 *image, int width, int height)
{
    int   row, col;
    uint8 pix_array[9], *ptr;

    for (row = 1; row < height-1; row++)
    {
#ifdef OPT_SMITH_MED9
        pix_array[1] = image[(row - 1) * width - 1];
        pix_array[4] = image[row * width - 1];
        pix_array[7] = image[(row + 1) * width - 1];
        pix_array[2] = image[(row - 1) * width];
        pix_array[5] = image[row * width];
        pix_array[8] = image[(row + 1) * width];
        sort3(pix_array, 1, 4, 7);
        sort3(pix_array, 2, 5, 8);
#endif
        for (col = 1; col < width-1; col++)
        {
            ptr = image + row * width + col;
#ifdef SMITH_MED9
#ifdef OPT_SMITH_MED9
            pix_array[0] = pix_array[1];
            pix_array[3] = pix_array[4];
            pix_array[6] = pix_array[7];
            pix_array[1] = pix_array[2];
            pix_array[4] = pix_array[5];
            pix_array[7] = pix_array[8];
            pix_array[2] = image[(row - 1) * width + col + 1];
            pix_array[5] = image[row * width + col + 1];
            pix_array[8] = image[(row + 1) * width + col + 1];
#else
            matrix_to_array(pix_array, ptr, width);
#endif
            *ptr = get_median_of_nine(pix_array);
#else
            matrix_to_array(pix_array, ptr, width);
            insertion_sort(pix_array, 9);
            *ptr = pix_array[4];
#endif
        }
    }
}
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
#ifdef HW_SUPPORT
    	volatile uint8 *prev_regs = (uint8*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 0);
    	volatile uint8 *curr_regs = (uint8*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 16);
    	volatile uint32 *hw_active = (uint32*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 32);
    	volatile uint32 *sad_result = (uint32*) (XPAR_COMPUTE_SAD_0_S00_AXI_BASEADDR + 36);
    	memcpy(prev_regs, &prev[(py + y) * width + px], sizeof(uint8) * 16);
    	memcpy(curr_regs, &curr[(cy + y) * width + cx], sizeof(uint8) * 16);
    	*hw_active = 1;
    	while(*hw_active);
    	//printf("%d %d %d\n", prev[(py + y) * width + px], curr[(cy + y) * width + cx], *sad_result);
    	sad += *sad_result;
#else
        for (int x = 0; x < BSIZE; x++){
            /* compute the sum of absolute difference */
            sad += abs(prev[(py+y)*width+(px+x)] - curr[(cy+y)*width+(cx+x)]);
#ifdef PDSBMA_IN
            if(sad >= min_sad) return INT_MAX;
#endif
        }
#endif
#ifdef PDSBMA
        if(sad >= min_sad) return INT_MAX;
#endif
    }
#endif
    //printf("%d ", sad);
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
    //printf("\n");
    return min_sad;
}

void full_search(MVector *mv, uint8 *prev_image, uint8 *curr_image, int32 width, int32 height)
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
    uint16 *prev_hsum, *prev_bsum, *curr_hsum, *curr_bsum;
#ifdef FFBMA
    int preprocess_time = get_usec_time();
    prev_hsum = (uint16*)get_memory("prev_hsum", height * width * sizeof(uint16));
    prev_bsum = (uint16*)get_memory("prev_bsum", height * width * sizeof(uint16));
    curr_hsum = (uint16*)get_memory("curr_hsum", height * width * sizeof(uint16));
    curr_bsum = (uint16*)get_memory("curr_bsum", height * width * sizeof(uint16));
#ifdef FFBMA_OPT
    const int size = BSIZE / 2;
#else
    const int size = BSIZE;
#endif
    for(int i=0;i<height;i++){
        int sum = 0;
        for(int j=0;j<size;j++)
            sum += prev_image[i * width + j];
        for(int j=0;j<width-size;j++){
            prev_hsum[i * width + j] = sum;
            sum -= prev_image[i * width + j];
            sum += prev_image[i * width + j + size];
        }
    }
    for(int j=0;j<width-size;j++){
        int sum = 0;
        for(int i=0;i<size;i++)
            sum += prev_hsum[i * width + j];
        for(int i=0;i<height-size;i++){
            prev_bsum[i * width + j] = sum;
            sum -= prev_hsum[i * width + j];
            sum += prev_hsum[(i + size) * width + j];
        }
    }
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
    preprocess_time = get_usec_time() - preprocess_time;
    printf("preprocess time : %d microsecond\n", preprocess_time);
#endif
    for (idy = 2; idy < ny-4; idy++)
    {
        for (idx = 2; idx < nx-4; idx++)
        {
            /* Find the best match of the current block in the previous frame. */
            (void) match(&x, &y, (idx*MSTEP), (idy*MSTEP), prev_image, curr_image, prev_bsum, curr_bsum, width);

            /* Store the motion vector at the current position. */
            mv[idy*nx+idx].x = x, mv[idy*nx+idx].y = y;
        }
    }
}

void  print_motion_vectors(MVector *mv, int w, int h)
/* Print the motion vector field. */
{
    int idx, idy;
    char stemp[16];

    printf("\nThe motion vector field is as follows:\n\n");
    for (idy = 0; idy < h; idy++)
    {
        for (idx = 0; idx < w; idx++)
        {
            sprintf(stemp, "%d,%d", mv->x, mv->y);
            printf("%7s", stemp);
            mv++;
        }
        printf("\n");
    }
    printf("\n");
}

float quick_sqrt(float x)
{
    float xhalf = 0.5f*x;
    int i;

    memcpy((void *) &i, (void *) &x, sizeof(i)); // get bits for floating VALUE
    i = 0x5f375a86 - (i>>1); // gives initial guess y0
    memcpy((void *) &x, (void *) &i, sizeof(x)); // convert bits BACK to float
    x = x*(1.5f-xhalf*x*x);  // Newton step, repeating increases accuracy
    x = x*(1.5f-xhalf*x*x);  // Newton step, repeating increases accuracy
    x = x*(1.5f-xhalf*x*x);  // Newton step, repeating increases accuracy

    return 1/x;
}

void compute_statistics(float *mean, float *min, float *max, MVector *mv, int32 size)
{
    int idx;
    float sq, length, total;

    length = total = 0;
    *min = *max = 0;
    for (idx = 0; idx < size; idx++)
    {
        sq = (float) (mv[idx].x*mv[idx].x + mv[idx].y*mv[idx].y);
        length = quick_sqrt(sq);
        if (length < *min) *min = length;
        if (length > *max) *max = length;
        total += length;
    }
    *mean = total / size;
}
