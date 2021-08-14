public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        String[][] tabuleiro =
        {
            {"x","o","x"},
            {".","o","x"},
            {"o","x","."}
        };

        for(int linha = 0; linha < tabuleiro.length; linha++)
        {
            for(int coluna = 0; coluna < tabuleiro[0].length; coluna++)
            {
                System.out.print(tabuleiro[linha][coluna]+" ");
            }
            System.out.println("");
        }
    }
}
