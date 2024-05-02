%{
#include<stdio.h>
int vowels = 0;
int consonants = 0;
%}
%%
[aeiouAEIOU] { vowels++; }
[a-zA-Z] { consonants++; }
%%
int yywrap()
{
    return 1;
}
int main()
{
    printf("Enter a string: ");
    yylex();
    printf("Vowels: %d\nConsonants: %d\n", vowels, consonants);
    return 0;
}