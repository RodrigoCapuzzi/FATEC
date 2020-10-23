//2. Faça um programa em C que verifique se o ano é bissexto ou não. Se ele não for bissexto, indique quanto tempo falta para o próximo bissexto.
//Para ser bissexto, o ano deve ser:
//Divisível por 4. Sendo assim, a divisão é exata com o resto igual a zero;
//Não pode ser divisível por 100. Com isso, a divisão não é exata, ou seja, deixa resto diferente de zero;
//Pode ser que seja divisível por 400.

#include "stdio.h"
 
int main()
{
	int ano, falta;
	printf("Digite o ano:\n");
	scanf("%d", &ano);
	if (ano % 400 == 0) 
    {
		printf("Ano bissexto.\n");		
	}
	else 
    {
		if ((ano % 4 == 0) && (ano % 100 != 0))
        {
            printf("Ano bissexto.\n");
        }
        else
        {
            printf("Ano nao bissexto.\n");
            falta = 4-(ano % 4);
            if (falta ==1)
            {
                printf("Falta %i ano para um ano bissexto.\n", falta);
            }
            else
            {
                printf("Faltam %i anos para um ano bissexto.\n", falta);
            }  
        }
    }
    return 0;
}
