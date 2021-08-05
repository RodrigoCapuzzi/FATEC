/*
DUPLA
Nome: Diego Mendes Carloni    R.A.:2040482023018   Data: 02/08/2020
Nome: Rodrigo Sanches Dias    R.A.:

Atividade 01 – Estrutura de Dados

1-crie um programa em linguagem C com 4 funções (somar, subatrair, multiplicar e dividir) 
recebendo os parametros do tipo float A e float B o retorno de cada função deve ser o valor da operação matemática
2-crie um program em linguagem C que crie uma matriz de 10,3 armazene a nota P1, P2 e MEDIA nas respectivas colunas, 
crie uma função passando a matriz como parametro para identificar a maiorNotaP1, a maiorNotaP2 e a maiorMedia e mediaSala

*/

#include <stdio.h>
#include <stdlib.h>

float notaAluno(int l, int c, float notaAlunos[l][c])
{
	int i;
	float contadorUm = 0, contadorDois = 0, contadorMedia = 0, mediaSala = 0, mediaAluno = 0;
	//maior p1, maior p2 e maior média
	for(i=0; i<10; i++)
	{
		
		mediaAluno = (notaAlunos[i][0] + notaAlunos[i][1])/2;
		notaAlunos[i][2] = mediaAluno;
		
		printf("Notas do aluno %i : p1 %.2f , p2 %.2f, media %.2f\n", i+1, notaAlunos[i][0], notaAlunos[i][1], notaAlunos[i][2]);
		
		
		if(contadorUm < notaAlunos[i][0])
		{
			contadorUm = notaAlunos[i][0];
		}
		if(contadorDois < notaAlunos[i][1])
		{
			contadorDois = notaAlunos[i][1];
		}
		if(contadorMedia < notaAlunos[i][2])
		{
			contadorMedia = notaAlunos[i][2];
		}
		
		mediaSala = (mediaSala + notaAlunos[i][2]);
		
	}
	mediaSala = mediaSala/10;
	printf("A maior nota P1 foi : %.2f\nA maior nota P2 foi : %.2f \nA maior media foi : %.2f \nA media da sala foi %.2f", contadorUm, contadorDois, contadorMedia, mediaSala);
	
	return 0;
}

int main()
{
	float n1, n2, res;
	
	float notas[10][3];
	int l, c, m;
	
	for(l=0; l<10; l++)
	{
		printf("Informe a nota P1 e P2 do aluno[%i]= ", l+1);
		scanf("%f %f", &notas[l][0], &notas[l][1]);
	}	
	notaAluno(10, 3, notas);
	
	return 0;
}
