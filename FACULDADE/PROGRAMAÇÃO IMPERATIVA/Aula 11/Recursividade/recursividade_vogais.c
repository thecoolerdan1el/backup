#include <stdio.h>
#include <stdbool.h>
#include <ctype.h>

int vogal(char c){
    c = toupper(c);
    if (c == 'A' || c == 'E' || c == 'I' || c == 'O' || c == 'U')
        return 1;
    else 
        return 0;

}

int numero_de_vogais(char* p){
    int resultado = 0;

    if(*p != '\0')
        resultado = vogal(*p) + numero_de_vogais(p + 1); // vogal(*p) -- 1 ou 0 + numero_de_vogais(p + 1) -- próximo carcater em diante

    return resultado;
}

int main(){
    int y = numero_de_vogais("Outubro");

    printf("%d\n", y);

    return 0;
}