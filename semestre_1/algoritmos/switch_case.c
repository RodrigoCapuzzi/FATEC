//Rodrigo Sanches Dias
//ADS Noturno | FATEC Ipiranga

//A – Faça um algoritmo que implemente um laço que leia X números inteiros e identifique qual o menor o maior e a media, 
//quando o número informado for zero, interrompa o laço e exiba os valores.

#include <stdio.h>

int main()
{
    int n1, n2;
    double media;
    while (1)
    {
        printf("Digite o primeiro numero inteiro:");
        scanf("%i", &n1);
        printf("Digite o segundo numero inteiro:");
        scanf("%i", &n2);
        if (n1 ==0 || n2 ==0)
        {
            break;
        }
        media = ((n1 + n2)/(double)2);
        if (n1<n2)
        {
            printf("O primeiro numero digitado eh o menor.\n");
            printf("O segundo numero digitado eh o maior.\n");
            printf("A media eh: %.1f\n", media); 
        }
        else
        {
            printf("O segundo numero digitado eh o menor.\n");
            printf("O primeiro numero digitado eh o maior.\n");
            printf("A media eh: %.1f\n", media); 
        }
    }
    return 0;
}
