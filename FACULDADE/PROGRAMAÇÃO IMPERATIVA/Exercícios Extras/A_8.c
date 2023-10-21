#include <stdio.h>
#include <stdbool.h>
char palavra;
int contador;
int contador_consoante;
bool contador_vogal;
enum Vogais {a, e, i, o, u};
int main(){

    printf("Digite uma palavra: "); scanf("%c", &palavra);

    for (int i = 0; i < palavra; i++){
        if (palavra==a, e, i, o, u){
            contador++;
        }
        else{
            contador_consoante++;
        }
    }

    printf("%d\n", contador);

    return 0;
}