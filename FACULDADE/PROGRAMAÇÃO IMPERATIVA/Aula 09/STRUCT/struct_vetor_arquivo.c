#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define MAX_LIVROS 10
#define MAX_TITULO 80


typedef
    struct{
        char titulo[80];
        int ano;
    }
    Livro;

int main(){

    FILE* arquivo = fopen("livros.txt", "r");

    Livro livros[MAX_LIVROS];

    char c;

    int quantidade;
    fscanf(arquivo, "%d", &quantidade); //Quantos livros estão no arquivo txt
    do c = fgetc(arquivo); while (c != '\n');


    for (int i = 0; i < quantidade; i++){
        
        fgets(livros[i].titulo, MAX_TITULO, arquivo);
        int CRLF = strcspn(livros[i].titulo, "\r\n");
        livros[i].titulo[CRLF] = '\0';
        
        fscanf(arquivo, "%d", &(livros[i].ano));

        do c = fgetc(arquivo); while(c != '\n');

    }
    
    fclose(arquivo);

    puts("VALORES LIDOS: ");
    
    for (int i = 0; i < quantidade; i++){

        printf("Livro: %s (%d).\n", livros[i].titulo, livros[i].ano);
    }

    return 0;

}