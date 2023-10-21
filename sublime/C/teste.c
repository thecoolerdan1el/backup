#include <stdio.h>


int x = 10, y = 20, z;


void somar(){
	z = x + y;
	printf("%d\n", z);
}

int main(){
	somar();

	
	putchar('\n');
	return 0;
}