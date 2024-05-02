%{
    #include <stdio.h>
    #include <stdlib.h>
%}
%token za warudo japan
%%
p:sound place '\n' {printf(" String is valid\n");
exit(0);}
sound: za warudo ;
place: japan ;
%%
int main() {
    yyparse();
    return 0;
}
int yyerror(){
    printf("String is invalid\n");
    exit(1);
}
