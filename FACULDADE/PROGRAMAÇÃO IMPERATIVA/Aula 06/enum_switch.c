#include <stdio.h>

enum Dia {SEGUNDA, TERÇA, QUARTA, QUINTA, SEXTA, SÁBADO, DOMINGO};

int main(){

    enum Dia dia_semana;
    printf("Digite o dia da semana [0 a 6]: "); scanf("%d", &dia_semana);
    
    switch (dia_semana){
        case SEGUNDA: case TERÇA: case QUARTA: case QUINTA: case SEXTA:
            puts("Trabalho.\n"); break;
        case SÁBADO:
            puts("Academia. \n"); break;
        case DOMINGO:
            puts("Compras. \n"); break;
        default:
            puts("ERRO!");

    }

    return 0;
}