#include <iostream>
#include "store.h"
using namespace std;

int main() {
	store A;
	A = store(3, 4, 5, 100, 200, 300);
	A.show();
	A *= 2;
	A.show();
}
