#include <stdio.h>

// TYPE DEF DEFINE STRUCT SEM NOME
typedef
    struct 
    {
        char titulo[80];
        int ano;
    }
    Livro;

int main(){

    Livro x;

    printf("Digite um título (sem espaços): ");
    scanf("%s", x.titulo); //O código ficaria melhor com fgets

    printf("Digite um ano: ");
    scanf("%d", &(x.ano));

    printf("Livro: %s (%d). \n", x.titulo, x.ano);

    return 0;

}

    