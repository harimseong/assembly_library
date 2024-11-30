_read:
    1da0:	70 00 80 d2	mov	x16, #3
    1da4:	01 10 00 d4	svc	#0x80
    1da8:	e3 00 00 54	b.lo	0x1dc4
    1dac:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    1db0:	fd 03 00 91	mov	x29, sp
    1db4:	00 03 00 94	bl	_cerror
    1db8:	bf 03 00 91	mov	sp, x29
    1dbc:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    1dc0:	c0 03 5f d6	ret
    1dc4:	c0 03 5f d6	ret
