// main.cpp

#include <iostream>
#include <string>

using namespace std;

extern "C" char* xor_encrypt(int, string);



int main() {

    cout << "Hello World!" << endl;

    char* encrypted_text = xor_encrypt(4, "abab");   // Get the entire encrypted string
    cout << encrypted_text << endl;         // Print the encrypted string

    return 0;
}