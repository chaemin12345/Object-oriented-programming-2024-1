#include <iostream>
#include "CarS3.h"
int main() {
	Car* car1;
	car1 = new Car(1,2,3);
	car1->wheels = 4;
	car1->setWheels(3);
	car1->getEnergyRank();
	car1->getOptionNum();
	std::cout << car1->color;
	delete car1;
	return 111;
}