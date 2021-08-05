/*
DUPLA
Nome: Diego Mendes Carloni    R.A.:2040482023018   Data: 02/08/2020
Nome: Rodrigo Sanches Dias    R.A.:2040482023037

Atividade 01 – Estrutura de Dados

1-crie um programa em linguagem C com 4 funções (somar, subatrair, multiplicar e dividir) 
recebendo os parametros do tipo float A e float B o retorno de cada função deve ser o valor da operação matemática
2-crie um program em linguagem C que crie uma matriz de 10,3 armazene a nota P1, P2 e MEDIA nas respectivas colunas, 
crie uma função passando a matriz como parametro para identificar a maiorNotaP1, a maiorNotaP2 e a maiorMedia e mediaSala
*/

#include <stdio.h>

float somar(float a, float b)
{
    float som;
    som = a + b;
    return som;
}

float subtrair(float a, float b)
{
    float sub;
    sub = a - b;
    return sub;
}

float multiplicar(float a, float b)
{
    float mult;
    mult = a * b;
    return mult;
}

float dividir(float a, float b)
{
    float divi;
    divi = a/b;
    return divi;
}

int main()
{
    float a = 0, b = 0;
    printf("Digite a\n");
    scanf("%f", &a);
    printf("Digite b\n");
    scanf("%f", &b);
    printf("Resultado da soma: %.2f", somar(a,b));
    printf("\nResultado da subtracao: %.2f", subtrair(a,b));
    printf("\nResultado da multiplicacao: %.2f", multiplicar(a,b));
    printf("\nResultado da divisao: %.2f", dividir(a,b));          
    return 0;
}
