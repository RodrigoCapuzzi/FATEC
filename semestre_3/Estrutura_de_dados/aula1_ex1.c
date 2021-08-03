/*

1-crie um programa em linguagem C com 4 funções (somar, subatrair, multiplicar e dividir) 
recebendo os parametros do tipo float A e float B o retorno de cada função deve ser o valor da operação matemática

2-crie um program em linguagem C que crie uma matriz de 10,3 armazene a nota P1, P2 e MEDIA nas respectivas colunas, 
crime uma função passando a matriz como parametro para identificar a maiorNotaP1, a maiorNotaP2 e a maiorMedia e mediaSala

*/
#include<stdio.h>
#include<stdlib.h>

//float r;

float somar(float x, float y)
{
    float r;
    r = x + y;
    return r;
}

float subtrair(float a, float b)
{
    float r;
    r = a - b;
    return r;
}

float multiplicar(float a, float b)
{
    float r;
    r = a * b;
    return r;
}

float dividir(float a, float b)
{
    float r;
    r = a/b;
    return r;
}

int main()
{
    int op;
    float a,b,result;
    printf("Digite a\n");
    scanf("%d", &a);
    printf("Digite b\n");
    scanf("%d", &b);
    printf("Escolha a operacao:\n");
    printf("1 para somar\n");
    printf("2 para subtrair\n");
    printf("3 para multiplicar\n");
    printf("4 para dividir\n");
    printf("0 para sair\n");
    scanf("%i", &op);
    switch (op)
    {
        case 1:
            somar(a,b);
            printf("Resultado da soma: %d", result);
            break;
        case 2:
            subtrair(a,b);
            printf("Resultado da subtracao: %d",result);
            break;
        case 3:
            multiplicar(a,b);
            printf("Resultado da multiplicacao: %d",result);
            break;
        case 4:
            dividir(a,b);
            printf("Resultado da divisao: %d",result);
            break;
        case 0:
            break;
    }
    return 0;
}
