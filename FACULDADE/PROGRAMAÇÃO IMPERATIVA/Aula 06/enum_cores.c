#include <stdio.h>

enum Cor {VERMELHO, VERDE, AMARELO};

int main(){

    enum Cor s1 = VERDE;
    enum Cor s2 = VERMELHO;

    printf("%d %d \n", s1, s2);

    if (s1 == VERDE){
        puts("Permitido a passagem pelo semáforo primário. ");
    }

    return 0;
}