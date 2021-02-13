/*1. Dizemos que um inteiro positivo n é perfeito se for igual à soma de seus divisores positivos diferentes de n. Dado um inteiro positivo n, verificar se n é perfeito.
Exemplo 1: 6 é perfeito, pois 1+2+3 = 6	
Exemplo 2: 20 não é perfeito, pois 1+2+4+5+10 = 22*/

#include<stdio.h>

int main()
{
    int n;
    printf("Digite um numero N:\n");
    scanf("%i", &n);
    for (int i = 0; i < n - 1; i++)
    {
        if (n % i = 0)
        {
            soma = soma + i;
        }
        
    }    
    return 0;
}
