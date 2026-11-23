
#include <stdio.h>

int main()
{
    FILE *fp;
    char ch;
    int lines = 0, characters = 0;

    fp = fopen("input.txt", "r");

    if (fp == NULL)
    {
        printf("File not found!");
        return 1;
    }

    while ((ch = fgetc(fp)) != EOF)
    {
        characters++;

        if (ch == '\n')
        {
            lines++;
        }
    }

    fclose(fp);

    printf("Total Characters = %d\n", characters);
    printf("Total Lines = %d\n", lines);

    return 0;
}

