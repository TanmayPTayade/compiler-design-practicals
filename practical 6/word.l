
%{
#include <stdio.h>
%}

%%
[a-zA-Z]+       { printf("Word: %s\n", yytext); }
[0-9]+          { printf("Number: %s\n", yytext); }
[ \t\n]+        ;
.               { printf("Special Character: %s\n", yytext); }
%%

int main()
{
    printf("Enter a string:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}

