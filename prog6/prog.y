%{
#include<stdio.h>
#include<stdlib.h>
void yyerror(char*);
%}
%token DIG PLUS MUL
%%
S:E '\n' {printf("\n result=%d\n",$1);return;};
E:E PLUS T{$$=$1+$3;} | T{$$=$1;};
T:T MUL F{$$=$1*$3;} | F {$$=$1;};
F:'('E')' {$$=$2;} | DIG {$$=$1;};
%%
void yyerror(char*str){
    fprintf(stderr,"%s",str);
}
int main(){
    yyparse();
    return 0;
}