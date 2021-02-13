//1- escreva uma função recursiva para calcular o valor de uma base x elevada a um expoente y.

#include <stdio.h>
#include <stdlib.h>

int potencia(int x, int y);

int main()
{
    int x = 0;
    int y = 0;
    int resultado = 0;
    printf("Digite a Base x:\n");
    scanf("%i", &x);
    printf("Digite o Expoente y:\n");
    scanf("%i", &y);
    printf("A base x digitada foi: %i\n", x);
    printf("O expoente y digitado foi: %i\n", y);
    resultado = potencia(x,y);
    printf("E este eh o resultado de x elevado a y: %i!", resultado);
    return 0;
}

int potencia(int x, int y)
{
    if (y == 0)
    {
        return 1;
    }
    else if (y==1)
    {
        return x;
    }
    else
    {
        return x * potencia(x,y-1);
    }   
}
