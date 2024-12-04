; main.asm

.data
	plain_text BYTE "Hello World!",0
	encryption_key BYTE "K"
	text_length EQU $ - plain_text
	encrypted DB text_length dup(?)
	cipher_text BYTE ?

.code 
main proc
	lea rsi, plain_text
	lea rdi, encrypted
	mov rcx, text_length
	
	encrypt:
		cmp byte ptr [rsi], 0
		je end_encrypt

		mov al, [rsi]
		xor al, encryption_key
		mov [rdi], al

		inc rsi
		inc rdi
		loop encrypt

	end_encrypt:
	ret
main endp
end