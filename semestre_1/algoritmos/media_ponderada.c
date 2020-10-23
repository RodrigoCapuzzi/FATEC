//Faca um programa em C que calcule a media ponderada de 3 números reais (A,B e C)  mostre o resultado onde os pesos serão (2,3,5)

#include <stdio.h>

int main()
{
    float A,B,C,media;
    //entrada
    printf("Digite o valor de A, sendo A um numero real: ");
    scanf("%f",&A);
    printf("Digite o valor de B, sendo B um numero real: ");
    scanf("%f",&B);
    printf("Digite o valor de C, sendo C um numero real: ");
    scanf("%f",&C);
    //processamento
    media = (2*A+3*B+5*C)/10;
    //saída
    printf("A media ponderada dos valores eh: %.2f", media);
    return 0;
}
