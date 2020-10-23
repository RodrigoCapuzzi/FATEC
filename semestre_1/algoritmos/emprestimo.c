//Leia o salario de um trabalhador e o valor da prestação de um empréstimo. 
//Se a prestação for maior que 20% do salario imprima:  Empréstimo não concedido, caso contrario imprima:  Empréstimo concedido.

int main(void)
{
    float salario, prestacao, aceitavel;
    //leitura dos dados
    printf("Qual o salario do trabalhador?");
    scanf("%f", &salario);
    printf("Qual o valor da prestacao?");
    scanf("%f", &prestacao);
    //calculo
    aceitavel = 0.2*salario;
    //saida
    if (prestacao > aceitavel)
    {
        printf("Emprestimo nao concedido");
    }
    else
    {
        printf("Emprestimo concedido");
    }
    return 0;    
}
