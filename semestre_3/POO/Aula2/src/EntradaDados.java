
import java.util.Scanner;

public class EntradaDados {
    public static void main(String[] args) {
        String nome ="Pedro";
        
        System.out.printf("%s%s","Nome: ", nome);
        float peso = 76.45f;

        Scanner meuScanner = new Scanner(System.in);
        System.out.print("Entre com seu nome");
        nome = meuScanner.nextLine();
        System.out.print("Entre com seu peso");
        peso = meuScanner.nextFloat();
        meuScanner.close(); 

        System.out.println("Nome: " + nome);
        System.out.println("Peso: " + peso);
    }
    
}
