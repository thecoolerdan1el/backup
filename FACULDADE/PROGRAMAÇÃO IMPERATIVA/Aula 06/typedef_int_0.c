#include <stdio.h>

typedef int INTEIRO;
typedef INTEIRO MeuInt;

int main(){

    MeuInt x;

    printf("Digite um número inteiro: "); scanf("%d", &x);

    printf("Valor digitado: %d\n", x);

    return 0;
}