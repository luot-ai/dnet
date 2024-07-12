// #include <assert.h>
// #include <memory.h>
// #include <stdio.h>
// #include <stdlib.h>

float A[8] = {1, 0, 1, 1, 1, -1, 0, -1};
float AT[8] = {1, 1, 1, 0, 0, 1, -1, -1};
float B[16] = {1, 0, 0, 0, 0, 1, -1, 1, -1, 1, 1, 0, 0, 0, 0, -1};
float BT[16] = {1, 0, -1, 0, 0, 1, 1, 0, 0, -1, 1, 0, 0, 1, 0, -1};
float G[12] = {1, 0, 0, 0.5, 0.5, 0.5, 0.5, -0.5, 0.5, 0, 0, 1};
float GT[12] = {1, 0.5, 0.5, 0, 0, 0.5, -0.5, 0, 0, 0.5, 0.5, 1};

#include "common.h"
#include "conv0.h"
#include "winograd1.h"
#include "winograd2.h"
#include "winograd3.h"
#include "winograd4.h"
#include "winograd5.h"
#include "gem5/m5ops.h"
// Y=AT[[GgGT]*[BTdB]]A
int main(int argc, char *argv[]) {
    //------------------------------------------------
    // 产生数据
    int m = 2, r = 3;

    //int w = atoi(argv[1]), h = atoi(argv[1]), c = atoi(argv[2]), n = atoi(argv[3]), groups = 1, size = 3, stride = 1, pad = 0;
    int w = 48, h = 48, c = 1, n = 1, groups = 1, size = 3, stride = 1, pad = 1;

    float* d = calloc(w * h * c, sizeof(float));
    for (int i = 0; i < w * h * c; i++)
        d[i] = rand() % 10;
    float* g = calloc(size * size * c * n, sizeof(float));
    for (int i = 0; i < size * size * c * n; i++)
        g[i] = rand() % 10;
    int out_w = (w + 2 * pad - size) / stride + 1;
    int out_h = (h + 2 * pad - size) / stride + 1;
    printf("input chw: %d,%d,%d\r\nfilter nchw: %d,%d,%d,%d\r\noutput nhw: %d,%d,%d\r\n\r\n", c, h, w, n, c, size, size,
           n, out_h, out_w);
    double t1, t2;

    //------------------------------------------------
    //conv0: im2col+gemm求卷积结果, 结果作为基准值
    //t1 = what_time_is_it_now();
    float* im_0 = d;
    float* a_0 = g;
    float* b_0 =
        (float*)malloc(out_h * out_w * size * size * c / groups * sizeof(float));  //存储经过im2col的输入feature map
    float* output_0 = calloc(out_w * out_h * n, sizeof(float));
    //m5_dump_reset_stats(0,0);
    im2col_cpu(im_0, c / groups, h, w, size, stride, pad, b_0);
    gemm(0, 0, n, out_h * out_w, size * size * c, 1, a_0, size * size * c, b_0, out_h * out_w, 1, output_0,
         out_h * out_w);
    //m5_dump_reset_stats(0,0);
    printf("\r\n");

    //------------------------------------------------
    // winograd5: 思路三: 结论公式2与固定已知系数的加法(提前计算g的transform)
    float* d_5 = d;
    float* g_5 = g;
    float* transformed_d_5 =
        (float*)malloc((w - 2 + 2 * pad) / 2 * (h - 2 + 2*pad) / 2 * c * 16 * sizeof(float));  //存储经过im2col的输入feature map
    float* transformed_g_5 = calloc(n * c * 16, sizeof(float));
    float* output_temp_5 = calloc(out_w * out_h * n, sizeof(float));
    float* output_5 = calloc(out_w * out_h * n, sizeof(float));
    //m5_dump_reset_stats(0,0);

    transforme_g_winograd2(g_5, transformed_g_5, c, n);
    im2col_winograd1(d_5, c / groups, h, w, size, stride, 2, 3, transformed_d_5, pad);
    // m5_dump_reset_stats(0,0);
    // convolutional_winograd5(transformed_g_5, transformed_d_5, output_temp_5, h, w, c, n, 2, 3,pad);
    m5_dump_reset_stats(0,0);
    convolutional_winograd5_cus(transformed_g_5, transformed_d_5, output_temp_5,h, w, c, n, 2, 3 ,pad);
    m5_dump_reset_stats(0,0);
    col2im_winograd1(output_temp_5, n, h, w, size, stride, pad, m, output_5);
    
    //m5_dump_reset_stats(0,0);
    // t2 = what_time_is_it_now();
    compareResult(output_5, output_0, out_w * out_h * n);

    free(d);
    free(g);
    free(b_0);
    free(output_0);


    free(transformed_d_5);
    free(transformed_g_5);
    free(output_temp_5);
    free(output_5);
    return 0;
}
