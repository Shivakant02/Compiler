%{
   #include<stdio.h>
   #include"y.tab.h" 
%}
%%
"za" {printf("Za "); return za;}
"warudo" {printf("Warudo "); return warudo;}
"japan" {printf("Japan "); return japan;}
"\n" {printf("\n") ; return '\n';}
%%
int yywrap(void){
    return 1; 
}