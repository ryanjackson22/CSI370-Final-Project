; encrypt.asm

.data
	plain_text byte "llo World!",0
	encryption_key BYTE "K"
	text_length EQU $ - plain_text
	encrypted DB text_length dup(?)
	cipher_text byte ?

.code 
xor_encrypt proc
	lea rsi, plain_text		; place text onto source register
	lea rdi, encrypted		; place empty cipher into destination register
	mov rcx, text_length	; load length onto counter register
	
	encrypt_loop:
		cmp byte ptr [rsi], 0	; if end of string reached:
		je end_encrypt			; exit loop

		mov al, [rsi]			; place character into register
		xor al, encryption_key	; encrypt
		mov [rdi], al			; move the result into destination register

		inc rsi				; move to next character
		inc rdi				; move to next character destination
		loop encrypt_loop	; next iteration
	end_encrypt:

	mov al, [encrypted]		; set up return
	ret
xor_encrypt endp
end