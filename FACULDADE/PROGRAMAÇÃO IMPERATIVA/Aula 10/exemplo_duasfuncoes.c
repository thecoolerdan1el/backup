#include <stdio.h>
#include <math.h>


double a, b, c;

double polinomio_segundo_grau(double x){
    
    return (a * (x*x) + b * x + c);
}

void imprimir_ponto_de_curva(double x){

    double y = polinomio_segundo_grau(x);
    printf("%7.2f, %9.2f \n", x, y);
}

int main(){

    puts("Forma geral: x ** 2 + b * x + c"); 
    printf("Digite o valor de A: "); scanf("%lf", &a);
    printf("Digite o valor de B: "); scanf("%lf", &b);
    printf("Digite o valor de C: "); scanf("%lf", &c);

    imprimir_ponto_de_curva(-1);
    imprimir_ponto_de_curva(0);
    imprimir_ponto_de_curva(2.5);
    imprimir_ponto_de_curva(5);
    imprimir_ponto_de_curva(6);

    return 0;
}
