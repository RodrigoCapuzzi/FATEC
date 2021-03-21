#include<stdio.h>
#include<stdbool.h>
#include<string.h>

void converterEntrada(char entrada[], int cnpj[]);
bool todosDigitosIguais(int cnpj[]);
int calculaDigito(int cnpj[], int mult[], int N);

int main()
{	int cnpj[14] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0};
    char entrada[50];
	int m1[12]={5,4,3,2,9,8,7,6,5,4,3,2};
	int m2[13]={6,5,4,3,2,9,8,7,6,5,4,3,2};

	printf("Entre com os 14 digitos do CNPJ:");
	fgets(entrada, 50, stdin);
	
    converterEntrada(entrada, cnpj);
    
    if(!todosDigitosIguais(cnpj) &&
       calculaDigito(cnpj, m1, 12) == cnpj[12] && 
       calculaDigito(cnpj, m2, 13) == cnpj[13])
        {   
            printf("\nCNPJ válido.");
        }
	else printf("\nErro no CNPJ.");
	return 0;
}

bool todosDigitosIguais(int cnpj[])
{   
    for(int i=0; i<12; i++)
    {   if(cnpj[i] != cnpj[i+1])
            return false;
    }
    return true;
}

int calculaDigito(int cnpj[], int mult[], int N)
{	
    int soma=0;
    int novo_resto = 0;
	for(int i=0; i<N; i++)
	{	soma = soma + cnpj[i]*mult[i];
	}
    int resto2 = soma % 11;
    printf("Resto: %i", resto2);
    if (resto2 < 2)
    {
        return 0;
    }
    else
    {
        novo_resto = 11 - resto2;
        return novo_resto;
    }
}

void converterEntrada(char entrada[], int cnpj[])
{   
    int i, j, tamanho;
    for(i=0; i<14; i++)
        cnpj[i] = 0;
	j=13;
	tamanho = strlen(entrada);
	for(i=tamanho-1; i>=0; i--)
	{   if(entrada[i] >= '0' && entrada[i] <= '9')
	    {   cnpj[j] = entrada[i] - '0';
	        j--;
	    }
	    if(j<0) break;
	}
}
