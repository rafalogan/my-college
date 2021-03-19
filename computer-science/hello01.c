#include <studio.h>

void fn2(char hello[]) {
	printf("form fn2: %d\n", &hello);
	printf("%s\n", hello);
}

void fn1(char hello[]) {
	printf("form fn1: %d\n", &hello);
	fn2(hello);
}

void main() {

	char hello[] = "Hello World";
	printf("form fn1: %s\n", &hello);
	fn1(hello);

	return;
}
