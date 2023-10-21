#include <stdio.h>

double TABELA[6] = {800.00, 620.00, 900.00, 450.00, 800.00, 780.00};
double media_de_faturamento;
double soma;
int main(){

    for(int i = 0; i < 6; i++){
        soma = soma + TABELA[i];
    }

    media_de_faturamento = soma / 6;
    printf("Soma: %.2f\n", soma);
    printf("Média de faturamento: %.2f", media_de_faturamento);

    
    return 0;


}   