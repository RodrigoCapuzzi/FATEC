//Exercicio de Recuperação
//Informe três números inteiros, utilizando comandos de seleção encadeados, defina qual o menor, do meio e o maior número.
//Caso os números forem iguais, mostre a mensagem : Números Iguais, verifique

#include <stdio.h>

int main (void)
{
    int n1, n2, n3;
    printf("Informe o primeiro numero: \n");
    scanf("%i",&n1);
    printf("Informe o segundo numero: \n");
    scanf("%i",&n2);
    printf("Informe o terceiro numero: \n");
    scanf("%i",&n3);
    if(n1==n2 && n1 == n3)
    {
        printf("Todos os numeros sao iguais. Verifique\n");
    }
    else
    {
        if(n1 < n2 && n1<n3)
        {
            printf("O primeiro numero eh o menor\n");
            if(n2<n3)
            {
                printf("O segundo numero eh o do meio\ne o terceiro numero eh o maior");
            }
            else
            {
                printf("O terceiro numero eh o do meio\ne o segundo numero eh o maior");
            } 
        }
        else
        {
            if( n2< n1 && n2< n3)
            {
                printf("O segundo numero eh o menor\n");
                if(n1<n3)
                {
                    printf("O primeiro numero eh o do meio\ne o terceiro eh o maior");
                }
                else
                {
                    printf("O terceiro numero eh o do meio\ne o primeiro numero eh o maior");
                }
            }
            else
            {
                printf("O terceiro numero eh o menor\n");
                if(n1<n2)
                {
                    printf("O primeiro numero eh o do meio\ne o segundo numero eh o maior");
                }
                else
                {
                    printf("O segundo numero eh o do meio\ne o primeiro numero eh o maior");
                }
            }
        }
    }
}
