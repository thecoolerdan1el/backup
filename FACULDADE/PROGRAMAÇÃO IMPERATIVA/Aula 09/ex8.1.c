#include <stdio.h>
#include <string.h>

int main(){

    char nome1[10];
    char nome2[10];

    printf("Digite uma palavra: "); scanf("%s", nome1);
    printf("Digite outra palavra: "); scanf("%s", nome2);

    printf("%s\n", strcat(nome1, nome2));

    return 0;
}