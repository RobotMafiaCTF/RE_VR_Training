global _start

section .data
hello: db "Hello World!"
hello_size: db 12
goodbye: db "Goodbye World!"
goodbye_size: db 14
test: db 1

section .text 


exit:
	; exit label reached, ; write goodbye world with write syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, goodbye
	mov dl, [goodbye_size]
	int 0x80
	
	mov al, 1 ; move exit syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall

_start: 
	; write hello world with write syscall
	mov eax, 4
	mov ebx, 1
	mov ecx, hello
	mov dl, [hello_size]
	int 0x80
	
	jmp exit
	
