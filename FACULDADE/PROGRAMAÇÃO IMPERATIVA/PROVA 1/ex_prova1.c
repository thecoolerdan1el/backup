#include <stdio.h>
#include <math.h>

int main(){
    const int MIN = 1;
    const int MAX = 10;
    int i = MIN, x = 0, y = 2;

    while (i <= MAX){

        int resto = i % 3;
        switch (resto)
        {
        case 1: x++; break;
        case 2: y = y*y;
        
        }

        i++;

    }

    printf("%d\n", x);
    printf("%d\n", y);

    return 0;

}