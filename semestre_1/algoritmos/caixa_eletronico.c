//B- Reutilizando o algoritmo do caixa eletrônico, implemente um laço faça enquanto que verifique se o usuário deseja continuar, 
//caso a variável coletada for igual 1 reinicie o laço, mantendo o valor do saldo.

#include <stdio.h>

int main ()
{
    float saldo, saque, deposito;
    int op, continua;

    saldo = 400;
    continua =1;
    
    while (continua == 1)
    {
        printf ("Bem vindo ao Banco XYZ!\n");
        printf ("Digite a opcao correspondente:\n");
        printf ("1- Saldo\n");
        printf ("2- Saque\n");
        printf ("3- Deposito\n");
        scanf("%i", &op);
    
        switch ( op )
        {
            case 1 :
            printf ("Seu saldo eh de: %.2f\n", saldo);
            break;
        
            case 2 :
            printf ("O quanto voce quer sacar?\n");
            scanf("%f", &saque);
            saldo = (saldo - saque);
                if ( saldo >= 0 )
                {
                    printf("Operacao realizada com sucesso, retire seu dinheiro!\n");
                    printf("Seu novo saldo eh de: %.2f\n", saldo);
                }
                else
                {
                printf("Saldo insuficiente!\n");
                }
            break;
        
            case 3 :
            printf ("O quanto voce quer depositar?\n");
            scanf("%f", &deposito);
            saldo = (saldo + deposito);
            printf("Operacao realizada com sucesso!\n");
            printf("Seu novo saldo eh de: %.2f\n", saldo);
            break;
        
            default :
            printf ("Valor invalido!\n");
        }
        printf("Deseja continuar? Escolha a opcao:\n");
        printf("1 - Sim\n");
        printf("2 - Nao\n");
        scanf("%i", &continua);
    }
    printf("Obrigado por usar nosso caixa eletronico!");
    return 0;
}
