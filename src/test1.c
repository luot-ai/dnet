#include "winograd5.h"
#include <stdio.h>
#include "gem5/m5ops.h"
int main()
{
    // float* ofmap1 = calloc(4, sizeof(float));
    // for (int i = 0; i < 4; i++)
    // {
    //     ofmap1[i] = i;
    // }
    // test_inline1(ofmap1);
    float* ifmap = calloc(16, sizeof(float));
    float* kernel = calloc(16, sizeof(float));
    float* ofmap1 = calloc(4, sizeof(float));
    float* ofmap2 = calloc(4, sizeof(float));
    for (int i = 0; i < 16; i++)
    {
        ifmap[i] = rand() % 10;
        kernel[i]= rand() % 10; 
    }
    for (int i = 0; i < 4; i++)
    {
        ofmap1[i] = 1.0;
        ofmap2[i] = 1.0;
    }
    test_inline2(ifmap,kernel,ofmap1,ofmap2);
}