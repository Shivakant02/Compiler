%{
    #include<stdio.h>
    #include<stdlib.h>
    #include "y.tab.c"
    extern int yylval;
    void yyerror(char*);
%}
%%
[0-9]+ {yylval=atoi(yytext);printf("DIGIT");return (DIG);}
"+" {printf("PLUS");return(PLUS);}
"*" {printf("MUL");return(MUL);}
[()] {printf("%c",*yytext);return(*yytext);}
\n {return(*yytext);}
[\t];
. {yyerror("Invalid input");}
%%
int yywrap(){
    return 1;
}