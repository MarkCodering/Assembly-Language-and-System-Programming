#include<stdio.h>

int sum(int n);

int main(void)
{
    int n=100, total;
    total = sum(n);
    printf("%d\n", total);
    return 0;
}

int sum(int n)
{
    if(n==1)
        return 1;
    else
        return n+sum(n-1);
}