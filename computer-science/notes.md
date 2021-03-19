# Learning Computer Science

This exemple is based in serie of videos of fabio akita channel about computer science.

## Requires

To exemples was used language "C"

## To seache 

* Stacks types LIFO or FIFO
* Tail recursion
* Protobufs


## Pointer

Is a reference to memory address;

```c
#include <studio.h>
#include <stdlib.h>
#include <string.h>

void main() {
  char hello[] =  "Hello World";
  printf("from main: %d\n", &hello);
  
  char *hello2 = malloc(sizeof(hello));
  strcpy(hello2, hello);
  printf("hello2: %s\n", hello2);
  
  char *hello3 = hello2 + 6;
  printf("from hello2: %d\n", hello2);
  printf("from hello3: %d\n", hello3);
  
  return;
}

```

### struct "Tuple"

Is a array with diferents types concatenated 

```c
#include <studio.h>
#include <stdlib.h>
#include <string.h>

struct Person {
	char name[8];
	uint8_t age;
	uint8_t height;
};

void createPerson(char name[], 
	uint8_t age, 
	uint8_t height,
	void(*function_pointer)(struct Person)) {
	
	struct Person person;
  strcpy(person.name, name);
  person.age = age;
  person.height = height;
  
  (*function_pointer)(person);
		
}

void printPerson(struct Person person) {
	printf("Person: %s %d %d\n", 
		person.name, person.age, person.height);
}

void printPerson2(struct Person person) {
	printf("name: %s age %d height: %d\n", 
		person.name, person.age, person.height);
}

void main() {
  
  createPerson("Rafael", 36, 190, &printPerson);
  createPerson("Rafael", 36, 190, &printPerson2);
  
  return;
}

```

### Object Oriented

```c
#include <studio.h>
#include <stdlib.h>
#include <string.h>

#define Class struct

Class Person {
	char name[8];
	uint8_t age;
	uint8_t height;
	void (*show)(Class Person *);
};

void parson_print(Class Person person) {
	printf("Person: %s age: %d height: %d\n",
		self->name, self->age, self->height);
}

Class Person * newPerson(char name[],
	uint8_t age,
	uint8_t height) {

	Class Person *self = (Class Person *)  malloc(sizeof(Class Person self));
  strcpy(self->name, name);
  self->age = age;
  self->height = height;

  self->show = &person_print;
  return self;
}

void main() {

	Class Person *person2 = (Class Person *) newPerson("Rafael", 36, 190);

	person2-> show(person2);

  return;
}
```
```#define``` replace argument one for argument two ex.: ``#define Class struct``
