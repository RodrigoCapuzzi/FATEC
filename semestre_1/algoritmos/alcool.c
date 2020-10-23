//Crie um  algoritmo que informe dois valores reais, 
//valor em reais do litro da gasolina e valor em reais do litro do álcool,  
//calcule os 70% do valor da gasolina para definir na tela 
//qual combustível e o mais vantajoso, sabendo que o valor do 
//álcool para ser mais vantajoso deve ser menor que 70% do valor 
//da gasolina.

#include <stdio.h>

int main()
{
    float gaso, alco, vantag;
    //entrada
    printf("Qual o valor em reais do litro da gasolina?");
    scanf("%f", &gaso);
    printf("Qual o valor em reais do litro do alcool?");
    scanf("%f", &alco);
    //processamento
    vantag = 0.7* gaso;
    //saida
    if (alco < vantag)
    {
        printf("Alcool eh mais vantajoso");
    }
    else
    {
        printf("Gasolina eh mais vantajosa");
    }
    return 0;
}
