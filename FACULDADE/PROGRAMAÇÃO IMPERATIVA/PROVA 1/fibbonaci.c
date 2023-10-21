#include <stdio.h>

int n0, n1, n3;
int n, contador;
int r;

int main(){
    n0 = 0;
    n1 = 1;
    contador = 2;

    printf("Digite quantos termos terá a sequência. ");
    scanf("%d", &n);

    while (contador < n){
        n3 = n0 + n1;
        printf("%d\n", n3);
        n0 = n1;
        n1 = n3;
        contador++; 
    }

    return 0;

}