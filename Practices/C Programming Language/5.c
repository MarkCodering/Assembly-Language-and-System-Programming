#include <stdio.h>

short MAX(int *x, int n);

int main(void)
{
    int n = 4;
    int _Max = 0;
    short x[] = {0xA484, 0x71AC, 0xE57A, 0x32F1};
    _Max = MAX(x, n);
    printf("Max of x is %04X\n", _Max);
    return 0;
}

short MAX(int *x, int n)
{
    short max = 0;
    while (n--){
        int i = 0;
        if (x[i] > max)
        {
            max = x[i];
            i++;
        }
        else
        {
            i++;
        }
    }
    return max;
}
