//1. Informe as duas notas de um aluno (P1 e P2)
//e a quantidade de faltas no semestre, calcule a media das notas e o
//percentual de faltas sobre 20 aulas.  Caso o percentual de faltas
//for maior que 30% o aluno esta automaticamente reprovado, caso ao
//contrario verifique se a media e maior igual a 6,  se afirmativo
//o aluno esta aprovado, senão informe uma nota P3 para recalcular
//a media, se a nova media for maior igual a 6, escreva aprovado
//no exame, caso negativo exiba reprovado por nota.

#include<stdio.h>

int main(int argc, char *argv[])
{
    float p1, p2, p3;
    int faltas;
    //entrada
    printf("Informe o valor de p1\n");
    scanf("%f",&p1);
    printf("Informe o valor de p2\n");
    scanf("%f",&p2);
    printf("Informe o numero de faltas\n");
    scanf("%i",&faltas);
    //processamento
    int maxFaltas = 0.3*20;
    float media = (p1+p2)/2;
    //saida
    if (faltas <= maxFaltas)
    {
        //calc restantes
        if (media<6)
        {
            //recuperação
            //recebendo dados da p3
            printf("O aluno ficou de P3.\nQual a nota que ele tirou na P3?\n");
            scanf("%f", &p3);
            //calculo da nova media
            media = (p1+p2+p3)/3;
            if (media<6)
            {
                printf("reprovado por nota!\n");
            }
            else
            {
                printf("Aprovado!\n");
            }
        }
        else
        {
            printf("Aprovado\n");
        }
    }
    else
    {
        printf("rodou\n");
    }
    return 0;
}
