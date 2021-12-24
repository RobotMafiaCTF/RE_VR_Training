global _start

section .data ; this is where we would put strings etc.
exit_code: db 3 ; change this value to change the exit code

section .text ; this is the section where we put our instructions
_start: ; the starting point for our code to begin executing
	mov al, 1 ; move syscall number into eax
	mov ebx, [exit_code] ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall

