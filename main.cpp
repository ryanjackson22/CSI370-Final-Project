// main.cpp

#include <iostream>

extern "C" char* xor_encrypt(); // Change return type to char*

int main() {

    std::cout << "Encrypted: " << xor_encrypt();
    std::cout << std::endl;

    return 0;
}