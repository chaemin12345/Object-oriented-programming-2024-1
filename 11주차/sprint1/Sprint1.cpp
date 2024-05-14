#include <iostream>
#include "health.h"
using namespace std;
int main() {
	CHealth VIP2(56), * mickey;  // need for CHealth() to be public 
	mickey = new CHealth(28);
	cout << VIP2.age << "  " << mickey->age << endl;
	VIP2.measureCel();
	mickey->measureCel();
	cout << VIP2.cel << "C  " << mickey->faren << "F \n";
	cout << "size " << sizeof(CHealth) << "\n";
	return 1;
}