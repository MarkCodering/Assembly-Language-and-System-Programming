#include <stdio.h>

int int_min(int x, int y, int z);

int main(void)
{
    int n1, n2, n3, min;
    n1 = -2;
    n2 = 0x1023;
    n3 = 100;
    min = int_min(n1, n2, n3);
    printf("min of x, y and z is %d\n", min);
    return 0;
}

int int_min(int x, int y, int z)
{
    int min;
    if (x < y)
        min = x;
    else
        min = y;
    if (z < min)
        min = z;
    return min;
}