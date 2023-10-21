#include <stdio.h>


int T;

void recursivo(int n){


    if(n == 1){
        T = 1;
    }

    else{
        T = (n-1) + 3;
    }

    printf("%d", n);
}


int main(){
    recursivo(10);

    return 0;
}