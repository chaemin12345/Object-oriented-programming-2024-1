#pragma once
#include "fruit0.h"
using namespace std;

class store {
public:
	store() {};
	store(int a, int b, int c, float d, float e, float f) {
		apple = fruit(d, a);
		pear = fruit(e, b);
		peach = fruit(f, c);
	}
	fruit apple, pear, peach;
	float total() {
		float x = apple.show();
		x += pear.show();
		x += peach.show();
		return x;
	}
	void show() {
		cout << "apple: " << apple.many << endl;
		cout << "pear: " << pear.many << endl;
		cout << "peach: " << peach.many << endl;
	}
	void operator *=(int num) {
		apple.many *= num;
		pear.many *= num;
		peach.many *= num;
	}
};