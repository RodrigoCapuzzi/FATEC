//Nome: Rodrigo Sanches Dias
//Curso: Programação Estruturada Modular

//Mini-Photoshop

#include<stdio.h>
#include<stdlib.h>
#include<string.h>

void aumentarBrilho(int** original, int linhas, int colunas, int maxValor)
{	int l, c;
	for(l=0; l<linhas; l++)
	{	for(c=0; c<colunas; c++)
		{	original[l][c] = (int)(original[l][c] * 1.2);
			if(original[l][c] > maxValor)
				original[l][c] = maxValor;
		}
	}
}

void diminuirBrilho(int** original, int linhas, int colunas)
{	int l, c;
	for(l=0; l<linhas; l++)
	{	for(c=0; c<colunas; c++)
		{	original[l][c] = (int)(original[l][c] * 0.8);
		}
	}
}

void moldura(int** original, int linhas, int colunas, int maxValor)
{	
    int l, c;
    //cima
	for(l=0; l<(int)(0.05*linhas); l++)
	{	
        for(c=0; c<colunas; c++)
		{	
            original[l][c] = original[l][c]*0.5;
		}
	}
    //baixo
    for(l=(int)(0.95*linhas); l<linhas; l++)
	{	
        for(c=0; c<colunas; c++)
		{	
            original[l][c] = original[l][c]*0.5;
		}
	}
	//esquerda
	for(l=(int)(0.05*linhas); l<(int)(0.95*linhas); l++)
	{	
        for(c=0; c<(int)(0.05*colunas); c++)
		{	
            original[l][c] = original[l][c]*0.5;
		}
	}
    //direita
    for(l=(int)(0.05*linhas); l<(int)(0.95*linhas); l++)
	{	
        for(c=(int)(0.95*colunas); c<colunas; c++)
		{	
            original[l][c] = original[l][c]*0.5;
		}
	}
}

void borrar(int** original, int linhas, int colunas, int tamanhoBorrao)
{	int l, c;
	/*
		Aqui vocês terão de colocar seus códigos
	*/
}

int** lerImagem(char * nomeArquivo, int *pLinhas, int *pColunas, int *pMaxValor)
{	FILE *fp;
	fp = fopen(nomeArquivo,"r");
	/* Arquivo ASCII, para leitura */
	if(!fp)
	{	printf( "\nErro na abertura do arquivo\n\n");
		exit(-1);
	}

	//leia tipo do arquivo
	char buffer[1001];
	fgets (buffer, 1000, fp); //Primeira linha
	if(strstr(buffer, "P2") == NULL) // o tipo de arquivo eh diferente de P2?
	{	printf( "\nErro no tipo do arquivo\n\n");
		exit(-2);
	}

	//leia comentario
	fgets (buffer, 1000, fp);
	
	//leia dados da imagem
	fscanf(fp, "%d%d%d", pColunas, pLinhas, pMaxValor);
	
	//criando a matriz
	int **mat, i;
	mat = (int **) malloc(*pLinhas * sizeof(int *));
	for(i=0; i< *pLinhas; i++)
		mat[i] = (int *) malloc(*pColunas * sizeof(int));

	int l, c;
	for(l=0; l<*pLinhas; l++)
	{	for(c=0; c<*pColunas; c++)
			fscanf(fp, "%d", &mat[l][c]);
	}
	fclose(fp);
	return mat;
}

void escreverImagem(char * nomeArquivo, int ** mat, int linhas, int colunas, int maxValor)
{	FILE *fp;
	fp = fopen(nomeArquivo,"w");
	// Arquivo ASCII, para leitura
	if(!fp)
	{	printf( "\nErro na abertura do arquivo\n\n");
		exit(-1);
	}

	//escreva tipo do arquivo
	fprintf (fp, "P2\n");
	//escreva comentario
	fprintf (fp, "#Figura modificada...\n");
	//colunas, linhas
	fprintf(fp, "%d %d\n", colunas, linhas);
	//maxValor
	fprintf(fp, "%d\n", maxValor);

	int l, c;
	for(l=0; l<linhas; l++)
	{	for(c=0; c<colunas; c++)
		{	fprintf(fp, "%d ", mat[l][c]);
		}
		fprintf(fp, "\n");
	}
	fclose(fp);
}

int main(int argc, char * argv[])
{	char opcao[10]="0";
	int linhas=0, colunas=0, maxValor=0, **mat=NULL;
	int tamanhoBorrao = 8;
	char nomeArquivo[100]="";
	char nomeArquivoLeitura[100]="";
	char nomeArquivoEscrita[100]="";
	while(opcao[0] != '9')
	{	printf("\n\nMini-photoshop\n\n");
		printf("1) Ler imagem\n");	
		printf("2) Gravar imagem\n");	
		printf("3) Aumentar o brilho\n");	
		printf("4) Diminuir o brilho\n");	
		printf("5) Aumentar contraste\n");
		printf("6) Diminuir contraste\n");
		printf("7) Desfocar\n");
		printf("8) Fazer moldura\n");
		printf("9) Sair\n");
		printf("\nEntre a opcao desejada: ");	
		fgets(opcao, 10, stdin);
		switch(opcao[0])
		{	case '1':
				printf("\n\nEntre com o nome da imagem (sem extensao): ");
				fgets(nomeArquivo, 100, stdin);
				nomeArquivo[strlen(nomeArquivo)-1]='\0';
				strcpy (nomeArquivoLeitura, nomeArquivo);
				strcat (nomeArquivoLeitura, ".pgm");
				mat = lerImagem(nomeArquivoLeitura, &linhas, &colunas, &maxValor);
				break;
			case '2':
				strcpy (nomeArquivoEscrita, nomeArquivo);	
				strcat (nomeArquivoEscrita, "_editada.pgm");
				printf("\n\nA imagem sera salva como %s\n", nomeArquivoEscrita);
				escreverImagem(nomeArquivoEscrita, mat, linhas, colunas, maxValor);
				break;
			case '3':
				aumentarBrilho(mat, linhas, colunas, maxValor);
				break;
			case '4':
				diminuirBrilho(mat, linhas, colunas);
				break;
			case '5':
				//aumentarContraste(mat, linhas, colunas, maxValor);
				break;
			case '6':
				//diminuirContraste(mat, linhas, colunas, maxValor);
				break;
			case '7':
				borrar(mat, linhas, colunas, tamanhoBorrao);		
				break;
			case '8':
				moldura(mat, linhas, colunas, maxValor);
				break;
		}
	}
	return 0;
}