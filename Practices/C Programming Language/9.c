#include <stdio.h>

void copy(char *, char *, unsigned int n);
int len(char *);

int main(void)
{
    char *src="Hello, this is my first program!";
    char dest[200];
    unsigned int n;
    n = len(src) + 1; //呼叫第8題所設計的函數
    copy(dest, src, n);
    printf("src=%s\n", src);
    printf("dst=%s\n", dest);
    return 0;
}

void copy(char *dst, char *src, unsigned int n)
{
    while (n--)
        (*dst++) = (*src++);
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