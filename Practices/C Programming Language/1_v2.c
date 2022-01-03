#include <stdio.h>

unsigned int Count1Bits(unsigned int value);

int main(void)
{
    unsigned int Value = 0x5AA555AA;
    unsigned int Count;

    Count = Count1Bits(Value);

    printf("Value=%08X, Count=%d\n", Value, Count);
    return 0;
}

unsigned int Count1Bits(unsigned int value)
{
    int i = 0;
    int count = 0;
    unsigned int mask = 1;

    for (i=0; i<32;++i){
        if(value&mask) count++;
        mask <<= 1;
    }

    return count;
}