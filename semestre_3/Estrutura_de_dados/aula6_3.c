#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct Fila
{
        int capacidade;
        int tamanho;
        int primeiro;
        int ultimo;
        char **elementos;
}Fila;

Fila * criafila(int maxElementos)
{
        Fila *F;
        F = (Fila *)malloc(sizeof(Fila));
        F->elementos = (char**)malloc(sizeof(char*)*maxElementos);
        F->tamanho = 0;
        F->capacidade = maxElementos;
        F->primeiro = 0;
        F->ultimo = -1;
        return F;
}

void tiradafila(Fila *F)
{
        if(F->tamanho!=0)
        {
                F->tamanho--;
                F->primeiro++;
                if(F->primeiro==F->capacidade)
                {
                        F->primeiro=0;
                }
        }
        return;
}
/*
char* primeiro(Fila *F)
{
        if(F->tamanho!=0)
        {
                return F->elementos[F->primeiro];
        }
        return NULL;
}
*/
void colocanafila(Fila *F , char *element)
{
        if(F->tamanho == F->capacidade)
        {
                printf("Fila is Full\n");
        }
        else
        {
                F->tamanho++;
                F->ultimo = F->ultimo + 1;
                if(F->ultimo == F->capacidade)
                {
                        F->ultimo = 0;
                }
                F->elementos[F->ultimo] = (char *) malloc((sizeof element + 1)* sizeof(char));
                strcpy(F->elementos[F->ultimo], element);
        }
        return;
}

int main()
{
        Fila *F = criafila(5);
        colocanafila(F,"test");
        colocanafila(F,"test");
        colocanafila(F,"test");
        colocanafila(F,"test");
        //printf("Front element is %s\n",primeiro(F));
        colocanafila(F,"test");
        tiradafila(F);
        colocanafila(F,"test");
        //printf("Front element is %s\n",primeiro(F));
}
