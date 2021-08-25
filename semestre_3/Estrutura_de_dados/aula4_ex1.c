/*
1- Reescreva o programa do caixa eletrônico utilizando ponteiro de funções.

faça um algoritmo que simule o funcionamento de um caixa eletrônico, onde será apresentado uma lista de operações:

1-Saldo
2-Saque
3-Deposito
Ao iniciar o programa determine um valor inicial para a variável saldo (utilize um ponteiro para manter o valor do saldo), se o cliente escolher a opção 1 mostre o valor do saldo, caso escolha o valor 2 leia o valor a ser sacado e verifique se existe saldo suficiente, se o saldo for maior ou igual , deduza da variável saldo o valor solicitado, caso não haja saldo suficiente mostre a mensagem “Saldo Insuficiente”, caso a opção 3 seja escolhida adicione o valor informado de deposito ao saldo. Implemente um laço faça enquanto que verifique se o usuário deseja continuar, caso a variável coletada for igual 1 reinicie o laço, mantendo o valor do saldo.
*/

#include <stdio.h>
//#include <stdlib.h>

int main() 
{
	int opcao =0, continua =0;
	float vlSaque = 0.00, vlDeposito = 0.00;
	float *p;
	float saldo = 3000.00;
	
	p = &saldo; 
	
	printf("**Seja Bem vindo ao Caixa Eletronico**\n");
	do{
		printf("\nDigite a opcao desejada: \n");
		printf ("\n1) Ver Saldo");
        printf ("\n2) Saque");
        printf ("\n3) Deposito\n\n");
        scanf("%i", &opcao);
        
        switch (opcao){
		case 1:
			printf("Seu saldo atual e: R$ %.2f \n", *p);
			break;
		
		case 2:
			printf("Informe o valor que deseja sacar: \n");
			scanf("%f", &vlSaque);
			if(vlSaque > *p)
            {
				printf("Seu saldo e insuficiente para esse saque. Tente um valor menor: \n");
			}
            else
            {
                printf("%f", *p);
				*p -= vlSaque;
                printf("%f", *p);
			}
			break;
			
		case 3:
			printf("Informe o valor que deseja depositar: \n");
			scanf("%f", &vlDeposito);
			*p += vlDeposito;
			break;
			
			default:
				printf ("Opcao Invalida, tente novamente");
		}
		
		printf ("\nDeseja continuar? \n");
		printf("1) Sim, me informe o menu novamente\n");
        printf("2) Nao, desejo sair \n");
        scanf("%i", &continua);
        
	}while (continua==1);
    
    return 0;
}
