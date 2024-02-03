#include <stdio.h> 

int main() {
  int nDevices;

  cudaGetDeviceCount(&nDevices);
  for (int i = 0; i < nDevices; i++) {
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, i);
    printf("Device Number: %d\n", i);
    printf("  Device name: %s\n", prop.name);
    printf("  Memory Clock Rate (KHz): %d\n",
           prop.memoryClockRate);
    printf("  Memory Bus Width (bits): %d\n",
           prop.memoryBusWidth);
    printf("  Peak Memory Bandwidth (GB/s): %f\n",
           2.0*prop.memoryClockRate*(prop.memoryBusWidth/8)/1.0e6);
    printf("  maxThreadsPerBlock: %d\n", prop.maxThreadsPerBlock);
    printf("  maxBlocksPerMultiprocessor: %d\n", prop.maxBlocksPerMultiProcessor);
    printf("  sharedMemPerBlock : %zu KB\n", prop.sharedMemPerBlock/1024 );
    printf("  sharedMemPerMultiprocessor : %zu KB\n", prop.sharedMemPerMultiprocessor/1024 );
    printf("  unifiedAddressing : %d \n", prop.unifiedAddressing);
    printf("  warpSize : %d\n", prop.warpSize);
    printf("  regsPerBlock : %d\n", prop.regsPerBlock);
    printf("  regsPerMultiprocessor : %d\n", prop.regsPerMultiprocessor);
    printf("  maxThreadsDim : [0] %d [1] %d [2] %d\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2]);
    printf("  maxGridSize : [0] %d [1] %d [2] %d\n", prop.maxGridSize[0], prop.maxGridSize[1], prop.maxGridSize[2]);
    printf("  compute capability: major.minor: %d.%d\n", prop.major, prop.minor);
    printf("  L2 cache size: %d\n", prop.l2CacheSize);
    printf("  totalConstMem : %zu KB\n", prop.totalConstMem/1024 );
    printf("  totalGlobalMem : %zu GB\n", prop.totalGlobalMem/(1024*1024) );
  }
}