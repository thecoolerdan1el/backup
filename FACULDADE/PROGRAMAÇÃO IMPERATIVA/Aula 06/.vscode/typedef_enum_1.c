#include <stdio.h>

enum Dia {SEGUNDA, TERÇA, QUARTA, QUINTA, SEXTA, SÁBADO, DOMINGO};
typedef enum Dia MyDay;

int main(){

    MyDay D;
    printf("Digite um dia da semana [0 a 6]: "); scanf("%d", &D);

    switch(D){
        case SEGUNDA: case TERÇA: case QUARTA: case QUINTA: case SEXTA:
            puts("Dia de trabalho.\n"); break;
        case SÁBADO:
            puts("Dia de compras. \n"); break;
        case DOMINGO:
            puts("Dia de academia. \n"); break;
        
    }

    return 0;
}