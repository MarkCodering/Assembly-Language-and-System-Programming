#include<stdio.h>   

unsigned int Count1Bits(unsigned int num);

int main(void){
    unsigned int Value=0x5AA555AA;
    unsigned int Count;

    Count=Count1Bits(Value);

    printf("Value=%08X, Count=%d\n", Value, Count);
    return 0;
}

unsigned int Count1Bits(unsigned int num){
   __asm__(
       ".Start_"
       "LDR r0  @Move r1 with number 0"
       "SUB R0, 2"
   );
}