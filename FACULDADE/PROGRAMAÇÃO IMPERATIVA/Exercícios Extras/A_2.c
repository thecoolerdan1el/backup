#include <stdio.h>

float far;
float cel;

void converter_temperatura(){
    far = ((9 * cel) + 160) / 5;
    printf("A temperatura (%2.2f) convertida para Farenheit é: %2.2f", cel, far);
}

int main(){
    printf("Escreva a temperatura em Celcius: "); scanf("%f", &cel);

    converter_temperatura();

    return  0;
}