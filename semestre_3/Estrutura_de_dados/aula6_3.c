//3. implemente uma fila dinamica de nomes char[100] . O módulo deve conter as funções  criafila,  colocanafila,  tiradafila,  filavazia .  

#include<stdio.h>

struct {
    * endInicioFila;
} typedef fila;

void criafila(f1)
{
    //TO-DO
}

void colocanafila()
{
    item *itm = (item*)malloc(sizeof(item));
	itm->numero = numero;
	itm->proximo = NULL;
	if(pFila->primeiro==NULL){
		printf("end atual %x \n", itm);
		pFila->primeiro = itm;	
	} else {
		printf("end atual %x \n", itm);
		item *aux = pFila->primeiro;
		while(aux->proximo != NULL){
			aux = aux->proximo;	
		}	
		aux->proximo = itm;
	}
}

void inserirItem(fila *pFila, float numero)
{
	item *itm = (item*)malloc(sizeof(item));
	itm->numero = numero;
	itm->proximo = NULL;
	if(pFila->primeiro==NULL){
		printf("end atual %x \n", itm);
		pFila->primeiro = itm;	
	} else {
		printf("end atual %x \n", itm);
		item *aux = pFila->primeiro;
		while(aux->proximo != NULL){
			aux = aux->proximo;	
		}	
		aux->proximo = itm;
	}
}

void tiradafila()
{

}

void filavazia()
{
    //TO-DO
}

void main()
{
    char[100] nomes;
    criafila(fila);
}