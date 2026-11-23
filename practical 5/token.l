
%{
#include <stdio.h>
%}

%%
[0-9]+                  { printf("Number: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*    { printf("Identifier: %s\n", yytext); }
[+\-*/=]                { printf("Operator: %s\n", yytext); }
[();]                   { printf("Special Symbol: %s\n", yytext); }
[ \t\n]+                ;
.                       { printf("Unknown Token: %s\n", yytext); }
%%

int main()
{
    printf("Enter an expression:\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}

