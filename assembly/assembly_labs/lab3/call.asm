; call a function bye, try moving values 
; come up with example to show writing over reg contents in the called function

global _start

section .data
hello: db "Hello World!"
hello_size: db 12
goodbye: db "Goodbye World!"
goodbye_size: db 14

section .text 

bye:
	; save the stack base pointer
	push ebp 
	; move the new stack pointer to be the called function base
	mov ebp, esp 
	; write goodbye message
	mov eax, 4
	mov ebx, 1
	mov ecx, goodbye
	mov dl, [goodbye_size]
	int 0x80
	; restore the base pointer and return
	pop ebp
	ret
	
exit:
	mov al, 1 ; move syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall

_start: 	
	;sys call write hello world
	mov eax, 4 ; write syscall
	mov ebx, 1 ; param 1- output 
	mov ecx, hello ; param 2- string
	mov dl, [hello_size] ; param 3- size
	int 0x80
	
	; call bye and exit
	call bye
	jmp exit
	
