#include <stdio.h>

int func(int n){

	if(n == 0){
		return 1;
	}

	else{
		return func(n - 2);
	}
}

int main(){
	printf("%d\n", func(5));

	return 0;
}