#include <stdio.h>

int f(int x){
    if (x == 0)
        return 1;
    else
        return x * f(x - 1);
}

int main(){
    printf("%d\n", f(4));

    return 0;
}