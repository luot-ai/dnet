static inline uint32_t is_a_ge_zero_and_a_lt_b(int a, int b);
void RefConv2dF32(const float *input, const float *weight,
    const float *bias, const int in_c, const int in_h,
    const int in_w, const int out_c, const int out_h, const int out_w,
    const int ker_size, const int group,
    const int pad, const int stride, const int bias_en, float *output);