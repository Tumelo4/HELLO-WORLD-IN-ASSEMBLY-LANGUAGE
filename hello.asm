	section .data
hello db "Hello World!"
EndLine db 0xA, 0xD

section .text
	global _start

_start:

	mov rax, 1
	mov rdi, 1
	mov rsi, hello
	mov rdx, 12
	syscall

	mov rax, 1
	mov rdi, 1
	mov rsi, EndLine
	mov rdx, 1
	syscall

	mov rax, 60
	mov rdi, 0
	syscall


