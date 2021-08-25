/*
1- Reescreva o programa do caixa eletrônico utilizando ponteiro de funções.

faça um algoritmo que simule o funcionamento de um caixa eletrônico, onde será apresentado uma lista de operações:

1-Saldo
2-Saque
3-Deposito
Ao iniciar o programa determine um valor inicial para a variável saldo (utilize um ponteiro para manter o valor do saldo), se o cliente escolher a opção 1 mostre o valor do saldo, caso escolha o valor 2 leia o valor a ser sacado e verifique se existe saldo suficiente, se o saldo for maior ou igual , deduza da variável saldo o valor solicitado, caso não haja saldo suficiente mostre a mensagem “Saldo Insuficiente”, caso a opção 3 seja escolhida adicione o valor informado de deposito ao saldo. Implemente um laço faça enquanto que verifique se o usuário deseja prosseguirr, caso a variável coletada for igual 1 reinicie o laço, mantendo o valor do saldo.
*/

#include <stdio.h>

void main(){
	int operacao = 0, prosseguir = 0;
	float saque = 0.00, deposito = 0.00, saldo = 1897.31;
	float *p = &saldo;
	printf("\n***Caixa Eletronico Ponteiros SA***\n");
	do{
		printf("\nEscolha uma das opcoes abaixo: \n\n1- Saldo \n2- Saque\n3- Deposito\n\n");
        scanf("%i", &operacao);
        switch (operacao){
		case 1:
			printf("Saldo atual: R$ %.2f \n", *p);
			break;
		case 2:
			printf("Quanto gostaria de sacar: \n");
			scanf("%f", &saque);
			if (saque > *p)
				printf("Saldo insuficiente. Voce nao tem limite contratado. Tente um valor menor: \n");
            else
				*p -= saque;
			break;
		case 3:
			printf("Qual valor gostaria de depositar: \n");
			scanf("%f", &deposito);
			*p += deposito;
			break;
			default:
				printf ("Escolha uma operacao valida");}
		printf ("\nDeseja Sair? \n1) Nao. Voltar ao Menu Principal\n2) Sim, desejo sair.\n");
        scanf("%i", &prosseguir);}
    while (prosseguir==1);}
