#include <stdio.h>
#include <string.h>
#define MAX 10

int main(){

    char texto[MAX];
    fgets(texto, MAX, stdin);

    printf("%d\n", strlen(texto));
    puts(texto);
    
    char ultimo = texto[strlen(texto) - 1];
    printf("Último caractere: %c\n", ultimo);
    printf("%d\n", ultimo);

    return 0;
}