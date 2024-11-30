_write:
    49f0:	90 00 80 d2	mov	x16, #4
    49f4:	01 10 00 d4	svc	#0x80
    49f8:	e3 00 00 54	b.lo	0x4a14
    49fc:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4a00:	fd 03 00 91	mov	x29, sp
    4a04:	ec f7 ff 97	bl	_cerror
    4a08:	bf 03 00 91	mov	sp, x29
    4a0c:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4a10:	c0 03 5f d6	ret
    4a14:	c0 03 5f d6	ret
