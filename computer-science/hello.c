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
