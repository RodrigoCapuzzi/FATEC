/*Qualquer número natural de quatro algarismos pode ser dividido em duas dezenas formadas pelos seus dois primeiros e dois últimos  dígitos.
Exemplos:
 1297: 12 e 97.
 5314: 53 e 14.
Escreva um programa que imprime todos os milhares (4 algarismos) cuja raiz quadrada seja a soma das dezenas formadas pela divisão acima.

Exemplo: raiz de 9801 = 99 = 98 + 01.
Portanto 9801 é um dos números a ser impresso.
*/

#include <stdio.h>
#include <math.h>

int main()
{
    int dois_primeiros;
    int dois_ultimos;
    int raiz;
    int soma;
    for (int x = 1000; x <= 9999; x++)
    {
        dois_primeiros = x/100;
        dois_ultimos = x%100;
        raiz = sqrt(x);
        soma = dois_primeiros + dois_ultimos;
        if (soma == raiz)
        {
            printf("%d\n", x);
        }
    }
    return 0;
}
