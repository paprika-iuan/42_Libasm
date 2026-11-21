#include <string.h>
#include <stdlib.h>
#include <stdio.h>

char *ft_strcpy(char *dst, const char *src);

int main(void) {
    char *a = "Hello Wolrd";
    char *b;
    char *c;

    b = malloc(sizeof(char) * 12);
    if (!b)
        return (1);
    ft_strcpy(b, a);
    printf("%s\n", b);
    free(b);

    c = malloc(sizeof(char) * 12);
    if (!c)
        return (1);
    strcpy(c, a);
    printf("%s\n", c);
    free(c);

    return (0);
}