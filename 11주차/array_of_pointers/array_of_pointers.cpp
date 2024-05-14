#include <iostream>
using namespace std;

class A {
public:
	A() { ii = 10; M++; };
	A(int x) { ii = x; M++; };
	int ii;
	static int M;
};
int A::M = 0;

void main() {
	A c, * bb[3];
	cout << A::M << endl;
	c = A(100);
	cout << A::M << endl;
	bb[0] = new A();
	cout << A::M << endl;
	bb[1] = &c;
	cout << A::M << endl;
	bb[2] = new A[5];
	cout << A::M;
}
