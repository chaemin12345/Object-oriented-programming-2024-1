#include <iostream>
#include <fstream>
using namespace std;

int multiple(int);
float square(float);

int main() {
	int a = 1234;
	int c[5];
	float b[3];
	int n;
	for (int i = 0; i < 5; i++) {
		cin >> n;
		if (1000 <= n && n <= 5000) {
			c[i] = multiple(n);
		}
		else {
			cout << "1000부터 5000 사이의 수를 입력해주세요.";
			i--;
		}
	}
	for (float i = -0.5; i <= 0.5; i += 0.5) {
		int d = i * 2 + 1;
		b[d] = square(i);
	}

	ofstream mybin;
	mybin.open("mybin.dat", ios::binary | ios::out);
	mybin.write((char*)&a, sizeof(int));
	mybin.write((char*)c, sizeof(int) * 5);
	mybin.write((char*)b, sizeof(float) * 3);
	mybin.close();


	int a1, c1[5];
	float b1[3];
	ifstream mybin2;
	mybin2.open("mybin.dat", ios::binary | ios::out);
	mybin2.read((char*)&a1, 4);
	mybin2.read((char*)c1, sizeof(int) * 5);
	mybin2.read((char*)b1, sizeof(float) * 3);
	mybin2.close();

	cout << a1 << " ";
	for (int j = 0; j < 5; j++) {
		cout << c1[j] << " ";
	}
	for (int k = 0; k < 3; k++) {
		cout << b1[k] << " ";
	}
}

int multiple(int b) {
	return b * 5;
}

float square(float c) {
	return c * c;
}
