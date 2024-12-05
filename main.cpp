// main.cpp

#include <iostream>

extern "C" char xor_encrypt();

using namespace std;

int main() {
	cout << "Hello World!" << endl;
	cout << xor_encrypt() << endl;
}