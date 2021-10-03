#include <stdio.h>

int ZeroCount(int *x, int n, int *Pos, int *Neg);

int main(void)
{
    int n = 7;
    int Pos, Neg = 0;
    int Zero;
    int Start[] = {7602, 848, -2120, 0, -605, 4, 0};
    Zero = ZeroCount(Start, n, &Pos, &Neg);
    printf("Zero = %d, Positive = %d, Negative = %d\n", Zero, Pos, Neg);
    return 0;
}

int ZeroCount(int *x, int n, int *pos_count, int *neg_count)
{ 
    int count = 0;
    for (int i = 0; i < n; i++)
    {
        if (x[i] == 0)
        {
            count++;
        }
        else if (x[i] > 0)
        {
            (*pos_count)++;
        }
        else if(x[i] < 0)
        {
            (*neg_count)++;
        }
    }
    return count;
}