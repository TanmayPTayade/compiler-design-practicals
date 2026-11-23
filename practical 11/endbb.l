
%{
#include <stdio.h>
%}

%%
[a-zA-Z]*bb\n   { printf("Valid: String \"%.*s\" ends with bb\n", yyleng-1, yytext); }
[a-zA-Z]+\n     { printf("Invalid: String \"%.*s\" does not end with bb\n", yyleng-1, yytext); }
\n              ;
.               ;
%%

int main()
{
    printf("Enter strings (press Ctrl+D to end):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
