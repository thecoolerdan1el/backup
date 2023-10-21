#include <stdio.h>

float notas[6] = {7.0, 8.5, 6.2, 9.0, 4.5, 8.0};
float menor_nota = 7.0;
int indice_menor_nota = 0;

int main(){

    for (int i = 0; i < 6; i++){
        if (notas[i] < menor_nota){
            menor_nota = notas[i];
            indice_menor_nota = i;
        }

    }

    printf("Menor nota: %.2f\n", menor_nota);
    printf("Índice da menor nota: %d\n", indice_menor_nota);

    return 0;

}