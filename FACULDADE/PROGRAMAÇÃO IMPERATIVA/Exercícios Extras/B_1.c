#include <stdio.h>

int limite_max;
int limite_min;

void calculadora_limites(){
    printf("Os divisores de 3 no intervalo de: [%d] e [%d] são: \n", limite_min, limite_max);
    while (limite_min < limite_max)
    {
        if(limite_min % 3 == 0){
           printf("[%d]\n", limite_min);
        }
        limite_min++;
    }
    

}

int main(){

    printf("Entre com o valor do limite mínimo: "); scanf("%d", &limite_min);
    printf("Entre com o valor do limite máximo: "); scanf("%d", &limite_max);

    calculadora_limites();

    putchar('\n');

    return 0;
}