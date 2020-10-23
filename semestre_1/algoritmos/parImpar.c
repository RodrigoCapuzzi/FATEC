//Faça um algoritmo que receba um número inteiro,
//identifique se este e par ou impar, 
//utilize o modulo de 2 para calcular o resto da divisão, 
//se o resto da divisão for zero (o número e par) 
//caso o resto da divisão for 1 (o número e impar) resto = numero % 2;
#include <stdio.h>

int main()
{
    //entrada
    int a, resto;
    printf("Por favor, digite um numero inteiro:");
    scanf("%i", &a);
    //processamento
    resto = a%2;
    //saida
    if (resto==0)
    {
        printf("O numero eh par");
    }
    else
    {
        printf("O numero eh impar");
    }
    return 0;  
}
