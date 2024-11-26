def xor_encrypt(plain_text):
    xor_key = 'P'
    cipher_text = ''

    for char in plain_text:
        char_to_integer = ord(char)
        key_to_integer = ord(xor_key)
        # temp = char_to_integer ^ key_to_integer
        temp = ord(char) ^ ord(xor_key)

        integer_to_char = chr(temp)
        cipher_text += integer_to_char

    return cipher_text


def main():
    sample_string = "Max Carney"

    encrypted_string = xor_encrypt(sample_string)
    print("Decrypted String:", encrypted_string)

    decrypted_string = xor_encrypt(encrypted_string)
    print("Decrypted String:", decrypted_string)

if __name__ == "__main__":
   main()