#include <stdio.h>

void copy(char *, char *, unsigned int n);
void fastcopy(char *, char *, unsigned int n);
int len(char *);

int main(void)
{
    char *src = "Hello, this is my first program! I love C/C++ programming";
    char dest[200];
    unsigned int n;

    n = len(src) + 1; //呼叫第8題所設計的函數
    //copy(dest, src, n);
    fastcopy(dest, src, n); //A fast copy function

    printf("src= %s\n", src);
    printf("dst= %s\n", dest);

    return 0;
}

void fastcopy(char *dst, char *src, unsigned int n)
{
    while (n>=2)
    {
        *(unsigned int *)dst = *(unsigned int *)src;
        dst += 4;
        src += 4;
        n -= 2;
    }
}

void copy(char *dst, char *src, unsigned int n)
{
    while (n--)
    {
        *dst++ = *src++;
    }
}

int len(char *src)
{
    int i = 0;
    while (*src!='\0'){
        i++;
        *src++;
    }

    return i;
}