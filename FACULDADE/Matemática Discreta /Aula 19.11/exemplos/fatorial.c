#include <stdio.h>

int func(int n){
    int resultado;

    if(n == 0){
        return 1;
    }

    else{
        resultado = func(n - 1) * n;
    }

    return resultado;
}

int main(){

    int fat;

    printf("Digite o fatorial: "); scanf("%d", &fat);

    printf("O fatorial de [%d] é: %d\n", fat, func(fat));

    return 0;
}