#include<stdio.h> 

int Sum(int *x, int n);

int main(void)
{
    int n=3;
    int sum;
    int x[]={2040,-1222,242};
    sum = Sum(x,n);
    printf("Sum of x = %d\n",sum);

    return 0;
}

int Sum(int *x, int n)
{
    int i;
    int sum=0;
    for(i=0;i<n;i++)
    {
        sum += x[i];
    }
    return sum;

    /*

    */
}