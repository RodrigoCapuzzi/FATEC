//4- faça um laço “faça até” com 10 interações, 
//verifique quantas vezes números múltiplos de 2 e de 3 são informados

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n, mult_2, mult_3;
    mult_2 = 0;
    mult_3 = 0;
    for (int i = 0; i < 10; i++)
    {
        printf("Digite um número");
        scanf("%i", &n);
        if (n%2==0 && n%3==0)
        {
            mult_2 += 1;
            mult_3 += 1;
        }     
        else if (n%2==0)
        {
            mult_2 += 1;
        }
        else if (n%3 ==0)
        {
            mult_3 += 1;
        }
    }
    printf("Dos números informados, %i são múltiplos de 2 e %i são múltiplos de 3", mult_2, mult_3);
    return 0;
}
