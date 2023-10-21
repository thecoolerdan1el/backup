#include <stdio.h>

int a, b, c;
int n, contador;
int r;

void fibonacci(){
    a = 1;
    b = 1;
    contador = 2;

    for (contador; contador < n; contador++){
        c = a + b; 
        r = c; // 
        r = r / b;
        printf("%d\n", c);
        a = b;
        b = c;
    }

}

int main(){

    printf("Digite quantos números terá a sequência: "); scanf("%d", &n);
    fibonacci();
    return 0;
}

