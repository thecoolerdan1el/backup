#include <stdio.h>

double faturamento[7] = {800.00, 900.00, 450.00, 650.50, 820.00, 500.00, 750.00};
double soma;
double media;
int indice_de_faturamento = 0;
int indice_de_faturamento_2 = 0;


int main(){

    double menor_faturamento = faturamento[0];
    double maior_faturamento = faturamento[0];
    for(int i = 0; i < 6; i++){
        soma = soma + faturamento[i];
    }
    media = soma / 6;
    
    printf("A soma total: %.2f\n", soma);
    printf("A média de faturamento: %2.f\n", media);

    for(int i = 0; i < 6; i++){
        if (faturamento[i] < menor_faturamento){
            menor_faturamento = faturamento[i];
            indice_de_faturamento = i;
        }
    }
    
    for (int i = 0; i < 6; i++){
    if(faturamento[i] > maior_faturamento){
            maior_faturamento = faturamento[i];
            indice_de_faturamento_2 = i;
    }
    }

    printf("O índice do dia com menor faturamento foi %d e o valor foi: %2.f\n", indice_de_faturamento, menor_faturamento);
    printf("O índice do dia com maior faturamento foi %d e o valor foi: %2.f\n", indice_de_faturamento_2, maior_faturamento);

    return 0;
}