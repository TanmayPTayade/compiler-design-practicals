
#include <stdio.h>

int main()
{
    FILE *fp, *ft;
    char ch, next;

    char filename[50];

    printf("Enter file name: ");
    scanf("%49s", filename);

    fp = fopen(filename, "r");

    if (fp == NULL)
    {
        printf("File not found!");
        return 1;
    }

    ft = fopen("output.c", "w");

    while ((ch = fgetc(fp)) != EOF)
    {
        // Check for single-line comment
        if (ch == '/')
        {
            next = fgetc(fp);

            if (next == '/')
            {
                while ((ch = fgetc(fp)) != EOF && ch != '\n')
                {
                    // Skip comment
                }
                continue;
            }
            else
            {
                fputc(ch, ft);
                if (next != EOF)
                    ungetc(next, fp);
            }
        }

        // Remove unnecessary white spaces
        else if (ch == ' ' || ch == '\t' || ch == '\n')
        {
            continue;
        }

        else
        {
            fputc(ch, ft);
        }
    }

    fclose(fp);
    fclose(ft);

    printf("Comments and white spaces removed successfully.");

    return 0;
}

