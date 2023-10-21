#include <stdio.h>

const int SEGUNDA = 1;
const int TERÇA = 2;
const int QUARTA = 3;
const int QUINTA = 4;
const int SEXTA = 5;
const int SÁBADO = 6;
const int DOMINGO = 7;

int escolha;

int main(){

    printf("Digite o dia da semana (1 a 7): "); scanf("%d", &escolha);

    if (escolha == 1 || 2 || 3 || 4 || 5){
        printf("Dia de trabalho. \n");
    }
    else if(escolha == 6 || 7){
        printf("Dia de descanso. \n");
    }

    return 0;

}