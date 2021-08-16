/*
Nome: Diego M Carloni        RA: 2040482023018
Nome: Rodrigo S D Capuzzi    RA: 2040482023037

1- Qual o valor de y no final do programa? 


#include <stdio.h>
main()
{
int y, *p, x;
y = 0;
p = &y; // variavel de ponteiro p recebe o endereço da variavel y
x = *p; // x recebe o valor para o qual p aponta
x = 4; // sobrescrev-se o valor 4 na variavel x
++(*p); incrementa-se uma unidade no valor de p *p = 1/y=1
x–; // x =3
(*p) += x++; // o valor do ponteiro p passa a ser x acrescido de uma unidade, ou seja, x, que era 3, mais um.
printf (“y = %d\n”, y); //portanto y e *p = 4;

Resp final:
y=4

*/