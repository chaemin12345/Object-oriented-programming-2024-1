#pragma once
class fruit {
public:
	fruit() {
		price = 200; many = 2;
	}
	fruit(float p, int n) {
		price = p;
		many = n;
	}
	int many;
	float price;
	float show() {
		return price * many;
	}
};