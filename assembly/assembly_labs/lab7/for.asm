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
	mov bl, 0 ; initialize counter
	
	; see if  counter matches max value, if yes, exit
	cmp al, bl ; if low byte of eax is zero, zero flag is set
	je bye
	
loop:
	; store counters
	push eax
	push ebx
	
	; sys call write hello world
	mov eax, 4 ; write syscall
	mov ebx, 1 ; param 1- output 
	mov ecx, hello ; param 2- string
	mov dl, [hello_size] ; param 3- size
	int 0x80
	
	; restore counter
	pop ebx
	pop eax
	inc bl
	
	cmp al, bl ; if low byte of eax is zero, zero flag is set
	jne loop
	jmp bye
	
