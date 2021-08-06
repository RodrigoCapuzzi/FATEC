/*2. Escrever uma função recursiva que retorna o tamanho de um string, tamstring(char s[])*/

#include<stdio.h>

int tamstring(char s[])
{
    int i=0, soma = 0;
    if (s[i] == '\n')
    {
        //printf("%i", soma);
        return 1;
    }
    else
    {
        soma += 1;
        return tamstring(s+1);
    }
}


int main()
{
    //int i = 7;
    char palavra[8];
    //printf("Digite uma palavra: ");
    //scanf("%c", &palavra);
    palavra[0] = 'a';
    palavra[1] = 'b';
    palavra[2] = 'a';
    palavra[3] = 'c';
    palavra[4] = 'a';
    palavra[5] = 'x';
    palavra[6] = 'i';
    palavra[7] = '\n';
    for (int i = 0; i < 8; i++)
    {
        printf("%c", palavra[i]);
    }
    printf("Tamanho da palavra: %i", tamstring(palavra));
    //printf("Oi");
    return 0;
}
