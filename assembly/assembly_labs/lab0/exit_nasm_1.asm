global _start

section .data ; this is where we would put strings etc.


section .text ; this is the section where we put our instructions
_start: ; this indicates the starting point for our code to begin executing
	mov al, 1 ; move syscall number into eax
	mov ebx, 0 ; load error code as param 1
	int 0x80 ; interrupt/trap to call the syscall
