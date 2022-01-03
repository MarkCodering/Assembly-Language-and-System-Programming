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
    int Count;
    char input[32];
    itoa(num, input, 2);

    for(int i=0; i<32; i++){
        if(input[i] == '1'){
            Count++;
        }
    }
    
    return Count;
}
