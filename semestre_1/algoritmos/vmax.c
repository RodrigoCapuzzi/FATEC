//3. Leia a velocidade máxima permitida em uma avenida e a velocidade com que o motorista estava dirigindo nela. 
//Calcule e mostre a multa que uma pessoa vai receber, sabendo que são pagos: R$ 50 reais se o motorista ultrapassar 
//em até 10km/h a velocidade permitida; R$ 100 reais, se o motorista ultrapassar de 11 a 30 km/h a velocidade permitida; 
//e R$ 200 reais, se estiver acima de 31km/h da velocidade permitida.

#include <stdio.h>

int main()
{
    //declaração de variável
    float v_max, v_lida;
     //entrada dos dados
    printf("Qual velocidade máxima da via?\n");
    scanf("%f", &v_max);
    printf("Com qual velocidade o veiculo passou?\n");
    scanf("%f", &v_lida);
    if (v_lida<=(v_max+10))
    {
        printf("Multa: R$ 50,00");
    }
    else
    {
        if (v_lida <= (v_max+30))
        {
            printf("Multa: R$ 100,00");
        }
        else
        {
            printf("Multa: R$ 200,00");
        }
    }
    return 0;
}
