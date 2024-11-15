#include "testmod.h"
#include <stdio.h>
#include "gem5/m5ops.h"
int main()
{
    //m5_dump_reset_stats(0,0);
    set_mod_reg(5);
    int res = mul_mod(3,6);
    //m5_dump_reset_stats(0,0);
    printf("result = %d",res);
}
static void set_mod_reg(int val){
	__asm__ __volatile__(
        "setq x0,%0,x0"
		:
		:"r"(val)
		);
}
static int add_mod(int val1,int val2){
    int result;
    asm volatile (
        "addq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}
static int sub_mod(int val1,int val2){
    int result;
    asm volatile (
        "subq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}
static int mul_mod(int val1,int val2){
    int result;
    asm volatile (
        "mulq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}