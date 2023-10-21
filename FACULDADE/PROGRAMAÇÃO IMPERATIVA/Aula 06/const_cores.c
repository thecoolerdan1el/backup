#include <stdio.h>

const int VERMELHO = 0;
const int VERDE = 1;
const int AMARELO = 2;

int main(){

    int s1 = VERDE;
    int s2 = VERMELHO;

    printf("%d %d\n", s1, s2);

    if (s1 == VERDE){
        puts("Permitido passar pelo semáforo primário. \n");

    }
    else if (s1 == VERMELHO){
        puts("Obrigado a parar no semáforo primário. \n");
    }
    else{
        puts("Semáforo primário prestes a fechar, atenção! \n");
    }
    return 0;
}