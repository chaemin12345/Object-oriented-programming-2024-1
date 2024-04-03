#include <iostream>
#include <fstream>
#include <cmath>
using namespace std;

int main() {
	float p, * geoex, * geotheory;
	int k = 20, N = 100000, count, n = 20;
	p = 1.0 / 6.0;
	geoex = new float[k+1];
	geotheory = new float[k];
	for (k = 0; k < n; k++) geoex[k] = 0;
	for (int nn = 0; nn < N; nn++) {
		count = 0;
		for (int j = 0; j < 20; j++) {
			if ((rand() / (float)RAND_MAX) < p) break;
			count++;
		}
		geoex[count]++;
	}
	for (int k = 0; k < n; k++) geoex[k] /= (float)N;
	ofstream xxx("geometric.txt");
	for (k = 1; k <= 20; k++) {
		geotheory[k - 1] = pow((1 - p), (k - 1)) * p;
		xxx << k << " " << geotheory[k - 1] << " " << geoex[k-1] << endl;
	}
	xxx.close();
	return 1;
}

