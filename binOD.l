%{
#include <stdio.h>
%}
%%
[0-1]+[b] {printf("binary\n");}
[0-7]+[o] {printf("octal\n");}
[0-9]+[d] {printf("decimal\n");}
[0-9A-F]+[h] {printf("hexadecimal\n");}
%%

int yywrap(void) {
    return 1;
}

int main(void) {
    printf("Enter a number: ");
    yylex();
    return 0;
}
