
public class ContaCorrente {
	private String nrConta;
	private int nrAgencia;
	private String banco;
	private int nrBanco;
	static int tipo;
	static float saldo;

	public ContaCorrente(
			String nrConta, 
			int nrAgencia, 
			String banco, 
			int nrBanco, 
			int tipo) {
		this.nrConta = nrConta;
		this.nrAgencia = nrAgencia;
		this.banco = banco;
		this.nrBanco = nrBanco;
		ContaCorrente.tipo = tipo;
		ContaCorrente.saldo = 0;
	}

	public void encerrar() {
		if (getSaldo() >=0 ) {
			ContaCorrente.tipo = 4;
			System.out.println("Saldo Atual: "+getSaldo());
			ContaCorrente.saldo = 0;
		}
	}
	
	public void creditar(float valor) {
		if (ContaCorrente.tipo == 4) {
			System.out.println("Erro! Conta Encerrada!");
		} else {
			ContaCorrente.saldo += valor;
			System.out.println("Valor depositado! Saldo Atual: "+getSaldo());
		}
	}
	
	public void debitar(float valor) {
		if (ContaCorrente.tipo == 4) {
			System.out.println("Erro! Conta Encerrada!");
		} else {
			ContaCorrente.saldo -= valor;
			System.out.println("Saldo Atual: "+getSaldo());
		}		
	}
	
	@Override
	public String toString() {
		return "ContaCorrente [nrConta=" + nrConta + ", nrAgencia=" + nrAgencia + ", banco="
				+ banco + ", nrBanco=" + nrBanco + ", tipo=" + tipo + ", saldo=" + saldo + "]";
	}

	public String getNrConta() {
		return nrConta;
	}

	public void setNrConta(String nrConta) {
		this.nrConta = nrConta;
	}

	public int getNrAgencia() {
		return nrAgencia;
	}

	public void setNrAgencia(int nrAgencia) {
		this.nrAgencia = nrAgencia;
	}

	public String getBanco() {
		return banco;
	}

	public void setBanco(String banco) {
		this.banco = banco;
	}

	public int getNrBanco() {
		return nrBanco;
	}

	public void setNrBanco(int nrBanco) {
		this.nrBanco = nrBanco;
	}

	public int getTipo() {
		return tipo;
	}

	public void setTipo(int tipo) {
		ContaCorrente.tipo = tipo;
	}

	public static float getSaldo() {
		return saldo;
	}

	public static void exibeMenu(){
        
        System.out.println("\n\t Escolha a opção desejada");
        System.out.println("1 - Saldo");
		System.out.println("2 - Extrato");
        System.out.println("3 - Sacar");
        System.out.println("4 - Depositar");
		System.out.println("5 - Encerrar conta");
        System.out.println("6 - Sair\n");
        System.out.print("Opção: ");   
    }
}
