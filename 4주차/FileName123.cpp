#include <fstream>
#include <iostream>
#include <cmath>
using namespace std;
int main() {
	ofstream xx("test.txt");
	if (!xx) {
		cout << " can't open file\n";
		return -1;
	}
	float t, dt, T, pi = 3.141592;
	t = 0.0;
	dt = 0.005;
	T = 1;
	for (t = 0.0; t < T; t += dt) {
		xx << t << " " << 100*cos(20*pi*t)*cos(220*pi*t) << " " << 60*sin(240*pi*t)+80*sin(220*pi*t) << endl;
	}
	xx.close();
	return 1;
}



