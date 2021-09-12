/*
ENUNCIADO

No sistema bancário brasileiro todas as contas possuem um número, um agência (nome e número), o banco(nome e número), 
o tipo (número indicando 1=corrente, 2=poupança, 3=conjunta, 4=conta encerrada, etc.) e saldo. 

Com estas contas podem ser feitas as seguintes ações:

abrir: recebe os dados da conta e insere 0 como estado do saldo;
encerrar: caso a conta não tenha saldo negativo, coloca o tipo da conta como 4 e retorna o valor atual do saldo zerando-o em seguida;
consultar_saldo: retorna o valor atual do saldo;
creditar: caso a conta não esteja encerrada, adiciona o valor recebido no parâmetro no estado saldo;
debitar: caso a conta não esteja encerrada, retira o valor recebido como parâmetro do estado saldo.

Exemplo de estrutura da classe:

ContaCorrente (Classe / Atributos)
nrConta
nrAgencia
nomeAgencia
nrBanco
nomeBanco
tipo

Metodos
abrir (nrConta, nrAgencia, nomeAgencia, nrBanco, nomeBanco, tipo)
double encerrar()
double consultar_saldo()
creditar(double valor)
debitar(double valor)
*/

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Seja bem vindo ao NewBank!!!");

		//Atenção: o pedido de criação de agencia/conta como pedido no enunciado é contemplado da forma abaixo
		//com o usuario digitando sua ag e conta. A partir daí pe que o programa roda e passa a existir para ees usuario
		System.out.println("Digite o numero de sua agencia:");
		Scanner sc = new Scanner(System.in);
		int agencia = sc.nextInt();
		
		Scanner sc2 = new Scanner(System.in);
		System.out.println("Digite o numero de sua conta e digito no formato ccccc-d:");
		String contaDigito = sc2.nextLine();
		
		ContaCorrente contaCorrente1 = new ContaCorrente(
			    contaDigito, //String nrConta
				agencia, //int nrAgencia
				"NewBank", //String banco (Aqui o nome do banco vai ser o mesmo sempre porque se trata da automação do Banco NewBank)
				123, //int nrBanco (o mesmo que na linha de cima, numero do banco nao muda)
				1); //int tipo (1=corrente, 2=poupança, 3=conjunta, 4=conta encerrada)
		
		//sc.close();
		//sc2.close();
		int opcao = 0;
		do 
		{		
			ContaCorrente.exibeMenu();
			Scanner sc4 = new Scanner(System.in);
			opcao = sc4.nextInt();
			//sc4.close();
			switch( opcao )
			{
				case 1:
					//saldo
					System.out.println("Saldo Atual: "+ContaCorrente.getSaldo());
					break;
				case 2:
					//extrato
					System.out.println(contaCorrente1);
					break;
				case 3:
					//sacar;
					System.out.println("Digite o valor que deseja sacar de sua conta:");
					Scanner sc5 = new Scanner(System.in);
					float saque = sc5.nextFloat();
					contaCorrente1.debitar(saque);
					break;
				case 4:
					//depositar;
					System.out.println("Digite o valor que deseja depositar em sua conta:");
					Scanner sc3 = new Scanner(System.in);
					float deposito = sc3.nextFloat();
					contaCorrente1.creditar(deposito);
					//sc3.close();
					break;
				case 5:
					//encerrar conta;
					if (ContaCorrente.getSaldo() >= 0) {
						ContaCorrente.tipo = 4;	
						System.out.println("O Saldo Atual é de: "+ContaCorrente.getSaldo());
						System.out.println("O saldo será zerado após o saque deste montante para encerramento de conta!");	
						ContaCorrente.saldo = 0;				
					}
					break;
				case 6:
					break;
				default:
					System.out.println("Opção inválida");
			}
		}while (opcao != 6);		
    }
}
