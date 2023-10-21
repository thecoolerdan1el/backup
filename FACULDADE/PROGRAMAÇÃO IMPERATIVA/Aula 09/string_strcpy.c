#include <stdio.h>
#include <string.h>

int main(){

    char origem[30] = "Pantanal";
    printf("%s\n", origem);

    char destino[20];
    strcpy(destino, origem);
    printf("%s\n", destino);

    return 0;
}
