#include <stdio.h>

int main(){

    int k;
    char ch, crip;
    printf("Digite um número inteiro: "); scanf("%d", &k);
    getchar();

    printf("Digite um caracter: "); ch = getchar();

    if (k == 1 && k == 2){
        crip = ch + 2;
        printf("%c\n", crip);
    }
    else if (k == 3){
        ch = ch + 5;
    }
    else if(k == 4){
        crip = ch - 2;
        printf("%c\n", crip);
    }
    
    if (ch == 'a' || ch == 'b' || ch == 'i' || ch == 'o' || ch == 'u'){
        printf("Vogal\n");
    }
    else{
        printf("Consoante\n");
    }

    return 0;

}

