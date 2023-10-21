#include <stdio.h>

int main(){
    char * const frase = "Plantou juntos outra vez";
    const char c1 = 'o';
    const char c2 = 'u';

    char *p = frase;

    while (*p != '\0'){
        const char* q = p + 1;
        if (*p == c1 && *q == c2){
            printf("%d\n", (p - frase));
           
        }
    p++;
        
    }

    return 0;
}