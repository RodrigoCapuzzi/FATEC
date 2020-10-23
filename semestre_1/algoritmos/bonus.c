//1. A empresa XPTO concedeu um bônus de 20% do valor do salário a todos os funcionários
//com tempo de trabalho na empresa igual ou superior a 5 anos e de 10% aos demais.
//Faça um um programa em C que receba o salário e o tempo de serviço de um
//funcionário, calcule e mostre o valor do bônus recebido por ele.

#include <stdio.h>

int main()
{
    //declaração de variável
    float salario, tempo, bonus;
    //entrada dos dados
    printf("Qual o salario do funcionario?\n");
    scanf("%f", &salario);
    printf("Ha quanto tempo o funcionario trabalha na empresa, em anos?\n");
    scanf("%f", &tempo);
    if (tempo>=5)
    {
        //processamento
        bonus = salario*0.2;
        //saída
        printf("O bonus sera de %.2f\n", bonus);
        printf("O bonus com o salario sera de %.2f\n", bonus+salario);
    }
    else
    {
        //processamento
        bonus = salario*0.1;
        //saida
        printf("O bonus sera de %.2f\n", bonus);
        printf("O bonus com o salario sera de %.2f\n", bonus+salario);
    }
    return 0;
}
