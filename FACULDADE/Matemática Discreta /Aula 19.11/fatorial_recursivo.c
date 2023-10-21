#include <stdio.h>

int func(int n){

	if(n == 0){
		return 1;
	}

	else{
		return n * func(n - 1);
	}
}


int main(){
	int x;
	printf("Entre com o valor do fatorial: "); scanf("%d", &x);
	printf("%d\n", func(x));

	return 0;
}