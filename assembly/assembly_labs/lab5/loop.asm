;[bits 32] this was causing problems with nasm -f elfX32 loop.asm
; didnt like compiling for x64 without registers for push/pop as rxx
; or without the above directive... why?? can we use i386 instead?
; i mean i know we can but should we?

global _start

section .data
loop_count_max: db 5
hello: db "Hello World!"
hello_size: db 12
goodbye: db "Goodbye World!"
goodbye_size: db 14

section .text 

bye:
	mov eax, 4
	mov ebx, 1
	mov ecx, goodbye
	mov dl, [goodbye_size]
	int 0x80
exit:
	mov al, 1 ; move syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall

_start: 
	mov al, [loop_count_max] ; initialize counter
loop:
	; see if test is zero, if yes, exit
	test al, al ; if low byte of eax is zero, zero flag is set
	jz bye
	; else decrement counter and store counter for later
	dec al
	push eax
	
	;sys call write hello world
	mov eax, 4 ; write syscall
	mov ebx, 1 ; param 1- output 
	mov ecx, hello ; param 2- string
	mov dl, [hello_size] ; param 3- size
	int 0x80
	
	; restore counter and loop
	pop eax
	jmp loop
	
