#include <stdio.h>


int T;

int recursivo(int n){


    if(n == 1){
        return 1;
    }

    else{
        return (recursivo(n - 1) + 3);
    }
}


int main(){

    printf("%d", recursivo(5));
    return 0;
}