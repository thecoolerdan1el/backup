#include <stdio.h>

int fibonacci(int x){
	int resultado = 0;

	if (x == 0){
		resultado = 0;
	}
	else if (x == 1){
		resultado = 1;
	}
	else if(x > 1){
		resultado = fibonacci(x - 1) + fibonacci(x - 2);
	}

	return resultado;
}

int main(){
	printf("%d\n", fibonacci(8));

	return 0;
}