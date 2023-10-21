#include <stdio.h>



int f;

int func(int n){

	for(f = 1; n > 1; n = n - 1){
		
		f = f * n;
	}

	return f;
}

int main(){
	printf("%d", func(5));

	return 0;
}