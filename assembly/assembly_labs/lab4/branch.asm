global _start

section .data
hello: db "Hello World!"
hello_size: db 12
goodbye: db "Goodbye World!"
goodbye_size: db 14
test: db 0


section .text 
bye:
	; print goodbye world
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
	mov al, [test] ; move contents of test variable into eax
	cmp al, 1 ; compare eax to 1
	jz bye ; if test is equal to 1 jump to goodbye world

	; print hello world
	mov eax, 4
	mov ebx, 1
	mov ecx, hello
	mov dl, [hello_size]
	int 0x80
	
	; jump to the exit label
	jmp exit
	
