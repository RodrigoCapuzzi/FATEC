/*
3- Fazer uma função recursiva que conta o número de ocorrências de um determinado caracter, caract(char c, char s[])
*/

#include <stdio.h>

int contaCaractere(char caractere, char string[])						
{
	if(string[0] == '\0')
		return 0;
	if(string[0] == caractere)
		return (1 + contaCaractere(caractere, ++string));
	return contaCaractere(caractere, ++string);
}

int main ()
{
	char nome[80], caractere;
	printf("Digite uma palavra de ate 80 caracteres: \n");
	gets(nome);
	printf("\nDigite a letra que deseja contar: \n");
	caractere = getchar();
	printf("\nA letra %c aparece %d vezes na palavra %s", caractere, contaCaractere(caractere, nome), nome);
}
