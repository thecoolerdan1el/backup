#include <stdio.h>

float raio_lata;
float altura_lata;
float volume;
double const PI = 3.14159;

void volume_lata(){

    volume = PI * (raio_lata*raio_lata) * altura_lata;
    printf("O volume da lata é: %2.2f\n", volume);
}

int main(){
    printf("Entre com o raio da lata: "); scanf("%f", &raio_lata);
    printf("Entre com a altura da lata: "); scanf("%f", &altura_lata);

    volume_lata();

    return 0;
}