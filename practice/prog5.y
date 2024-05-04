%{
    #include<stdio.h>
    #include<stdlib.h>
%}
%token za warudo japan
%%
s: sound place '\n' {printf("String is valid"); exit(0);}
sound:za warudo;
place:japan;
%%
int main(){
    yyparse();
    return 0;
}
int yyerror(){
    printf("string is invalid");
    exit(1);
}