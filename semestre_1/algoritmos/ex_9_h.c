/*
8- Crie um algoritmo onde será informado um valor inteiro inicial,  
e um laço o usuário devera informar outro numero inteiro, o programa deverá responder se o 
numero atual e menor ou maior que o numero inicial informado, o laço somente será interrompido 
quando o numero atual for igual ao número anterior informado. Exiba quantas tentativas foram necessárias 
para que o numero fosse descoberto.
*/

#include <stdio.h>

int main()
{
    int valor_inicial = 10;
    int contador = 1;
    int valor_informado;
    while (1)
    {
        printf("Tente advinhar o valor: \n");
        scanf("%i", &valor_informado);
        if (valor_inicial == valor_informado)
        {
            break;
        }
        else if (valor_informado > valor_inicial)
        {
            printf("Tente novamente! O valor informado é maior que o valor a ser descobrto!\n");
        }
        else
        {
            printf("Tente novamente! O valor informado é menor que o valor a ser descobrto!\n");
        }
        contador++;
    }
    printf("Você acertou! Após %i tentativas.", contador);
    return 0;
} 
