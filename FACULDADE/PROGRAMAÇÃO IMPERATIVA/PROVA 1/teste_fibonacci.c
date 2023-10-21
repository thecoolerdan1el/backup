#include <stdio.h>

int main(){
    int a = 0, b = 1, k = 2, n = 11, resultado;

    while(k <= n){
        resultado = a + b;
        a = b;
        b = resultado;
        k++;
        printf("%d\n",resultado);
    }

    return 0;
}