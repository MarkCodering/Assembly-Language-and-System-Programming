#include <stdio.h>

int Positive(int *x, int n);

int main(void)
{
    int n = 6;
    int Pos;
    int Start[] = {100, -101, 0x2120, 0, 0xE605, 4};
    Pos = Positive(Start, n);
    printf("Pos = %d\n", Pos);
    return 0;
}

int Positive(int *x, int n)
{
    int ans = 0;
    for(int i=0; i<5; i++)
    {
        if(x[i] >= 0)
            ans++;
    }

    return ans;
}