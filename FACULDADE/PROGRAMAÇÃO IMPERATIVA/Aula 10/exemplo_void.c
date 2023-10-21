#include <stdio.h>

int a, b, c;

void ler(){

    printf("Digite a: "); scanf("%d", &a);
    printf("Digite b: "); scanf("%d", &b);
    
}

void somar(){

    c = a + b;

}

void imprimir(){

    printf("Resultado: %d \n", c);

}

int main(){

    ler();
    somar();
    imprimir();
    return 0;

}