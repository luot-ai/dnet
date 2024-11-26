#include <bits/stdc++.h>
#include "testmod.h"
#include <stdio.h>
#include "gem5/m5ops.h"
typedef long long ll;
const int NR = 1 << 22, g = 3, gi = 332748118, mod = 998244353;
//998244353的一个原根为3且998244353-1=2^23*119，3在模998244353意义下的逆元为332748118
using namespace std;
int n, m, rev[NR]; //rev[i]为i的二进制翻转
long long a[NR], b[NR];
ll fast_power(ll a, ll k){ //快速幂，a为底数，k为指数
    ll res = 1;
    while (k){
        if (k & 1)
            res = res * a % mod;
        a = a * a % mod;
        k = k >>  1;
    }
    return res;
}
ll fast_power_cus(ll a, ll k){ //快速幂，a为底数，k为指数
    ll res = 1;
    while (k){
        if (k & 1)
            res = mul_mod(res,a);
        a = mul_mod(a,a);
        k = k >>  1;
    }
    return res;
}
void NTT_cus(ll *a, int n, int type) //NTT，type=1时系数表示法转点值表示法，否则点值表示法转系数表示法
{
    m5_dump_reset_stats(0,0);
    set_mod_reg(mod);
    for (int i = 0; i < n; ++i) //先将a变成最后的样子
        if (i < rev[i])
            swap(a[i], a[rev[i]]);
    for (int i = 1; i < n; i = i << 1){       //在这之前NTT与FFT无异
        ll gn = fast_power_cus(type ? g : gi, (mod - 1) / (i << 1));  //单位原根g_n
        for (int j = 0; j < n; j += (i << 1)){                    //枚举具体区间，j也就是区间右端点
            ll g0 = 1;
            for (int k = 0; k < i; ++k, g0 = mul_mod(g0,gn)){ //合并，记得要取模
                ll x = a[j + k];
                ll y = mul_mod(g0,a[i + j + k]); 
                a[j + k] = add_mod(x,y);   
                a[i + j + k] = add_mod(x-y,mod);
            }
        }
    }
    int len = n;
    if(type == 0){
      	ll inv = fast_power_cus(len, mod-2);
        for(int i = 0; i < len; ++i) 
            a[i] = mul_mod(a[i],inv); 
    }
    m5_dump_reset_stats(0,0);
}
void NTT(ll *a, int n, int type) //NTT，type=1时系数表示法转点值表示法，否则点值表示法转系数表示法
{
    m5_dump_reset_stats(0,0);
    for (int i = 0; i < n; ++i) //先将a变成最后的样子
        if (i < rev[i])
            swap(a[i], a[rev[i]]);
    for (int i = 1; i < n; i = i << 1){       //在这之前NTT与FFT无异
        ll gn = fast_power(type ? g : gi, (mod - 1) / (i << 1));  //单位原根g_n
        for (int j = 0; j < n; j += (i << 1)){                    //枚举具体区间，j也就是区间右端点
            ll g0 = 1;
            for (int k = 0; k < i; ++k, g0 = g0 * gn % mod){ //合并，记得要取模
                ll x = a[j + k], y = g0 * a[i + j + k] % mod;
                a[j + k] = (x + y) % mod;
                a[i + j + k] = (x - y + mod) % mod;
            }
        }
    }
    int len = n;
    if(type == 0){
      	ll inv = fast_power(len, mod-2);
        for(int i = 0; i < len; ++i) 
          	a[i] = a[i] * inv % mod;
    }
    m5_dump_reset_stats(0,0);
}

int main()
{
    int n = 2, m = 3;  // 多项式 a 和 b 的次数
    a[0] = 1; a[1] = 2; a[2] = 3; // a(x) = 1 + 2x + 3x^2
    b[0] = 4; b[1] = 5; b[2] = 6; b[3] = 7; // b(x) = 4 + 5x + 6x^2 + 7x^3
    int len = 1 << max((int)ceil(log2(n + m)), 1); 
    for (int i = 0; i < len; ++i)                  //求rev
        rev[i] = (rev[i >> 1] >> 1) | ((i & 1) << (max((int)ceil(log2(n + m)), 1) - 1));
    NTT_cus(a, len, 1); //系数表示法转点值表示法
    NTT_cus(b, len, 1);
    for (int i = 0; i <= len; ++i)
        a[i] = a[i] * b[i] % mod;          //O(n)乘法
    NTT_cus(a, len, 0);                        //点值表示法转系数表示法
    for (int i = 0; i <= n + m; ++i)       //输出
        printf("%lld ", a[i]); 
    return 0;
} 
static void set_mod_reg(int val){
	__asm__ __volatile__(
        "setq x0,%0,x0"
		:
		:"r"(val)
		);
}
static long long add_mod(long long val1,long long val2){
    long long result;
    asm volatile (
        "addq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}
static long long sub_mod(long long val1,long long val2){
    long long result;
    asm volatile (
        "subq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}
static long long mul_mod(long long val1,long long val2){
    long long result;
    asm volatile (
        "mulq %0, %1, %2"  
        : "=r"(result)             
        : "r"(val1), "r"(val2)           
    );
    return result;
}