//3. A Secretaria de Meio Ambiente que controla o índice de poluição mantém 3 grupos de indústrias que são altamente poluentes do meio ambiente. 
//O índice de poluição aceitável varia de 0,05 até 0,25. Se o índice sobe para 0,3 as indústrias do 1º grupo são intimadas a suspenderem suas 
//atividades, se o índice crescer para 0,4 as industrias do 1º e 2º grupo são intimadas a suspenderem suas atividades, se o índice atingir 0,5 
//todos os grupos devem ser notificados a paralisarem suas atividades. Faça um algoritmo em C que leia o índice de poluição medido e emita a notificação 
//adequada aos diferentes grupos de empresas.

#include<stdio.h>

int main(void)
{
    float poluicao;
    printf("Informe o valor da poluicao:\n");
    scanf("%f",&poluicao);
    if (poluicao>=0.3 && poluicao <0.4)
    {
        printf("Notificar as empresas do grupo 1");
    }
    else
    {
        if (poluicao>=0.4 && poluicao<0.5)
        {
            printf("Notificar as industrias dos grupos 1 e 2");
        }
        else
        {
            if (poluicao>=0.5)
            {
                printf("Notificar todos os grupos de industria");
            }
            
        }
        
    }
    return 0;
}
