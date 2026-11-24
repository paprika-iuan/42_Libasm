#include <string.h>
#include <stdio.h>

int ft_strcmp(const char *s1, const char *s2);

int main() {
    printf("%s\n", "Diferent strings:")
    char *a = "Hola Mundo";
    char *b = "Hola World";
    char *c = "Mundo Hola";
    char *d = "Mundo Holi";
    char *e = "Mundo";
    char *f = "mundo";
    char *g = "";
    char *h = "mundos";
    char *i = "\t\n";
    char *j = "\t\r"

    printf("%s\n", "-> Positive number")
    printf("%d\n", ft_strcmp(a, b));
    printf("%d\n", strcmp(a, b));

    printf("%s\n", "-> Negative number")
    printf("%d\n", ft_strcmp(b, a));
    printf("%d\n", strcmp(b, a));

    printf("%s\n", "-> Same Srting")
    printf("%d\n", ft_strcmp(a, a));
    printf("%d\n", strcmp(b, b));

    printf("%s\n", "-> Different at the beginning")
    printf("%d\n", ft_strcmp(a, c));
    printf("%d\n", strcmp(a, c));

    printf("%s\n", "-> Different at the end")
    printf("%d\n", ft_strcmp(c, d));
    printf("%d\n", strcmp(c, d));

    printf("%s\n", "-> Different size")
    printf("%d\n", ft_strcmp(d, e));
    printf("%d\n", strcmp(d, e));

    printf("%s\n", "-> Different size")
    printf("%d\n", ft_strcmp(e, d));
    printf("%d\n", strcmp(e, d));

    printf("%s\n", "-> Caps")
    printf("%d\n", ft_strcmp(e, f));
    printf("%d\n", strcmp(e, f));

    printf("%s\n", "-> Empty String")
    printf("%d\n", ft_strcmp(g, g));
    printf("%d\n", strcmp(g, g));

    printf("%s\n", "-> Empty and not empty string")
    printf("%d\n", ft_strcmp(g, a));
    printf("%d\n", strcmp(g, a));

    printf("%s\n", "-> End of string")
    printf("%d\n", ft_strcmp(f, h));
    printf("%d\n", strcmp(f, h));

    printf("%s\n", "-> Non printable")
    printf("%d\n", ft_strcmp(i, j));
    printf("%d\n", strcmp(i, j));
    return (0);
}

