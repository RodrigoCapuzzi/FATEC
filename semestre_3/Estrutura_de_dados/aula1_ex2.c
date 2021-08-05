/*Atividade 01 – Estrutura de Dados
1-crie um programa em linguagem C com 4 funções (somar, subatrair, multiplicar e dividir) 
recebendo os parametros do tipo float A e float B o retorno de cada função deve ser o valor da operação matemática
2-crie um program em linguagem C que crie uma matriz de 10,3 armazene a nota P1, P2 e MEDIA nas respectivas colunas, 
crie uma função passando a matriz como parametro para identificar a maiorNotaP1, a maiorNotaP2 e a maiorMedia e mediaSala
*/

#include <stdio.h>

float mediaPorAluno (float p1, float p2)
{
    float mediaAluno = 0;
    mediaAluno = (p1 + p2)/2;
    return mediaAluno;
}

void imprimeResultados(int l, int c, float notaAlunos[l][c])
{
	float contadorUm = 0, contadorDois = 0, contadorMedia = 0, mediaSala = 0;
	for(int i=0; i<10; i++)
	{
		notaAlunos[i][2] = mediaPorAluno(notaAlunos[i][0],notaAlunos[i][1]);
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
	printf("A maior nota P1 foi : %.2f\nA maior nota P2 foi : %.2f \nA maior media foi : %.2f \nA media da sala foi %.2f", contadorUm, contadorDois, contadorMedia, mediaSala/10);
	return;
}

int main()
{
	float notas[10][3];
	for(int l=0; l<10; l++)
	{
		printf("Informe a nota P1 e P2 do aluno[%i]= ", l+1);
		scanf("%f %f", &notas[l][0], &notas[l][1]);
	}	
	imprimeResultados(10, 3, notas);
	return 0;
}
