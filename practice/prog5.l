%{
    #include<stdio.h>
    #include<stdlib.h>n
    #include "y.tab.h"
%}
%%
"za" {printf("ZA "); return za;}
"warudo" {printf("WARUDO "); return warudo;}
"japan" {printf("JAPAN ");return japan;}
"\n " {printf("\n") return '\n';}
. {exit(0);}
%%
int yywrap(void)
{
}