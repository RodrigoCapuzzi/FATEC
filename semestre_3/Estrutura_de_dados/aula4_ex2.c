/*
2- Crie um programa em C que adicione dinamicamente uma nova posição e um vetor que armazene a qtd de clientes por dia, 
ao final do programa calcule a media destes clientes, mostre a quantidade de dias e limpe a memoria.
*/

#include <stdio.h>
#include <stdlib.h>

void main() {
	float *p, media; 
	int dias;
	printf("Digite a quantidade de dias: ");
	scanf("%d", &dias);
	p = (float*) malloc (dias * sizeof(float));
	for(int i = 0; i < dias; i++){
		printf("\nClientes no dia %d: ", i+1);
		scanf("%f", &p[i]);
		media += p[i];
	}
	media /= dias;
	printf("\nTotal de dias: %d. Clientes por dia: %.2f", dias, media);
	free(p);
}
