global	_start

section	.text

_start:
	mov rbp, rsp
	mov	rbx, rbp
	sub rsp, 4
	mov	eax, 0x12345678
	mov	[rsp], ax
	mov [rsp], al

	mov rax, 60
	mov	rdi, 42
	syscall
