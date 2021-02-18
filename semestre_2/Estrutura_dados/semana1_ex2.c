//2. Escrever uma função recursiva que retorna o tamanho de um string, tamstring(char s[])

#include <stdio.h>
#include <stdlib.h>

int tamstring (char s[]);

int main()
{
    char palavra[20];
    int tamanho;
    printf("Digite uma palavra de ateh 20 caracteres: ");
    scanf("%s", palavra);
    tamanho=tamstring(palavra);
    printf("A palavra tem %d letras.", tamanho);
    return 0;
}

int tamstring (char s[])
{
    if (s[0] == '\0')
    {
        return 0;
    }
    else
    {
        return 1+tamstring(&s[1]);
    }
}
