// main.cpp

#include <iostream>

extern "C" char* xor_encrypt(); // Change return type to char*

using namespace std;

int main() {

    cout << "Hello World!" << endl;

    char* encrypted_text = xor_encrypt(); // Get the entire encrypted string
    cout << encrypted_text << endl;        // Print the encrypted string

    return 0;
}