//D- Faça um algoritmo que dado valor inteiro informado, calcule e exiba a tabuada do numero de 1 a 10

#include <stdio.h>

int main()
{
    int n, result;
    printf("Qual tabuada voce quer?\n");
    scanf("%i", &n);
    for (int i = 0; i <= 10; i++)
    {
        result = i * n;
        printf("%i * %i = %i\n", i, n, result);
    }
    return 0;
}
