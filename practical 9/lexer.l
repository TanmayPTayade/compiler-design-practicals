
%{
#include <stdio.h>
%}

%%
"int"|"float"|"char"|"double"|"void"|"return"|"if"|"else"|"while"|"for"|"do"|"switch"|"case"|"break"|"continue"   { printf("Keyword: %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*    { printf("Identifier: %s\n", yytext); }
[0-9]+(\.[0-9]+)?          { printf("Number: %s\n", yytext); }
"+"                        { printf("Operator: +\n"); }
"-"                        { printf("Operator: -\n"); }
"*"                        { printf("Operator: *\n"); }
"/"                        { printf("Operator: /\n"); }
"="                        { printf("Operator: =\n"); }
"=="                       { printf("Operator: ==\n"); }
"<"                        { printf("Operator: <\n"); }
">"                        { printf("Operator: >\n"); }
"<="                       { printf("Operator: <=\n"); }
">="                       { printf("Operator: >=\n"); }
"!="                       { printf("Operator: !=\n"); }
"("                        { printf("Punctuation: (\n"); }
")"                        { printf("Punctuation: )\n"); }
"{"                        { printf("Punctuation: {\n"); }
"}"                        { printf("Punctuation: }\n"); }
";"                        { printf("Punctuation: ;\n"); }
","                        { printf("Punctuation: ,\n"); }
[ \t\n]+                   ;
.                          { printf("Unknown Token: %s\n", yytext); }
%%

int main()
{
    printf("Enter C code (press Ctrl+D to end):\n");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
