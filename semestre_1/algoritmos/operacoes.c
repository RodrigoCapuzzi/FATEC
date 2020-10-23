//2. Informe dois números reais e um número inteiro que represente a operação 
//matemática a ser realizada (1-soma, 2-subtração, 3- multiplicação, 4-divisão) 
//utilize o comando seleção aninhado e exiba o resultado da operação matemática escolhida.

#include<stdio.h>

int main(void)
{
    float numero1, numero2;
    int operador;
    printf("Informe o valor do primeiro numero\n");
    scanf("%f",&numero1);
    printf("Informe o valor do segundo numero\n");
    scanf("%f",&numero2);
    printf("Digite '1' para Soma, '2' para subtracao, 3 para multiplicacao ou 4 para divisao\n");
    scanf("%i",&operador);
    if (operador == 1)
    {
        float result = (numero1+numero2);
        printf("Resultado da soma = %.2f", result);
    }
    else
    {
        if (operador == 2)
        {
            float result = (numero1-numero2);
            printf("Resultado da subtracao = %.2f", result);
        }
        else
        {
            if (operador ==3)
            {
                float result = (numero1*numero2);
                printf("Resultado da multiplicacao = %.2f", result);
            }
            else
            {
                if (operador ==4)
                {
                    float result = (numero1/numero2);
                    printf("Resultado da divisao = %.2f", result);
                }
                else
                {
                    printf("Digite um operador valido!");
                }
                
            }
            
        }
        
    }
    
    return 0;
}
