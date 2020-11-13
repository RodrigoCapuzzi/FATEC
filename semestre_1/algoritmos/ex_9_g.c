//7- Faça um algoritmo que conte de 1 a 100 e a cada múltiplo de 3 e 5 simultaneamente 
//emita uma mensagem:  “Múltiplo de 3 e 5”.


#include <stdio.h>

int main()
{
    for (int i = 1; i <= 100; i++)
    {
        if (i%3==0 && i%5==0)
        {
            printf("%i é múltiplo de 3 e 5!\n", i);
        }    
    }
    return 0;
}
