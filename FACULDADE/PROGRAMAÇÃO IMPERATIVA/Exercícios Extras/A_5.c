#include <stdio.h>

float volume_gasto;
#define LITRO 12;
float distancia;
float tempo;
float velocidade;

void calculo_gasto(){
    distancia = tempo * velocidade;
    volume_gasto = distancia / LITRO;
    printf("Foi percorrido: %2.2f Km \n", distancia);
    printf("Foi gasto de combustível na viagem: %2.2f Litros\n", volume_gasto);
}

int main(){

    printf("Entre com o valor do tempo: "); scanf("%f", &tempo);
    printf("Entre com a média de Velocidade: "); scanf("%f", &velocidade);

    calculo_gasto();

    return 0;
}