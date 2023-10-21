#include <stdio.h>

int main(){
    char nome[10];

    printf("Entre com um nome: "); scanf("%s", nome); //Não se usa & para o endereço de um vetor; já corresponde ao seu endereço
    printf("Nome: %s\n", nome); 

    return 0;
}