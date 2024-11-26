	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 5	sdk_version 14, 5
	.intel_syntax noprefix
	.globl	_main                           ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
## %bb.0:
	push	rbp
	mov	rbp, rsp
	mov	eax, edi
	pop	rbp
	ret
                                        ## -- End function
.subsections_via_symbols
