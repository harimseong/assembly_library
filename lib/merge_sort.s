	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_merge_sort                     ; -- Begin function merge_sort
	.p2align	2
_merge_sort:                            ; @merge_sort
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	bl	_malloc
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x2, [sp, #16]
	bl	_divide
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	ldr	x8, [sp, #16]
	lsl	x2, x8, #2
	mov	x3, #-1                         ; =0xffffffffffffffff
	bl	___memmove_chk
	ldr	x0, [sp, #8]
	bl	_free
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_divide                         ; -- Begin function divide
	.p2align	2
_divide:                                ; @divide
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #8]
	subs	x8, x8, #2
	cset	w8, hi
	tbnz	w8, #0, LBB1_8
	b	LBB1_1
LBB1_1:
	ldr	x8, [sp, #8]
	subs	x8, x8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB1_3
	b	LBB1_2
LBB1_2:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	b	LBB1_9
LBB1_3:
	ldr	x8, [sp, #8]
	subs	x8, x8, #2
	cset	w8, ne
	tbnz	w8, #0, LBB1_6
	b	LBB1_4
LBB1_4:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldr	x9, [sp, #16]
	ldr	w9, [x9, #4]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB1_6
	b	LBB1_5
LBB1_5:
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	b	LBB1_7
LBB1_6:
	ldr	x8, [sp, #16]
	ldr	w8, [x8]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x8, [sp, #16]
	ldr	w8, [x8, #4]
	ldur	x9, [x29, #-8]
	str	w8, [x9, #4]
	b	LBB1_7
LBB1_7:
	b	LBB1_9
LBB1_8:
	ldr	x8, [sp, #8]
	lsr	x8, x8, #1
	str	x8, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp]
	bl	_divide
	ldur	x8, [x29, #-8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	add	x1, x8, x9, lsl #2
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	subs	x2, x8, x9
	bl	_divide
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp, #8]
	lsl	x2, x8, #2
	mov	x3, #-1                         ; =0xffffffffffffffff
	bl	___memmove_chk
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x9, [sp]
	add	x2, x8, x9, lsl #2
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	add	x3, x8, x9, lsl #2
	bl	_merge
	b	LBB1_9
LBB1_9:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_merge                          ; -- Begin function merge
	.p2align	2
_merge:                                 ; @merge
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #40]
	str	x1, [sp, #32]
	str	x2, [sp, #24]
	str	x3, [sp, #16]
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]
	b	LBB2_1
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB2_3
	b	LBB2_2
LBB2_2:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, ne
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB2_3
LBB2_3:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB2_8
	b	LBB2_4
LBB2_4:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	ldr	x9, [sp, #24]
	ldr	w9, [x9]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB2_6
	b	LBB2_5
LBB2_5:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #24]
	add	x9, x8, #4
	str	x9, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	LBB2_7
LBB2_6:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	str	w8, [x9]
	b	LBB2_7
LBB2_7:                                 ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #40]
	add	x8, x8, #4
	str	x8, [sp, #40]
	b	LBB2_1
LBB2_8:
	b	LBB2_9
LBB2_9:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB2_11
	b	LBB2_10
LBB2_10:                                ;   in Loop: Header=BB2_9 Depth=1
	ldr	x8, [sp, #32]
	add	x9, x8, #4
	str	x9, [sp, #32]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	add	x10, x9, #4
	str	x10, [sp, #40]
	str	w8, [x9]
	b	LBB2_9
LBB2_11:
	b	LBB2_12
LBB2_12:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB2_14
	b	LBB2_13
LBB2_13:                                ;   in Loop: Header=BB2_12 Depth=1
	ldr	x8, [sp, #24]
	add	x9, x8, #4
	str	x9, [sp, #24]
	ldr	w8, [x8]
	ldr	x9, [sp, #40]
	add	x10, x9, #4
	str	x10, [sp, #40]
	str	w8, [x9]
	b	LBB2_12
LBB2_14:
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
