global _start

section .data
hello: db "Hello World!"
hello_size: db 12


section .text 
_start: 

	mov eax, 4 ; move syscall number into eax
	mov ebx, 1 ; move fd into ebx. fd == 1 means we are writing to stdout
	mov ecx, hello ; move hello string ptr into ecx
	mov dl, [hello_size] ; move hello world size into edx
	int 0x80
	
	mov al, 1 ; move syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall
