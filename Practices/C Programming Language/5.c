#include<stdio.h>

short _Max(short a, short b);

int main(void)
{
    short x=0x1234, y=0x8001, max;
    max = _Max(x, y);
    printf("The max of x and y is: %d\n", max);
    return 0;
}

short _Max(short x, short y)
{
    short max;
    if(x>y)
        max = x;
    else
        max = y;

    return max;
}