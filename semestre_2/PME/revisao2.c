/*Dado um número natural na base binária, transformá-lo para a base decimal.
Exemplo: Dado 10010 a saída será 18, pois 1. 2^4 + 0. 2^3 + 0. 2^2 + 1. 2^1 + 0. 2^0 = 18.*/


#include <stdio.h>

int main()
{
    int soma = 0;
    int pot = 1;
    int bin = 0;
    int dig =0;
    printf("Digite um numero binario;");
    scanf("%d", &bin);
    while (bin > 0)
    {
        dig = bin % 10;
        bin = bin / 10; 
        soma = soma + dig * pot;
        pot = pot * 2;
    }
    printf("Numero na base 10: %d", soma);
    return 0;
}
