#include <stdio.h>
#include <string.h>

int main(){

    char nome[20] = "Ana Terra";

    printf("%s\n", nome);

    printf("Espaço ocupado pela variável: %zu\n", sizeof(nome));
    printf("O comprimento da string: %zu\n", strlen(nome));

    return 0;
}