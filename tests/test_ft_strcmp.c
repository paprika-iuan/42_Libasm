#include <string.h>
#include <stdio.h>

int ft_strcmp(const char *s1, const char *s2);

int main() {
    char *a = "Hola Mundo";
    char *b = "Hola Loko";

    printf("%d\n", ft_strcmp(a, b));
    printf("%d\n", strcmp(a, b));
    return (0);
}

