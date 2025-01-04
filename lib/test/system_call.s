	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 5	sdk_version 14, 5
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rbp - 32]
	xor	edi, edi
	mov	edx, 16
	call	_read
	lea	rsi, [rbp - 32]
	mov	edi, 1
	mov	edx, 16
	call	_write
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, rcx
	jne	LBB0_2
## %bb.1:
	xor	eax, eax
	add	rsp, 32
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
                                        ## -- End function
.subsections_via_symbols

%include "elf_gnustack.mac"
