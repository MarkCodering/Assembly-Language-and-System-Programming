#include <stdio.h>
// function
int Sum(int x, int y)
{
int z;
 
 z = x + y;
 return z;
}
int main(void)
{
 int x, y, z;
 x = 123;
 y = 456;
 z = Sum(x, y);
 
 printf("x(%d) + y(%d) = %d\n", x, y, z);
}