//Faça um programa em C que leia Três valores: Distancia em km, Velocidade Media e consumo de Combustível de um carro, 
//calcule o tempo de viagem e quantos litros de combustível serão necessários para completar a viagem.

#include <stdio.h>

int main()
{
    float dist_km,v_med,consumo,tempo,litros;
    //entrada
    printf("Digite quantos km faltam de viagem: ");
    scanf("%f",&dist_km);
    printf("Digite a velocidade media do carro, em km/h: ");
    scanf("%f",&v_med);
    printf("Digite o consumo do carro, em km/l: ");
    scanf("%f",&consumo);
    //processamento
    tempo = dist_km/v_med;
    litros = dist_km/consumo;
    //saida
    printf("Tempo de viagem faltante: %.2fh\n", tempo);
    printf("Litros de combustivel necessarios para completar a viagem: %.2fl\n", litros);
    return 0;
}
