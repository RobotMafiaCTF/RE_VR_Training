global _start

section .data
hello: db "Hello World!"
hello_size: db 12


section .text 
exit:
	mov al, 1 ; move syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall

_start: 

	mov eax, 4
	mov ebx, 1
	mov ecx, hello
	mov dl, [hello_size]
	int 0x80
	jmp exit

