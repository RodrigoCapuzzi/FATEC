/*
Nome: Rodrigo Sanches Dias
Curso: ADS Noturno

Trabalho 2
*/

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <locale.h>
#include <stdlib.h>
#include <ctype.h>

typedef struct data{int dia, mes, ano;} DATA;

struct ficha{
	char nome[40];
	char telefone[20];
	char endereco[40];
	char email[30];
	DATA dataNascimento;
};

void flush_in();

void minusculo(char str[]);

int procurar(char procurado[], struct ficha vetor[], int num_fichas);

int main()
{
	struct ficha agenda[100];
	int fichas_existentes = 0, proxima = 0;
	char opcao[10]="0"; 
    setlocale(LC_ALL, "Portuguese");

	while(opcao[0] != '6')
	{
		printf("\nEntre com a opção desejada:\n");
		printf("\n1) Inserir ficha:");
		printf("\n2) Procurar por nome:");
		printf("\n3) Listar toda a base:");
		printf("\n4) Excluir por nome:");
		printf("\n5) Atualizar um contato por nome:");
		printf("\n6) Sair\n\n");
		gets(opcao);

		if(opcao[0] == '1') //inserir
		{
			printf("\nEntre com um nome:");
			gets(agenda[proxima].nome);
			printf("\nEntre com um telefone:");
			gets(agenda[proxima].telefone);
			printf("\nEntre com um endereço:");
			gets(agenda[proxima].endereco);
			printf("\nEntre com um email:");
			gets(agenda[proxima].email);
			printf("\nDigite a data de nascimento no formato DD/MM/AAAA: ");
    		scanf("%d/%d/%d", &agenda[proxima].dataNascimento.dia, &agenda[proxima].dataNascimento.mes, &agenda[proxima].dataNascimento.ano);
			flush_in();
			fichas_existentes++;
			proxima++;
		}
		if(opcao[0] == '2') //procurar
		{
			char procurado[40];
			printf("\nEntre com o nome procurado:\n");
			gets(procurado);
            int resposta = procurar(procurado, agenda, fichas_existentes);
			if(resposta != -1)
			    printf("\n\nSeguem os dados de %s:\nTelefone: %s\nEndereço: %s\nEmail: %s\nData de nascimento: %d/%d/%d\n\n"
					, agenda[resposta].nome
					, agenda[resposta].telefone
					, agenda[resposta].endereco
					, agenda[resposta].email
					, agenda[resposta].dataNascimento.dia
					, agenda[resposta].dataNascimento.mes
					, agenda[resposta].dataNascimento.ano);
			else
			  printf("\n\nNome não encontrado\n");
		}
		if(opcao[0] == '3') //listar tudo
		{
			printf("\n\n");
			int i;
			for(i=0; i<fichas_existentes; i++)
			{
			    printf("Contato %d \nNome: %s\nTelefone: %s\nEndereco: %s\nE-mail: %s\nData de nascimento: %d/%d/%d\n\n",
			      i+1
				  , agenda[i].nome
				  , agenda[i].telefone
				  , agenda[i].endereco
				  , agenda[i].email
				  , agenda[i].dataNascimento.dia, agenda[i].dataNascimento.mes, agenda[i].dataNascimento.ano
				  );
			}
			if(fichas_existentes == 0)
				printf("A base de dados está vazia!\n");
		}
		if(opcao[0] == '4') //excluir	
		{
			char procurado[40];
			printf("\nEntre com o nome que sera excluído:");
			gets(procurado);
            int resposta = procurar(procurado, agenda, fichas_existentes);
			if(resposta != -1)
			{   printf("\n\nO contato de %s foi excluido com sucesso!\n",
			        agenda[resposta].nome, agenda[resposta].telefone);
			    int j;
			    for(j=resposta+1; j<fichas_existentes; j++)
			    {
					agenda[j-1] = agenda[j];
			    }
			    fichas_existentes--;
			    proxima--;
			}
			else
			  printf("\n\nNome não encontrado\n");
		}
		if(opcao[0] == '5') //update
		{
			char procura_update[40];
			printf("\nEntre com o contato que sera atualizado:");
			gets(procura_update);
			int resposta = procurar(procura_update, agenda, fichas_existentes);
			if(resposta != -1)
			{
			    printf("\n\nSeguem os dados de %s:\nTelefone: %s\nEndereço: %s\nEmail: %s\nData de nascimento: %d/%d/%d\n\n"
					, agenda[resposta].nome
					, agenda[resposta].telefone
					, agenda[resposta].endereco
					, agenda[resposta].email
					, agenda[resposta].dataNascimento.dia
					, agenda[resposta].dataNascimento.mes
					, agenda[resposta].dataNascimento.ano);
				printf("\nEntre com um novo nome:");
				gets(agenda[resposta].nome);
				printf("\nEntre com um novo telefone:");
				gets(agenda[resposta].telefone);
				printf("\nEntre com um novo endereço:");
				gets(agenda[resposta].endereco);
				printf("\nEntre com um novo email:");
				gets(agenda[resposta].email);
				printf("\nDigite a nova data de nascimento no formato DD/MM/AAAA: ");
				scanf("%d/%d/%d", &agenda[resposta].dataNascimento.dia, &agenda[resposta].dataNascimento.mes, &agenda[resposta].dataNascimento.ano);
				flush_in();
			}
			else
			{
				printf("\n\nNome não encontrado\n");
			}
		}
	}
	return 0;
}

int procurar(char procurado[], struct ficha vetor[], int num_fichas)
{   int i;
    char confirmacao[20], nomeMinusculo[40];
    
    minusculo(procurado);
	for(i=0; i<num_fichas; i++)
	{   strcpy(nomeMinusculo, vetor[i].nome);
	    minusculo(nomeMinusculo);
	    if(strstr(nomeMinusculo, procurado) != NULL)
        {   printf("Achei esta ficha:\nNome: %s\n\n", vetor[i].nome);
            printf("É esta que procura (S/N)?\n");
            gets(confirmacao);
            if(confirmacao[0] == 's' || confirmacao[0] == 'S')
                return i;
        }
	}
	return -1;
}

void minusculo(char str[])
{   int i, tam=strlen(str);
    for(i=0; i<tam; i++)
        str[i] = tolower(str[i]);
}

void flush_in()
{
   int ch;

   while( (ch = fgetc(stdin)) != EOF && ch != '\n' ){}
}
