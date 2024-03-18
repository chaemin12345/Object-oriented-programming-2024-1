#include <iostream>
#include <math.h>
using namespace std;
void main() {
	float c, x, dx_dif, anal_dif, num_dif;
	//differentiation
	cout << "< tan^2(cx) >" << endl;
	cout << "c = ";
	cin >> c;
	cout << "x = ";
	cin >> x;
	cout << "dx_dif = ";
	cin >> dx_dif;
	anal_dif = 2 * c * tan(c * x) * (1 / cos(c * x)) * (1 / cos(c * x));
	num_dif = ((tan(c * (x + dx_dif)) * tan(c * (x + dx_dif))) - (tan(x) * tan(x))) / dx_dif;
	cout << "num_dif " << num_dif << " anal_dif " << anal_dif << endl;
	cout << "error = " << (num_dif - anal_dif) / anal_dif * 100 << "%\n";
	cout << endl << endl;
	//integration
	float a, b, dt_int, anal_int, num_int;
	int N;
	cout << "a = ";
	cin >> a;
	cout << "b = ";
	cin >> b;
	cout << "N = ";
	cin >> N;
	dt_int = (b - a) / N;
	anal_int = (tan(c * b) / c) - b + a - (tan(c * a) / c);
	num_int = 0;
	for (int i = 0; i < N; i++) {
		float xi = a + (i + 1) * dt_int;
		num_int += tan(c * xi) * tan(c * xi) * dt_int;
	}
	cout << "num_int " << num_int << " anal_int " << anal_int << endl;
	cout << "error = " << (num_int - anal_int) / anal_int * 100 << "%\n";
}