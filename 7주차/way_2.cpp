#include <iostream>
#include <fstream>
using namespace std;

void multiple(int*, int);
void square(float*, int);

int main() {
	int a = 1234;
	const int nn1 = 5, nn2=3;
	float b[nn2];
	int num, c[nn1];
	cout << nn1 << "개의 int를 작성해주세요." << endl;
	for (int i = 0; i < nn1; i++) {
		cin >> num;

		if (1000 <= num && num <= 5000) {
			c[i] = num;
		}
		else {
			cout << "1000부터 5000 사이의 수를 입력해주세요.";
			i--;
		}
	}
	for (float i = -0.5; i < (- 0.5 + (0.5 * nn2)); i += 0.5) {
		int d = i * 2 + 1;
		b[d] = i;
	}
	multiple(c, nn1);
	square(b, nn2);

	ofstream mybin;
	mybin.open("mybin.dat", ios::binary | ios::out);
	mybin.write((char*)&a, sizeof(int));
	mybin.write((char*)c, sizeof(int) * nn1);
	mybin.write((char*)b, sizeof(float) * nn2);
	mybin.close();


	int a1, c1[nn1];
	float b1[nn2];
	ifstream mybin2;
	mybin2.open("mybin.dat", ios::binary | ios::out);
	mybin2.read((char*)&a1, 4);
	mybin2.read((char*)c1, sizeof(int) * nn1);
	mybin2.read((char*)b1, sizeof(float) * nn2);

	cout << a1 << " ";
	for (int j = 0; j < nn1; j++) {
		cout << c1[j] << " ";
	}
	for (int k = 0; k < nn2; k++) {
		cout << b1[k] << " ";
	}
	cout << "File size is: " << mybin2.tellg() << " bytes.\n";
	mybin2.close();
}

void multiple(int *b, int n1) {
	for (int i = 0; i < n1; i++) {
		b[i] = 5 * b[i];
	}
}

void square(float *c, int n2) {
	for (int i = 0; i < n2; i++) {
		c[i] = c[i] * c[i];
	}
}
