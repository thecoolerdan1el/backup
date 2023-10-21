#include <stdio.h>


struct Cadastro{
    char nome[20];
    int ano_nasc;
    double altura;
};

int main(){

    struct Cadastro x;

    printf("Digite o seu nome (Sem Espaços): "); scanf("%s", x.nome);
    printf("Digite seu ano de nascimento: "); scanf("%d", &x.ano_nasc);
    printf("Digite a sua altura: "); scanf("%lf", &x.altura);

    printf("%s, %d, %.2f\n", x.nome, x.ano_nasc, x.altura);

    return 0;
}