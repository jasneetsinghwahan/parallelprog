/*/
 * 
 *  A simple program to test if cuda is working.
 * 
 *  Compile with:
 *      nvcc simple_kernel_launch.cu
 * 
 *  Run with:
 *     ./a.out
 * source code taken from: https://github.com/R100001/Programming-Massively-Parallel-Processors/blob/master/Chapters/Ch02%20-%20Data%20Parallel%20Computing/labs/simple_kernel_launch/simple_kernel_launch.cu
 * 
/*/

#include <stdio.h>

__global__ void mykernel(void) {}

int main() {
    mykernel<<<1,1>>>();
    printf("Hello World!\n");
    return 0;
}