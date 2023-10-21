#include <stdio.h>

int somatoria(int n){
    int resultado = 0;
    if (n == 0){
        resultado = 0;
    }
    else if (n > 0){
        resultado = n + somatoria(n - 1);
    }
    else if (n < 0){
        resultado = n - somatoria(n + 1);
    }

    return resultado;
}

int main(){

    int y = somatoria(4);
    printf("%d\n", y);

    printf("%d\n", somatoria(-4));

    return 0;
}