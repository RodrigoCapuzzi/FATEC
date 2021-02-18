//3. Fazer uma função recursiva que conta o número de ocorrências de um determinado caracter, caract(char c, char s[])

#include <stdio.h>

int caract(char c,char s[]);

int main()
{
    char palavra[30], letra;
    int tamanho;
    printf("Digite uma frase ou palavra de ateh no maximo 30 caracteres: \n");
    gets(palavra);
    printf("Digite a letra a ser buscada: \n");
    scanf("%c", &letra);
    tamanho = caract(letra,palavra);
    printf("Encontrei a letra \"%c\" %d vez(es).\n", letra, tamanho);
    return 0;
}

int caract(char c,char s[])
{
    if (s[0] == '\0')
    {
        return 0;
    }
    if (s[0]==c) 
    {
        return (1+caract(c,++s));
    }
    else
    {
        return caract(c,++s);
    }
}
