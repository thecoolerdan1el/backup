#include <stdio.h>
#include <ctype.h>

int main(){

    char palavra[] = "drummond";

    for (char* p = palavra; *p != '\0'; p++)
        *p = toupper(*p);

    printf("%s", palavra);

    return 0;

}