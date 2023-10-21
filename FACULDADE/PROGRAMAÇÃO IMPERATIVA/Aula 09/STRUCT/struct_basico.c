#include <stdio.h>
#include <stdlib.h>

//Define a estrutura do livro:

struct Livro{

    char titulo[80];
    int ano;
    char autor[50];
};

int main(){

    struct Livro x;

    strcpy(x.titulo, "Cem anos de Solidão");
    x.ano = 1967;
    strcpy(x.autor, "Jhon Locke");

    printf("Livro: %s (%d) Autor: %s. \n", x.titulo, x.ano, x.autor);

    struct Livro y = { "Ensaio sobre a Cegueira", 1995 };

    printf("Livro: %s (%d).\n", y.titulo, y.ano);

    y.ano = 2005;
    strcpy(y.titulo, "As Intermitências Da Morte");

    printf("Livro: %s (%d).\n", y.titulo, y.ano);

    return 0;


}

