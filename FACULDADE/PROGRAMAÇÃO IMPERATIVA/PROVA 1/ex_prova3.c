#include <stdio.h>

int main(){

    char* const chave = "VER";
    char* const frase = "VIVER E NÃO TER A VERGONHA DE SER FELIZ";

    char* f = frase; 
    while (*f != '\0'){
        char* c = chave; 
        if (*f == *c){
            
            char* origem = f; //ORIGEM = 
            char* g = f; // G = 1

            do{
                g++; c++;
            }
            while ( (*g == *c) && (*c != '\0'));

            if (*c == '\0'){
                f = g;
                printf("%d\n", (origem - frase));
            }
            else
            f++;
        }
        else
        f++;
    }

    return 0;
}