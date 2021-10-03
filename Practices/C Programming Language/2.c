#include<stdio.h>

short _Max(short a, short b)
{
    int answer;
    if (a > b)
        answer = a;
    else
        answer = b;
    return answer;
}

int main()
{      
    short x=0x1234, y=0x8001, max;      
    max=_Max(x, y);         
    
    printf("max of x, y = %d\n", max);      
    return 0;     
} 