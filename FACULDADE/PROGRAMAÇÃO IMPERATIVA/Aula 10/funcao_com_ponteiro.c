#include <stdio.h>
#include <math.h>

void tangente(double x, double* y){
    *y = sin(x) / cos(x);
}

int main(){
    double a = 3.14 / 3;
    double b = 0;

    tangente(a, &b);

    printf("%f %f\n", a, b);
    return 0;
}