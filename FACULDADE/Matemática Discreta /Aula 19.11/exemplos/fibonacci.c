#include <stdio.h>

int func(int n){
    int resultado;

    if(n == 1){
        return (1);
    }
    if(n == 2){
        return (1);
    }

    resultado = func(n - 1) + func(n - 2);

    return resultado;
}

int main(){
    int num;

    printf("Entre com o valor desejado: "); scanf("%d", &num);
    
    for(int i = 1; i <= num; i++){
        printf("%d,", func(i));
    }

    putchar('\n');

    return 0;
}