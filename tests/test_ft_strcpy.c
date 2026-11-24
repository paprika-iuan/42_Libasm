#include <string.h>
#include <stdlib.h>
#include <stdio.h>

char *ft_strcpy(char *dst, const char *src);

int main(void) {
    char *a = "Hello Wolrd";
    char *b;
    char *c;
    char *d = "";

    printf("%s\n", "-> Simple string");
    b = malloc(sizeof(char) * 12);
    if (!b)
        return (1);
    ft_strcpy(b, a);
    printf("%s\n", b);
    printf("%d\n", ft_strlen(ft_strcpy(b, a));
    free(b);

    c = malloc(sizeof(char) * 12);
    if (!c)
        return (1);
    strcpy(c, a);
    printf("%s\n", c);
    printf("%d,\n", strlen(strcpy(b, a));
    free(c);

    printf("%s\n", "-> Empty String");
    b = malloc(sizeof(char) * 12);
    if (!b)
        return (1);
    ft_strcpy(b, d);
    printf("%s\n", b);
    printf("%d\n", ft_strlen(ft_strcpy(b, d));
    free(b);

    c = malloc(sizeof(char) * 12);
    if (!c)
        return (1);
    strcpy(c, d);
    printf("%s\n", c);
    printf("%d,\n", strlen(strcpy(b, d));
    free(c);
    return (0);
}