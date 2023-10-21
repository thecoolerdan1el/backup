#include <stdio.h>

double faturamento [6] = {800.00, 620.00, 900.00, 450.00, 800.00, 780.00};
float soma = 0;
int main(){
    

    for (int i = 0; i < 6; i++)
        soma = soma + faturamento[i];

    printf("Faturamento Total: R$%.2f\n", soma);

    float media = soma / 6;

    printf("O Faturamento Médio por dia: R$%.2f\n", media);

    float menor_faturamento = faturamento[0];
    int indice_menor_faturamento = 0;

    for (int i = 1; i < 6; i++)
        if(faturamento[i] < menor_faturamento){
            menor_faturamento = faturamento[i];
            indice_menor_faturamento = i;
        }
    
    printf("Menor faturamento: R$%.2f \n", menor_faturamento);
    printf("Índice do menor faturamento: %d \n", indice_menor_faturamento);


    float maior_faturamento = faturamento[0];
    int indice_maior_faturamento = 0;

    for (int i = 1; i < 6; i++)
        if (faturamento[i] > maior_faturamento){
            maior_faturamento = faturamento[i];
            indice_maior_faturamento = i;
        }

    printf("O maior faturamento: R$%.2f \n", maior_faturamento);
    printf("O Índice de maior faturamento: %d \n", indice_maior_faturamento);

    return 0;
}
