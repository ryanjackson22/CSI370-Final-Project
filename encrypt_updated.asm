; encrypt.asm

.data

    plain_text byte "Hello World!",0     ; Original text
    encryption_key BYTE "K"               ; Key for XOR encryption
    text_length EQU $ - plain_text - 1   ; Length of the plain text (excluding null terminator)

    encrypted DB text_length dup(?)       ; Array to hold the encrypted text
    cipher_text byte ?                    ; Not used, can be removed

.code 

xor_encrypt proc

    lea rsi, plain_text                   ; Load address of plain_text into rsi
    lea rdi, encrypted                    ; Load address of encrypted into rdi
    mov rcx, text_length                  ; Load length of text into rcx

encrypt_loop:

    cmp byte ptr [rsi], 0                 ; Check if end of string is reached
    je end_encrypt                         ; If zero (null terminator), jump to end

    mov al, [rsi]                         ; Load current character into al
    xor al, encryption_key                ; Encrypt character with XOR
    mov [rdi], al                         ; Store encrypted character in encrypted array

    inc rsi                                ; Move to the next character in plain_text
    inc rdi                                ; Move to the next position in encrypted array

    loop encrypt_loop                      ; Repeat for all characters

end_encrypt:

    mov byte ptr [rdi], 0                 ; Null-terminate the encrypted string

    lea rax, encrypted                     ; Set up rax to point to the encrypted string for return
    ret

xor_encrypt endp

end