#include <stdio.h>


double a, b, c, x;

double polinomio(double x){
    return (a * (x*x) + b * x + c);
}

void ponto_de_curva(double x){
    
    double y = polinomio(x);
    printf("O valor de X: %7.2lf O valor de Y: %9.2lf\n", x, y);
}

void valores_de_x(double x){

    printf("Digite o valor de X: "); scanf("%lf", &x);
}

int main(){
    printf("Digite o valor de A: "); scanf("%lf", &a);
    printf("Digite o valor de B: "); scanf("%lf", &b);
    printf("Digite o valor de C: "); scanf("%lf", &c);

    printf("Digite o valor de X: "); scanf("%lf", &x);
    ponto_de_curva(x);

    return 0;

}