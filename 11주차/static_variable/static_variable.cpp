#include <iostream>
using namespace std;
class cc {
public:
	cc() {
		a = 2; b = 3; c = 4;
		ii++;
	};
	float a, b, c;
	static int ii;
};
int cc::ii = 0;

int main() {
	cc c1, c2[2], c3, * c4;
	cout << cc::ii << endl;
	c4 = new cc[10];
	cout << cc::ii << endl;
	cc c5[7];
	cout << cc::ii << endl;
	cc c6, * c7;
	cout << cc::ii << endl;
	c7 = new cc[5];
	cout << cc::ii;
}