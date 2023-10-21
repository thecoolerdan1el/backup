#include <stdio.h>

int func(int n){
	
	int resultado;
	printf("%d\n", n);
	
	if(n = 10){
		return 1;
	}

	else{
		resultado = func(n++);
	}

	return resultado;


}

int main(){
	printf("%d", func(5));

	return 0;
}