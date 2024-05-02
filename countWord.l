%{
#include<stdio.h>
int lines=0;
int word=0;
int space=0;
%}
%%
[\n] {lines++;}
[\t] {space+=4;}
([a-zA-Z0-9])* {word++;}
[ ] {space++;}
%%
int yywrap(void)
{
return 1;
}
int main()
{
printf("Enter the text\n");
yylex();
printf("lines=%d\nwords=%d\nspaces=%d\n",lines,word,space);
return 0;
}
