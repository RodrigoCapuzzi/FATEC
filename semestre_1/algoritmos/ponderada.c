//Faça um algoritmo que calcule a media ponderada das notas de 3 provas. A primeira e a segunda prova tem peso 1 e a terceira tem peso 2. 
//Ao final, mostrar a media do aluno e indicar se o aluno foi aprovado ou reprovado. A nota para aprovação deve ser igual ou superior a 60 pontos.

#include<stdio.h>

int main(void)
{
    float n1, n2, n3, media;
    //entrada de dados
    printf("Qual a nota da p1 (0 a 100)?\n");
    scanf("%f", &n1);
    printf("Qual a nota da p2 (0 a 100)?\n");
    scanf("%f", &n2);
    printf("Qual a nota da p3 (0 a 100)?\n");
    scanf("%f", &n3);
    //processamento
    media = ((1*n1+1*n2+2*n3)/4);
    //saída
    if (media >= 60)
    {
        printf("Aluno aprovado, com media %.2f\n", media);
    }
    else
    {
        printf("Aluno reprovado, com media %.2f\n", media);
    }
    return 0;
}
