#include <stdio.h>
#include <math.h>

int main(){

    int valores[] = {750, 580, 630, 800, 720, 680, 900, 740, 460, 830};
    const int MAX = sizeof(valores) / sizeof(valores[0]);
    
    double t = 0;

    for (int i = 0; i < MAX; i++){
        t = t + valores[i];
    }

    double m = t / MAX;
    int x = 0, y = 0;

    for (int i = 0; i < MAX; i++){
        
        if (valores[i] < m) x++;
        else
        if (valores[i] > m) y++;
    }
    printf("%.2f\n", m);
    printf("%d\n", x);
    printf("%d\n ", y);

    return 0;
}