// DougFO Play Jan. 19, 2022
#include <iostream>
#include "ani.h"
#include "hum.h"
#include "bird.h"
#include "fish.h"
using namespace std;
int main() {
	animal a;
	human b;
	bird c;
	fish d;
	a.eat();
	b.eat();
	c.eat();
	d.eat();
	b.walk();
	c.fly();
	d.swim();
	cout << " b " << b.nLegs << "\n";
	return 123;
}