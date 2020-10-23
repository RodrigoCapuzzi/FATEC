//Exercicio 5 - Faca um programa em C que dada uma distancia em km converta e exiba em milhas, onde 1Milha = 1,60934km.

#include <stdio.h>

int main()
{
    float a,b,c,d,media;
    printf("Informe um valor para a:");
    scanf("%f", &a);
    printf("Informe um valor para b:");
    scanf("%f", &b);
    printf("Informe um valor para c:");
    scanf("%f", &c);
    printf("Informe um valor para d:");
    scanf("%f", &d);
    //processamento
    media = (a+b+c+d)/4;
    //saida
    printf("A media dos numeros e: %.2f", media);
    return 0;
}
