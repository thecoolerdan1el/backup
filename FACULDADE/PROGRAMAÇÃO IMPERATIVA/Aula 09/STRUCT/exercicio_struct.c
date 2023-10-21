#include <stdio.h>
#include <stdlib.h>



typedef struct{ 
    char nome[20];
    int ano;
    float altura;
    }
    Cadastro;

int main(){

    Cadastro x;

    printf("Digite o nome do aluno: ");
    fgets(x.nome, 20, stdin);

    printf("Digite o ano de nascimento: ");
    scanf("%d", &x.ano);

    printf("Digite a altura do aluno: ");
    scanf("%f", &x.altura);

    printf("Nome: %s \n Ano De Nascimento: %d \n Altura: %2.2f \n", x.nome, x.ano, x.altura);

    return 0;

}

