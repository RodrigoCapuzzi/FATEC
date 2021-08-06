/*1- escreva uma função recursiva para calcular o valor de uma base x elevada a um expoente y*/

#include<stdio.h>

int exponencial(int base, int expoente)
{
    int nova;
    if (expoente == 0)
        return 1;
    else
        return base * exponencial(base, expoente - 1);
}

void main()
{
    int base, exp, resultado;
    printf("Digite a base: ");
    scanf("%i", &base);
    printf("Digite o expoente: ");
    scanf("%i", &exp);
    printf("Resultado: %i", exponencial(base, exp)); 
}
