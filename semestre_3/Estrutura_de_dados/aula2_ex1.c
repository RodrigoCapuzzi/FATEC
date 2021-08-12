/*
1- Escreva uma função recursiva para calcular o valor de uma base x elevada a um expoente y.
*/

#include<stdio.h>

int exponencial(int base, int expoente)
{
    if (expoente == 0)
        return 1;
    else
        return base * exponencial(base, expoente - 1);
}

void main()
{
    int base, exp;
    printf("Digite a base: ");
    scanf("%i", &base);
    printf("Digite o expoente: ");
    scanf("%i", &exp);
    printf("%i elevado a %i eh: %i",base, exp, exponencial(base, exp)); 
}
