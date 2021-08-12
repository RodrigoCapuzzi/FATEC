/*
2- Escrever uma função recursiva que retorna o tamanho de um string, tamstring(char s[])
*/

#include <stdio.h>

int tamstring(char s[])
{   
    if (s[0] == '\0')
        return 0;
    else
        return 1 + tamstring(&s[1]);
}

void main()
{    
    char s[30];
    printf("\nDigite a palavra que deseja saber o tamanho: ");
    scanf("%s", s);
    printf("\nA palavra '%s' possui %i letras", s, tamstring(s));
}
