#include <stdio.h>

int vetor1[5] = {1, 2, 3, 4, 5};
int vetor2[5] = {1, 2, 3, 4, 5}; 

int main(){
    
    int soma1 = 0;
    int soma2 = 0;

    for (int i = 0; i < 5; i++)
        soma1 = soma1 + vetor1[i];
    
    for (int i = 0; i < 5; i++)
        soma2 = soma2 + vetor2[i];
    
    int soma_total = soma1 + soma2;


    printf("Primeiro Vetor: ");    
    for (int i = 0; i < 5; i++)
        printf("%d", vetor1[i]);
    
    putchar('\n');

    printf("Segundo Vetor: ");
    for (int i = 0; i < 5; i++)
        printf("%d", vetor2[i]);

    putchar('\n');
    
    printf("A soma dos vetores: %d \n", soma_total);
   
   

    return 0;
}