#include <stdio.h>

void copiarConteudo(FILE *arquivo, FILE *arquivo2){

    char leitor[100];

    while(fgets(leitor, 100, arquivo) != NULL )


    fputs(leitor, arquivo2);
}

int main(){
    
    FILE* arquivo = fopen("vendedores.txt", "r");

    if (arquivo == NULL){ 
        printf("Erro na abertura do arquivo\n");
        return 1;
    }

    FILE* arquivo2 = fopen("totais2.txt","a");
    
    copiarConteudo(arquivo, arquivo2);

    fclose(arquivo);
    fclose(arquivo2);
    return 0;
}
