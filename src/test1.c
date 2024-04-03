#include "winograd5.h"
#include <stdio.h>
#include "gem5/m5ops.h"
int main()
{
    float test_array0[8] = {1.0, 2.0, 3.0, 4.0};
    test_inline(test_array0);
}