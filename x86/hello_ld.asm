global	_start

section	.text

_start:
	mov	eax, 1
	mov edi, 1
	mov	esi, message
	mov	edx, 14
	syscall
	mov	rax, 60
	xor	rdi, rdi
	syscall

section	.data

message:
	db	"Hello, World!", 10
