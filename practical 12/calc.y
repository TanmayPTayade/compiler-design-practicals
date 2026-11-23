
%{
#include <stdio.h>
#include <stdlib.h>
int yylex();
void yyerror(const char *s);
%}

%token NUMBER

%left '+' '-'
%left '*' '/'

%%
program:
    program expr '\n'   { printf("Result: %d\n", $2); }
    |
    ;

expr:
    NUMBER               { $$ = $1; }
    | expr '+' expr      { $$ = $1 + $3; }
    | expr '-' expr      { $$ = $1 - $3; }
    | expr '*' expr      { $$ = $1 * $3; }
    | expr '/' expr      { 
                            if($3 == 0) {
                                printf("Error: Division by zero\n");
                                $$ = 0;
                            } else {
                                $$ = $1 / $3;
                            }
                          }
    ;
%%

void yyerror(const char *s)
{
    printf("Error: %s\n", s);
}

int main()
{
    printf("Simple Desk Calculator\n");
    printf("Enter expressions (press Ctrl+D to end):\n");
    yyparse();
    return 0;
}
