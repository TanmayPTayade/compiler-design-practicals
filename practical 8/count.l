
%{
#include <stdio.h>
int words = 0, chars = 0, lines = 0;
%}

%%
[a-zA-Z]+   { words++; chars += yyleng; }
\n          { lines++; chars++; }
.           { chars++; }
%%

int main()
{
    printf("Enter the input (press Ctrl+D to end):\n");
    yylex();
    printf("\nWords: %d\nCharacters: %d\nLines: %d\n", words, chars, lines);
    return 0;
}

int yywrap()
{
    return 1;
}
