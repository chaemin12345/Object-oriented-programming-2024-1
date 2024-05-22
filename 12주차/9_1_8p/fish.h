#pragma once
#include "ani.h"
using namespace std;
class fish : public animal {
public:
	fish() : nFin(2) { };
	int nFin;
	void swim() { cout << " "<< nLegs << " " << nFin << endl; }
};