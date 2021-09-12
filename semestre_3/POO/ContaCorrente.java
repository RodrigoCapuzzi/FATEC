public class ContaCorrente {
	// Atributos
	private String nrConta;
	private int nrAgencia;
	private String banco;
	private int nrBanco;
	private int tipo;
	private float saldo;

	// abrir: recebe os dados da conta e insere 0 como estado do saldo;
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
		this.tipo = tipo;
		this.saldo = 0;
	}

	// encerrar: caso a conta não tenha saldo negativo, coloca o tipo da conta 
	// como 4 e retorna o valor atual do saldo zerando-o em seguida;
	public void encerrar() {
		if (getSaldo() >=0 ) {
			this.tipo = 4; // Conta Encerrada
			System.out.println("Saldo Atual: "+getSaldo());
			this.saldo = 0;
		}
	}
	
	//creditar: caso a conta não esteja encerrada, adiciona o valor recebido no parâmetro no estado saldo;
	public void creditar(float valor) {
		if (this.tipo == 4) {
			System.out.println("Erro! Conta Encerrada!");
		} else {
			this.saldo += valor;
			System.out.println("Saldo Atual: "+getSaldo());
		}
	}
	
	// debitar: caso a conta não esteja encerrada, retira o valor recebido como parâmetro do estado saldo.
	public void debitar(float valor) {
		if (this.tipo == 4) {
			System.out.println("Erro! Conta Encerrada!");
		} else {
			this.saldo -= valor;
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
		this.tipo = tipo;
	}

	// consultar_saldo
	public float getSaldo() {
		return saldo;
	}
}