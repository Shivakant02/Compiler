%{
#include<stdio.h>
%}

%%
"if" {printf("IF");}
"else" {printf("ELSE");}
"then" {printf("THEN");}
"while" {printf("THEN");}
"<"|">" {printf("RELOP");}
[a-zA-Z][a-z|0-9]* {printf("IDENTIFIER");}
"("|")" {printf("bracket");}
[0-9]+ {printf("NUMBER");}
"./" {exit(0);}
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter the string\n");
    yylex();
    return 0;

}


