import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Seja bem vindo ao NewBank!!!");
		System.out.println("Digite o numero de sua agencia:");
		Scanner sc = new Scanner(System.in);
		int agencia = sc.nextInt();
		
		Scanner sc2 = new Scanner(System.in);
		System.out.println("Digite o numero de sua conta e digito no formato ccccc-d:");
		String contaDigito = sc2.nextLine();
		
		ContaCorrente c1 = new ContaCorrente(
			    contaDigito, //String nrConta
				agencia, //int nrAgencia
				"NewBank", //String banco
				123, //int nrBanco
				1); //int tipo (1=corrente, 2=poupança, 3=conjunta, 4=conta encerrada)
		c1.creditar(1000);
		c1.debitar(350);
		c1.creditar(2000);
		System.out.println(c1);
		sc.close();
		sc2.close();
    }
}
