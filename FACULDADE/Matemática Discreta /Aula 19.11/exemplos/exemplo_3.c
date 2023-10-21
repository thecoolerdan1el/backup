#include <stdio.h>

int func(int n){
    int resultado;

    if (n == 10){
        return 1;
    }

    else{
        resultado = func(n + 1);
    }

    return resultado;
}

int main(){
    int num;
    printf("Entre com o número: "); scanf("%d", &num);

    printf("%d\n", func(num));

    return 0;
}