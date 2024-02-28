#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "gem5/m5ops.h"
#include "im2col.h"
#include "gemm.h"
#include "refutils.h"


#define HEIGHT 2
#define WIDTH 2
#define CHANNELS 3
#define KERNUM 1
#define KSIZE 3
#define STRIDE 1
#define PAD 0


int main() {

  int winograd = 1;
  int print_outputs = 1;
  int padding_en = 0;
  int bias_en = 0;

  int ker_size = 3;
  int group = 1;
  int stride = 1;
  int N = 1;
  int C = 3;
  int H = 4;
  int W = 4;
  int M = 2;
  int pad = 0;
  // element num
  int ifmap_num = H*W*C;
  int kernel_element_num = ker_size*ker_size*M*C;
  int outW = (W + (pad + pad) - ker_size) / stride + 1;
  int outH = (H + (pad + pad) - ker_size) / stride + 1;
  int colW = outW* outH;
  int colH = ker_size * ker_size * C;

  if (padding_en) {
    pad = ker_size / 2;
  }

  TensorDim in_dim = {N, C, H, W};
  TensorDim col_dim = {N, 1 , colH , colW};
  TensorDim filt_dim = {M, C, ker_size, ker_size};
  TensorDim out_dim = {N, M , outH ,outW };
  float *in_data = malloc(TensorSize(in_dim) * sizeof(float));
  float *filters = malloc(TensorSize(filt_dim) * sizeof(float));
  float *bias = malloc(out_dim.c * sizeof(float));
  float *wino_output = malloc(TensorSize(out_dim) * sizeof(float));
  float *ref_output = malloc(TensorSize(out_dim) * sizeof(float));
  float *col_matrix = malloc(TensorSize(col_dim) * sizeof(float));
  float *col_output = malloc(TensorSize(out_dim) * sizeof(float));

  RandInitF32(in_data, TensorSize(in_dim));
  RandInitF32(filters, TensorSize(filt_dim));
  if (bias_en) {
    RandInitF32(bias, out_dim.c);
  }

  if (winograd) {
    WinogradConvLayer(in_data, filters, bias, in_dim, out_dim, ker_size,
                          group, pad, stride, bias_en, wino_output);
  }
  else {
    printf("Using vectored convolution\n");
    VectoredConvLayer(in_data, filters, bias, in_dim, out_dim, ker_size,
                      group, pad, stride, bias_en, wino_output);
  }

  // Perform im2col
  // im2col_cpu(in_data, C, H, W, ker_size, stride, pad, col_matrix);
  // PrintTensor("input Matrix", in_data, in_dim);
  // PrintTensor("Col Matrix", col_matrix, col_dim);
  // Perform gemm (matrix multiplication)
  // int GM = M;
  // int GN = colW ;  
  // int GK = ker_size * ker_size * C;
  // float ALPHA = 1.0;
  // gemm_cpu(0, 0, GM, GN, GK, ALPHA, filters, GK, col_matrix, GN, 1.0, col_output, GN);

  if (print_outputs) {\
    PrintTensor("wino_output",wino_output, out_dim);
    //PrintTensor("caffe_ref_output",ref_output, out_dim);
    //PrintTensor("our_col_output",col_output, out_dim);
  }
  // if (TensorCompare(col_output, ref_output, out_dim)) {
  //   printf("PASS\n");
  // } else {
  //   printf("FAIL\n");
  // }
  free(in_data);
  free(bias);
  free(filters);
  free(ref_output);
  free(wino_output);
  free(col_matrix);
  free(col_output);




  return 0;
}
