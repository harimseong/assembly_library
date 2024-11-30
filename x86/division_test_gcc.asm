	global	main
	extern	printf
	extern	exit

	section		.text

main:
	push	rbx

	xor		rax, rax
	xor		rdx, rdx
	xor		rcx, rcx
	mov		rax, 3
	mov		rcx, -2
	div		rcx
	mov		rdi, fmt
	mov		rsi, rax
	mov		rdx, rdx
	xor		rax, rax
	call	printf

	pop		rbx
	ret

fmt:
	db	"quotient=%d, remainder=%d", 10, 0
