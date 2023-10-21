#include <stdio.h>

int main(){
    int primeiro_num;
    int incrementador;
    int termo;
    int PA;
    printf("Digite o primeiro termo: "); scanf("%d", &primeiro_num);
    printf("Digite a razão da PA: "); scanf("%d", &incrementador);
    printf("Digite qual termo você quer saber: "); scanf("%d", &termo);

    for (int i = 0; i <= termo; i++){
        primeiro_num = primeiro_num + incrementador;
        i++;
    }
    printf("O número é: %d\n", primeiro_num);

    return 0;
}