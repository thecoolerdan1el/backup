#include <stdio.h>

int mult(int min, int max, int divisor){
    int contador = 0;
    while (min <= max){
        if (min % divisor == 0)
            contador++;
        min++;
    }
    return contador;
}

int main(){
    int minimo = 100;
    int maximo = 200;
    int divisor = 3;

    printf("Múltiplos de %d entre %d e %d: %d\n", divisor, minimo, maximo,
     mult(minimo, maximo, divisor));

    return 0;
}