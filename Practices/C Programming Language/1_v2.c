#include <stdio.h>

unsigned int Count1Bits(unsigned int num);

int main(void)
{
    unsigned int Value = 0x5AA555AA;
    unsigned int Count;

    Count = Count1Bits(Value);

    printf("Value=%08X, Count=%d\n", Value, Count);
    return 0;
}

unsigned int Count1Bits(unsigned int num)
{
    int Counter = 0;
    int op;
    for (int i = 0; i < 32; i++)
    {
        op = num % 2;
        num = num / 2;
        if (op == 1)
        {
            Counter++;
        }else{
            Counter = Counter;
        }
    }
    return Counter;
}