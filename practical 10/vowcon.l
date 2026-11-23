
%{
#include <stdio.h>
int vowels = 0, consonants = 0;
%}

%%
[aeiouAEIOU]    { vowels++; }
[a-zA-Z]        { consonants++; }
.|\n            ;
%%

int main()
{
    printf("Enter a string (press Ctrl+D to end):\n");
    yylex();
    printf("\nVowels: %d\nConsonants: %d\n", vowels, consonants);
    return 0;
}

int yywrap()
{
    return 1;
}
