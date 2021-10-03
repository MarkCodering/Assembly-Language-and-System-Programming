#include<stdio.h>

int len(char *buffer);

int main(void)
{
    char *Start = "Hello, this is my first program!";

    int Len;
    Len = len(Start);
    printf("String: %s\n", Start);
    printf("Length: %d\n", Len);
    return 0;
}

int len(char *buffer)
{
    int i = 0;
    while(*buffer != '\0')
    {
        i++;
        buffer++;
    }
    return i;
}