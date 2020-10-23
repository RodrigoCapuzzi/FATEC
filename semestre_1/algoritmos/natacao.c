//4.Elabore um algoritmo que dada a idade de um nadador classifique-o em uma das seguintes categorias:
//Infantil A = 5 a 7 anos
//Infantil B = 8 a 11 anos
//Juvenil A = 12 a 13 anos
//Juvenil B = 14 a 17 anos
//Adultos = Maiores de 18 anos

#include<stdio.h>

int main(void)
{
    int idade;
    printf("Informe a idade do nadador:\n");
    scanf("%i",&idade);
    if (idade>=5 && idade <=7)
    {
        printf("O nadador esta na categoria Infantil A");
    }
    else
    {
        if (idade>=8 && idade <=11)
        {
            printf("O nadador esta na categoria Infantil B");
        }
        else
        {
            if (idade>=12 && idade <=13)
            {
                printf("O nadador esta na categoria Juvenil A");
            }
            else
            {
                if (idade>=14 && idade <=17)
                {
                    printf("O nadador esta na categoria Juvenil B");
                }
                else
                {
                    if (idade>=18)
                    {
                        printf("O nadador esta na categoria Adulto");
                    }
                    else
                    {
                        printf("Idade fora do range.");
                    }
                }               
            }
        }
    }
    return 0;
}
