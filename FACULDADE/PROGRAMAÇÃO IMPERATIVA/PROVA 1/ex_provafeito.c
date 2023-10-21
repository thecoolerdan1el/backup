#include <stdio.h>

int calcular(int a, int* b){
    a = 2 * a;
    *b = 2 * (*b);

    return (2 * a);
}

int main(){
    int x = 4;
    int y = 1;

    int z = calcular(x, &y);

    printf("%d\n", x);
    printf("%d\n", y);
    printf("%d\n", z);

    return 0;
    
}