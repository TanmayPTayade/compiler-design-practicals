
#include <stdio.h>
#include <string.h>

int main()
{
    char str[50];

    printf("Enter a string: ");
    scanf("%49s", str);

    if (strcmp(str, "int") == 0 ||
        strcmp(str, "float") == 0 ||
        strcmp(str, "char") == 0 ||
        strcmp(str, "double") == 0 ||
        strcmp(str, "if") == 0 ||
        strcmp(str, "else") == 0 ||
        strcmp(str, "while") == 0 ||
        strcmp(str, "for") == 0 ||
        strcmp(str, "return") == 0 ||
        strcmp(str, "void") == 0)
    {
        printf("%s is a keyword.", str);
    }
    else
    {
        printf("%s is not a keyword.", str);
    }

    return 0;
}

