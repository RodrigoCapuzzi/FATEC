

/*Crie um TAD que implemente o controle de uma conta bancaria, implemente fun��es para inicializar, deposito, sacar e imprimir o saldo.*/

#include <stdio.h>

struct{
	int agencia;
	int numConta;
    int digito;
	float saldo;
} typedef contaBancaria;

void inicializar(contaBancaria *conta){
    int agenciaLocal =0, contaLocal = 0, digitoLocal = 0;
    float saldoLocal = 0.0;
    printf("*****************************************************\n");
	printf("Bem vindo ao FatecBank\n");
	printf("*****************************************************\n");
	printf("Informe o numero da sua agencia: ");
    scanf("%i", &agenciaLocal);
    printf("Informe o numero da sua conta: ");
    scanf("%i", &contaLocal);
    printf("Informe o digito da sua conta: ");
    scanf("%i", &digitoLocal);
    conta -> agencia = agenciaLocal;
    conta -> numConta = contaLocal; 
    conta -> digito = digitoLocal; 
}

void imprimeSaldo (contaBancaria *conta){
    printf("Saldo Atual: R$ %.2f\n", conta->saldo);
	printf("AG: %i\n", conta->agencia);
    printf("Conta: %i\n", conta->numConta);
    printf("Digito: %i\n", conta->digito);
    
}

void deposito (contaBancaria * conta){
    float depositoLocal = 0.0;
    printf("Informe o valor que deseja depositar: R$ ");
    scanf("%f", &depositoLocal);
    conta -> saldo += depositoLocal;
    printf("\nDeposito realizado com sucesso!\n");
    
}

void saque (contaBancaria * conta){
    float saqueLocal = 0;
    printf("Informe o valor para saque: R$ ");
    scanf("%f", &saqueLocal);
    
    if((conta -> saldo) >=saqueLocal){
        (conta -> saldo) -= saqueLocal;
        printf("\nSaque realizado com sucesso!\n");
    } else{
    	printf("\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n");
        printf("\nSaldo Insuficiente!\n");
        printf("\nxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx\n");
    }

}

void main (){
    contaBancaria conta1;
    int op;  
    conta1.saldo = 1500;
    
    inicializar(&conta1);
    imprimeSaldo(&conta1);
	
    do{ 
        printf("\nEscolha a operacao desejada: \n");
    	printf("\n1) Saldo: ");
    	printf("\n2) Saque: ");
    	printf("\n3) Deposito: ");
    	scanf("%i", &op);
    	printf("\n");
    	switch(op){
    	    case 1:{
                imprimeSaldo(&conta1);
                break;
            }
            case 2:{
                saque(&conta1);
                break;
            }
            case 3:{
                deposito(&conta1);
                break;
            }
            default: {
                printf("Opcao Invalida");
            }
        }
        printf("\nAperte 1 para ver as opcoes novamente ou outra tecla para sair: ");
        scanf("%i", &op);
	}while(op==1);
    
    printf("\nInformacoes Finais:\n");
    imprimeSaldo (&conta1);
}