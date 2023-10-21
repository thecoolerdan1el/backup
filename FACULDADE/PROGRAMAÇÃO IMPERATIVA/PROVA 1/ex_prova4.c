#include <stdio.h>

int main(){

    double a, b, resultado;
    char operacao;

    printf("Digite o primeiro número: "); scanf("%lf", &a);
    printf("Digite o segundo número: "); scanf("%lf\n", &b);
    printf("Qual operação você quer fazer: "); getchar(operacao);

    switch(operacao){
        case '-':
            resultado = a - b;
            printf("%.2lf", resultado); break;
        case '+':
            resultado = a + b;
            printf("%.2lf", resultado); break;
        case '*':
            resultado = a * b;
            printf("%.2f", resultado); break;
        case '/':
            resultado = a / b;
            printf("%.2lf", resultado); break;
    }

    return 0;
}