#include<stdio.h>

int _Min(int a, int b, int c);

int main(void)
{
    int n1, n2, n3, min;
    n1 = -2;      
    n2 = 0x1023;  
    n3 = 100;
    min = _Min(n1, n2, n3);
    printf("The minimum of x,y, and z is %d\n", min);

    return 0;

}

int _Min(int x, int y, int z)
{
    int min;
    if (x < y)
    {
        min = x;
    }
    else 
    {
        min = y;
    }
    if (z < min)
    {
        min = z;
    }
    return min;
}