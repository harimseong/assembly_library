/usr/lib/system/libsystem_pthread.dylib:
(__TEXT,__text) section
__pthread_exit_if_canceled:
    180c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    1810:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    1814:	fd 43 00 91	add	x29, sp, #16
    1818:	08 1c 00 12	and	w8, w0, #0xff
    181c:	1f 11 00 71	cmp	w8, #4
    1820:	a1 00 00 54	b.ne	0x1834
    1824:	f3 03 00 aa	mov	x19, x0
    1828:	00 00 80 52	mov	w0, #0
    182c:	ae 28 00 94	bl	0xbae4 ; symbol stub for: ___pthread_canceled
    1830:	80 00 00 34	cbz	w0, 0x1840
    1834:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    1838:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    183c:	c0 03 5f d6	ret
    1840:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    1844:	09 0d 52 f8	ldr	x9, [x8, #-224]!
    1848:	0a 01 00 f0	adrp	x10, 35 ; 0x24000
    184c:	4a 35 40 f9	ldr	x10, [x10, #104]
    1850:	49 01 09 ca	eor	x9, x10, x9
    1854:	3f 01 08 eb	cmp	x9, x8
    1858:	c1 00 00 54	b.ne	0x1870
    185c:	13 a9 00 b9	str	w19, [x8, #168]
    1860:	29 00 80 52	mov	w9, #1
    1864:	09 95 02 39	strb	w9, [x8, #165]
    1868:	20 00 80 52	mov	w0, #1
    186c:	e7 0d 00 94	bl	_pthread_exit
    1870:	33 27 00 94	bl	_pthread_mach_thread_np.cold.1
___pthread_init:
    1874:	ff 83 03 d1	sub	sp, sp, #224
    1878:	fc 6f 08 a9	stp	x28, x27, [sp, #128]
    187c:	fa 67 09 a9	stp	x26, x25, [sp, #144]
    1880:	f8 5f 0a a9	stp	x24, x23, [sp, #160]
    1884:	f6 57 0b a9	stp	x22, x21, [sp, #176]
    1888:	f4 4f 0c a9	stp	x20, x19, [sp, #192]
    188c:	fd 7b 0d a9	stp	x29, x30, [sp, #208]
    1890:	fd 43 03 91	add	x29, sp, #208
    1894:	f5 03 02 aa	mov	x21, x2
    1898:	f3 03 01 aa	mov	x19, x1
    189c:	80 01 00 b4	cbz	x0, 0x18cc
    18a0:	08 04 40 f9	ldr	x8, [x0, #8]
    18a4:	09 01 00 f0	adrp	x9, 35 ; 0x24000
    18a8:	28 09 00 f9	str	x8, [x9, #16]
    18ac:	08 00 40 f9	ldr	x8, [x0]
    18b0:	1f 09 00 f1	cmp	x8, #2
    18b4:	c3 00 00 54	b.lo	0x18cc
    18b8:	08 24 41 a9	ldp	x8, x9, [x0, #16]
    18bc:	0a 01 00 f0	adrp	x10, 35 ; 0x24000
    18c0:	48 29 00 f9	str	x8, [x10, #80]
    18c4:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    18c8:	09 2d 00 f9	str	x9, [x8, #88]
    18cc:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    18d0:	14 81 03 f1	subs	x20, x8, #224
    18d4:	c0 1f 00 54	b.eq	0x1ccc
    18d8:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    18dc:	14 25 00 f9	str	x20, [x8, #72]
    18e0:	1c 01 00 f0	adrp	x28, 35 ; 0x24000
    18e4:	88 37 40 f9	ldr	x8, [x28, #104]
    18e8:	08 01 14 ca	eor	x8, x8, x20
    18ec:	88 02 00 f9	str	x8, [x20]
    18f0:	08 01 80 52	mov	w8, #8
    18f4:	a8 43 1a b8	stur	w8, [x29, #-92]
    18f8:	00 e4 00 6f	movi.2d	v0, #0000000000000000
    18fc:	e0 83 02 ad	stp	q0, q0, [sp, #80]
    1900:	d9 28 00 94	bl	0xbc64 ; symbol stub for: _mach_host_self
    1904:	f6 03 00 aa	mov	x22, x0
    1908:	e2 43 01 91	add	x2, sp, #80
    190c:	a3 73 01 d1	sub	x3, x29, #92
    1910:	a1 00 80 52	mov	w1, #5
    1914:	d1 28 00 94	bl	0xbc58 ; symbol stub for: _host_info
    1918:	c0 1d 00 35	cbnz	w0, 0x1cd0
    191c:	e8 5f 40 b9	ldr	w8, [sp, #92]
    1920:	29 01 00 f0	adrp	x9, 39 ; 0x28000
    1924:	28 41 00 39	strb	w8, [x9, #16]
    1928:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    192c:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    1930:	00 01 40 b9	ldr	w0, [x8]
    1934:	e1 03 16 aa	mov	x1, x22
    1938:	d1 28 00 94	bl	0xbc7c ; symbol stub for: _mach_port_deallocate
    193c:	ff 27 00 f9	str	xzr, [sp, #72]
    1940:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1944:	21 70 14 91	add	x1, x1, #1308 ; literal pool for: "main_stack"
    1948:	e0 03 15 aa	mov	x0, x21
    194c:	b1 28 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1950:	20 06 00 b4	cbz	x0, 0x1a14
    1954:	f9 03 00 aa	mov	x25, x0
    1958:	e0 0b 00 f9	str	x0, [sp, #16]
    195c:	e1 43 00 91	add	x1, sp, #16
    1960:	df 00 00 94	bl	__pthread_strtoul
    1964:	fa 03 00 aa	mov	x26, x0
    1968:	e0 27 00 f9	str	x0, [sp, #72]
    196c:	e8 0b 40 f9	ldr	x8, [sp, #16]
    1970:	09 01 40 39	ldrb	w9, [x8]
    1974:	3f b1 00 71	cmp	w9, #44
    1978:	61 03 00 54	b.ne	0x19e4
    197c:	00 05 00 91	add	x0, x8, #1
    1980:	e1 43 00 91	add	x1, sp, #16
    1984:	d6 00 00 94	bl	__pthread_strtoul
    1988:	f6 03 00 aa	mov	x22, x0
    198c:	e8 0b 40 f9	ldr	x8, [sp, #16]
    1990:	09 01 40 39	ldrb	w9, [x8]
    1994:	3f b1 00 71	cmp	w9, #44
    1998:	81 02 00 54	b.ne	0x19e8
    199c:	00 05 00 91	add	x0, x8, #1
    19a0:	e1 43 00 91	add	x1, sp, #16
    19a4:	ce 00 00 94	bl	__pthread_strtoul
    19a8:	f7 03 00 aa	mov	x23, x0
    19ac:	e8 0b 40 f9	ldr	x8, [sp, #16]
    19b0:	09 01 40 39	ldrb	w9, [x8]
    19b4:	3f b1 00 71	cmp	w9, #44
    19b8:	a1 01 00 54	b.ne	0x19ec
    19bc:	00 05 00 91	add	x0, x8, #1
    19c0:	e1 43 00 91	add	x1, sp, #16
    19c4:	c6 00 00 94	bl	__pthread_strtoul
    19c8:	f8 03 00 aa	mov	x24, x0
    19cc:	e8 0b 40 f9	ldr	x8, [sp, #16]
    19d0:	08 01 40 39	ldrb	w8, [x8]
    19d4:	1f b1 00 71	cmp	w8, #44
    19d8:	04 19 40 7a	ccmp	w8, #0, #4, ne
    19dc:	fb 07 9f 1a	cset	w27, ne
    19e0:	05 00 00 14	b	0x19f4
    19e4:	16 00 80 d2	mov	x22, #0
    19e8:	17 00 80 d2	mov	x23, #0
    19ec:	18 00 80 d2	mov	x24, #0
    19f0:	3b 00 80 52	mov	w27, #1
    19f4:	e0 03 19 aa	mov	x0, x25
    19f8:	80 28 00 94	bl	0xbbf8 ; symbol stub for: __platform_strlen
    19fc:	e1 03 00 aa	mov	x1, x0
    1a00:	e0 03 19 aa	mov	x0, x25
    1a04:	74 28 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    1a08:	7b 00 00 37	tbnz	w27, #0, 0x1a14
    1a0c:	5a 00 00 b4	cbz	x26, 0x1a14
    1a10:	96 02 00 b5	cbnz	x22, 0x1a60
    1a14:	08 01 80 52	mov	w8, #8
    1a18:	e8 0b 00 f9	str	x8, [sp, #16]
    1a1c:	28 00 80 d2	mov	x8, #1
    1a20:	68 07 c0 f2	movk	x8, #59, lsl #32
    1a24:	a8 83 1a f8	stur	x8, [x29, #-88]
    1a28:	a0 63 01 d1	sub	x0, x29, #88
    1a2c:	e2 23 01 91	add	x2, sp, #72
    1a30:	e3 43 00 91	add	x3, sp, #16
    1a34:	41 00 80 52	mov	w1, #2
    1a38:	04 00 80 d2	mov	x4, #0
    1a3c:	05 00 80 d2	mov	x5, #0
    1a40:	41 28 00 94	bl	0xbb44 ; symbol stub for: ___sysctl
    1a44:	80 00 00 34	cbz	w0, 0x1a54
    1a48:	08 fc ad d2	mov	x8, #1876951040
    1a4c:	28 00 c0 f2	movk	x8, #1, lsl #32
    1a50:	e8 27 00 f9	str	x8, [sp, #72]
    1a54:	17 00 80 d2	mov	x23, #0
    1a58:	18 00 80 d2	mov	x24, #0
    1a5c:	f6 23 12 32	mov	w22, #8372224
    1a60:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1a64:	21 9c 14 91	add	x1, x1, #1319 ; literal pool for: "ptr_munge"
    1a68:	e0 03 15 aa	mov	x0, x21
    1a6c:	69 28 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1a70:	60 01 00 b4	cbz	x0, 0x1a9c
    1a74:	fa 03 00 aa	mov	x26, x0
    1a78:	e1 43 00 91	add	x1, sp, #16
    1a7c:	98 00 00 94	bl	__pthread_strtoul
    1a80:	f9 03 00 aa	mov	x25, x0
    1a84:	e0 03 1a aa	mov	x0, x26
    1a88:	5c 28 00 94	bl	0xbbf8 ; symbol stub for: __platform_strlen
    1a8c:	e1 03 00 aa	mov	x1, x0
    1a90:	e0 03 1a aa	mov	x0, x26
    1a94:	50 28 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    1a98:	59 01 00 b5	cbnz	x25, 0x1ac0
    1a9c:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1aa0:	21 c4 14 91	add	x1, x1, #1329 ; literal pool for: "PTHREAD_PTR_MUNGE_TOKEN"
    1aa4:	e0 03 13 aa	mov	x0, x19
    1aa8:	5a 28 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1aac:	60 01 00 b4	cbz	x0, 0x1ad8
    1ab0:	e1 43 00 91	add	x1, sp, #16
    1ab4:	8a 00 00 94	bl	__pthread_strtoul
    1ab8:	f9 03 00 aa	mov	x25, x0
    1abc:	e0 00 00 b4	cbz	x0, 0x1ad8
    1ac0:	99 37 00 f9	str	x25, [x28, #104]
    1ac4:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    1ac8:	08 25 40 f9	ldr	x8, [x8, #72]
    1acc:	29 03 08 ca	eor	x9, x25, x8
    1ad0:	09 01 00 f9	str	x9, [x8]
    1ad4:	05 00 00 14	b	0x1ae8
    1ad8:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    1adc:	08 a1 40 f9	ldr	x8, [x8, #320] ; literal pool symbol address: __os_xbs_chrooted
    1ae0:	08 01 40 39	ldrb	w8, [x8]
    1ae4:	a8 0f 00 34	cbz	w8, 0x1cd8
    1ae8:	e8 27 40 f9	ldr	x8, [sp, #72]
    1aec:	89 37 40 f9	ldr	x9, [x28, #104]
    1af0:	29 01 14 ca	eor	x9, x9, x20
    1af4:	89 02 00 f9	str	x9, [x20]
    1af8:	89 b2 02 91	add	x9, x20, #172
    1afc:	94 26 0e a9	stp	x20, x9, [x20, #224]
    1b00:	e9 1f 81 52	mov	w9, #2303
    1b04:	89 82 00 f9	str	x9, [x20, #256]
    1b08:	89 37 40 f9	ldr	x9, [x28, #104]
    1b0c:	89 8e 00 f9	str	x9, [x20, #280]
    1b10:	89 c6 40 39	ldrb	w9, [x20, #49]
    1b14:	9f 4a 00 b9	str	wzr, [x20, #72]
    1b18:	0a 01 16 cb	sub	x10, x8, x22
    1b1c:	88 2a 0b a9	stp	x8, x10, [x20, #176]
    1b20:	97 62 0c a9	stp	x23, x24, [x20, #192]
    1b24:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    1b28:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    1b2c:	08 01 40 f9	ldr	x8, [x8]
    1b30:	88 6a 00 f9	str	x8, [x20, #208]
    1b34:	28 79 1d 12	and	w8, w9, #0xfffffffb
    1b38:	08 01 00 32	orr	w8, w8, #0x1
    1b3c:	89 9e 40 79	ldrh	w9, [x20, #78]
    1b40:	2a 00 80 52	mov	w10, #1
    1b44:	8a c2 00 39	strb	w10, [x20, #48]
    1b48:	0a a0 9f 52	mov	w10, #64768
    1b4c:	29 01 0a 0a	and	w9, w9, w10
    1b50:	29 01 00 32	orr	w9, w9, #0x1
    1b54:	89 9e 00 79	strh	w9, [x20, #78]
    1b58:	29 01 00 f0	adrp	x9, 39 ; 0x28000
    1b5c:	29 41 40 39	ldrb	w9, [x9, #16]
    1b60:	4a 01 80 52	mov	w10, #10
    1b64:	89 2a 07 29	stp	w9, w10, [x20, #56]
    1b68:	69 00 80 52	mov	w9, #3
    1b6c:	89 4e 01 79	strh	w9, [x20, #166]
    1b70:	88 c6 00 39	strb	w8, [x20, #49]
    1b74:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1b78:	21 dc 15 91	add	x1, x1, #1399 ; literal pool for: "th_port"
    1b7c:	e0 03 15 aa	mov	x0, x21
    1b80:	24 28 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1b84:	60 01 00 b4	cbz	x0, 0x1bb0
    1b88:	f6 03 00 aa	mov	x22, x0
    1b8c:	e1 43 00 91	add	x1, sp, #16
    1b90:	53 00 00 94	bl	__pthread_strtoul
    1b94:	f5 03 00 aa	mov	x21, x0
    1b98:	e0 03 16 aa	mov	x0, x22
    1b9c:	17 28 00 94	bl	0xbbf8 ; symbol stub for: __platform_strlen
    1ba0:	e1 03 00 aa	mov	x1, x0
    1ba4:	e0 03 16 aa	mov	x0, x22
    1ba8:	0b 28 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    1bac:	02 00 00 14	b	0x1bb4
    1bb0:	15 00 80 52	mov	w21, #0
    1bb4:	e0 03 14 aa	mov	x0, x20
    1bb8:	e1 03 15 aa	mov	x1, x21
    1bbc:	6b 00 00 94	bl	__pthread_main_thread_init
    1bc0:	ff 23 00 f9	str	xzr, [sp, #64]
    1bc4:	00 e4 00 6f	movi.2d	v0, #0000000000000000
    1bc8:	e0 03 01 ad	stp	q0, q0, [sp, #32]
    1bcc:	e0 07 80 3d	str	q0, [sp, #16]
    1bd0:	e0 43 00 91	add	x0, sp, #16
    1bd4:	9e 00 00 94	bl	__pthread_bsdthread_init
    1bd8:	e0 03 13 aa	mov	x0, x19
    1bdc:	df 00 00 94	bl	__pthread_key_global_init
    1be0:	e1 43 00 91	add	x1, sp, #16
    1be4:	e0 03 13 aa	mov	x0, x19
    1be8:	f2 00 00 94	bl	__pthread_mutex_global_init
    1bec:	28 01 00 f0	adrp	x8, 39 ; 0x28000
    1bf0:	08 19 40 b9	ldr	w8, [x8, #24]
    1bf4:	e9 4f 70 b2	mov	x9, #68719411200
    1bf8:	89 21 98 f2	movk	x9, #49420
    1bfc:	29 01 40 39	ldrb	w9, [x9]
    1c00:	09 04 00 34	cbz	w9, 0x1c80
    1c04:	e8 03 48 36	tbz	w8, #9, 0x1c80
    1c08:	d4 00 00 f0	adrp	x20, 27 ; 0x1c000
    1c0c:	94 02 00 91	add	x20, x20, #0
    1c10:	b4 83 1a f8	stur	x20, [x29, #-88]
    1c14:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    1c18:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    1c1c:	00 01 40 b9	ldr	w0, [x8]
    1c20:	28 00 80 52	mov	w8, #1
    1c24:	e8 0b 00 b9	str	w8, [sp, #8]
    1c28:	e8 07 00 b2	mov	x8, #12884901891
    1c2c:	e8 03 00 f9	str	x8, [sp]
    1c30:	a1 63 01 d1	sub	x1, x29, #88
    1c34:	02 00 88 52	mov	w2, #16384
    1c38:	e3 ff 87 52	mov	w3, #16383
    1c3c:	04 10 88 52	mov	w4, #16512
    1c40:	05 00 80 52	mov	w5, #0
    1c44:	06 00 80 d2	mov	x6, #0
    1c48:	07 00 80 52	mov	w7, #0
    1c4c:	1b 28 00 94	bl	0xbcb8 ; symbol stub for: _mach_vm_map
    1c50:	20 04 00 35	cbnz	w0, 0x1cd4
    1c54:	a8 83 5a f8	ldur	x8, [x29, #-88]
    1c58:	1f 01 14 eb	cmp	x8, x20
    1c5c:	c1 03 00 54	b.ne	0x1cd4
    1c60:	28 00 80 52	mov	w8, #1
    1c64:	c9 00 00 f0	adrp	x9, 27 ; 0x1c000
    1c68:	28 01 00 39	strb	w8, [x9]
    1c6c:	29 01 00 f0	adrp	x9, 39 ; 0x28000
    1c70:	29 65 40 39	ldrb	w9, [x9, #25]
    1c74:	69 00 18 36	tbz	w9, #3, 0x1c80
    1c78:	c9 00 00 f0	adrp	x9, 27 ; 0x1c000
    1c7c:	28 05 00 39	strb	w8, [x9, #1]
    1c80:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1c84:	21 54 0b 91	add	x1, x1, #725 ; literal pool for: "PTHREAD_YIELD_TO_ZERO"
    1c88:	e0 03 13 aa	mov	x0, x19
    1c8c:	e1 27 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1c90:	c0 00 00 b4	cbz	x0, 0x1ca8
    1c94:	08 00 40 39	ldrb	w8, [x0]
    1c98:	1f c5 00 71	cmp	w8, #49
    1c9c:	e8 17 9f 1a	cset	w8, eq
    1ca0:	89 00 00 f0	adrp	x9, 19 ; 0x14000
    1ca4:	28 01 00 39	strb	w8, [x9]
    1ca8:	00 00 80 52	mov	w0, #0
    1cac:	fd 7b 4d a9	ldp	x29, x30, [sp, #208]
    1cb0:	f4 4f 4c a9	ldp	x20, x19, [sp, #192]
    1cb4:	f6 57 4b a9	ldp	x22, x21, [sp, #176]
    1cb8:	f8 5f 4a a9	ldp	x24, x23, [sp, #160]
    1cbc:	fa 67 49 a9	ldp	x26, x25, [sp, #144]
    1cc0:	fc 6f 48 a9	ldp	x28, x27, [sp, #128]
    1cc4:	ff 83 03 91	add	sp, sp, #224
    1cc8:	c0 03 5f d6	ret
    1ccc:	91 26 00 94	bl	___pthread_init.cold.1
    1cd0:	ac 26 00 94	bl	___pthread_init.cold.4
    1cd4:	a1 26 00 94	bl	___pthread_init.cold.3
    1cd8:	96 26 00 94	bl	___pthread_init.cold.2
__pthread_strtoul:
    1cdc:	e0 03 00 b4	cbz	x0, 0x1d58
    1ce0:	08 00 40 39	ldrb	w8, [x0]
    1ce4:	1f c1 00 71	cmp	w8, #48
    1ce8:	81 03 00 54	b.ne	0x1d58
    1cec:	08 04 40 39	ldrb	w8, [x0, #1]
    1cf0:	1f e1 01 71	cmp	w8, #120
    1cf4:	21 03 00 54	b.ne	0x1d58
    1cf8:	08 00 80 d2	mov	x8, #0
    1cfc:	c9 0a 80 12	mov	w9, #-87
    1d00:	00 08 00 91	add	x0, x0, #2
    1d04:	0a 00 80 39	ldrsb	x10, [x0]
    1d08:	4b c1 00 51	sub	w11, w10, #48
    1d0c:	6b 1d 00 12	and	w11, w11, #0xff
    1d10:	7f 29 00 71	cmp	w11, #10
    1d14:	62 00 00 54	b.hs	0x1d20
    1d18:	2b 9d 00 91	add	x11, x9, #39
    1d1c:	0b 00 00 14	b	0x1d48
    1d20:	4b 85 01 51	sub	w11, w10, #97
    1d24:	6c 1d 00 12	and	w12, w11, #0xff
    1d28:	cb 0a 80 12	mov	w11, #-87
    1d2c:	9f 19 00 71	cmp	w12, #6
    1d30:	c3 00 00 54	b.lo	0x1d48
    1d34:	4b 05 01 51	sub	w11, w10, #65
    1d38:	6b 1d 00 12	and	w11, w11, #0xff
    1d3c:	7f 15 00 71	cmp	w11, #5
    1d40:	e8 00 00 54	b.hi	0x1d5c
    1d44:	2b 81 00 91	add	x11, x9, #32
    1d48:	6a 01 0a 0b	add	w10, w11, w10
    1d4c:	48 11 08 8b	add	x8, x10, x8, lsl #4
    1d50:	00 04 00 91	add	x0, x0, #1
    1d54:	ec ff ff 17	b	0x1d04
    1d58:	08 00 80 d2	mov	x8, #0
    1d5c:	20 00 00 f9	str	x0, [x1]
    1d60:	e0 03 08 aa	mov	x0, x8
    1d64:	c0 03 5f d6	ret
__pthread_main_thread_init:
    1d68:	ff 03 01 d1	sub	sp, sp, #64
    1d6c:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    1d70:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    1d74:	fd c3 00 91	add	x29, sp, #48
    1d78:	f3 03 00 aa	mov	x19, x0
    1d7c:	14 01 00 f0	adrp	x20, 35 ; 0x24000
    1d80:	94 02 00 91	add	x20, x20, #0
    1d84:	9f 52 00 a9	stp	xzr, x20, [x20]
    1d88:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    1d8c:	1f 45 00 b9	str	wzr, [x8, #68]
    1d90:	1f 48 00 b9	str	wzr, [x0, #72]
    1d94:	1f 04 00 f9	str	xzr, [x0, #8]
    1d98:	1f 10 00 f9	str	xzr, [x0, #32]
    1d9c:	1f 34 00 b9	str	wzr, [x0, #52]
    1da0:	61 00 00 35	cbnz	w1, 0x1dac
    1da4:	bc 27 00 94	bl	0xbc94 ; symbol stub for: _mach_thread_self
    1da8:	e1 03 00 aa	mov	x1, x0
    1dac:	61 fa 00 b9	str	w1, [x19, #248]
    1db0:	bf c3 1e b8	stur	wzr, [x29, #-20]
    1db4:	48 00 00 d0	adrp	x8, 10 ; 0xb000
    1db8:	08 81 37 91	add	x8, x8, #3552
    1dbc:	00 01 c0 3d	ldr	q0, [x8]
    1dc0:	e0 03 80 3d	str	q0, [sp]
    1dc4:	ff 0b 00 f9	str	xzr, [sp, #16]
    1dc8:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    1dcc:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    1dd0:	00 01 40 b9	ldr	w0, [x8]
    1dd4:	e1 03 00 91	mov	x1, sp
    1dd8:	a3 53 00 d1	sub	x3, x29, #20
    1ddc:	02 00 80 d2	mov	x2, #0
    1de0:	a4 27 00 94	bl	0xbc70 ; symbol stub for: _mach_port_construct
    1de4:	a8 c3 5e b8	ldur	w8, [x29, #-20]
    1de8:	68 f2 00 b9	str	w8, [x19, #240]
    1dec:	7f 22 01 b9	str	wzr, [x19, #288]
    1df0:	7f 2a 01 b9	str	wzr, [x19, #296]
    1df4:	88 02 40 f9	ldr	x8, [x20]
    1df8:	e9 03 13 aa	mov	x9, x19
    1dfc:	28 0d 01 f8	str	x8, [x9, #16]!
    1e00:	0a 61 00 91	add	x10, x8, #24
    1e04:	eb 03 14 aa	mov	x11, x20
    1e08:	73 85 00 f8	str	x19, [x11], #8
    1e0c:	1f 01 00 f1	cmp	x8, #0
    1e10:	68 01 8a 9a	csel	x8, x11, x10, eq
    1e14:	09 01 00 f9	str	x9, [x8]
    1e18:	74 0e 00 f9	str	x20, [x19, #24]
    1e1c:	28 00 80 52	mov	w8, #1
    1e20:	09 01 00 f0	adrp	x9, 35 ; 0x24000
    1e24:	28 1d 00 b9	str	w8, [x9, #28]
    1e28:	e8 00 00 f0	adrp	x8, 31 ; 0x20000
    1e2c:	08 19 40 f9	ldr	x8, [x8, #48]
    1e30:	68 00 00 b4	cbz	x8, 0x1e3c
    1e34:	e0 03 13 aa	mov	x0, x19
    1e38:	d5 1d 00 94	bl	__pthread_introspection_hook_callout_thread_start
    1e3c:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    1e40:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    1e44:	ff 03 01 91	add	sp, sp, #64
    1e48:	c0 03 5f d6	ret
__pthread_bsdthread_init:
    1e4c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    1e50:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    1e54:	fd 43 00 91	add	x29, sp, #16
    1e58:	f3 03 00 aa	mov	x19, x0
    1e5c:	01 07 80 52	mov	w1, #56
    1e60:	5d 27 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    1e64:	48 00 00 d0	adrp	x8, 10 ; 0xb000
    1e68:	00 69 c3 3d	ldr	q0, [x8, #3488]
    1e6c:	60 02 80 3d	str	q0, [x19]
    1e70:	48 00 00 d0	adrp	x8, 10 ; 0xb000
    1e74:	00 d9 46 fd	ldr	d0, [x8, #3504]
    1e78:	60 0e 00 fd	str	d0, [x19, #24]
    1e7c:	08 03 80 52	mov	w8, #24
    1e80:	68 22 00 b9	str	w8, [x19, #32]
    1e84:	48 00 00 d0	adrp	x8, 10 ; 0xb000
    1e88:	00 dd 46 fd	ldr	d0, [x8, #3512]
    1e8c:	60 1a 00 fd	str	d0, [x19, #48]
    1e90:	68 00 00 f0	adrp	x8, 15 ; 0x10000
    1e94:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    1e98:	08 01 40 b9	ldr	w8, [x8]
    1e9c:	09 1c 83 52	mov	w9, #6368
    1ea0:	09 01 09 0b	add	w9, w8, w9
    1ea4:	22 01 28 0a	bic	w2, w9, w8
    1ea8:	00 00 00 b0	adrp	x0, 1 ; 0x2000
    1eac:	00 e0 24 91	add	x0, x0, #2360
    1eb0:	01 00 00 b0	adrp	x1, 1 ; 0x2000
    1eb4:	21 b0 24 91	add	x1, x1, #2348
    1eb8:	e3 03 13 aa	mov	x3, x19
    1ebc:	04 07 80 52	mov	w4, #56
    1ec0:	05 14 80 52	mov	w5, #160
    1ec4:	db 26 00 94	bl	0xba30 ; symbol stub for: ___bsdthread_register
    1ec8:	1f 04 00 71	cmp	w0, #1
    1ecc:	eb 00 00 54	b.lt	0x1ee8
    1ed0:	c8 03 80 52	mov	w8, #30
    1ed4:	08 00 a8 72	movk	w8, #16384, lsl #16
    1ed8:	1f 01 20 6a	bics	wzr, w8, w0
    1edc:	61 03 00 54	b.ne	0x1f48
    1ee0:	28 01 00 f0	adrp	x8, 39 ; 0x28000
    1ee4:	00 19 00 b9	str	w0, [x8, #24]
    1ee8:	74 0a 40 f9	ldr	x20, [x19, #16]
    1eec:	08 40 a4 52	mov	w8, #570425344
    1ef0:	9f 02 08 ea	tst	x20, x8
    1ef4:	01 01 00 54	b.ne	0x1f14
    1ef8:	88 16 78 92	and	x8, x20, #0x3f00
    1efc:	c8 00 00 b4	cbz	x8, 0x1f14
    1f00:	e0 03 14 aa	mov	x0, x20
    1f04:	12 00 00 94	bl	__pthread_set_main_qos
    1f08:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    1f0c:	08 25 40 f9	ldr	x8, [x8, #72]
    1f10:	14 81 00 f9	str	x20, [x8, #256]
    1f14:	68 42 42 f8	ldur	x8, [x19, #36]
    1f18:	68 00 00 b4	cbz	x8, 0x1f24
    1f1c:	09 01 00 f0	adrp	x9, 35 ; 0x24000
    1f20:	28 11 00 f9	str	x8, [x9, #32]
    1f24:	28 01 00 f0	adrp	x8, 39 ; 0x28000
    1f28:	08 11 40 f9	ldr	x8, [x8, #32]
    1f2c:	88 00 00 b4	cbz	x8, 0x1f3c
    1f30:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    1f34:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    1f38:	15 27 00 14	b	0xbb8c ; symbol stub for: ___workq_open
    1f3c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    1f40:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    1f44:	c0 03 5f d6	ret
    1f48:	18 26 00 94	bl	__pthread_bsdthread_init.cold.1
__pthread_set_main_qos:
    1f4c:	08 01 00 f0	adrp	x8, 35 ; 0x24000
    1f50:	00 61 00 b9	str	w0, [x8, #96]
    1f54:	c0 03 5f d6	ret
__pthread_key_global_init:
    1f58:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    1f5c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    1f60:	fd 43 00 91	add	x29, sp, #16
    1f64:	f3 03 00 aa	mov	x19, x0
    1f68:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1f6c:	21 78 27 91	add	x1, x1, #2526 ; literal pool for: "PTHREAD_KEY_LEGACY_DESTRUCTOR_ORDER"
    1f70:	28 27 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1f74:	80 00 00 b4	cbz	x0, 0x1f84
    1f78:	28 00 80 52	mov	w8, #1
    1f7c:	e9 00 00 f0	adrp	x9, 31 ; 0x20000
    1f80:	28 01 01 39	strb	w8, [x9, #64]
    1f84:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1f88:	21 08 28 91	add	x1, x1, #2562 ; literal pool for: "PTHREAD_KEY_LEGACY_DESTRUCTOR_ORDER_LOG"
    1f8c:	e0 03 13 aa	mov	x0, x19
    1f90:	20 27 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    1f94:	80 00 00 b4	cbz	x0, 0x1fa4
    1f98:	28 00 80 52	mov	w8, #1
    1f9c:	e9 00 00 f0	adrp	x9, 31 ; 0x20000
    1fa0:	28 05 01 39	strb	w8, [x9, #65]
    1fa4:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    1fa8:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    1fac:	c0 03 5f d6	ret
__pthread_mutex_global_init:
    1fb0:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    1fb4:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    1fb8:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    1fbc:	fd 83 00 91	add	x29, sp, #32
    1fc0:	f3 03 01 aa	mov	x19, x1
    1fc4:	f4 03 00 aa	mov	x20, x0
    1fc8:	28 2c 40 b9	ldr	w8, [x1, #44]
    1fcc:	49 00 80 52	mov	w9, #2
    1fd0:	0a 1d 00 12	and	w10, w8, #0xff
    1fd4:	4b 00 80 52	mov	w11, #2
    1fd8:	5f 05 00 71	cmp	w10, #1
    1fdc:	36 00 80 52	mov	w22, #1
    1fe0:	cc 06 96 1a	cinc	w12, w22, ne
    1fe4:	5f 0d 00 71	cmp	w10, #3
    1fe8:	6a 81 8c 1a	csel	w10, w11, w12, hi
    1fec:	1f 01 00 71	cmp	w8, #0
    1ff0:	35 01 8a 1a	csel	w21, w9, w10, eq
    1ff4:	41 00 00 f0	adrp	x1, 11 ; 0xc000
    1ff8:	21 d8 1f 91	add	x1, x1, #2038 ; literal pool for: "PTHREAD_MUTEX_DEFAULT_POLICY"
    1ffc:	05 27 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    2000:	e0 00 00 b4	cbz	x0, 0x201c
    2004:	08 00 c0 39	ldrsb	w8, [x0]
    2008:	08 c1 00 51	sub	w8, w8, #48
    200c:	1f 05 00 71	cmp	w8, #1
    2010:	c9 06 96 1a	cinc	w9, w22, ne
    2014:	1f 0d 00 71	cmp	w8, #3
    2018:	b5 82 89 1a	csel	w21, w21, w9, hi
    201c:	88 00 00 d0	adrp	x8, 18 ; 0x14000
    2020:	09 05 40 b9	ldr	w9, [x8, #4]
    2024:	bf 02 09 6b	cmp	w21, w9
    2028:	40 00 00 54	b.eq	0x2030
    202c:	15 05 00 b9	str	w21, [x8, #4]
    2030:	68 00 00 d0	adrp	x8, 14 ; 0x10000
    2034:	08 a1 40 f9	ldr	x8, [x8, #320] ; literal pool symbol address: __os_xbs_chrooted
    2038:	08 01 40 39	ldrb	w8, [x8]
    203c:	68 00 00 34	cbz	w8, 0x2048
    2040:	08 00 80 52	mov	w8, #0
    2044:	0e 00 00 14	b	0x207c
    2048:	41 00 00 d0	adrp	x1, 10 ; 0xc000
    204c:	21 4c 20 91	add	x1, x1, #2067 ; literal pool for: "PTHREAD_MUTEX_USE_ULOCK"
    2050:	e0 03 14 aa	mov	x0, x20
    2054:	ef 26 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    2058:	a0 00 00 b4	cbz	x0, 0x206c
    205c:	08 00 40 39	ldrb	w8, [x0]
    2060:	1f c5 00 71	cmp	w8, #49
    2064:	e8 17 9f 1a	cset	w8, eq
    2068:	05 00 00 14	b	0x207c
    206c:	68 2e 40 b9	ldr	w8, [x19, #44]
    2070:	09 21 08 53	ubfx	w9, w8, #8, #1
    2074:	1f 01 00 71	cmp	w8, #0
    2078:	e8 03 89 1a	csel	w8, wzr, w9, eq
    207c:	e9 00 00 d0	adrp	x9, 30 ; 0x20000
    2080:	2a 11 41 39	ldrb	w10, [x9, #68]
    2084:	5f 01 08 6b	cmp	w10, w8
    2088:	40 00 00 54	b.eq	0x2090
    208c:	28 11 01 39	strb	w8, [x9, #68]
    2090:	41 00 00 d0	adrp	x1, 10 ; 0xc000
    2094:	21 ac 20 91	add	x1, x1, #2091 ; literal pool for: "PTHREAD_MUTEX_ADAPTIVE_SPIN"
    2098:	e0 03 14 aa	mov	x0, x20
    209c:	dd 26 00 94	bl	0xbc10 ; symbol stub for: __simple_getenv
    20a0:	a0 00 00 b4	cbz	x0, 0x20b4
    20a4:	08 00 40 39	ldrb	w8, [x0]
    20a8:	1f c5 00 71	cmp	w8, #49
    20ac:	e8 17 9f 1a	cset	w8, eq
    20b0:	05 00 00 14	b	0x20c4
    20b4:	68 2e 40 b9	ldr	w8, [x19, #44]
    20b8:	09 25 09 53	ubfx	w9, w8, #9, #1
    20bc:	1f 01 00 71	cmp	w8, #0
    20c0:	e8 03 89 1a	csel	w8, wzr, w9, eq
    20c4:	e9 00 00 d0	adrp	x9, 30 ; 0x20000
    20c8:	2a 15 41 39	ldrb	w10, [x9, #69]
    20cc:	5f 01 08 6b	cmp	w10, w8
    20d0:	40 00 00 54	b.eq	0x20d8
    20d4:	28 15 01 39	strb	w8, [x9, #69]
    20d8:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    20dc:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    20e0:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    20e4:	c0 03 5f d6	ret
_pthread_key_init_np:
    20e8:	08 28 00 51	sub	w8, w0, #10
    20ec:	1f d5 03 71	cmp	w8, #245
    20f0:	a8 03 00 54	b.hi	0x2164
    20f4:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    20f8:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    20fc:	fd 43 00 91	add	x29, sp, #16
    2100:	f4 03 01 aa	mov	x20, x1
    2104:	f3 03 00 aa	mov	x19, x0
    2108:	20 01 00 d0	adrp	x0, 38 ; 0x28000
    210c:	00 d0 00 91	add	x0, x0, #52
    2110:	a1 00 a0 52	mov	w1, #327680
    2114:	f5 26 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    2118:	28 01 00 d0	adrp	x8, 38 ; 0x28000
    211c:	08 e1 00 91	add	x8, x8, #56
    2120:	09 59 73 f8	ldr	x9, [x8, w19, uxtw #3]
    2124:	89 00 00 b5	cbnz	x9, 0x2134
    2128:	e9 03 13 2a	mov	w9, w19
    212c:	ea 03 34 aa	mvn	x10, x20
    2130:	0a 79 29 f8	str	x10, [x8, x9, lsl #3]
    2134:	08 01 00 d0	adrp	x8, 34 ; 0x24000
    2138:	09 39 40 b9	ldr	w9, [x8, #56]
    213c:	3f 01 13 6b	cmp	w9, w19
    2140:	4a 00 00 54	b.ge	0x2148
    2144:	13 39 00 b9	str	w19, [x8, #56]
    2148:	20 01 00 d0	adrp	x0, 38 ; 0x28000
    214c:	00 d0 00 91	add	x0, x0, #52
    2150:	e9 26 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    2154:	00 00 80 52	mov	w0, #0
    2158:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    215c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    2160:	c0 03 5f d6	ret
    2164:	c0 02 80 52	mov	w0, #22
    2168:	c0 03 5f d6	ret
_pthread_key_create:
    216c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    2170:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    2174:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    2178:	fd 83 00 91	add	x29, sp, #32
    217c:	f4 03 01 aa	mov	x20, x1
    2180:	f3 03 00 aa	mov	x19, x0
    2184:	20 01 00 d0	adrp	x0, 38 ; 0x28000
    2188:	00 d0 00 91	add	x0, x0, #52
    218c:	a1 00 a0 52	mov	w1, #327680
    2190:	d6 26 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    2194:	08 20 80 52	mov	w8, #256
    2198:	29 01 00 d0	adrp	x9, 38 ; 0x28000
    219c:	29 e1 00 91	add	x9, x9, #56
    21a0:	2a 79 68 f8	ldr	x10, [x9, x8, lsl #3]
    21a4:	ca 00 00 b4	cbz	x10, 0x21bc
    21a8:	08 05 00 91	add	x8, x8, #1
    21ac:	1f 01 0c f1	cmp	x8, #768
    21b0:	81 ff ff 54	b.ne	0x21a0
    21b4:	75 04 80 52	mov	w21, #35
    21b8:	05 00 00 14	b	0x21cc
    21bc:	15 00 80 52	mov	w21, #0
    21c0:	ea 03 34 aa	mvn	x10, x20
    21c4:	2a 79 28 f8	str	x10, [x9, x8, lsl #3]
    21c8:	68 02 00 f9	str	x8, [x19]
    21cc:	20 01 00 d0	adrp	x0, 38 ; 0x28000
    21d0:	00 d0 00 91	add	x0, x0, #52
    21d4:	c8 26 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    21d8:	e0 03 15 aa	mov	x0, x21
    21dc:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    21e0:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    21e4:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    21e8:	c0 03 5f d6	ret
_pthread_mutex_lock:
    21ec:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    21f0:	fd 03 00 91	mov	x29, sp
    21f4:	08 00 40 f9	ldr	x8, [x0]
    21f8:	49 8b 8a 52	mov	w9, #21594
    21fc:	a9 aa a9 72	movk	w9, #19797, lsl #16
    2200:	1f 01 09 eb	cmp	x8, x9
    2204:	e1 03 00 54	b.ne	0x2280
    2208:	08 0c 40 b9	ldr	w8, [x0, #12]
    220c:	09 09 1a 12	and	w9, w8, #0x1c0
    2210:	3f 01 01 71	cmp	w9, #64
    2214:	c0 03 00 54	b.eq	0x228c
    2218:	08 04 70 37	tbnz	w8, #14, 0x2298
    221c:	08 9c 00 91	add	x8, x0, #39
    2220:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    2224:	09 01 40 f9	ldr	x9, [x8]
    2228:	69 02 08 37	tbnz	w9, #1, 0x2274
    222c:	0a 7c 00 91	add	x10, x0, #31
    2230:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    2234:	6b d0 3b d5	mrs	x11, TPIDRRO_EL0
    2238:	6b 81 5f f8	ldur	x11, [x11, #-8]
    223c:	2c 7d 40 92	and	x12, x9, #0xffffffff
    2240:	ac 01 08 37	tbnz	w12, #1, 0x2274
    2244:	29 7d 60 92	and	x9, x9, #0xffffffff00000000
    2248:	2d 01 0c aa	orr	x13, x9, x12
    224c:	ac 01 7f b2	orr	x12, x13, #0x2
    2250:	e9 03 0d aa	mov	x9, x13
    2254:		.long	0xc8e97d0c
    2258:	2c 7d 40 92	and	x12, x9, #0xffffffff
    225c:	3f 01 0d eb	cmp	x9, x13
    2260:	01 ff ff 54	b.ne	0x2240
    2264:	4b 01 00 f9	str	x11, [x10]
    2268:	00 00 80 52	mov	w0, #0
    226c:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2270:	c0 03 5f d6	ret
    2274:	01 00 80 52	mov	w1, #0
    2278:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    227c:	c2 00 00 14	b	__pthread_mutex_firstfit_lock_slow
    2280:	01 00 80 52	mov	w1, #0
    2284:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2288:	0e 00 00 14	b	__pthread_mutex_lock_init_slow
    228c:	01 00 80 52	mov	w1, #0
    2290:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2294:	39 22 00 14	b	__pthread_mutex_fairshare_lock
    2298:	02 00 80 52	mov	w2, #0
    229c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    22a0:	08 19 40 b9	ldr	w8, [x8, #24]
    22a4:	01 75 1e 12	and	w1, w8, #0xfffffffc
    22a8:	08 60 00 91	add	x8, x0, #24
    22ac:		.long	0x88e27d01
    22b0:	5f 00 00 71	cmp	w2, #0
    22b4:	a0 fd ff 54	b.eq	0x2268
    22b8:	88 21 00 94	bl	__pthread_mutex_ulock_lock_slow
    22bc:	eb ff ff 17	b	0x2268
__pthread_mutex_lock_init_slow:
    22c0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    22c4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    22c8:	fd 43 00 91	add	x29, sp, #16
    22cc:	f3 03 01 aa	mov	x19, x1
    22d0:	f4 03 00 aa	mov	x20, x0
    22d4:	08 00 40 f9	ldr	x8, [x0]
    22d8:	08 7d 40 92	and	x8, x8, #0xffffffff
    22dc:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    22e0:	09 8b 8a 52	mov	w9, #21592
    22e4:	a9 aa a9 72	movk	w9, #19797, lsl #16
    22e8:	1f 01 09 eb	cmp	x8, x9
    22ec:	e0 00 00 54	b.eq	0x2308
    22f0:	e0 03 14 aa	mov	x0, x20
    22f4:	15 00 00 94	bl	__pthread_mutex_check_init_slow
    22f8:	80 00 00 34	cbz	w0, 0x2308
    22fc:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    2300:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    2304:	c0 03 5f d6	ret
    2308:	88 0e 40 b9	ldr	w8, [x20, #12]
    230c:	09 09 1a 12	and	w9, w8, #0x1c0
    2310:	e0 03 14 aa	mov	x0, x20
    2314:	e1 03 13 aa	mov	x1, x19
    2318:	3f 01 01 71	cmp	w9, #64
    231c:	a0 00 00 54	b.eq	0x2330
    2320:	e8 00 70 37	tbnz	w8, #14, 0x233c
    2324:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    2328:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    232c:	96 00 00 14	b	__pthread_mutex_firstfit_lock_slow
    2330:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    2334:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    2338:	7e 20 00 14	b	__pthread_mutex_fairshare_lock_slow
    233c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    2340:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    2344:	52 21 00 14	b	__pthread_mutex_ulock_lock
__pthread_mutex_check_init_slow:
    2348:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    234c:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    2350:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    2354:	fd 83 00 91	add	x29, sp, #32
    2358:	15 74 95 52	mov	w21, #43936
    235c:	55 55 a6 72	movk	w21, #12970, lsl #16
    2360:	08 00 40 f9	ldr	x8, [x0]
    2364:	09 6d 7c 92	and	x9, x8, #0xfffffff0
    2368:	3f 01 15 eb	cmp	x9, x21
    236c:	81 04 00 54	b.ne	0x23fc
    2370:	f4 03 00 aa	mov	x20, x0
    2374:	08 00 80 52	mov	w8, #0
    2378:	13 20 00 91	add	x19, x0, #8
    237c:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    2380:	c9 1a 40 b9	ldr	w9, [x22, #24]
    2384:		.long	0x88e87e69
    2388:	1f 01 00 71	cmp	w8, #0
    238c:	80 00 00 54	b.eq	0x239c
    2390:	e0 03 13 aa	mov	x0, x19
    2394:	a1 00 a0 52	mov	w1, #327680
    2398:	54 26 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    239c:	88 02 40 f9	ldr	x8, [x20]
    23a0:	09 6d 7c 92	and	x9, x8, #0xfffffff0
    23a4:	3f 01 15 eb	cmp	x9, x21
    23a8:	a1 03 00 54	b.ne	0x241c
    23ac:	08 0d 00 12	and	w8, w8, #0xf
    23b0:	09 00 84 52	mov	w9, #8192
    23b4:	89 0e 00 b9	str	w9, [x20, #12]
    23b8:	d5 02 80 52	mov	w21, #22
    23bc:	09 05 00 51	sub	w9, w8, #1
    23c0:	3f 19 00 71	cmp	w9, #6
    23c4:	88 0c 00 54	b.hi	0x2554
    23c8:	8a 00 84 52	mov	w10, #8196
    23cc:	4b 00 00 90	adrp	x11, 8 ; 0xa000
    23d0:	6b 71 2d 91	add	x11, x11, #2908
    23d4:	0c 00 00 10	adr	x12, #0
    23d8:	6d 79 a9 b8	ldrsw	x13, [x11, x9, lsl #2]
    23dc:	8c 01 0d 8b	add	x12, x12, x13
    23e0:	80 01 1f d6	br	x12
    23e4:	9f 22 00 79	strh	wzr, [x20, #16]
    23e8:	1f 0d 00 71	cmp	w8, #3
    23ec:	e1 02 00 54	b.ne	0x2448
    23f0:	9f 26 00 79	strh	wzr, [x20, #18]
    23f4:	09 14 84 52	mov	w9, #8352
    23f8:	23 00 00 14	b	0x2484
    23fc:	08 7d 40 92	and	x8, x8, #0xffffffff
    2400:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    2404:	09 8b 8a 52	mov	w9, #21592
    2408:	a9 aa a9 72	movk	w9, #19797, lsl #16
    240c:	1f 01 09 eb	cmp	x8, x9
    2410:	c8 02 80 52	mov	w8, #22
    2414:	f5 03 88 1a	csel	w21, wzr, w8, eq
    2418:	56 00 00 14	b	0x2570
    241c:	08 7d 40 92	and	x8, x8, #0xffffffff
    2420:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    2424:	09 8b 8a 52	mov	w9, #21592
    2428:	a9 aa a9 72	movk	w9, #19797, lsl #16
    242c:	1f 01 09 eb	cmp	x8, x9
    2430:	c8 02 80 52	mov	w8, #22
    2434:	f5 03 88 1a	csel	w21, wzr, w8, eq
    2438:	47 00 00 14	b	0x2554
    243c:	0a 01 84 52	mov	w10, #8200
    2440:	9f 22 00 79	strh	wzr, [x20, #16]
    2444:	02 00 00 14	b	0x244c
    2448:	0a 00 84 52	mov	w10, #8192
    244c:	08 8b 8a 52	mov	w8, #21592
    2450:	a8 aa a9 72	movk	w8, #19797, lsl #16
    2454:	89 00 00 d0	adrp	x9, 18 ; 0x14000
    2458:	29 05 40 b9	ldr	w9, [x9, #4]
    245c:	2b 09 1a 53	ubfiz	w11, w9, #6, #3
    2460:	49 01 0b 2a	orr	w9, w10, w11
    2464:	29 01 1b 32	orr	w9, w9, #0x20
    2468:	9f 26 00 79	strh	wzr, [x20, #18]
    246c:	5f 05 1e 72	tst	w10, #0xc
    2470:	81 03 00 54	b.ne	0x24e0
    2474:	7f 01 02 71	cmp	w11, #128
    2478:	60 00 00 54	b.eq	0x2484
    247c:	7f 01 01 71	cmp	w11, #64
    2480:	01 01 00 54	b.ne	0x24a0
    2484:	e8 00 00 d0	adrp	x8, 30 ; 0x20000
    2488:	08 e1 40 39	ldrb	w8, [x8, #56]
    248c:	0a 8b 8a 52	mov	w10, #21592
    2490:	aa aa a9 72	movk	w10, #19797, lsl #16
    2494:	4b 01 1f 32	orr	w11, w10, #0x2
    2498:	1f 01 00 71	cmp	w8, #0
    249c:	48 11 8b 1a	csel	w8, w10, w11, ne
    24a0:	8a 39 80 52	mov	w10, #460
    24a4:	2a 01 0a 0a	and	w10, w9, w10
    24a8:	5f 01 02 71	cmp	w10, #128
    24ac:	a1 01 00 54	b.ne	0x24e0
    24b0:	ea 00 00 d0	adrp	x10, 30 ; 0x20000
    24b4:	4a e1 40 39	ldrb	w10, [x10, #56]
    24b8:	0b 8b 8a 52	mov	w11, #21592
    24bc:	ab aa a9 72	movk	w11, #19797, lsl #16
    24c0:	6c 01 7f b2	orr	x12, x11, #0x2
    24c4:	5f 01 00 71	cmp	w10, #0
    24c8:	6a 11 8c 9a	csel	x10, x11, x12, ne
    24cc:	5f 41 28 eb	cmp	x10, w8, uxtw
    24d0:	81 00 00 54	b.ne	0x24e0
    24d4:	ea 00 00 d0	adrp	x10, 30 ; 0x20000
    24d8:	4a 11 41 39	ldrb	w10, [x10, #68]
    24dc:	29 39 0a 2a	orr	w9, w9, w10, lsl #14
    24e0:	89 0e 00 b9	str	w9, [x20, #12]
    24e4:	29 02 70 37	tbnz	w9, #14, 0x2528
    24e8:	8c 62 00 91	add	x12, x20, #24
    24ec:	8a 9e 00 91	add	x10, x20, #39
    24f0:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    24f4:	8b 7e 00 91	add	x11, x20, #31
    24f8:	6b f1 7d 92	and	x11, x11, #0xfffffffffffffff8
    24fc:	9f 01 0b eb	cmp	x12, x11
    2500:	a0 00 00 54	b.eq	0x2514
    2504:	29 01 15 32	orr	w9, w9, #0x800
    2508:	89 0e 00 b9	str	w9, [x20, #12]
    250c:	09 00 80 92	mov	x9, #-1
    2510:	89 0e 00 f9	str	x9, [x20, #24]
    2514:	09 00 80 92	mov	x9, #-1
    2518:	89 16 00 f9	str	x9, [x20, #40]
    251c:	7f 01 00 f9	str	xzr, [x11]
    2520:	5f 01 00 f9	str	xzr, [x10]
    2524:	05 00 00 14	b	0x2538
    2528:	09 00 80 92	mov	x9, #-1
    252c:	89 26 02 a9	stp	x9, x9, [x20, #32]
    2530:	89 0e 00 f9	str	x9, [x20, #24]
    2534:	9f 1a 00 b9	str	wzr, [x20, #24]
    2538:	15 00 80 52	mov	w21, #0
    253c:	e9 03 34 aa	mvn	x9, x20
    2540:	89 1a 00 f9	str	x9, [x20, #48]
    2544:	88 22 07 29	stp	w8, w8, [x20, #56]
    2548:	88 16 00 b9	str	w8, [x20, #20]
    254c:	9f 06 00 b9	str	wzr, [x20, #4]
    2550:	88 fe 9f 88	stlr	w8, [x20]
    2554:	c8 1a 40 b9	ldr	w8, [x22, #24]
    2558:	e9 03 08 aa	mov	x9, x8
    255c:		.long	0x88a9fe7f
    2560:	3f 01 08 6b	cmp	w9, w8
    2564:	60 00 00 54	b.eq	0x2570
    2568:	e0 03 13 aa	mov	x0, x19
    256c:	e2 25 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    2570:	e0 03 15 aa	mov	x0, x21
    2574:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    2578:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    257c:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    2580:	c0 03 5f d6	ret
__pthread_mutex_firstfit_lock_slow:
    2584:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    2588:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    258c:	fd 43 00 91	add	x29, sp, #16
    2590:	f3 03 00 aa	mov	x19, x0
    2594:	08 9c 00 91	add	x8, x0, #39
    2598:	09 f1 7d 92	and	x9, x8, #0xfffffffffffffff8
    259c:	28 01 40 f9	ldr	x8, [x9]
    25a0:	0a 7c 00 91	add	x10, x0, #31
    25a4:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    25a8:	6b d0 3b d5	mrs	x11, TPIDRRO_EL0
    25ac:	6b 81 5f f8	ldur	x11, [x11, #-8]
    25b0:	0c 0c 40 b9	ldr	w12, [x0, #12]
    25b4:	8d 05 1e 72	ands	w13, w12, #0xc
    25b8:	40 03 00 54	b.eq	0x2620
    25bc:	4e 01 40 f9	ldr	x14, [x10]
    25c0:	df 01 0b eb	cmp	x14, x11
    25c4:	e1 02 00 54	b.ne	0x2620
    25c8:	bf 21 00 71	cmp	w13, #8
    25cc:	01 06 00 54	b.ne	0x268c
    25d0:	28 00 a0 12	mov	w8, #-65537
    25d4:	9f 01 08 6b	cmp	w12, w8
    25d8:	49 06 00 54	b.ls	0x26a0
    25dc:	60 04 80 52	mov	w0, #35
    25e0:	33 00 00 14	b	0x26ac
    25e4:	28 01 08 36	tbz	w8, #1, 0x2608
    25e8:	0c 01 04 11	add	w12, w8, #256
    25ec:	0d 7d 60 92	and	x13, x8, #0xffffffff00000000
    25f0:	8d 01 0d aa	orr	x13, x12, x13
    25f4:	ec 03 08 aa	mov	x12, x8
    25f8:		.long	0xc8ec7d2d
    25fc:	9f 01 08 eb	cmp	x12, x8
    2600:	e1 00 00 54	b.ne	0x261c
    2604:	11 00 00 14	b	0x2648
    2608:	0d 01 7f b2	orr	x13, x8, #0x2
    260c:	ec 03 08 aa	mov	x12, x8
    2610:		.long	0xc8ec7d2d
    2614:	9f 01 08 eb	cmp	x12, x8
    2618:	40 02 00 54	b.eq	0x2660
    261c:	e8 03 0c aa	mov	x8, x12
    2620:	42 01 40 f9	ldr	x2, [x10]
    2624:	01 fe ff 34	cbz	w1, 0x25e4
    2628:	e8 fd 0f 36	tbz	w8, #1, 0x25e4
    262c:	ec 03 08 aa	mov	x12, x8
    2630:		.long	0xc8ec7d28
    2634:	9f 01 08 eb	cmp	x12, x8
    2638:	21 ff ff 54	b.ne	0x261c
    263c:	a1 00 00 36	tbz	w1, #0, 0x2650
    2640:	00 02 80 52	mov	w0, #16
    2644:	1a 00 00 14	b	0x26ac
    2648:	e8 03 0d aa	mov	x8, x13
    264c:	a1 ff 07 37	tbnz	w1, #0, 0x2640
    2650:	e0 03 13 aa	mov	x0, x19
    2654:	e1 03 08 aa	mov	x1, x8
    2658:	0d 09 00 94	bl	__pthread_mutex_firstfit_lock_wait
    265c:	02 00 00 14	b	0x2664
    2660:	4b 01 00 f9	str	x11, [x10]
    2664:	68 0e 40 b9	ldr	w8, [x19, #12]
    2668:	09 05 1e 12	and	w9, w8, #0xc
    266c:	3f 21 00 71	cmp	w9, #8
    2670:	a1 00 00 54	b.ne	0x2684
    2674:	00 00 80 52	mov	w0, #0
    2678:	08 3d 00 12	and	w8, w8, #0xffff
    267c:	08 01 10 32	orr	w8, w8, #0x10000
    2680:	0a 00 00 14	b	0x26a8
    2684:	00 00 80 52	mov	w0, #0
    2688:	09 00 00 14	b	0x26ac
    268c:	68 01 80 52	mov	w8, #11
    2690:	09 02 80 52	mov	w9, #16
    2694:	3f 00 00 71	cmp	w1, #0
    2698:	20 11 88 1a	csel	w0, w9, w8, ne
    269c:	04 00 00 14	b	0x26ac
    26a0:	00 00 80 52	mov	w0, #0
    26a4:	88 41 40 11	add	w8, w12, #16, lsl #12
    26a8:	68 0e 00 b9	str	w8, [x19, #12]
    26ac:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    26b0:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    26b4:	c0 03 5f d6	ret
_pthread_mutex_unlock:
    26b8:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    26bc:	fd 03 00 91	mov	x29, sp
    26c0:	08 00 40 f9	ldr	x8, [x0]
    26c4:	49 8b 8a 52	mov	w9, #21594
    26c8:	a9 aa a9 72	movk	w9, #19797, lsl #16
    26cc:	1f 01 09 eb	cmp	x8, x9
    26d0:	61 03 00 54	b.ne	0x273c
    26d4:	08 0c 40 b9	ldr	w8, [x0, #12]
    26d8:	09 09 1a 12	and	w9, w8, #0x1c0
    26dc:	3f 01 01 71	cmp	w9, #64
    26e0:	20 03 00 54	b.eq	0x2744
    26e4:	48 03 70 37	tbnz	w8, #14, 0x274c
    26e8:	08 7c 00 91	add	x8, x0, #31
    26ec:	0a f1 7d 92	and	x10, x8, #0xfffffffffffffff8
    26f0:	08 9c 00 91	add	x8, x0, #39
    26f4:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    26f8:	09 01 40 f9	ldr	x9, [x8]
    26fc:	5f 01 00 f9	str	xzr, [x10]
    2700:	2a fd 60 d3	lsr	x10, x9, #32
    2704:	4a 01 09 4a	eor	w10, w10, w9
    2708:	5f 5d 78 f2	tst	x10, #0xffffff00
    270c:	41 01 00 54	b.ne	0x2734
    2710:	2a f9 7e 92	and	x10, x9, #0xfffffffffffffffd
    2714:	eb 03 09 aa	mov	x11, x9
    2718:		.long	0xc8abfd0a
    271c:	7f 01 09 eb	cmp	x11, x9
    2720:	e9 03 0b aa	mov	x9, x11
    2724:	e1 fe ff 54	b.ne	0x2700
    2728:	00 00 80 52	mov	w0, #0
    272c:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2730:	c0 03 5f d6	ret
    2734:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2738:	27 00 00 14	b	__pthread_mutex_firstfit_unlock_slow
    273c:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2740:	05 00 00 14	b	__pthread_mutex_unlock_init_slow
    2744:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    2748:	e7 20 00 14	b	__pthread_mutex_fairshare_unlock
    274c:	ab 20 00 94	bl	__pthread_mutex_ulock_unlock
    2750:	f6 ff ff 17	b	0x2728
__pthread_mutex_unlock_init_slow:
    2754:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    2758:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    275c:	fd 43 00 91	add	x29, sp, #16
    2760:	f3 03 00 aa	mov	x19, x0
    2764:	08 00 40 f9	ldr	x8, [x0]
    2768:	08 7d 40 92	and	x8, x8, #0xffffffff
    276c:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    2770:	09 8b 8a 52	mov	w9, #21592
    2774:	a9 aa a9 72	movk	w9, #19797, lsl #16
    2778:	1f 01 09 eb	cmp	x8, x9
    277c:	e0 00 00 54	b.eq	0x2798
    2780:	e0 03 13 aa	mov	x0, x19
    2784:	f1 fe ff 97	bl	__pthread_mutex_check_init_slow
    2788:	80 00 00 34	cbz	w0, 0x2798
    278c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    2790:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    2794:	c0 03 5f d6	ret
    2798:	68 0e 40 b9	ldr	w8, [x19, #12]
    279c:	09 09 1a 12	and	w9, w8, #0x1c0
    27a0:	e0 03 13 aa	mov	x0, x19
    27a4:	3f 01 01 71	cmp	w9, #64
    27a8:	a0 00 00 54	b.eq	0x27bc
    27ac:	e8 00 70 37	tbnz	w8, #14, 0x27c8
    27b0:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    27b4:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    27b8:	07 00 00 14	b	__pthread_mutex_firstfit_unlock_slow
    27bc:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    27c0:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    27c4:	cf 1f 00 14	b	__pthread_mutex_fairshare_unlock_slow
    27c8:	8c 20 00 94	bl	__pthread_mutex_ulock_unlock
    27cc:	00 00 80 52	mov	w0, #0
    27d0:	ef ff ff 17	b	0x278c
__pthread_mutex_firstfit_unlock_slow:
    27d4:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    27d8:	fd 03 00 91	mov	x29, sp
    27dc:	0b 0c 40 b9	ldr	w11, [x0, #12]
    27e0:	62 79 13 12	and	w2, w11, #0xffffefff
    27e4:	08 9c 00 91	add	x8, x0, #39
    27e8:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    27ec:	0a 01 40 f9	ldr	x10, [x8]
    27f0:	09 7c 00 91	add	x9, x0, #31
    27f4:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    27f8:	6c 05 1e 72	ands	w12, w11, #0xc
    27fc:	40 02 00 54	b.eq	0x2844
    2800:	6d d0 3b d5	mrs	x13, TPIDRRO_EL0
    2804:	ad 81 5f f8	ldur	x13, [x13, #-8]
    2808:	2e 01 40 f9	ldr	x14, [x9]
    280c:	df 01 0d eb	cmp	x14, x13
    2810:	81 05 00 54	b.ne	0x28c0
    2814:	9f 21 00 71	cmp	w12, #8
    2818:	61 01 00 54	b.ne	0x2844
    281c:	6c 7d 10 53	lsr	w12, w11, #16
    2820:	8c 05 00 51	sub	w12, w12, #1
    2824:	8b 3d 10 33	bfi	w11, w12, #16, #16
    2828:	0b 0c 00 b9	str	w11, [x0, #12]
    282c:	9f 3d 00 72	tst	w12, #0xffff
    2830:	a0 00 00 54	b.eq	0x2844
    2834:	0d 00 80 d2	mov	x13, #0
    2838:	0e 00 80 d2	mov	x14, #0
    283c:	a2 03 60 37	tbnz	w2, #12, 0x28b0
    2840:	1e 00 00 14	b	0x28b8
    2844:	0b 20 c0 d2	mov	x11, #1099511627776
    2848:	4c 00 80 12	mov	w12, #-3
    284c:	2d 01 40 f9	ldr	x13, [x9]
    2850:	ad 00 00 b4	cbz	x13, 0x2864
    2854:	ee 03 0d aa	mov	x14, x13
    2858:		.long	0xc8ae7d3f
    285c:	df 01 0d eb	cmp	x14, x13
    2860:	61 03 00 54	b.ne	0x28cc
    2864:	4d fd 60 d3	lsr	x13, x10, #32
    2868:	4e 5d 18 12	and	w14, w10, #0xffffff00
    286c:	ad 5d 18 12	and	w13, w13, #0xffffff00
    2870:	cf 01 0d 4b	sub	w15, w14, w13
    2874:	4d 01 0b 8b	add	x13, x10, x11
    2878:	ff 01 00 71	cmp	w15, #0
    287c:	ad c1 8a 9a	csel	x13, x13, x10, gt
    2880:	ad 7d 60 92	and	x13, x13, #0xffffffff00000000
    2884:	4e 01 0c 8a	and	x14, x10, x12
    2888:	b0 01 0e aa	orr	x16, x13, x14
    288c:	f1 03 0a aa	mov	x17, x10
    2890:		.long	0xc8b1fd10
    2894:	3f 02 0a eb	cmp	x17, x10
    2898:	ea 03 11 aa	mov	x10, x17
    289c:	81 fd ff 54	b.ne	0x284c
    28a0:	ff 01 00 71	cmp	w15, #0
    28a4:	e8 d7 9f 1a	cset	w8, gt
    28a8:	42 30 08 2a	orr	w2, w2, w8, lsl #12
    28ac:	62 00 60 36	tbz	w2, #12, 0x28b8
    28b0:	c1 01 0d aa	orr	x1, x14, x13
    28b4:	9f 08 00 94	bl	__pthread_mutex_firstfit_wake
    28b8:	00 00 80 52	mov	w0, #0
    28bc:	02 00 00 14	b	0x28c4
    28c0:	20 00 80 52	mov	w0, #1
    28c4:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    28c8:	c0 03 5f d6	ret
    28cc:	01 24 00 94	bl	__pthread_mutex_corruption_abort
_qos_class_main:
    28d0:	08 01 00 d0	adrp	x8, 34 ; 0x24000
    28d4:	08 61 40 b9	ldr	w8, [x8, #96]
    28d8:	09 40 a4 52	mov	w9, #570425344
    28dc:	09 01 09 8a	and	x9, x8, x9
    28e0:	0a 15 78 92	and	x10, x8, #0x3f00
    28e4:	3f 01 00 f1	cmp	x9, #0
    28e8:	44 09 40 fa	ccmp	x10, #0, #4, eq
    28ec:	61 00 00 54	b.ne	0x28f8
    28f0:	08 00 80 52	mov	w8, #0
    28f4:	08 00 00 14	b	0x2914
    28f8:	08 35 08 53	ubfx	w8, w8, #8, #6
    28fc:	c8 00 00 34	cbz	w8, 0x2914
    2900:	08 01 c0 5a	rbit	w8, w8
    2904:	08 11 c0 5a	clz	w8, w8
    2908:	1f 15 00 71	cmp	w8, #5
    290c:	c8 00 00 54	b.hi	0x2924
    2910:	08 05 00 11	add	w8, w8, #1
    2914:	49 00 00 b0	adrp	x9, 9 ; 0xb000
    2918:	29 31 39 91	add	x9, x9, #3660
    291c:	20 59 68 b8	ldr	w0, [x9, w8, uxtw #2]
    2920:	c0 03 5f d6	ret
    2924:	00 00 80 52	mov	w0, #0
    2928:	c0 03 5f d6	ret
_start_wqthread:
    292c:	ff 7f bf a9	stp	xzr, xzr, [sp, #-16]!
    2930:	4a 04 00 94	bl	__pthread_wqthread
    2934:	20 00 20 d4	brk	#0x1
_thread_start:
    2938:	ff 7f bf a9	stp	xzr, xzr, [sp, #-16]!
    293c:	55 13 00 94	bl	__pthread_start
    2940:	1f 20 03 d5	nop
____chkstk_darwin:
_thread_chkstk_darwin:
    2944:	ea 2f 3f a9	stp	x10, x11, [sp, #-16]
    2948:	6a d0 3b d5	mrs	x10, TPIDRRO_EL0
    294c:	4b 01 5d f8	ldur	x11, [x10, #-48]
    2950:	eb 63 2b eb	subs	x11, sp, x11
    2954:	82 01 00 54	b.hs	0x2984
    2958:	4b 81 5d f8	ldur	x11, [x10, #-40]
    295c:	ea 03 00 91	mov	x10, sp
    2960:	5f 01 0b eb	cmp	x10, x11
    2964:	09 01 00 54	b.ls	0x2984
    2968:	4a 01 09 eb	subs	x10, x10, x9
    296c:	a3 00 00 54	b.lo	0x2980
    2970:	5f 01 0b eb	cmp	x10, x11
    2974:	63 00 00 54	b.lo	0x2980
    2978:	ea 2f 7f a9	ldp	x10, x11, [sp, #-16]
    297c:	c0 03 5f d6	ret
    2980:	6b 81 5f f8	ldur	x11, [x11, #-8]
    2984:	ea 03 00 91	mov	x10, sp
    2988:	3f 05 40 f1	cmp	x9, #1, lsl #12
    298c:	c3 00 00 54	b.lo	0x29a4
    2990:	4a 05 40 d1	sub	x10, x10, #1, lsl #12
    2994:	4b 01 40 f9	ldr	x11, [x10]
    2998:	29 05 40 d1	sub	x9, x9, #1, lsl #12
    299c:	3f 05 40 f1	cmp	x9, #1, lsl #12
    29a0:	88 ff ff 54	b.hi	0x2990
    29a4:	4a 01 09 cb	sub	x10, x10, x9
    29a8:	4b 01 40 f9	ldr	x11, [x10]
    29ac:	f3 ff ff 17	b	0x2978
_pthread_getspecific:
    29b0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    29b4:	00 79 60 f8	ldr	x0, [x8, x0, lsl #3]
    29b8:	c0 03 5f d6	ret
_pthread_setspecific:
    29bc:	08 28 00 d1	sub	x8, x0, #10
    29c0:	1f d5 0b f1	cmp	x8, #757
    29c4:	e8 00 00 54	b.hi	0x29e0
    29c8:	28 01 00 d0	adrp	x8, 38 ; 0x28000
    29cc:	08 e1 00 91	add	x8, x8, #56
    29d0:	0a 79 60 f8	ldr	x10, [x8, x0, lsl #3]
    29d4:	1f 00 04 f1	cmp	x0, #256
    29d8:	a3 00 00 54	b.lo	0x29ec
    29dc:	8a 00 00 b5	cbnz	x10, 0x29ec
    29e0:	c8 02 80 52	mov	w8, #22
    29e4:	e0 03 08 aa	mov	x0, x8
    29e8:	c0 03 5f d6	ret
    29ec:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    29f0:	21 79 20 f8	str	x1, [x9, x0, lsl #3]
    29f4:	1f fc 03 f1	cmp	x0, #255
    29f8:	88 00 00 54	b.hi	0x2a08
    29fc:	6a 00 00 b5	cbnz	x10, 0x2a08
    2a00:	0a 00 80 92	mov	x10, #-1
    2a04:	0a 79 20 f8	str	x10, [x8, x0, lsl #3]
    2a08:	28 c1 56 78	ldurh	w8, [x9, #-148]
    2a0c:	1f 01 00 eb	cmp	x8, x0
    2a10:	82 00 00 54	b.hs	0x2a20
    2a14:	08 00 80 52	mov	w8, #0
    2a18:	20 c1 16 78	sturh	w0, [x9, #-148]
    2a1c:	f2 ff ff 17	b	0x29e4
    2a20:	08 00 80 52	mov	w8, #0
    2a24:	f0 ff ff 17	b	0x29e4
_pthread_cond_broadcast:
    2a28:	ff 83 01 d1	sub	sp, sp, #96
    2a2c:	fa 67 01 a9	stp	x26, x25, [sp, #16]
    2a30:	f8 5f 02 a9	stp	x24, x23, [sp, #32]
    2a34:	f6 57 03 a9	stp	x22, x21, [sp, #48]
    2a38:	f4 4f 04 a9	stp	x20, x19, [sp, #64]
    2a3c:	fd 7b 05 a9	stp	x29, x30, [sp, #80]
    2a40:	fd 43 01 91	add	x29, sp, #80
    2a44:	f3 03 00 aa	mov	x19, x0
    2a48:	94 c8 89 52	mov	w20, #20036
    2a4c:	f4 69 a8 72	movk	w20, #17231, lsl #16
    2a50:	f4 0f 00 b9	str	w20, [sp, #12]
    2a54:	08 00 40 b9	ldr	w8, [x0]
    2a58:	69 37 96 52	mov	w9, #45499
    2a5c:	09 96 b7 72	movk	w9, #48304, lsl #16
    2a60:	09 01 09 0b	add	w9, w8, w9
    2a64:	3f 09 00 71	cmp	w9, #2
    2a68:	63 01 00 54	b.lo	0x2a94
    2a6c:	69 37 96 52	mov	w9, #45499
    2a70:	09 96 a7 72	movk	w9, #15536, lsl #16
    2a74:	1f 01 09 6b	cmp	w8, w9
    2a78:	60 01 00 54	b.eq	0x2aa4
    2a7c:	c9 02 80 52	mov	w9, #22
    2a80:	8a c8 89 52	mov	w10, #20036
    2a84:	ea 69 a8 72	movk	w10, #17231, lsl #16
    2a88:	1f 01 0a 6b	cmp	w8, w10
    2a8c:	20 11 9f 1a	csel	w0, w9, wzr, ne
    2a90:	9e 00 00 14	b	0x2d08
    2a94:	00 00 80 52	mov	w0, #0
    2a98:	e8 0f 00 b9	str	w8, [sp, #12]
    2a9c:	e0 00 00 34	cbz	w0, 0x2ab8
    2aa0:	9a 00 00 14	b	0x2d08
    2aa4:	e1 33 00 91	add	x1, sp, #12
    2aa8:	e0 03 13 aa	mov	x0, x19
    2aac:	a4 00 00 94	bl	__pthread_cond_check_init_slow
    2ab0:	e8 0f 40 b9	ldr	w8, [sp, #12]
    2ab4:	a0 12 00 35	cbnz	w0, 0x2d08
    2ab8:	1f 01 14 6b	cmp	w8, w20
    2abc:	60 12 00 54	b.eq	0x2d08
    2ac0:	c9 c8 89 52	mov	w9, #20038
    2ac4:	e9 69 a8 72	movk	w9, #17231, lsl #16
    2ac8:	1f 01 09 6b	cmp	w8, w9
    2acc:	20 09 00 54	b.eq	0x2bf0
    2ad0:	a9 c8 89 52	mov	w9, #20037
    2ad4:	e9 69 a8 72	movk	w9, #17231, lsl #16
    2ad8:	1f 01 09 6b	cmp	w8, w9
    2adc:	c1 12 00 54	b.ne	0x2d34
    2ae0:	19 00 80 52	mov	w25, #0
    2ae4:	1a 00 80 52	mov	w26, #0
    2ae8:	15 00 80 52	mov	w21, #0
    2aec:	f4 ef 9f 52	mov	w20, #65407
    2af0:	f4 ff af 72	movk	w20, #32767, lsl #16
    2af4:	68 0e 40 b9	ldr	w8, [x19, #12]
    2af8:	69 62 00 91	add	x9, x19, #24
    2afc:	6a 72 00 91	add	x10, x19, #28
    2b00:	6b 82 00 91	add	x11, x19, #32
    2b04:	1f 01 03 72	tst	w8, #0x20000000
    2b08:	36 01 8a 9a	csel	x22, x9, x10, eq
    2b0c:	57 01 8b 9a	csel	x23, x10, x11, eq
    2b10:	78 01 89 9a	csel	x24, x11, x9, eq
    2b14:	c9 02 40 b9	ldr	w9, [x22]
    2b18:	08 03 40 b9	ldr	w8, [x24]
    2b1c:	ea 02 40 b9	ldr	w10, [x23]
    2b20:	2c 5d 18 12	and	w12, w9, #0xffffff00
    2b24:	4b 5d 18 12	and	w11, w10, #0xffffff00
    2b28:	8f 01 0b 6b	subs	w15, w12, w11
    2b2c:	0d 5d 18 12	and	w13, w8, #0xffffff00
    2b30:	84 11 4d 7a	ccmp	w12, w13, #4, ne
    2b34:	e1 00 00 54	b.ne	0x2b50
    2b38:	28 81 0a aa	orr	x8, x9, x10, lsl #32
    2b3c:	e9 03 08 aa	mov	x9, x8
    2b40:		.long	0xc8e9fec8
    2b44:	3f 01 08 eb	cmp	x9, x8
    2b48:	61 fe ff 54	b.ne	0x2b14
    2b4c:	6e 00 00 14	b	0x2d04
    2b50:	6e 01 0c 6b	subs	w14, w11, w12
    2b54:	df 01 14 6b	cmp	w14, w20
    2b58:	f0 97 9f 1a	cset	w16, hi
    2b5c:	8e 0a 00 11	add	w14, w20, #2
    2b60:	ff 01 0e 6b	cmp	w15, w14
    2b64:	ef 27 9f 1a	cset	w15, lo
    2b68:	7f 01 0c 6b	cmp	w11, w12
    2b6c:	0f 82 8f 1a	csel	w15, w16, w15, hi
    2b70:	ef 01 00 36	tbz	w15, #0, 0x2bac
    2b74:	af 01 0c 6b	subs	w15, w13, w12
    2b78:	ff 01 14 6b	cmp	w15, w20
    2b7c:	ef 97 9f 1a	cset	w15, hi
    2b80:	90 01 0d 4b	sub	w16, w12, w13
    2b84:	1f 02 0e 6b	cmp	w16, w14
    2b88:	ee 27 9f 1a	cset	w14, lo
    2b8c:	bf 01 0c 6b	cmp	w13, w12
    2b90:	ee 81 8e 1a	csel	w14, w15, w14, hi
    2b94:	4e 01 00 36	tbz	w14, #0, 0x2bbc
    2b98:	ee 03 08 aa	mov	x14, x8
    2b9c:		.long	0x88eeff0c
    2ba0:	df 01 08 6b	cmp	w14, w8
    2ba4:	81 fb ff 54	b.ne	0x2b14
    2ba8:	38 00 00 14	b	0x2c88
    2bac:	bf 0a 40 71	cmp	w21, #2, lsl #12
    2bb0:	aa 0b 00 54	b.ge	0x2d24
    2bb4:	b5 06 00 11	add	w21, w21, #1
    2bb8:	0c 00 00 14	b	0x2be8
    2bbc:	49 07 00 11	add	w9, w26, #1
    2bc0:	5f 0b 40 71	cmp	w26, #2, lsl #12
    2bc4:	0b 01 00 54	b.lt	0x2be4
    2bc8:	f9 0a 00 35	cbnz	w25, 0x2d24
    2bcc:	ea 03 08 aa	mov	x10, x8
    2bd0:		.long	0x88eaff0b
    2bd4:	5f 01 08 6b	cmp	w10, w8
    2bd8:	fa 03 89 1a	csel	w26, wzr, w9, eq
    2bdc:	f9 17 9f 1a	cset	w25, eq
    2be0:	02 00 00 14	b	0x2be8
    2be4:	fa 03 09 aa	mov	x26, x9
    2be8:	1e 07 00 94	bl	_sched_yield
    2bec:	ca ff ff 17	b	0x2b14
    2bf0:	68 0e 40 b9	ldr	w8, [x19, #12]
    2bf4:	08 75 5d d3	ubfx	x8, x8, #29, #1
    2bf8:	73 0a 08 8b	add	x19, x19, x8, lsl #2
    2bfc:	68 8e 41 f8	ldr	x8, [x19, #24]!
    2c00:	00 00 80 52	mov	w0, #0
    2c04:	09 bd 60 d3	ubfx	x9, x8, #32, #16
    2c08:	09 08 00 34	cbz	w9, 0x2d08
    2c0c:	0a fd 70 d3	lsr	x10, x8, #48
    2c10:	3f 01 0a 6b	cmp	w9, w10
    2c14:	a0 07 00 54	b.eq	0x2d08
    2c18:	0b fd 60 d3	lsr	x11, x8, #32
    2c1c:	0c 05 00 11	add	w12, w8, #1
    2c20:	0d 3d 60 92	and	x13, x8, #0xffff00000000
    2c24:	8b c1 0b aa	orr	x11, x12, x11, lsl #48
    2c28:	6b 01 0d aa	orr	x11, x11, x13
    2c2c:	ec 03 08 aa	mov	x12, x8
    2c30:		.long	0xc8acfe6b
    2c34:	9f 01 08 eb	cmp	x12, x8
    2c38:	e8 03 0c aa	mov	x8, x12
    2c3c:	21 fe ff 54	b.ne	0x2c00
    2c40:	5f 01 09 6b	cmp	w10, w9
    2c44:	02 06 00 54	b.hs	0x2d04
    2c48:	20 20 80 52	mov	w0, #257
    2c4c:	00 20 a0 72	movk	w0, #256, lsl #16
    2c50:	e1 03 13 aa	mov	x1, x19
    2c54:	02 00 80 d2	mov	x2, #0
    2c58:	c7 23 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    2c5c:	40 05 f8 36	tbz	w0, #31, 0x2d04
    2c60:	e8 03 00 aa	mov	x8, x0
    2c64:	1f 10 00 31	cmn	w0, #4
    2c68:	00 ff ff 54	b.eq	0x2c48
    2c6c:	00 00 80 52	mov	w0, #0
    2c70:	e8 03 08 4b	neg	w8, w8
    2c74:	1f 09 00 71	cmp	w8, #2
    2c78:	80 04 00 54	b.eq	0x2d08
    2c7c:	1f 95 00 71	cmp	w8, #37
    2c80:	61 05 00 54	b.ne	0x2d2c
    2c84:	0b 23 00 94	bl	_pthread_cond_broadcast.cold.3
    2c88:	6e 01 0d 4b	sub	w14, w11, w13
    2c8c:	df 01 14 6b	cmp	w14, w20
    2c90:	ee 97 9f 1a	cset	w14, hi
    2c94:	af 01 0b 6b	subs	w15, w13, w11
    2c98:	90 0a 00 11	add	w16, w20, #2
    2c9c:	ff 01 10 6b	cmp	w15, w16
    2ca0:	ef 27 9f 1a	cset	w15, lo
    2ca4:	bf 01 0b 6b	cmp	w13, w11
    2ca8:	ce 31 8f 1a	csel	w14, w14, w15, lo
    2cac:	df 01 00 71	cmp	w14, #0
    2cb0:	ab 11 8b 1a	csel	w11, w13, w11, ne
    2cb4:	6d 0e 40 b9	ldr	w13, [x19, #12]
    2cb8:	ad 7d 1e 53	lsr	w13, w13, #30
    2cbc:	bf 05 00 71	cmp	w13, #1
    2cc0:	ed 17 9f 1a	cset	w13, eq
    2cc4:	a3 6d 1c 53	lsl	w3, w13, #4
    2cc8:	8b 01 0b 4b	sub	w11, w12, w11
    2ccc:	21 81 0a aa	orr	x1, x9, x10, lsl #32
    2cd0:	62 81 08 aa	orr	x2, x11, x8, lsl #32
    2cd4:	e0 03 13 aa	mov	x0, x19
    2cd8:	04 00 80 d2	mov	x4, #0
    2cdc:	05 00 80 d2	mov	x5, #0
    2ce0:	06 00 80 d2	mov	x6, #0
    2ce4:	65 23 00 94	bl	0xba78 ; symbol stub for: ___psynch_cvbroad
    2ce8:	08 04 00 51	sub	w8, w0, #1
    2cec:	1f 0d 00 31	cmn	w8, #3
    2cf0:	a8 00 00 54	b.hi	0x2d04
    2cf4:	e2 03 00 aa	mov	x2, x0
    2cf8:	e0 03 13 aa	mov	x0, x19
    2cfc:	01 00 80 52	mov	w1, #0
    2d00:	e7 06 00 94	bl	__pthread_cond_updateval
    2d04:	00 00 80 52	mov	w0, #0
    2d08:	fd 7b 45 a9	ldp	x29, x30, [sp, #80]
    2d0c:	f4 4f 44 a9	ldp	x20, x19, [sp, #64]
    2d10:	f6 57 43 a9	ldp	x22, x21, [sp, #48]
    2d14:	f8 5f 42 a9	ldp	x24, x23, [sp, #32]
    2d18:	fa 67 41 a9	ldp	x26, x25, [sp, #16]
    2d1c:	ff 83 01 91	add	sp, sp, #96
    2d20:	c0 03 5f d6	ret
    2d24:	60 04 80 52	mov	w0, #35
    2d28:	f8 ff ff 17	b	0x2d08
    2d2c:	e0 03 08 aa	mov	x0, x8
    2d30:	d6 22 00 94	bl	_pthread_cond_broadcast.cold.2
    2d34:	e0 03 08 aa	mov	x0, x8
    2d38:	ca 22 00 94	bl	_pthread_cond_broadcast.cold.1
__pthread_cond_check_init_slow:
    2d3c:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    2d40:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    2d44:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    2d48:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    2d4c:	fd c3 00 91	add	x29, sp, #48
    2d50:	f6 03 01 aa	mov	x22, x1
    2d54:	f4 03 00 aa	mov	x20, x0
    2d58:	08 00 80 52	mov	w8, #0
    2d5c:	13 20 00 91	add	x19, x0, #8
    2d60:	77 d0 3b d5	mrs	x23, TPIDRRO_EL0
    2d64:	e9 1a 40 b9	ldr	w9, [x23, #24]
    2d68:		.long	0x88e87e69
    2d6c:	1f 01 00 71	cmp	w8, #0
    2d70:	80 00 00 54	b.eq	0x2d80
    2d74:	e0 03 13 aa	mov	x0, x19
    2d78:	a1 00 a0 52	mov	w1, #327680
    2d7c:	db 23 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    2d80:	88 02 40 b9	ldr	w8, [x20]
    2d84:	69 37 96 52	mov	w9, #45499
    2d88:	09 96 b7 72	movk	w9, #48304, lsl #16
    2d8c:	09 01 09 0b	add	w9, w8, w9
    2d90:	3f 09 00 71	cmp	w9, #2
    2d94:	83 03 00 54	b.lo	0x2e04
    2d98:	89 c8 89 52	mov	w9, #20036
    2d9c:	e9 69 a8 72	movk	w9, #17231, lsl #16
    2da0:	1f 01 09 6b	cmp	w8, w9
    2da4:	00 04 00 54	b.eq	0x2e24
    2da8:	69 37 96 52	mov	w9, #45499
    2dac:	09 96 a7 72	movk	w9, #15536, lsl #16
    2db0:	1f 01 09 6b	cmp	w8, w9
    2db4:	41 04 00 54	b.ne	0x2e3c
    2db8:	15 00 80 52	mov	w21, #0
    2dbc:	c8 02 40 b9	ldr	w8, [x22]
    2dc0:	9f 0a 00 f9	str	xzr, [x20, #16]
    2dc4:	e9 03 14 aa	mov	x9, x20
    2dc8:	3f 8d 01 b8	str	wzr, [x9, #24]!
    2dcc:	9f fe 03 29	stp	wzr, wzr, [x20, #28]
    2dd0:	3f 09 40 f2	tst	x9, #0x7
    2dd4:	09 04 80 52	mov	w9, #32
    2dd8:	8a 03 80 52	mov	w10, #28
    2ddc:	49 01 89 9a	csel	x9, x10, x9, eq
    2de0:	2a 00 80 52	mov	w10, #1
    2de4:	8a 6a 29 b8	str	w10, [x20, x9]
    2de8:	09 00 b4 52	mov	w9, #-1610612736
    2dec:	0a 00 b0 52	mov	w10, #-2147483648
    2df0:	49 01 89 1a	csel	w9, w10, w9, eq
    2df4:	89 0e 00 b9	str	w9, [x20, #12]
    2df8:	9f 06 00 b9	str	wzr, [x20, #4]
    2dfc:	88 fe 9f 88	stlr	w8, [x20]
    2e00:	14 00 00 14	b	0x2e50
    2e04:	c9 02 40 b9	ldr	w9, [x22]
    2e08:	8a c8 89 52	mov	w10, #20036
    2e0c:	ea 69 a8 72	movk	w10, #17231, lsl #16
    2e10:	3f 01 0a 6b	cmp	w9, w10
    2e14:	81 01 00 54	b.ne	0x2e44
    2e18:	15 00 80 52	mov	w21, #0
    2e1c:	c8 02 00 b9	str	w8, [x22]
    2e20:	0c 00 00 14	b	0x2e50
    2e24:	c8 02 40 b9	ldr	w8, [x22]
    2e28:	1f 01 09 6b	cmp	w8, w9
    2e2c:	00 01 00 54	b.eq	0x2e4c
    2e30:	15 00 80 52	mov	w21, #0
    2e34:	88 02 00 b9	str	w8, [x20]
    2e38:	06 00 00 14	b	0x2e50
    2e3c:	d5 02 80 52	mov	w21, #22
    2e40:	04 00 00 14	b	0x2e50
    2e44:	3f 01 08 6b	cmp	w9, w8
    2e48:	e1 01 00 54	b.ne	0x2e84
    2e4c:	15 00 80 52	mov	w21, #0
    2e50:	e8 1a 40 b9	ldr	w8, [x23, #24]
    2e54:	e9 03 08 aa	mov	x9, x8
    2e58:		.long	0x88a9fe7f
    2e5c:	3f 01 08 6b	cmp	w9, w8
    2e60:	60 00 00 54	b.eq	0x2e6c
    2e64:	e0 03 13 aa	mov	x0, x19
    2e68:	a3 23 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    2e6c:	e0 03 15 aa	mov	x0, x21
    2e70:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    2e74:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    2e78:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    2e7c:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    2e80:	c0 03 5f d6	ret
    2e84:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    2e88:	54 00 00 d0	adrp	x20, 10 ; 0xc000
    2e8c:	94 6e 1e 91	add	x20, x20, #1947 ; literal pool for: "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use"
    2e90:	95 00 00 d0	adrp	x21, 18 ; 0x14000
    2e94:	b5 22 00 91	add	x21, x21, #8
    2e98:	b4 06 00 f9	str	x20, [x21, #8]
    2e9c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    2ea0:	20 00 20 d4	brk	#0x1
_pthread_mutex_destroy:
    2ea4:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    2ea8:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    2eac:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    2eb0:	fd 83 00 91	add	x29, sp, #32
    2eb4:	f4 03 00 aa	mov	x20, x0
    2eb8:	08 00 80 52	mov	w8, #0
    2ebc:	13 20 00 91	add	x19, x0, #8
    2ec0:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    2ec4:	c9 1a 40 b9	ldr	w9, [x22, #24]
    2ec8:		.long	0x88e87e69
    2ecc:	1f 01 00 71	cmp	w8, #0
    2ed0:	80 00 00 54	b.eq	0x2ee0
    2ed4:	e0 03 13 aa	mov	x0, x19
    2ed8:	a1 00 a0 52	mov	w1, #327680
    2edc:	83 23 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    2ee0:	88 02 40 f9	ldr	x8, [x20]
    2ee4:	09 7d 40 92	and	x9, x8, #0xffffffff
    2ee8:	29 f9 7e 92	and	x9, x9, #0xfffffffffffffffd
    2eec:	0a 8b 8a 52	mov	w10, #21592
    2ef0:	aa aa a9 72	movk	w10, #19797, lsl #16
    2ef4:	3f 01 0a eb	cmp	x9, x10
    2ef8:	21 02 00 54	b.ne	0x2f3c
    2efc:	88 36 40 39	ldrb	w8, [x20, #13]
    2f00:	68 00 30 36	tbz	w8, #6, 0x2f0c
    2f04:	88 1a 40 b9	ldr	w8, [x20, #24]
    2f08:	48 02 00 34	cbz	w8, 0x2f50
    2f0c:	88 9e 00 91	add	x8, x20, #39
    2f10:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    2f14:	08 25 40 29	ldp	w8, w9, [x8]
    2f18:	8a 7e 00 91	add	x10, x20, #31
    2f1c:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    2f20:	4a 01 40 f9	ldr	x10, [x10]
    2f24:	28 01 08 4a	eor	w8, w9, w8
    2f28:	08 5d 78 92	and	x8, x8, #0xffffff00
    2f2c:	48 01 08 aa	orr	x8, x10, x8
    2f30:	08 01 00 b4	cbz	x8, 0x2f50
    2f34:	15 02 80 52	mov	w21, #16
    2f38:	0a 00 00 14	b	0x2f60
    2f3c:	08 6d 7c 92	and	x8, x8, #0xfffffff0
    2f40:	09 74 95 52	mov	w9, #43936
    2f44:	49 55 a6 72	movk	w9, #12970, lsl #16
    2f48:	1f 01 09 eb	cmp	x8, x9
    2f4c:	81 00 00 54	b.ne	0x2f5c
    2f50:	15 00 80 52	mov	w21, #0
    2f54:	9f 02 00 f9	str	xzr, [x20]
    2f58:	02 00 00 14	b	0x2f60
    2f5c:	d5 02 80 52	mov	w21, #22
    2f60:	c8 1a 40 b9	ldr	w8, [x22, #24]
    2f64:	e9 03 08 aa	mov	x9, x8
    2f68:		.long	0x88a9fe7f
    2f6c:	3f 01 08 6b	cmp	w9, w8
    2f70:	60 00 00 54	b.eq	0x2f7c
    2f74:	e0 03 13 aa	mov	x0, x19
    2f78:	5f 23 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    2f7c:	e0 03 15 aa	mov	x0, x21
    2f80:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    2f84:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    2f88:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    2f8c:	c0 03 5f d6	ret
_pthread_atfork:
    2f90:	ff 03 02 d1	sub	sp, sp, #128
    2f94:	fc 6f 02 a9	stp	x28, x27, [sp, #32]
    2f98:	fa 67 03 a9	stp	x26, x25, [sp, #48]
    2f9c:	f8 5f 04 a9	stp	x24, x23, [sp, #64]
    2fa0:	f6 57 05 a9	stp	x22, x21, [sp, #80]
    2fa4:	f4 4f 06 a9	stp	x20, x19, [sp, #96]
    2fa8:	fd 7b 07 a9	stp	x29, x30, [sp, #112]
    2fac:	fd c3 01 91	add	x29, sp, #112
    2fb0:	f3 03 02 aa	mov	x19, x2
    2fb4:	f4 03 01 aa	mov	x20, x1
    2fb8:	f5 03 00 aa	mov	x21, x0
    2fbc:	68 00 00 d0	adrp	x8, 14 ; 0x10000
    2fc0:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    2fc4:	09 81 40 f9	ldr	x9, [x8, #256]
    2fc8:	3f 05 00 b1	cmn	x9, #1
    2fcc:	81 0c 00 54	b.ne	0x315c
    2fd0:	17 85 40 f9	ldr	x23, [x8, #264]
    2fd4:	f6 32 00 91	add	x22, x23, #12
    2fd8:	e0 03 16 aa	mov	x0, x22
    2fdc:	a1 00 a0 52	mov	w1, #327680
    2fe0:	42 23 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    2fe4:	fa 0a 40 f9	ldr	x26, [x23, #16]
    2fe8:	48 07 00 91	add	x8, x26, #1
    2fec:	e8 0a 00 f9	str	x8, [x23, #16]
    2ff0:	5f 2b 00 f1	cmp	x26, #10
    2ff4:	a0 00 00 54	b.eq	0x3008
    2ff8:	da 06 00 b5	cbnz	x26, 0x30d0
    2ffc:	e8 62 00 91	add	x8, x23, #24
    3000:	e8 86 00 f9	str	x8, [x23, #264]
    3004:	45 00 00 14	b	0x3118
    3008:	ff 0f 00 f9	str	xzr, [sp, #24]
    300c:	79 00 00 b0	adrp	x25, 13 ; 0x10000
    3010:	39 33 41 f9	ldr	x25, [x25, #608] ; literal pool symbol address: _vm_page_size
    3014:	28 03 40 f9	ldr	x8, [x25]
    3018:	e9 f3 01 b2	mov	x9, #-6148914691236517206
    301c:	69 55 95 f2	movk	x9, #43691
    3020:	08 7d c9 9b	umulh	x8, x8, x9
    3024:	09 fd 44 d3	lsr	x9, x8, #4
    3028:	29 f9 7f d3	lsl	x9, x9, #1
    302c:	28 11 48 8b	add	x8, x9, x8, lsr #4
    3030:	18 f1 7d d3	lsl	x24, x8, #3
    3034:	e0 03 16 aa	mov	x0, x22
    3038:	2f 23 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    303c:	7b 00 00 b0	adrp	x27, 13 ; 0x10000
    3040:	7b e7 40 f9	ldr	x27, [x27, #456] ; literal pool symbol address: _mach_task_self_
    3044:	60 03 40 b9	ldr	w0, [x27]
    3048:	28 03 40 f9	ldr	x8, [x25]
    304c:	03 05 00 d1	sub	x3, x8, #1
    3050:	28 00 80 52	mov	w8, #1
    3054:	e8 0b 00 b9	str	w8, [sp, #8]
    3058:	68 00 80 d2	mov	x8, #3
    305c:	e8 00 c0 f2	movk	x8, #7, lsl #32
    3060:	e8 03 00 f9	str	x8, [sp]
    3064:	e1 63 00 91	add	x1, sp, #24
    3068:	e2 03 18 aa	mov	x2, x24
    306c:	24 00 80 52	mov	w4, #1
    3070:	04 20 a9 72	movk	w4, #18688, lsl #16
    3074:	05 00 80 52	mov	w5, #0
    3078:	06 00 80 d2	mov	x6, #0
    307c:	07 00 80 52	mov	w7, #0
    3080:	0e 23 00 94	bl	0xbcb8 ; symbol stub for: _mach_vm_map
    3084:	f9 03 00 aa	mov	x25, x0
    3088:	e0 03 16 aa	mov	x0, x22
    308c:	a1 00 a0 52	mov	w1, #327680
    3090:	16 23 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    3094:	f9 02 00 35	cbnz	w25, 0x30f0
    3098:	f9 86 40 f9	ldr	x25, [x23, #264]
    309c:	e8 62 00 91	add	x8, x23, #24
    30a0:	3f 03 08 eb	cmp	x25, x8
    30a4:	a0 02 00 54	b.eq	0x30f8
    30a8:	e0 03 16 aa	mov	x0, x22
    30ac:	12 23 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    30b0:	60 03 40 b9	ldr	w0, [x27]
    30b4:	e1 0f 40 f9	ldr	x1, [sp, #24]
    30b8:	e2 03 18 aa	mov	x2, x24
    30bc:	fc 22 00 94	bl	0xbcac ; symbol stub for: _mach_vm_deallocate
    30c0:	e0 03 16 aa	mov	x0, x22
    30c4:	a1 00 a0 52	mov	w1, #327680
    30c8:	08 23 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    30cc:	13 00 00 14	b	0x3118
    30d0:	68 00 00 b0	adrp	x8, 13 ; 0x10000
    30d4:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    30d8:	08 01 40 f9	ldr	x8, [x8]
    30dc:	e9 f3 01 b2	mov	x9, #-6148914691236517206
    30e0:	69 55 95 f2	movk	x9, #43691
    30e4:	08 7d c9 9b	umulh	x8, x8, x9
    30e8:	5f 13 48 eb	cmp	x26, x8, lsr #4
    30ec:	63 01 00 54	b.lo	0x3118
    30f0:	98 01 80 52	mov	w24, #12
    30f4:	0f 00 00 14	b	0x3130
    30f8:	e0 0f 40 f9	ldr	x0, [sp, #24]
    30fc:	e0 86 00 f9	str	x0, [x23, #264]
    3100:	e1 03 19 aa	mov	x1, x25
    3104:	02 1e 80 52	mov	w2, #240
    3108:	b6 22 00 94	bl	0xbbe0 ; symbol stub for: __platform_memmove
    310c:	e0 03 19 aa	mov	x0, x25
    3110:	01 1e 80 52	mov	w1, #240
    3114:	b0 22 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    3118:	18 00 80 52	mov	w24, #0
    311c:	e8 86 40 f9	ldr	x8, [x23, #264]
    3120:	09 03 80 52	mov	w9, #24
    3124:	48 23 09 9b	madd	x8, x26, x9, x8
    3128:	15 51 00 a9	stp	x21, x20, [x8]
    312c:	13 09 00 f9	str	x19, [x8, #16]
    3130:	e0 03 16 aa	mov	x0, x22
    3134:	f0 22 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    3138:	e0 03 18 aa	mov	x0, x24
    313c:	fd 7b 47 a9	ldp	x29, x30, [sp, #112]
    3140:	f4 4f 46 a9	ldp	x20, x19, [sp, #96]
    3144:	f6 57 45 a9	ldp	x22, x21, [sp, #80]
    3148:	f8 5f 44 a9	ldp	x24, x23, [sp, #64]
    314c:	fa 67 43 a9	ldp	x26, x25, [sp, #48]
    3150:	fc 6f 42 a9	ldp	x28, x27, [sp, #32]
    3154:	ff 03 02 91	add	sp, sp, #128
    3158:	c0 03 5f d6	ret
    315c:	00 01 04 91	add	x0, x8, #256
    3160:	22 00 00 90	adrp	x2, 4 ; 0x7000
    3164:	42 50 3f 91	add	x2, x2, #4052
    3168:	01 28 80 52	mov	w1, #320
    316c:	8e 22 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    3170:	f7 03 00 aa	mov	x23, x0
    3174:	98 ff ff 17	b	0x2fd4
_pthread_mutex_init:
    3178:	48 00 00 90	adrp	x8, 8 ; 0xb000
    317c:	00 1d 47 fd	ldr	d0, [x8, #3640]
    3180:	00 04 00 fd	str	d0, [x0, #8]
    3184:	01 03 00 b4	cbz	x1, 0x31e4
    3188:	28 00 40 f9	ldr	x8, [x1]
    318c:	29 08 8b 52	mov	w9, #22593
    3190:	89 aa a9 72	movk	w9, #19796, lsl #16
    3194:	1f 01 09 eb	cmp	x8, x9
    3198:	61 0a 00 54	b.ne	0x32e4
    319c:	28 08 40 b9	ldr	w8, [x1, #8]
    31a0:	08 20 00 79	strh	w8, [x0, #16]
    31a4:	28 0c 40 b9	ldr	w8, [x1, #12]
    31a8:	09 00 84 52	mov	w9, #8192
    31ac:	09 05 00 33	bfxil	w9, w8, #0, #2
    31b0:	09 0c 00 b9	str	w9, [x0, #12]
    31b4:	28 0c 40 b9	ldr	w8, [x1, #12]
    31b8:	08 09 1a 12	and	w8, w8, #0x1c0
    31bc:	08 01 09 2a	orr	w8, w8, w9
    31c0:	08 0c 00 b9	str	w8, [x0, #12]
    31c4:	29 0c 40 b9	ldr	w9, [x1, #12]
    31c8:	29 05 1e 12	and	w9, w9, #0xc
    31cc:	28 01 08 2a	orr	w8, w9, w8
    31d0:	08 0c 00 b9	str	w8, [x0, #12]
    31d4:	29 0c 40 b9	ldr	w9, [x1, #12]
    31d8:	29 05 1c 12	and	w9, w9, #0x30
    31dc:	28 01 08 2a	orr	w8, w9, w8
    31e0:	06 00 00 14	b	0x31f8
    31e4:	1f 20 00 79	strh	wzr, [x0, #16]
    31e8:	88 00 00 b0	adrp	x8, 17 ; 0x14000
    31ec:	09 05 40 b9	ldr	w9, [x8, #4]
    31f0:	08 04 84 52	mov	w8, #8224
    31f4:	28 09 1a 33	bfi	w8, w9, #6, #3
    31f8:	09 8b 8a 52	mov	w9, #21592
    31fc:	a9 aa a9 72	movk	w9, #19797, lsl #16
    3200:	1f 24 00 79	strh	wzr, [x0, #18]
    3204:	1f 05 1e 72	tst	w8, #0xc
    3208:	21 03 00 54	b.ne	0x326c
    320c:	0b 09 1a 12	and	w11, w8, #0x1c0
    3210:	ea 00 00 b0	adrp	x10, 29 ; 0x20000
    3214:	7f 01 02 71	cmp	w11, #128
    3218:	60 00 00 54	b.eq	0x3224
    321c:	7f 01 01 71	cmp	w11, #64
    3220:	a1 00 00 54	b.ne	0x3234
    3224:	4b e1 40 39	ldrb	w11, [x10, #56]
    3228:	2c 09 00 11	add	w12, w9, #2
    322c:	7f 01 00 71	cmp	w11, #0
    3230:	29 11 8c 1a	csel	w9, w9, w12, ne
    3234:	0b 19 1e 12	and	w11, w8, #0x1fc
    3238:	7f 81 02 71	cmp	w11, #160
    323c:	81 01 00 54	b.ne	0x326c
    3240:	4a e1 40 39	ldrb	w10, [x10, #56]
    3244:	0b 8b 8a 52	mov	w11, #21592
    3248:	ab aa a9 72	movk	w11, #19797, lsl #16
    324c:	6c 01 7f b2	orr	x12, x11, #0x2
    3250:	5f 01 00 71	cmp	w10, #0
    3254:	6a 11 8c 9a	csel	x10, x11, x12, ne
    3258:	5f 41 29 eb	cmp	x10, w9, uxtw
    325c:	81 00 00 54	b.ne	0x326c
    3260:	ea 00 00 b0	adrp	x10, 29 ; 0x20000
    3264:	4a 11 41 39	ldrb	w10, [x10, #68]
    3268:	08 39 0a 2a	orr	w8, w8, w10, lsl #14
    326c:	08 0c 00 b9	str	w8, [x0, #12]
    3270:	28 02 70 37	tbnz	w8, #14, 0x32b4
    3274:	0c 60 00 91	add	x12, x0, #24
    3278:	0a 9c 00 91	add	x10, x0, #39
    327c:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    3280:	0b 7c 00 91	add	x11, x0, #31
    3284:	6b f1 7d 92	and	x11, x11, #0xfffffffffffffff8
    3288:	9f 01 0b eb	cmp	x12, x11
    328c:	a0 00 00 54	b.eq	0x32a0
    3290:	08 01 15 32	orr	w8, w8, #0x800
    3294:	08 0c 00 b9	str	w8, [x0, #12]
    3298:	08 00 80 92	mov	x8, #-1
    329c:	08 0c 00 f9	str	x8, [x0, #24]
    32a0:	08 00 80 92	mov	x8, #-1
    32a4:	08 14 00 f9	str	x8, [x0, #40]
    32a8:	7f 01 00 f9	str	xzr, [x11]
    32ac:	5f 01 00 f9	str	xzr, [x10]
    32b0:	05 00 00 14	b	0x32c4
    32b4:	08 00 80 92	mov	x8, #-1
    32b8:	08 20 02 a9	stp	x8, x8, [x0, #32]
    32bc:	08 0c 00 f9	str	x8, [x0, #24]
    32c0:	1f 18 00 b9	str	wzr, [x0, #24]
    32c4:	08 00 80 52	mov	w8, #0
    32c8:	ea 03 20 aa	mvn	x10, x0
    32cc:	0a 18 00 f9	str	x10, [x0, #48]
    32d0:	09 24 07 29	stp	w9, w9, [x0, #56]
    32d4:	09 14 00 b9	str	w9, [x0, #20]
    32d8:	1f 04 00 b9	str	wzr, [x0, #4]
    32dc:	09 fc 9f 88	stlr	w9, [x0]
    32e0:	02 00 00 14	b	0x32e8
    32e4:	c8 02 80 52	mov	w8, #22
    32e8:	e0 03 08 aa	mov	x0, x8
    32ec:	c0 03 5f d6	ret
_pthread_self:
    32f0:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    32f4:	fd 03 00 91	mov	x29, sp
    32f8:	60 d0 3b d5	mrs	x0, TPIDRRO_EL0
    32fc:	08 0c 52 f8	ldr	x8, [x0, #-224]!
    3300:	09 01 00 b0	adrp	x9, 33 ; 0x24000
    3304:	29 35 40 f9	ldr	x9, [x9, #104]
    3308:	28 01 08 ca	eor	x8, x9, x8
    330c:	1f 01 00 eb	cmp	x8, x0
    3310:	61 00 00 54	b.ne	0x331c
    3314:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    3318:	c0 03 5f d6	ret
    331c:	99 21 00 94	bl	_pthread_self.cold.1
_pthread_mach_thread_np:
    3320:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    3324:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    3328:	fd 43 00 91	add	x29, sp, #16
    332c:	f3 03 00 aa	mov	x19, x0
    3330:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    3334:	08 81 03 d1	sub	x8, x8, #224
    3338:	1f 01 00 eb	cmp	x8, x0
    333c:	40 02 00 54	b.eq	0x3384
    3340:	73 04 00 b4	cbz	x19, 0x33cc
    3344:	00 01 00 b0	adrp	x0, 33 ; 0x24000
    3348:	00 10 01 91	add	x0, x0, #68
    334c:	a1 00 a0 52	mov	w1, #327680
    3350:	66 22 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    3354:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3358:	08 01 40 f9	ldr	x8, [x8]
    335c:	a8 00 00 b4	cbz	x8, 0x3370
    3360:	1f 01 13 eb	cmp	x8, x19
    3364:	00 02 00 54	b.eq	0x33a4
    3368:	08 09 40 f9	ldr	x8, [x8, #16]
    336c:	a8 ff ff b5	cbnz	x8, 0x3360
    3370:	00 01 00 b0	adrp	x0, 33 ; 0x24000
    3374:	00 10 01 91	add	x0, x0, #68
    3378:	5f 22 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    337c:	13 00 80 52	mov	w19, #0
    3380:	13 00 00 14	b	0x33cc
    3384:	68 02 40 f9	ldr	x8, [x19]
    3388:	09 01 00 b0	adrp	x9, 33 ; 0x24000
    338c:	29 35 40 f9	ldr	x9, [x9, #104]
    3390:	28 01 08 ca	eor	x8, x9, x8
    3394:	1f 01 13 eb	cmp	x8, x19
    3398:	21 02 00 54	b.ne	0x33dc
    339c:	73 fa 40 b9	ldr	w19, [x19, #248]
    33a0:	0b 00 00 14	b	0x33cc
    33a4:	68 02 40 f9	ldr	x8, [x19]
    33a8:	09 01 00 b0	adrp	x9, 33 ; 0x24000
    33ac:	29 35 40 f9	ldr	x9, [x9, #104]
    33b0:	28 01 08 ca	eor	x8, x9, x8
    33b4:	1f 01 13 eb	cmp	x8, x19
    33b8:	41 01 00 54	b.ne	0x33e0
    33bc:	73 fa 40 b9	ldr	w19, [x19, #248]
    33c0:	00 01 00 b0	adrp	x0, 33 ; 0x24000
    33c4:	00 10 01 91	add	x0, x0, #68
    33c8:	4b 22 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    33cc:	e0 03 13 aa	mov	x0, x19
    33d0:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    33d4:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    33d8:	c0 03 5f d6	ret
    33dc:	58 20 00 94	bl	_pthread_mach_thread_np.cold.1
    33e0:	57 20 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_mutexattr_init:
    33e4:	08 0c 40 b9	ldr	w8, [x0, #12]
    33e8:	89 00 00 b0	adrp	x9, 17 ; 0x14000
    33ec:	29 05 40 b9	ldr	w9, [x9, #4]
    33f0:	08 59 17 12	and	w8, w8, #0xfffffe00
    33f4:	28 09 1a 33	bfi	w8, w9, #6, #3
    33f8:	29 08 8b 52	mov	w9, #22593
    33fc:	89 aa a9 72	movk	w9, #19796, lsl #16
    3400:	09 00 00 f9	str	x9, [x0]
    3404:	08 01 1b 32	orr	w8, w8, #0x20
    3408:	1f 20 01 29	stp	wzr, w8, [x0, #8]
    340c:	00 00 80 52	mov	w0, #0
    3410:	c0 03 5f d6	ret
_pthread_mutexattr_settype:
    3414:	e8 03 00 aa	mov	x8, x0
    3418:	c0 02 80 52	mov	w0, #22
    341c:	3f 08 00 71	cmp	w1, #2
    3420:	48 01 00 54	b.hi	0x3448
    3424:	09 01 40 f9	ldr	x9, [x8]
    3428:	2a 08 8b 52	mov	w10, #22593
    342c:	8a aa a9 72	movk	w10, #19796, lsl #16
    3430:	3f 01 0a eb	cmp	x9, x10
    3434:	a1 00 00 54	b.ne	0x3448
    3438:	00 00 80 52	mov	w0, #0
    343c:	09 0d 40 b9	ldr	w9, [x8, #12]
    3440:	29 04 1e 33	bfi	w9, w1, #2, #2
    3444:	09 0d 00 b9	str	w9, [x8, #12]
    3448:	c0 03 5f d6	ret
_pthread_main_np:
    344c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    3450:	08 81 03 d1	sub	x8, x8, #224
    3454:	09 01 00 b0	adrp	x9, 33 ; 0x24000
    3458:	29 25 40 f9	ldr	x9, [x9, #72]
    345c:	3f 01 08 eb	cmp	x9, x8
    3460:	e0 17 9f 1a	cset	w0, eq
    3464:	c0 03 5f d6	ret
_pthread_equal:
    3468:	1f 00 01 eb	cmp	x0, x1
    346c:	e0 17 9f 1a	cset	w0, eq
    3470:	c0 03 5f d6	ret
_pthread_attr_init:
    3474:	48 00 00 90	adrp	x8, 8 ; 0xb000
    3478:	08 e1 37 91	add	x8, x8, #3576
    347c:	00 05 40 ad	ldp	q0, q1, [x8]
    3480:	00 04 00 ad	stp	q0, q1, [x0]
    3484:	00 05 41 ad	ldp	q0, q1, [x8, #32]
    3488:	00 04 01 ad	stp	q0, q1, [x0, #32]
    348c:	00 00 80 52	mov	w0, #0
    3490:	c0 03 5f d6	ret
_pthread_attr_setscope:
    3494:	08 00 40 f9	ldr	x8, [x0]
    3498:	c9 02 80 52	mov	w9, #22
    349c:	aa 05 80 52	mov	w10, #45
    34a0:	3f 08 00 71	cmp	w1, #2
    34a4:	4a 01 89 1a	csel	w10, w10, w9, eq
    34a8:	3f 04 00 71	cmp	w1, #1
    34ac:	ea 03 8a 1a	csel	w10, wzr, w10, eq
    34b0:	2b 88 88 52	mov	w11, #17473
    34b4:	0b 89 aa 72	movk	w11, #21576, lsl #16
    34b8:	1f 01 0b eb	cmp	x8, x11
    34bc:	40 01 89 1a	csel	w0, w10, w9, eq
    34c0:	c0 03 5f d6	ret
_pthread_attr_setdetachstate:
    34c4:	e8 03 00 aa	mov	x8, x0
    34c8:	29 04 00 51	sub	w9, w1, #1
    34cc:	c0 02 80 52	mov	w0, #22
    34d0:	3f 05 00 71	cmp	w9, #1
    34d4:	88 01 00 54	b.hi	0x3504
    34d8:	09 01 40 f9	ldr	x9, [x8]
    34dc:	2a 88 88 52	mov	w10, #17473
    34e0:	0a 89 aa 72	movk	w10, #21576, lsl #16
    34e4:	3f 01 0a eb	cmp	x9, x10
    34e8:	e1 00 00 54	b.ne	0x3504
    34ec:	00 00 80 52	mov	w0, #0
    34f0:	09 15 40 f9	ldr	x9, [x8, #40]
    34f4:	ea 03 01 2a	mov	w10, w1
    34f8:	29 dd 78 92	and	x9, x9, #0xffffffffffffff00
    34fc:	29 01 0a aa	orr	x9, x9, x10
    3500:	09 15 00 f9	str	x9, [x8, #40]
    3504:	c0 03 5f d6	ret
_pthread_attr_getschedparam:
    3508:	09 00 40 f9	ldr	x9, [x0]
    350c:	2a 88 88 52	mov	w10, #17473
    3510:	0a 89 aa 72	movk	w10, #21576, lsl #16
    3514:	3f 01 0a eb	cmp	x9, x10
    3518:	41 01 00 54	b.ne	0x3540
    351c:	e8 03 00 aa	mov	x8, x0
    3520:	09 ac 40 39	ldrb	w9, [x0, #43]
    3524:	29 01 00 37	tbnz	w9, #0, 0x3548
    3528:	00 00 80 52	mov	w0, #0
    352c:	28 01 00 b0	adrp	x8, 37 ; 0x28000
    3530:	08 41 40 39	ldrb	w8, [x8, #16]
    3534:	49 01 80 52	mov	w9, #10
    3538:	28 24 00 29	stp	w8, w9, [x1]
    353c:	c0 03 5f d6	ret
    3540:	c0 02 80 52	mov	w0, #22
    3544:	c0 03 5f d6	ret
    3548:	00 00 80 52	mov	w0, #0
    354c:	08 11 40 f9	ldr	x8, [x8, #32]
    3550:	28 00 00 f9	str	x8, [x1]
    3554:	c0 03 5f d6	ret
_pthread_main_thread_np:
    3558:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    355c:	00 25 40 f9	ldr	x0, [x8, #72]
    3560:	c0 03 5f d6	ret
_pthread_mutexattr_destroy:
    3564:	09 00 40 f9	ldr	x9, [x0]
    3568:	2a 08 8b 52	mov	w10, #22593
    356c:	8a aa a9 72	movk	w10, #19796, lsl #16
    3570:	3f 01 0a eb	cmp	x9, x10
    3574:	a1 00 00 54	b.ne	0x3588
    3578:	e8 03 00 aa	mov	x8, x0
    357c:	00 00 80 52	mov	w0, #0
    3580:	1f 01 00 f9	str	xzr, [x8]
    3584:	c0 03 5f d6	ret
    3588:	c0 02 80 52	mov	w0, #22
    358c:	c0 03 5f d6	ret
__pthread_workqueue_supported:
    3590:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    3594:	fd 03 00 91	mov	x29, sp
    3598:	28 01 00 b0	adrp	x8, 37 ; 0x28000
    359c:	00 19 40 b9	ldr	w0, [x8, #24]
    35a0:	60 00 00 34	cbz	w0, 0x35ac
    35a4:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    35a8:	c0 03 5f d6	ret
    35ac:	9b 20 00 94	bl	__pthread_workqueue_supported.cold.1
_pthread_workqueue_setup:
    35b0:	3f 10 00 f1	cmp	x1, #4
    35b4:	62 00 00 54	b.hs	0x35c0
    35b8:	c0 02 80 52	mov	w0, #22
    35bc:	c0 03 5f d6	ret
    35c0:	ff 03 01 d1	sub	sp, sp, #64
    35c4:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    35c8:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    35cc:	fd c3 00 91	add	x29, sp, #48
    35d0:	f3 03 00 aa	mov	x19, x0
    35d4:	08 04 40 b9	ldr	w8, [x0, #4]
    35d8:	1f 05 00 71	cmp	w8, #1
    35dc:	a0 00 00 54	b.eq	0x35f0
    35e0:	1f 09 00 71	cmp	w8, #2
    35e4:	c1 00 00 54	b.ne	0x35fc
    35e8:	08 06 80 52	mov	w8, #48
    35ec:	02 00 00 14	b	0x35f4
    35f0:	08 05 80 52	mov	w8, #40
    35f4:	1f 01 01 eb	cmp	x8, x1
    35f8:	69 00 00 54	b.ls	0x3604
    35fc:	c0 02 80 52	mov	w0, #22
    3600:	3a 00 00 14	b	0x36e8
    3604:	68 02 40 b9	ldr	w8, [x19]
    3608:	68 00 00 34	cbz	w8, 0x3614
    360c:	a0 05 80 52	mov	w0, #45
    3610:	36 00 00 14	b	0x36e8
    3614:	34 01 00 b0	adrp	x20, 37 ; 0x28000
    3618:	88 12 40 f9	ldr	x8, [x20, #32]
    361c:	68 00 00 b4	cbz	x8, 0x3628
    3620:	00 02 80 52	mov	w0, #16
    3624:	31 00 00 14	b	0x36e8
    3628:	28 00 80 52	mov	w8, #1
    362c:	29 01 00 b0	adrp	x9, 37 ; 0x28000
    3630:	28 a1 00 39	strb	w8, [x9, #40]
    3634:	48 00 00 90	adrp	x8, 8 ; 0xb000
    3638:	00 e1 46 fd	ldr	d0, [x8, #3520]
    363c:	e0 07 00 fd	str	d0, [sp, #8]
    3640:	60 0a c0 3d	ldr	q0, [x19, #32]
    3644:	e0 03 81 3c	stur	q0, [sp, #16]
    3648:	e1 23 00 91	add	x1, sp, #8
    364c:	00 80 80 52	mov	w0, #1024
    3650:	02 03 80 52	mov	w2, #24
    3654:	03 00 80 52	mov	w3, #0
    3658:	4a 21 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    365c:	1f 04 00 31	cmn	w0, #1
    3660:	c0 01 00 54	b.eq	0x3698
    3664:	68 a6 40 a9	ldp	x8, x9, [x19, #8]
    3668:	0a 01 00 b0	adrp	x10, 33 ; 0x24000
    366c:	48 19 00 f9	str	x8, [x10, #48]
    3670:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3674:	09 15 00 f9	str	x9, [x8, #40]
    3678:	68 0e 40 f9	ldr	x8, [x19, #24]
    367c:	88 12 00 f9	str	x8, [x20, #32]
    3680:	43 21 00 94	bl	0xbb8c ; symbol stub for: ___workq_open
    3684:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3688:	09 41 40 b9	ldr	w9, [x8, #64]
    368c:	89 02 00 34	cbz	w9, 0x36dc
    3690:	00 00 80 52	mov	w0, #0
    3694:	15 00 00 14	b	0x36e8
    3698:	68 00 00 b0	adrp	x8, 13 ; 0x10000
    369c:	08 a1 40 f9	ldr	x8, [x8, #320] ; literal pool symbol address: __os_xbs_chrooted
    36a0:	08 01 40 39	ldrb	w8, [x8]
    36a4:	48 01 00 34	cbz	w8, 0x36cc
    36a8:	e2 13 40 b9	ldr	w2, [sp, #16]
    36ac:	68 06 40 f9	ldr	x8, [x19, #8]
    36b0:	1f 01 00 f1	cmp	x8, #0
    36b4:	e3 07 9f 1a	cset	w3, ne
    36b8:	00 02 80 52	mov	w0, #16
    36bc:	01 00 80 d2	mov	x1, #0
    36c0:	30 21 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    36c4:	1f 04 00 31	cmn	w0, #1
    36c8:	e1 fc ff 54	b.ne	0x3664
    36cc:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    36d0:	08 05 40 f9	ldr	x8, [x8, #8]
    36d4:	00 01 40 b9	ldr	w0, [x8]
    36d8:	04 00 00 14	b	0x36e8
    36dc:	00 00 80 52	mov	w0, #0
    36e0:	29 00 80 52	mov	w9, #1
    36e4:	09 41 00 b9	str	w9, [x8, #64]
    36e8:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    36ec:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    36f0:	ff 03 01 91	add	sp, sp, #64
    36f4:	c0 03 5f d6	ret
_pthread_attr_getschedpolicy:
    36f8:	09 00 40 f9	ldr	x9, [x0]
    36fc:	2a 88 88 52	mov	w10, #17473
    3700:	0a 89 aa 72	movk	w10, #21576, lsl #16
    3704:	3f 01 0a eb	cmp	x9, x10
    3708:	c1 00 00 54	b.ne	0x3720
    370c:	e8 03 00 aa	mov	x8, x0
    3710:	00 00 80 52	mov	w0, #0
    3714:	08 a9 40 39	ldrb	w8, [x8, #42]
    3718:	28 00 00 b9	str	w8, [x1]
    371c:	c0 03 5f d6	ret
    3720:	c0 02 80 52	mov	w0, #22
    3724:	c0 03 5f d6	ret
__pthread_qos_class_encode:
    3728:	08 14 00 51	sub	w8, w0, #5
    372c:	08 09 88 13	ror	w8, w8, #2
    3730:	1f 21 00 71	cmp	w8, #8
    3734:	82 00 00 54	b.hs	0x3744
    3738:	69 17 80 52	mov	w9, #187
    373c:	29 25 c8 1a	lsr	w9, w9, w8
    3740:	69 00 00 37	tbnz	w9, #0, 0x374c
    3744:	48 1c 08 12	and	w8, w2, #0xff000000
    3748:	0b 00 00 14	b	0x3774
    374c:	49 00 00 90	adrp	x9, 8 ; 0xb000
    3750:	29 a1 39 91	add	x9, x9, #3688
    3754:	28 d9 68 b8	ldr	w8, [x9, w8, sxtw #2]
    3758:	49 1c 08 12	and	w9, w2, #0xff000000
    375c:	0a 10 80 52	mov	w10, #128
    3760:	48 21 c8 1a	lsl	w8, w10, w8
    3764:	2a 04 00 51	sub	w10, w1, #1
    3768:	4a 1d 00 12	and	w10, w10, #0xff
    376c:	49 01 09 2a	orr	w9, w10, w9
    3770:	08 01 09 2a	orr	w8, w8, w9
    3774:	e0 03 08 2a	mov	w0, w8
    3778:	c0 03 5f d6	ret
__pthread_workqueue_set_event_manager_priority:
    377c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    3780:	fd 03 00 91	mov	x29, sp
    3784:	e2 03 00 aa	mov	x2, x0
    3788:	00 10 80 52	mov	w0, #128
    378c:	01 00 80 d2	mov	x1, #0
    3790:	03 00 80 52	mov	w3, #0
    3794:	fb 20 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    3798:	1f 04 00 31	cmn	w0, #1
    379c:	81 00 00 54	b.ne	0x37ac
    37a0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    37a4:	08 05 40 f9	ldr	x8, [x8, #8]
    37a8:	00 01 40 b9	ldr	w0, [x8]
    37ac:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    37b0:	c0 03 5f d6	ret
_pthread_once:
    37b4:	ff 03 01 d1	sub	sp, sp, #64
    37b8:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    37bc:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    37c0:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    37c4:	fd c3 00 91	add	x29, sp, #48
    37c8:	f3 03 00 aa	mov	x19, x0
    37cc:	e0 07 00 a9	stp	x0, x1, [sp]
    37d0:	14 20 00 91	add	x20, x0, #8
    37d4:	56 97 97 52	mov	w22, #48314
    37d8:	36 16 a6 72	movk	w22, #12465, lsl #16
    37dc:	15 00 00 90	adrp	x21, 0 ; 0x3000
    37e0:	b5 b2 20 91	add	x21, x21, #2092
    37e4:		.long	0xf8bfc288
    37e8:	1f 05 00 b1	cmn	x8, #1
    37ec:	a1 00 00 54	b.ne	0x3800
    37f0:	68 02 40 f9	ldr	x8, [x19]
    37f4:	1f 01 16 eb	cmp	x8, x22
    37f8:	60 ff ff 54	b.eq	0x37e4
    37fc:	06 00 00 14	b	0x3814
    3800:	e1 03 00 91	mov	x1, sp
    3804:	e0 03 14 aa	mov	x0, x20
    3808:	e2 03 15 aa	mov	x2, x21
    380c:	e9 20 00 94	bl	0xbbb0 ; symbol stub for: __os_once
    3810:	f8 ff ff 17	b	0x37f0
    3814:	00 00 80 52	mov	w0, #0
    3818:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    381c:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    3820:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    3824:	ff 03 01 91	add	sp, sp, #64
    3828:	c0 03 5f d6	ret
___pthread_once_handler:
    382c:	ff 03 01 d1	sub	sp, sp, #64
    3830:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    3834:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    3838:	fd c3 00 91	add	x29, sp, #48
    383c:	f3 03 00 aa	mov	x19, x0
    3840:	74 d0 3b d5	mrs	x20, TPIDRRO_EL0
    3844:	68 00 00 b0	adrp	x8, 13 ; 0x10000
    3848:	08 1d 40 f9	ldr	x8, [x8, #56] ; literal pool symbol address: ___os_once_reset
    384c:	09 00 40 f9	ldr	x9, [x0]
    3850:	29 21 00 91	add	x9, x9, #8
    3854:	e8 a7 00 a9	stp	x8, x9, [sp, #8]
    3858:	88 82 52 f8	ldur	x8, [x20, #-216]
    385c:	e8 0f 00 f9	str	x8, [sp, #24]
    3860:	e8 23 00 91	add	x8, sp, #8
    3864:	88 82 12 f8	stur	x8, [x20, #-216]
    3868:	08 04 40 f9	ldr	x8, [x0, #8]
    386c:	00 01 3f d6	blr	x8
    3870:	e8 0f 40 f9	ldr	x8, [sp, #24]
    3874:	88 82 12 f8	stur	x8, [x20, #-216]
    3878:	68 02 40 f9	ldr	x8, [x19]
    387c:	a9 68 88 52	mov	w9, #17221
    3880:	c9 e9 a9 72	movk	w9, #20302, lsl #16
    3884:	09 01 00 f9	str	x9, [x8]
    3888:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    388c:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    3890:	ff 03 01 91	add	sp, sp, #64
    3894:	c0 03 5f d6	ret
_pthread_qos_max_parallelism:
    3898:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    389c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    38a0:	fd 43 00 91	add	x29, sp, #16
    38a4:	08 14 00 51	sub	w8, w0, #5
    38a8:	09 02 80 52	mov	w9, #16
    38ac:	1f 00 00 71	cmp	w0, #0
    38b0:	28 01 88 1a	csel	w8, w9, w8, eq
    38b4:	08 09 88 13	ror	w8, w8, #2
    38b8:	1f 21 00 71	cmp	w8, #8
    38bc:	82 00 00 54	b.hs	0x38cc
    38c0:	69 17 80 52	mov	w9, #187
    38c4:	29 25 c8 1a	lsr	w9, w9, w8
    38c8:	29 01 00 37	tbnz	w9, #0, 0x38ec
    38cc:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    38d0:	08 05 40 f9	ldr	x8, [x8, #8]
    38d4:	c9 02 80 52	mov	w9, #22
    38d8:	09 01 00 b9	str	w9, [x8]
    38dc:	00 00 80 12	mov	w0, #-1
    38e0:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    38e4:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    38e8:	c0 03 5f d6	ret
    38ec:	3f 10 00 f1	cmp	x1, #4
    38f0:	62 04 00 54	b.hs	0x397c
    38f4:	49 00 00 90	adrp	x9, 8 ; 0xb000
    38f8:	29 21 3a 91	add	x9, x9, #3720
    38fc:	28 d9 68 f8	ldr	x8, [x9, w8, sxtw #3]
    3900:	69 00 00 b0	adrp	x9, 13 ; 0x10000
    3904:	29 91 40 f9	ldr	x9, [x9, #288] ; literal pool symbol address: __os_alloc_once_table
    3908:	2a 81 40 f9	ldr	x10, [x9, #256]
    390c:	5f 05 00 b1	cmn	x10, #1
    3910:	a1 03 00 54	b.ne	0x3984
    3914:	20 85 40 f9	ldr	x0, [x9, #264]
    3918:	09 04 08 8b	add	x9, x0, x8, lsl #1
    391c:	2a 41 04 91	add	x10, x9, #272
    3920:	2b b1 04 91	add	x11, x9, #300
    3924:	3f 00 7f f2	tst	x1, #0x2
    3928:	8c 00 80 52	mov	w12, #4
    392c:	8c 15 9f 9a	csinc	x12, x12, xzr, ne
    3930:	4a 01 8b 9a	csel	x10, x10, x11, eq
    3934:	29 79 04 91	add	x9, x9, #286
    3938:	3f 00 00 72	tst	w1, #0x1
    393c:	93 01 9f 9a	csel	x19, x12, xzr, eq
    3940:	54 01 89 9a	csel	x20, x10, x9, eq
    3944:	80 02 40 79	ldrh	w0, [x20]
    3948:	e9 ff 9f 52	mov	w9, #65535
    394c:	1f 00 09 6b	cmp	w0, w9
    3950:	81 fc ff 54	b.ne	0x38e0
    3954:	00 00 81 52	mov	w0, #2048
    3958:	e1 03 08 aa	mov	x1, x8
    395c:	e2 03 13 aa	mov	x2, x19
    3960:	03 00 80 d2	mov	x3, #0
    3964:	30 20 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    3968:	1f 04 00 31	cmn	w0, #1
    396c:	00 02 00 54	b.eq	0x39ac
    3970:	00 3c 00 12	and	w0, w0, #0xffff
    3974:	80 02 00 79	strh	w0, [x20]
    3978:	da ff ff 17	b	0x38e0
    397c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    3980:	d4 ff ff 17	b	0x38d0
    3984:	20 01 04 91	add	x0, x9, #256
    3988:	22 00 00 90	adrp	x2, 4 ; 0x7000
    398c:	42 50 3f 91	add	x2, x2, #4052
    3990:	f3 03 01 aa	mov	x19, x1
    3994:	01 28 80 52	mov	w1, #320
    3998:	f4 03 08 aa	mov	x20, x8
    399c:	82 20 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    39a0:	e8 03 14 aa	mov	x8, x20
    39a4:	e1 03 13 aa	mov	x1, x19
    39a8:	dc ff ff 17	b	0x3918
    39ac:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    39b0:	08 05 40 f9	ldr	x8, [x8, #8]
    39b4:	00 01 40 b9	ldr	w0, [x8]
    39b8:	1f 58 00 71	cmp	w0, #22
    39bc:	60 00 00 54	b.eq	0x39c8
    39c0:	1f b4 00 71	cmp	w0, #45
    39c4:	01 02 00 54	b.ne	0x3a04
    39c8:	f3 00 00 37	tbnz	w19, #0, 0x39e4
    39cc:	7f 12 00 f1	cmp	x19, #4
    39d0:	22 01 00 54	b.hs	0x39f4
    39d4:	e8 4f 70 b2	mov	x8, #68719411200
    39d8:	a8 06 98 f2	movk	x8, #49205
    39dc:	00 01 40 39	ldrb	w0, [x8]
    39e0:	e5 ff ff 17	b	0x3974
    39e4:	e8 4f 70 b2	mov	x8, #68719411200
    39e8:	a8 06 98 f2	movk	x8, #49205
    39ec:	00 05 40 39	ldrb	w0, [x8, #1]
    39f0:	e1 ff ff 17	b	0x3974
    39f4:	1f b4 00 71	cmp	w0, #45
    39f8:	81 00 00 54	b.ne	0x3a08
    39fc:	00 00 80 52	mov	w0, #0
    3a00:	dd ff ff 17	b	0x3974
    3a04:	c5 1f 00 94	bl	_pthread_qos_max_parallelism.cold.1
    3a08:	20 00 20 d4	brk	#0x1
__pthread_workqueue_addthreads:
    3a0c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    3a10:	fd 03 00 91	mov	x29, sp
    3a14:	28 01 00 b0	adrp	x8, 37 ; 0x28000
    3a18:	08 11 40 f9	ldr	x8, [x8, #32]
    3a1c:	88 01 00 b4	cbz	x8, 0x3a4c
    3a20:	e2 03 00 aa	mov	x2, x0
    3a24:	23 78 02 12	and	w3, w1, #0xdfffffff
    3a28:	00 04 80 52	mov	w0, #32
    3a2c:	01 00 80 d2	mov	x1, #0
    3a30:	54 20 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    3a34:	1f 04 00 31	cmn	w0, #1
    3a38:	c1 00 00 54	b.ne	0x3a50
    3a3c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    3a40:	08 05 40 f9	ldr	x8, [x8, #8]
    3a44:	00 01 40 b9	ldr	w0, [x8]
    3a48:	02 00 00 14	b	0x3a50
    3a4c:	20 00 80 52	mov	w0, #1
    3a50:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    3a54:	c0 03 5f d6	ret
__pthread_wqthread:
    3a58:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    3a5c:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    3a60:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    3a64:	fd 83 00 91	add	x29, sp, #32
    3a68:	f4 03 05 aa	mov	x20, x5
    3a6c:	f6 03 04 aa	mov	x22, x4
    3a70:	f5 03 03 aa	mov	x21, x3
    3a74:	f3 03 00 aa	mov	x19, x0
    3a78:	84 00 88 37	tbnz	w4, #17, 0x3a88
    3a7c:	e0 03 13 aa	mov	x0, x19
    3a80:	e3 03 16 aa	mov	x3, x22
    3a84:	62 00 00 94	bl	__pthread_wqthread_setup
    3a88:	76 01 b8 37	tbnz	w22, #23, 0x3ab4
    3a8c:	7f 92 02 39	strb	wzr, [x19, #164]
    3a90:	c8 6a 1b 53	lsl	w8, w22, #5
    3a94:	08 01 08 12	and	w8, w8, #0x1000000
    3a98:	96 01 a0 37	tbnz	w22, #20, 0x3ac8
    3a9c:	c9 7e 10 53	lsr	w9, w22, #16
    3aa0:	28 01 01 33	bfi	w8, w9, #31, #1
    3aa4:	76 01 70 37	tbnz	w22, #14, 0x3ad0
    3aa8:	f6 0a 78 36	tbz	w22, #15, 0x3c04
    3aac:	08 3d 00 32	orr	w8, w8, #0xffff
    3ab0:	10 00 00 14	b	0x3af0
    3ab4:	28 00 80 52	mov	w8, #1
    3ab8:	68 92 02 39	strb	w8, [x19, #164]
    3abc:	e8 1f 81 52	mov	w8, #2303
    3ac0:	08 80 a0 72	movk	w8, #1024, lsl #16
    3ac4:	0b 00 00 14	b	0x3af0
    3ac8:	08 01 07 32	orr	w8, w8, #0x2000000
    3acc:	09 00 00 14	b	0x3af0
    3ad0:	c9 1e 00 12	and	w9, w22, #0xff
    3ad4:	29 05 00 51	sub	w9, w9, #1
    3ad8:	0a 10 80 52	mov	w10, #128
    3adc:	4a 21 d6 1a	lsl	w10, w10, w22
    3ae0:	4a 01 08 2a	orr	w10, w10, w8
    3ae4:	4a 1d 00 32	orr	w10, w10, #0xff
    3ae8:	3f 19 00 71	cmp	w9, #6
    3aec:	48 31 88 1a	csel	w8, w10, w8, lo
    3af0:	e9 03 08 2a	mov	w9, w8
    3af4:	69 82 00 f9	str	x9, [x19, #256]
    3af8:	9f 06 00 31	cmn	w20, #1
    3afc:	c0 07 00 54	b.eq	0x3bf4
    3b00:	56 02 b0 37	tbnz	w22, #22, 0x3b48
    3b04:	16 04 98 37	tbnz	w22, #19, 0x3b84
    3b08:	c9 72 1d 53	lsl	w9, w22, #3
    3b0c:	29 01 05 12	and	w9, w9, #0x8000000
    3b10:	00 01 09 2a	orr	w0, w8, w9
    3b14:	28 01 00 b0	adrp	x8, 37 ; 0x28000
    3b18:	08 11 40 f9	ldr	x8, [x8, #32]
    3b1c:	68 02 09 a9	stp	x8, x0, [x19, #144]
    3b20:	7f a2 00 b9	str	wzr, [x19, #160]
    3b24:	29 01 00 b0	adrp	x9, 37 ; 0x28000
    3b28:	29 a1 40 39	ldrb	w9, [x9, #40]
    3b2c:	3f 05 00 71	cmp	w9, #1
    3b30:	61 06 00 54	b.ne	0x3bfc
    3b34:	00 01 3f d6	blr	x8
    3b38:	80 00 80 52	mov	w0, #4
    3b3c:	01 00 80 d2	mov	x1, #0
    3b40:	02 00 80 52	mov	w2, #0
    3b44:	1d 00 00 14	b	0x3bb8
    3b48:	a0 22 00 d1	sub	x0, x21, #8
    3b4c:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3b50:	08 15 40 f9	ldr	x8, [x8, #40]
    3b54:	f6 03 13 aa	mov	x22, x19
    3b58:	d5 8e 09 f8	str	x21, [x22, #152]!
    3b5c:	c8 82 1f f8	stur	x8, [x22, #-8]
    3b60:	f5 03 16 aa	mov	x21, x22
    3b64:	b4 8e 00 b8	str	w20, [x21, #8]!
    3b68:	e1 03 16 aa	mov	x1, x22
    3b6c:	e2 03 15 aa	mov	x2, x21
    3b70:	00 01 3f d6	blr	x8
    3b74:	c1 02 40 f9	ldr	x1, [x22]
    3b78:	a2 02 40 b9	ldr	w2, [x21]
    3b7c:	00 20 80 52	mov	w0, #256
    3b80:	0e 00 00 14	b	0x3bb8
    3b84:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3b88:	08 19 40 f9	ldr	x8, [x8, #48]
    3b8c:	f6 03 13 aa	mov	x22, x19
    3b90:	d5 8e 09 f8	str	x21, [x22, #152]!
    3b94:	c8 82 1f f8	stur	x8, [x22, #-8]
    3b98:	f5 03 16 aa	mov	x21, x22
    3b9c:	b4 8e 00 b8	str	w20, [x21, #8]!
    3ba0:	e0 03 16 aa	mov	x0, x22
    3ba4:	e1 03 15 aa	mov	x1, x21
    3ba8:	00 01 3f d6	blr	x8
    3bac:	c1 02 40 f9	ldr	x1, [x22]
    3bb0:	a2 02 40 b9	ldr	w2, [x21]
    3bb4:	00 08 80 52	mov	w0, #64
    3bb8:	03 00 80 52	mov	w3, #0
    3bbc:	f1 1f 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    3bc0:	68 ae 80 b9	ldrsw	x8, [x19, #172]
    3bc4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    3bc8:	54 00 00 b0	adrp	x20, 9 ; 0xc000
    3bcc:	94 7a 0c 91	add	x20, x20, #798 ; literal pool for: "BUG IN LIBPTHREAD: __workq_kernreturn returned"
    3bd0:	95 00 00 b0	adrp	x21, 17 ; 0x14000
    3bd4:	b5 22 00 91	add	x21, x21, #8
    3bd8:	b4 06 00 f9	str	x20, [x21, #8]
    3bdc:	a8 1e 00 f9	str	x8, [x21, #56]
    3be0:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    3be4:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    3be8:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    3bec:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    3bf0:	c0 03 5f d6	ret
    3bf4:	e0 03 13 aa	mov	x0, x19
    3bf8:	f7 04 00 94	bl	__pthread_wqthread_exit
    3bfc:	45 15 00 94	bl	__pthread_wqthread_legacy_worker_wrap
    3c00:	ce ff ff 17	b	0x3b38
    3c04:	e0 03 16 aa	mov	x0, x22
    3c08:	fa 1e 00 94	bl	__pthread_wqthread.cold.1
__pthread_wqthread_setup:
    3c0c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    3c10:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    3c14:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    3c18:	fd 83 00 91	add	x29, sp, #32
    3c1c:	68 00 00 b0	adrp	x8, 13 ; 0x10000
    3c20:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    3c24:	09 01 40 f9	ldr	x9, [x8]
    3c28:	6a 00 00 b0	adrp	x10, 13 ; 0x10000
    3c2c:	4a 2d 41 f9	ldr	x10, [x10, #600] ; literal pool symbol address: _vm_page_mask
    3c30:	0b 00 09 8b	add	x11, x0, x9
    3c34:	4a 01 40 f9	ldr	x10, [x10]
    3c38:	6b 05 00 d1	sub	x11, x11, #1
    3c3c:	0c 01 00 b0	adrp	x12, 33 ; 0x24000
    3c40:	8d 35 40 f9	ldr	x13, [x12, #104]
    3c44:	ad 01 00 ca	eor	x13, x13, x0
    3c48:	0d 00 00 f9	str	x13, [x0]
    3c4c:	ed 03 09 cb	neg	x13, x9
    3c50:	6b 01 0d 8a	and	x11, x11, x13
    3c54:	0d 1c 83 52	mov	w13, #6368
    3c58:	0e b0 02 91	add	x14, x0, #172
    3c5c:	00 38 0e a9	stp	x0, x14, [x0, #224]
    3c60:	ee 1f 81 52	mov	w14, #2303
    3c64:	0e 80 00 f9	str	x14, [x0, #256]
    3c68:	ee 03 2a 2a	mvn	w14, w10
    3c6c:	ce 7d 40 93	sxtw	x14, w14
    3c70:	4a 01 0d 8b	add	x10, x10, x13
    3c74:	ca 01 0a 8a	and	x10, x14, x10
    3c78:	8c 35 40 f9	ldr	x12, [x12, #104]
    3c7c:	49 00 09 cb	sub	x9, x2, x9
    3c80:	6b 01 09 cb	sub	x11, x11, x9
    3c84:	0c 8c 00 f9	str	x12, [x0, #280]
    3c88:	6a 01 0a 8b	add	x10, x11, x10
    3c8c:	0b c4 40 39	ldrb	w11, [x0, #49]
    3c90:	1f 48 00 b9	str	wzr, [x0, #72]
    3c94:	00 08 0b a9	stp	x0, x2, [x0, #176]
    3c98:	09 28 0c a9	stp	x9, x10, [x0, #192]
    3c9c:	08 01 40 f9	ldr	x8, [x8]
    3ca0:	08 68 00 f9	str	x8, [x0, #208]
    3ca4:	48 1f 80 52	mov	w8, #250
    3ca8:	68 01 08 0a	and	w8, w11, w8
    3cac:	09 9c 40 79	ldrh	w9, [x0, #78]
    3cb0:	2a 00 80 52	mov	w10, #1
    3cb4:	0a c0 00 39	strb	w10, [x0, #48]
    3cb8:	2a 01 00 b0	adrp	x10, 37 ; 0x28000
    3cbc:	4a 41 40 39	ldrb	w10, [x10, #16]
    3cc0:	4b 01 80 52	mov	w11, #10
    3cc4:	0a 2c 07 29	stp	w10, w11, [x0, #56]
    3cc8:	6a 00 80 52	mov	w10, #3
    3ccc:	0a 4c 01 79	strh	w10, [x0, #166]
    3cd0:	01 f8 00 b9	str	w1, [x0, #248]
    3cd4:	0a 20 9e 52	mov	w10, #61696
    3cd8:	29 01 0a 0a	and	w9, w9, w10
    3cdc:	2a 80 80 52	mov	w10, #1025
    3ce0:	29 01 0a 2a	orr	w9, w9, w10
    3ce4:	09 9c 00 79	strh	w9, [x0, #78]
    3ce8:	08 c4 00 39	strb	w8, [x0, #49]
    3cec:	e3 05 a8 36	tbz	w3, #21, 0x3da8
    3cf0:	f4 03 01 aa	mov	x20, x1
    3cf4:	f3 03 00 aa	mov	x19, x0
    3cf8:	96 1f 00 94	bl	0xbb50 ; symbol stub for: ___thread_selfid
    3cfc:	60 6e 00 f9	str	x0, [x19, #216]
    3d00:	1f 04 00 b1	cmn	x0, #1
    3d04:	60 06 00 54	b.eq	0x3dd0
    3d08:	15 01 00 b0	adrp	x21, 33 ; 0x24000
    3d0c:	b5 12 01 91	add	x21, x21, #68
    3d10:	e0 03 15 aa	mov	x0, x21
    3d14:	a1 00 a0 52	mov	w1, #327680
    3d18:	e2 03 14 aa	mov	x2, x20
    3d1c:	f0 1f 00 94	bl	0xbcdc ; symbol stub for: _os_unfair_lock_lock_no_tsd
    3d20:	e8 03 13 aa	mov	x8, x19
    3d24:	1f 0d 01 f8	str	xzr, [x8, #16]!
    3d28:	09 01 00 b0	adrp	x9, 33 ; 0x24000
    3d2c:	2a 05 40 f9	ldr	x10, [x9, #8]
    3d30:	6a 0e 00 f9	str	x10, [x19, #24]
    3d34:	53 01 00 f9	str	x19, [x10]
    3d38:	28 05 00 f9	str	x8, [x9, #8]
    3d3c:	08 01 00 b0	adrp	x8, 33 ; 0x24000
    3d40:	09 1d 40 b9	ldr	w9, [x8, #28]
    3d44:	29 05 00 11	add	w9, w9, #1
    3d48:	09 1d 00 b9	str	w9, [x8, #28]
    3d4c:	e0 03 15 aa	mov	x0, x21
    3d50:	e1 03 14 aa	mov	x1, x20
    3d54:	eb 1f 00 94	bl	0xbd00 ; symbol stub for: _os_unfair_lock_unlock_no_tsd
    3d58:	f4 00 00 b0	adrp	x20, 29 ; 0x20000
    3d5c:	88 1a 40 f9	ldr	x8, [x20, #48]
    3d60:	68 00 00 b4	cbz	x8, 0x3d6c
    3d64:	e0 03 13 aa	mov	x0, x19
    3d68:	7c 15 00 94	bl	__pthread_introspection_hook_callout_thread_create
    3d6c:	68 fa 40 b9	ldr	w8, [x19, #248]
    3d70:	09 05 00 11	add	w9, w8, #1
    3d74:	3f 05 00 71	cmp	w9, #1
    3d78:	c9 03 00 54	b.ls	0x3df0
    3d7c:	88 1a 40 f9	ldr	x8, [x20, #48]
    3d80:	c8 00 00 b4	cbz	x8, 0x3d98
    3d84:	e0 03 13 aa	mov	x0, x19
    3d88:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    3d8c:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    3d90:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    3d94:	fe 15 00 14	b	__pthread_introspection_hook_callout_thread_start
    3d98:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    3d9c:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    3da0:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    3da4:	c0 03 5f d6	ret
    3da8:	68 7c 40 93	sxtw	x8, w3
    3dac:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    3db0:	54 00 00 90	adrp	x20, 8 ; 0xb000
    3db4:	94 82 3d 91	add	x20, x20, #3936 ; literal pool for: "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel"
    3db8:	95 00 00 b0	adrp	x21, 17 ; 0x14000
    3dbc:	b5 22 00 91	add	x21, x21, #8
    3dc0:	b4 06 00 f9	str	x20, [x21, #8]
    3dc4:	a8 1e 00 f9	str	x8, [x21, #56]
    3dc8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    3dcc:	20 00 20 d4	brk	#0x1
    3dd0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    3dd4:	54 00 00 b0	adrp	x20, 9 ; 0xc000
    3dd8:	94 c6 13 91	add	x20, x20, #1265 ; literal pool for: "BUG IN LIBPTHREAD: failed to set thread_id"
    3ddc:	95 00 00 b0	adrp	x21, 17 ; 0x14000
    3de0:	b5 22 00 91	add	x21, x21, #8
    3de4:	b4 06 00 f9	str	x20, [x21, #8]
    3de8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    3dec:	20 00 20 d4	brk	#0x1
    3df0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    3df4:	54 00 00 b0	adrp	x20, 9 ; 0xc000
    3df8:	94 3a 0f 91	add	x20, x20, #974 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak"
    3dfc:	95 00 00 b0	adrp	x21, 17 ; 0x14000
    3e00:	b5 22 00 91	add	x21, x21, #8
    3e04:	b4 06 00 f9	str	x20, [x21, #8]
    3e08:	a8 1e 00 f9	str	x8, [x21, #56]
    3e0c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    3e10:	20 00 20 d4	brk	#0x1
_pthread_rwlock_rdlock:
    3e14:	08 00 40 f9	ldr	x8, [x0]
    3e18:	69 89 89 52	mov	w9, #19531
    3e1c:	e9 4a aa 72	movk	w9, #21079, lsl #16
    3e20:	1f 01 09 eb	cmp	x8, x9
    3e24:	81 03 00 54	b.ne	0x3e94
    3e28:	08 bc 00 91	add	x8, x0, #47
    3e2c:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    3e30:	0d 01 40 f9	ldr	x13, [x8]
    3e34:	0d 03 08 37	tbnz	w13, #1, 0x3e94
    3e38:	09 05 40 f9	ldr	x9, [x8, #8]
    3e3c:	2c 81 cd 93	extr	x12, x9, x13, #32
    3e40:	29 5d 18 12	and	w9, w9, #0xffffff00
    3e44:	aa 00 80 52	mov	w10, #5
    3e48:	0b 20 c0 d2	mov	x11, #1099511627776
    3e4c:	ae 01 0a 0a	and	w14, w13, w10
    3e50:	2e 02 00 35	cbnz	w14, 0x3e94
    3e54:	ae 01 09 4b	sub	w14, w13, w9
    3e58:	df 05 04 31	cmn	w14, #257
    3e5c:	c8 01 00 54	b.hi	0x3e94
    3e60:	ee 03 0d 2a	mov	w14, w13
    3e64:	ce 81 0c aa	orr	x14, x14, x12, lsl #32
    3e68:	ad 79 19 12	and	w13, w13, #0xffffffbf
    3e6c:	ad 01 04 11	add	w13, w13, #256
    3e70:	8d 7d 60 b3	bfi	x13, x12, #32, #32
    3e74:	ac 01 0b 8b	add	x12, x13, x11
    3e78:	ed 03 0e aa	mov	x13, x14
    3e7c:		.long	0xc8ed7d0c
    3e80:	ac fd 60 d3	lsr	x12, x13, #32
    3e84:	bf 01 0e eb	cmp	x13, x14
    3e88:	21 fe ff 54	b.ne	0x3e4c
    3e8c:	00 00 80 52	mov	w0, #0
    3e90:	c0 03 5f d6	ret
    3e94:	21 00 80 52	mov	w1, #1
    3e98:	02 00 80 52	mov	w2, #0
    3e9c:	01 00 00 14	b	__pthread_rwlock_lock_slow
__pthread_rwlock_lock_slow:
    3ea0:	ff 03 02 d1	sub	sp, sp, #128
    3ea4:	fc 6f 02 a9	stp	x28, x27, [sp, #32]
    3ea8:	fa 67 03 a9	stp	x26, x25, [sp, #48]
    3eac:	f8 5f 04 a9	stp	x24, x23, [sp, #64]
    3eb0:	f6 57 05 a9	stp	x22, x21, [sp, #80]
    3eb4:	f4 4f 06 a9	stp	x20, x19, [sp, #96]
    3eb8:	fd 7b 07 a9	stp	x29, x30, [sp, #112]
    3ebc:	fd c3 01 91	add	x29, sp, #112
    3ec0:	f9 03 02 aa	mov	x25, x2
    3ec4:	f3 03 01 aa	mov	x19, x1
    3ec8:	f8 03 00 aa	mov	x24, x0
    3ecc:	08 00 40 f9	ldr	x8, [x0]
    3ed0:	69 89 89 52	mov	w9, #19531
    3ed4:	e9 4a aa 72	movk	w9, #21079, lsl #16
    3ed8:	1f 01 09 eb	cmp	x8, x9
    3edc:	80 00 00 54	b.eq	0x3eec
    3ee0:	e0 03 18 aa	mov	x0, x24
    3ee4:	a0 00 00 94	bl	__pthread_rwlock_check_init_slow
    3ee8:	c0 11 00 35	cbnz	w0, 0x4120
    3eec:	08 bf 00 91	add	x8, x24, #47
    3ef0:	16 ed 7c 92	and	x22, x8, #0xfffffffffffffff0
    3ef4:	c0 06 40 a9	ldp	x0, x1, [x22]
    3ef8:	1b fc 60 d3	lsr	x27, x0, #32
    3efc:	37 fc 60 d3	lsr	x23, x1, #32
    3f00:	60 7f 60 b3	bfi	x0, x27, #32, #32
    3f04:	e1 7e 60 b3	bfi	x1, x23, #32, #32
    3f08:	f4 03 00 aa	mov	x20, x0
    3f0c:	f5 03 01 aa	mov	x21, x1
    3f10:		.long	0x48347ec0
    3f14:	9b fe 60 d3	lsr	x27, x20, #32
    3f18:	b7 fe 60 d3	lsr	x23, x21, #32
    3f1c:	bf 02 01 eb	cmp	x21, x1
    3f20:	80 02 40 fa	ccmp	x20, x0, #0, eq
    3f24:	e0 03 14 aa	mov	x0, x20
    3f28:	e1 03 15 aa	mov	x1, x21
    3f2c:	a1 fe ff 54	b.ne	0x3f00
    3f30:	08 7f 00 91	add	x8, x24, #31
    3f34:	09 f1 7d 92	and	x9, x8, #0xfffffffffffffff8
    3f38:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    3f3c:	0a 81 5f f8	ldur	x10, [x8, #-8]
    3f40:	d4 00 08 36	tbz	w20, #1, 0x3f58
    3f44:	28 01 40 f9	ldr	x8, [x9]
    3f48:	1f 01 0a eb	cmp	x8, x10
    3f4c:	61 00 00 54	b.ne	0x3f58
    3f50:	60 01 80 52	mov	w0, #11
    3f54:	73 00 00 14	b	0x4120
    3f58:	ea 27 00 a9	stp	x10, x9, [sp]
    3f5c:	f8 0b 00 f9	str	x24, [sp, #16]
    3f60:	f9 1f 00 b9	str	w25, [sp, #28]
    3f64:	39 03 00 52	eor	w25, w25, #0x1
    3f68:	f8 03 14 aa	mov	x24, x20
    3f6c:	a8 00 80 52	mov	w8, #5
    3f70:	1f 03 08 6a	tst	w24, w8
    3f74:	e8 17 9f 1a	cset	w8, eq
    3f78:	1c 1b 06 53	ubfx	w28, w24, #6, #1
    3f7c:	7f 02 00 71	cmp	w19, #0
    3f80:	0a 11 9c 1a	csel	w10, w8, w28, ne
    3f84:	28 03 0a 2a	orr	w8, w25, w10
    3f88:	1f 05 00 71	cmp	w8, #1
    3f8c:	c1 04 00 54	b.ne	0x4024
    3f90:	1a 00 80 52	mov	w26, #0
    3f94:	e8 03 17 aa	mov	x8, x23
    3f98:	e1 03 15 aa	mov	x1, x21
    3f9c:	e9 03 1b aa	mov	x9, x27
    3fa0:	e0 03 18 aa	mov	x0, x24
    3fa4:	8a 05 00 36	tbz	w10, #0, 0x4054
    3fa8:	93 07 00 34	cbz	w19, 0x4098
    3fac:	2a 5c 18 12	and	w10, w1, #0xffffff00
    3fb0:	0a 00 0a 4b	sub	w10, w0, w10
    3fb4:	5f 01 04 31	cmn	w10, #256
    3fb8:	43 08 00 54	b.lo	0x40c0
    3fbc:	5f 03 10 71	cmp	w26, #1024
    3fc0:	e0 0a 00 54	b.eq	0x411c
    3fc4:	27 02 00 94	bl	_sched_yield
    3fc8:	c2 0e 40 a9	ldp	x2, x3, [x22]
    3fcc:	69 80 c2 93	extr	x9, x3, x2, #32
    3fd0:	68 fc 60 d3	lsr	x8, x3, #32
    3fd4:	22 7d 60 b3	bfi	x2, x9, #32, #32
    3fd8:	03 7d 60 b3	bfi	x3, x8, #32, #32
    3fdc:	e0 03 02 aa	mov	x0, x2
    3fe0:	e1 03 03 aa	mov	x1, x3
    3fe4:		.long	0x48207ec2
    3fe8:	3f 00 03 eb	cmp	x1, x3
    3fec:	00 00 42 fa	ccmp	x0, x2, #0, eq
    3ff0:	09 fc 60 d3	lsr	x9, x0, #32
    3ff4:	28 fc 60 d3	lsr	x8, x1, #32
    3ff8:	e2 03 00 aa	mov	x2, x0
    3ffc:	e3 03 01 aa	mov	x3, x1
    4000:	a1 fe ff 54	b.ne	0x3fd4
    4004:	5a 07 00 11	add	w26, w26, #1
    4008:	aa 00 80 52	mov	w10, #5
    400c:	1f 00 0a 6a	tst	w0, w10
    4010:	ea 17 9f 1a	cset	w10, eq
    4014:	2b 17 9f 1a	csinc	w11, w25, wzr, ne
    4018:	7f 05 00 71	cmp	w11, #1
    401c:	40 fc ff 54	b.eq	0x3fa4
    4020:	05 00 00 14	b	0x4034
    4024:	e9 03 1b aa	mov	x9, x27
    4028:	e0 03 18 aa	mov	x0, x24
    402c:	e8 03 17 aa	mov	x8, x23
    4030:	e1 03 15 aa	mov	x1, x21
    4034:	1c 00 80 52	mov	w28, #0
    4038:	ea 03 00 2a	mov	w10, w0
    403c:	4a 81 09 aa	orr	x10, x10, x9, lsl #32
    4040:	ed 03 01 2a	mov	w13, w1
    4044:	eb 03 00 aa	mov	x11, x0
    4048:	ec 03 09 aa	mov	x12, x9
    404c:	a3 81 08 aa	orr	x3, x13, x8, lsl #32
    4050:	24 00 00 14	b	0x40e0
    4054:	aa 00 80 52	mov	w10, #5
    4058:	0a 00 0a 2a	orr	w10, w0, w10
    405c:	0b 78 19 12	and	w11, w0, #0xffffffbf
    4060:	7f 02 00 71	cmp	w19, #0
    4064:	6a 11 8a 1a	csel	w10, w11, w10, ne
    4068:	4b 01 04 11	add	w11, w10, #256
    406c:	2a 19 1f 12	and	w10, w9, #0xfe
    4070:	0c 5c 18 12	and	w12, w0, #0xffffff00
    4074:	4a 01 0c 2a	orr	w10, w10, w12
    4078:	3f 01 00 72	tst	w9, #0x1
    407c:	fc 03 9f 1a	csel	w28, wzr, wzr, eq
    4080:	2c 01 8a 1a	csel	w12, w9, w10, eq
    4084:	ea 03 00 2a	mov	w10, w0
    4088:	4a 81 09 aa	orr	x10, x10, x9, lsl #32
    408c:	e9 03 01 2a	mov	w9, w1
    4090:	23 81 08 aa	orr	x3, x9, x8, lsl #32
    4094:	13 00 00 14	b	0x40e0
    4098:	e8 03 18 2a	mov	w8, w24
    409c:	0a 81 1b aa	orr	x10, x8, x27, lsl #32
    40a0:	68 10 80 52	mov	w8, #131
    40a4:	18 1d 00 33	bfxil	w24, w8, #0, #8
    40a8:	eb 03 15 2a	mov	w11, w21
    40ac:	e8 03 17 aa	mov	x8, x23
    40b0:	e1 03 15 aa	mov	x1, x21
    40b4:	e9 03 1b aa	mov	x9, x27
    40b8:	63 81 17 aa	orr	x3, x11, x23, lsl #32
    40bc:	07 00 00 14	b	0x40d8
    40c0:	ea 03 00 2a	mov	w10, w0
    40c4:	4a 81 09 aa	orr	x10, x10, x9, lsl #32
    40c8:	eb 03 01 2a	mov	w11, w1
    40cc:	18 78 19 12	and	w24, w0, #0xffffffbf
    40d0:	3c 00 80 52	mov	w28, #1
    40d4:	63 81 08 aa	orr	x3, x11, x8, lsl #32
    40d8:	0b 03 04 11	add	w11, w24, #256
    40dc:	2c 01 04 11	add	w12, w9, #256
    40e0:	e9 03 0b 2a	mov	w9, w11
    40e4:	22 81 0c aa	orr	x2, x9, x12, lsl #32
    40e8:	f8 03 0a aa	mov	x24, x10
    40ec:		.long	0xc8f87ec2
    40f0:	1b ff 60 d3	lsr	x27, x24, #32
    40f4:	f5 03 01 aa	mov	x21, x1
    40f8:	f7 03 08 aa	mov	x23, x8
    40fc:	1f 03 0a eb	cmp	x24, x10
    4100:	61 f3 ff 54	b.ne	0x3f6c
    4104:	fc 01 00 34	cbz	w28, 0x4140
    4108:	b3 02 00 37	tbnz	w19, #0, 0x415c
    410c:	00 00 80 52	mov	w0, #0
    4110:	e9 23 40 a9	ldp	x9, x8, [sp]
    4114:	09 01 00 f9	str	x9, [x8]
    4118:	02 00 00 14	b	0x4120
    411c:	60 04 80 52	mov	w0, #35
    4120:	fd 7b 47 a9	ldp	x29, x30, [sp, #112]
    4124:	f4 4f 46 a9	ldp	x20, x19, [sp, #96]
    4128:	f6 57 45 a9	ldp	x22, x21, [sp, #80]
    412c:	f8 5f 44 a9	ldp	x24, x23, [sp, #64]
    4130:	fa 67 43 a9	ldp	x26, x25, [sp, #48]
    4134:	fc 6f 42 a9	ldp	x28, x27, [sp, #32]
    4138:	ff 03 02 91	add	sp, sp, #128
    413c:	c0 03 5f d6	ret
    4140:	e8 1f 40 b9	ldr	w8, [sp, #28]
    4144:	68 00 00 36	tbz	w8, #0, 0x4150
    4148:	00 02 80 52	mov	w0, #16
    414c:	f5 ff ff 17	b	0x4120
    4150:	e0 0b 40 f9	ldr	x0, [sp, #16]
    4154:	e1 03 13 aa	mov	x1, x19
    4158:	43 07 00 94	bl	__pthread_rwlock_lock_wait
    415c:	00 00 80 52	mov	w0, #0
    4160:	f0 ff ff 17	b	0x4120
__pthread_rwlock_check_init_slow:
    4164:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    4168:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    416c:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    4170:	fd 83 00 91	add	x29, sp, #32
    4174:	95 76 96 52	mov	w21, #46004
    4178:	15 b5 a5 72	movk	w21, #11688, lsl #16
    417c:	08 00 40 f9	ldr	x8, [x0]
    4180:	1f 01 15 eb	cmp	x8, x21
    4184:	e1 06 00 54	b.ne	0x4260
    4188:	f4 03 00 aa	mov	x20, x0
    418c:	08 00 80 52	mov	w8, #0
    4190:	13 20 00 91	add	x19, x0, #8
    4194:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    4198:	c9 1a 40 b9	ldr	w9, [x22, #24]
    419c:		.long	0x88e87e69
    41a0:	1f 01 00 71	cmp	w8, #0
    41a4:	80 00 00 54	b.eq	0x41b4
    41a8:	e0 03 13 aa	mov	x0, x19
    41ac:	a1 00 a0 52	mov	w1, #327680
    41b0:	ce 1e 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    41b4:	88 02 40 f9	ldr	x8, [x20]
    41b8:	1f 01 15 eb	cmp	x8, x21
    41bc:	e1 05 00 54	b.ne	0x4278
    41c0:	8b 62 00 91	add	x11, x20, #24
    41c4:	88 7e 00 91	add	x8, x20, #31
    41c8:	09 f1 7d 92	and	x9, x8, #0xfffffffffffffff8
    41cc:	8a 82 00 91	add	x10, x20, #32
    41d0:	88 be 00 91	add	x8, x20, #47
    41d4:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    41d8:	7f 01 09 eb	cmp	x11, x9
    41dc:	c0 00 00 54	b.eq	0x41f4
    41e0:	8b 0e 40 b9	ldr	w11, [x20, #12]
    41e4:	6b 01 03 32	orr	w11, w11, #0x20000000
    41e8:	8b 0e 00 b9	str	w11, [x20, #12]
    41ec:	0b 00 80 92	mov	x11, #-1
    41f0:	8b 0e 00 f9	str	x11, [x20, #24]
    41f4:	5f 01 08 eb	cmp	x10, x8
    41f8:	60 00 00 54	b.eq	0x4204
    41fc:	0b 00 80 92	mov	x11, #-1
    4200:	4b 2d 00 a9	stp	x11, x11, [x10]
    4204:	15 00 80 52	mov	w21, #0
    4208:	0a 00 80 92	mov	x10, #-1
    420c:	8a 2a 03 a9	stp	x10, x10, [x20, #48]
    4210:	3f 01 00 f9	str	xzr, [x9]
    4214:	29 00 00 f0	adrp	x9, 7 ; 0xb000
    4218:	20 6d 47 fd	ldr	d0, [x9, #3800]
    421c:	00 01 00 fd	str	d0, [x8]
    4220:	1f 09 00 b9	str	wzr, [x8, #8]
    4224:	88 0e 40 b9	ldr	w8, [x20, #12]
    4228:	09 00 b0 52	mov	w9, #-2147483648
    422c:	09 75 00 33	bfxil	w9, w8, #0, #30
    4230:	89 0e 00 b9	str	w9, [x20, #12]
    4234:	e8 03 34 aa	mvn	x8, x20
    4238:	88 22 00 f9	str	x8, [x20, #64]
    423c:	68 89 89 52	mov	w8, #19531
    4240:	e8 4a aa 72	movk	w8, #21079, lsl #16
    4244:	88 c6 00 b9	str	w8, [x20, #196]
    4248:	29 00 00 f0	adrp	x9, 7 ; 0xb000
    424c:	20 71 47 fd	ldr	d0, [x9, #3808]
    4250:	80 0a 00 fd	str	d0, [x20, #16]
    4254:	9f 06 00 b9	str	wzr, [x20, #4]
    4258:	88 fe 9f 88	stlr	w8, [x20]
    425c:	0c 00 00 14	b	0x428c
    4260:	69 89 89 52	mov	w9, #19531
    4264:	e9 4a aa 72	movk	w9, #21079, lsl #16
    4268:	1f 01 09 eb	cmp	x8, x9
    426c:	c8 02 80 52	mov	w8, #22
    4270:	f5 03 88 1a	csel	w21, wzr, w8, eq
    4274:	0d 00 00 14	b	0x42a8
    4278:	69 89 89 52	mov	w9, #19531
    427c:	e9 4a aa 72	movk	w9, #21079, lsl #16
    4280:	1f 01 09 eb	cmp	x8, x9
    4284:	c8 02 80 52	mov	w8, #22
    4288:	f5 03 88 1a	csel	w21, wzr, w8, eq
    428c:	c8 1a 40 b9	ldr	w8, [x22, #24]
    4290:	e9 03 08 aa	mov	x9, x8
    4294:		.long	0x88a9fe7f
    4298:	3f 01 08 6b	cmp	w9, w8
    429c:	60 00 00 54	b.eq	0x42a8
    42a0:	e0 03 13 aa	mov	x0, x19
    42a4:	94 1e 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    42a8:	e0 03 15 aa	mov	x0, x21
    42ac:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    42b0:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    42b4:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    42b8:	c0 03 5f d6	ret
_pthread_rwlock_unlock:
    42bc:	08 00 40 f9	ldr	x8, [x0]
    42c0:	69 89 89 52	mov	w9, #19531
    42c4:	e9 4a aa 72	movk	w9, #21079, lsl #16
    42c8:	1f 01 09 eb	cmp	x8, x9
    42cc:	41 05 00 54	b.ne	0x4374
    42d0:	08 bc 00 91	add	x8, x0, #47
    42d4:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    42d8:	02 01 40 b9	ldr	w2, [x8]
    42dc:	02 05 30 37	tbnz	w2, #6, 0x437c
    42e0:	0a 8d 40 29	ldp	w10, w3, [x8, #4]
    42e4:	09 0d 40 b9	ldr	w9, [x8, #12]
    42e8:	82 00 08 36	tbz	w2, #1, 0x42f8
    42ec:	0b 7c 00 91	add	x11, x0, #31
    42f0:	6b f1 7d 92	and	x11, x11, #0xfffffffffffffff8
    42f4:	7f 01 00 f9	str	xzr, [x11]
    42f8:	6b 00 04 11	add	w11, w3, #256
    42fc:	4c 5c 18 12	and	w12, w2, #0xffffff00
    4300:	7f 01 0c 6b	cmp	w11, w12
    4304:	61 02 00 54	b.ne	0x4350
    4308:	6c 05 1a 32	orr	w12, w11, #0xc0
    430c:	6d 01 00 32	orr	w13, w11, #0x1
    4310:	e5 03 03 2a	mov	w5, w3
    4314:	ee 03 02 2a	mov	w14, w2
    4318:	c4 81 0a aa	orr	x4, x14, x10, lsl #32
    431c:	25 7d 60 b3	bfi	x5, x9, #32, #32
    4320:	ea 03 0c 2a	mov	w10, w12
    4324:	46 81 0d aa	orr	x6, x10, x13, lsl #32
    4328:	67 81 09 aa	orr	x7, x11, x9, lsl #32
    432c:	e2 03 04 aa	mov	x2, x4
    4330:	e3 03 05 aa	mov	x3, x5
    4334:		.long	0x4822fd06
    4338:	7f 00 05 eb	cmp	x3, x5
    433c:	40 00 44 fa	ccmp	x2, x4, #0, eq
    4340:	69 fc 60 d3	lsr	x9, x3, #32
    4344:	4a fc 60 d3	lsr	x10, x2, #32
    4348:	a0 01 00 54	b.eq	0x437c
    434c:	eb ff ff 17	b	0x42f8
    4350:	ec 03 02 aa	mov	x12, x2
    4354:	ed 03 0a aa	mov	x13, x10
    4358:	5f 08 00 72	tst	w2, #0x7
    435c:	a0 fd ff 54	b.eq	0x4310
    4360:	4e 5d 18 12	and	w14, w10, #0xffffff00
    4364:	ec 03 02 aa	mov	x12, x2
    4368:	ed 03 0a aa	mov	x13, x10
    436c:	7f 01 0e 6b	cmp	w11, w14
    4370:	01 fd ff 54	b.ne	0x4310
    4374:	01 00 80 52	mov	w1, #0
    4378:	0c 07 00 14	b	__pthread_rwlock_unlock_slow
    437c:	00 00 80 52	mov	w0, #0
    4380:	c0 03 5f d6	ret
_pthread_rwlock_wrlock:
    4384:	08 00 40 f9	ldr	x8, [x0]
    4388:	69 89 89 52	mov	w9, #19531
    438c:	e9 4a aa 72	movk	w9, #21079, lsl #16
    4390:	1f 01 09 eb	cmp	x8, x9
    4394:	61 03 00 54	b.ne	0x4400
    4398:	08 bc 00 91	add	x8, x0, #47
    439c:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    43a0:	0b 01 40 f9	ldr	x11, [x8]
    43a4:	eb 02 08 37	tbnz	w11, #1, 0x4400
    43a8:	09 05 40 f9	ldr	x9, [x8, #8]
    43ac:	2a 81 cb 93	extr	x10, x9, x11, #32
    43b0:	09 20 c0 d2	mov	x9, #1099511627776
    43b4:	6b 02 30 36	tbz	w11, #6, 0x4400
    43b8:	ec 03 0b 2a	mov	w12, w11
    43bc:	8c 81 0a aa	orr	x12, x12, x10, lsl #32
    43c0:	6b 5d 18 12	and	w11, w11, #0xffffff00
    43c4:	6b 0d 06 11	add	w11, w11, #387
    43c8:	4b 7d 60 b3	bfi	x11, x10, #32, #32
    43cc:	6a 01 09 8b	add	x10, x11, x9
    43d0:	eb 03 0c aa	mov	x11, x12
    43d4:		.long	0xc8eb7d0a
    43d8:	6a fd 60 d3	lsr	x10, x11, #32
    43dc:	7f 01 0c eb	cmp	x11, x12
    43e0:	a1 fe ff 54	b.ne	0x43b4
    43e4:	08 7c 00 91	add	x8, x0, #31
    43e8:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    43ec:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    43f0:	29 81 5f f8	ldur	x9, [x9, #-8]
    43f4:	09 01 00 f9	str	x9, [x8]
    43f8:	00 00 80 52	mov	w0, #0
    43fc:	c0 03 5f d6	ret
    4400:	01 00 80 52	mov	w1, #0
    4404:	02 00 80 52	mov	w2, #0
    4408:	a6 fe ff 17	b	__pthread_rwlock_lock_slow
_pthread_create:
    440c:	04 00 80 52	mov	w4, #0
    4410:	54 11 00 14	b	__pthread_create
__pthread_markcancel_if_canceled:
    4414:	08 98 02 91	add	x8, x0, #166
    4418:	08 fd df 48	ldarh	w8, [x8]
    441c:	29 02 80 52	mov	w9, #17
    4420:	3f 01 28 6a	bics	wzr, w9, w8
    4424:	40 00 00 54	b.eq	0x442c
    4428:	c0 03 5f d6	ret
    442c:	e0 03 01 aa	mov	x0, x1
    4430:	b9 1d 00 14	b	0xbb14 ; symbol stub for: ___pthread_markcancel
_pthread_set_qos_class_self_np:
    4434:	28 04 00 51	sub	w8, w1, #1
    4438:	1f 41 00 31	cmn	w8, #16
    443c:	03 01 00 54	b.lo	0x445c
    4440:	08 14 00 51	sub	w8, w0, #5
    4444:	08 09 88 13	ror	w8, w8, #2
    4448:	1f 1d 00 71	cmp	w8, #7
    444c:	88 00 00 54	b.hi	0x445c
    4450:	69 17 80 52	mov	w9, #187
    4454:	29 25 c8 1a	lsr	w9, w9, w8
    4458:	69 00 00 37	tbnz	w9, #0, 0x4464
    445c:	c0 02 80 52	mov	w0, #22
    4460:	c0 03 5f d6	ret
    4464:	29 00 00 f0	adrp	x9, 7 ; 0xb000
    4468:	29 a1 39 91	add	x9, x9, #3688
    446c:	28 d9 68 b8	ldr	w8, [x9, w8, sxtw #2]
    4470:	09 10 80 52	mov	w9, #128
    4474:	28 21 c8 1a	lsl	w8, w9, w8
    4478:	29 fc 03 11	add	w9, w1, #255
    447c:	01 01 09 2a	orr	w1, w8, w9
    4480:	20 00 80 52	mov	w0, #1
    4484:	02 00 80 52	mov	w2, #0
    4488:	01 00 00 14	b	__pthread_set_properties_self
__pthread_set_properties_self:
    448c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    4490:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    4494:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    4498:	fd 83 00 91	add	x29, sp, #32
    449c:	75 d0 3b d5	mrs	x21, TPIDRRO_EL0
    44a0:	e8 03 15 aa	mov	x8, x21
    44a4:	09 0d 52 f8	ldr	x9, [x8, #-224]!
    44a8:	0a 01 00 90	adrp	x10, 32 ; 0x24000
    44ac:	4a 35 40 f9	ldr	x10, [x10, #104]
    44b0:	49 01 09 ca	eor	x9, x10, x9
    44b4:	3f 01 08 eb	cmp	x9, x8
    44b8:	41 05 00 54	b.ne	0x4560
    44bc:	f3 03 01 aa	mov	x19, x1
    44c0:	f4 03 00 aa	mov	x20, x0
    44c4:	aa 05 80 52	mov	w10, #45
    44c8:	e9 03 00 aa	mov	x9, x0
    44cc:	1f 00 0a 6a	tst	w0, w10
    44d0:	e0 00 00 54	b.eq	0x44ec
    44d4:	08 91 42 39	ldrb	w8, [x8, #164]
    44d8:	e9 03 14 aa	mov	x9, x20
    44dc:	88 00 00 34	cbz	w8, 0x44ec
    44e0:	a8 05 80 12	mov	w8, #-46
    44e4:	89 02 08 6a	ands	w9, w20, w8
    44e8:	a0 01 00 54	b.eq	0x451c
    44ec:	e2 03 02 2a	mov	w2, w2
    44f0:	e3 03 09 2a	mov	w3, w9
    44f4:	00 20 80 52	mov	w0, #256
    44f8:	e1 03 13 aa	mov	x1, x19
    44fc:	4a 1d 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    4500:	d4 01 00 36	tbz	w20, #0, 0x4538
    4504:	20 01 00 34	cbz	w0, 0x4528
    4508:	a8 06 40 f9	ldr	x8, [x21, #8]
    450c:	08 01 40 b9	ldr	w8, [x8]
    4510:	1f 09 00 71	cmp	w8, #2
    4514:	a0 00 00 54	b.eq	0x4528
    4518:	0d 00 00 14	b	0x454c
    451c:	00 00 80 52	mov	w0, #0
    4520:	08 00 80 52	mov	w8, #0
    4524:	54 01 00 36	tbz	w20, #0, 0x454c
    4528:	e8 ff 87 52	mov	w8, #16383
    452c:	08 e8 bf 72	movk	w8, #65344, lsl #16
    4530:	68 02 08 8a	and	x8, x19, x8
    4534:	a8 12 00 f9	str	x8, [x21, #32]
    4538:	80 00 00 34	cbz	w0, 0x4548
    453c:	a8 06 40 f9	ldr	x8, [x21, #8]
    4540:	08 01 40 b9	ldr	w8, [x8]
    4544:	02 00 00 14	b	0x454c
    4548:	08 00 80 52	mov	w8, #0
    454c:	e0 03 08 aa	mov	x0, x8
    4550:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    4554:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    4558:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    455c:	c0 03 5f d6	ret
    4560:	f7 1b 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_setname_np:
    4564:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    4568:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    456c:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    4570:	fd 83 00 91	add	x29, sp, #32
    4574:	f3 03 00 aa	mov	x19, x0
    4578:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    457c:	16 81 03 d1	sub	x22, x8, #224
    4580:	a0 00 00 b4	cbz	x0, 0x4594
    4584:	e0 03 13 aa	mov	x0, x19
    4588:	9c 1d 00 94	bl	0xbbf8 ; symbol stub for: __platform_strlen
    458c:	f4 03 00 aa	mov	x20, x0
    4590:	02 00 00 14	b	0x4598
    4594:	14 00 80 d2	mov	x20, #0
    4598:	c8 02 40 f9	ldr	x8, [x22]
    459c:	09 01 00 90	adrp	x9, 32 ; 0x24000
    45a0:	29 35 40 f9	ldr	x9, [x9, #104]
    45a4:	28 01 08 ca	eor	x8, x9, x8
    45a8:	1f 01 16 eb	cmp	x8, x22
    45ac:	01 03 00 54	b.ne	0x460c
    45b0:	a1 1d 00 94	bl	0xbc34 ; symbol stub for: _getpid
    45b4:	e1 03 00 aa	mov	x1, x0
    45b8:	a0 00 80 52	mov	w0, #5
    45bc:	42 00 80 52	mov	w2, #2
    45c0:	03 00 80 d2	mov	x3, #0
    45c4:	e4 03 13 aa	mov	x4, x19
    45c8:	e5 03 14 aa	mov	x5, x20
    45cc:	28 1d 00 94	bl	0xba6c ; symbol stub for: ___proc_info
    45d0:	f5 03 00 aa	mov	x21, x0
    45d4:	20 01 00 35	cbnz	w0, 0x45f8
    45d8:	c0 42 01 91	add	x0, x22, #80
    45dc:	b4 00 00 b4	cbz	x20, 0x45f0
    45e0:	e1 03 13 aa	mov	x1, x19
    45e4:	02 08 80 52	mov	w2, #64
    45e8:	81 1d 00 94	bl	0xbbec ; symbol stub for: __platform_strlcpy
    45ec:	03 00 00 14	b	0x45f8
    45f0:	01 08 80 52	mov	w1, #64
    45f4:	78 1d 00 94	bl	0xbbd4 ; symbol stub for: __platform_bzero
    45f8:	e0 03 15 aa	mov	x0, x21
    45fc:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    4600:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    4604:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    4608:	c0 03 5f d6	ret
    460c:	cc 1b 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_cond_wait:
    4610:	02 00 80 d2	mov	x2, #0
    4614:	03 00 80 52	mov	w3, #0
    4618:	44 00 80 52	mov	w4, #2
    461c:	75 0c 00 14	b	__pthread_cond_wait
_pthread_testcancel:
    4620:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4624:	fd 03 00 91	mov	x29, sp
    4628:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    462c:	09 e9 00 d1	sub	x9, x8, #58
    4630:	29 fd df 48	ldarh	w9, [x9]
    4634:	2a 02 80 52	mov	w10, #17
    4638:	5f 01 29 6a	bics	wzr, w10, w9
    463c:	60 00 00 54	b.eq	0x4648
    4640:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4644:	c0 03 5f d6	ret
    4648:	09 0d 52 f8	ldr	x9, [x8, #-224]!
    464c:	0a 01 00 90	adrp	x10, 32 ; 0x24000
    4650:	4a 35 40 f9	ldr	x10, [x10, #104]
    4654:	49 01 09 ca	eor	x9, x10, x9
    4658:	3f 01 08 eb	cmp	x9, x8
    465c:	a1 00 00 54	b.ne	0x4670
    4660:	29 00 80 52	mov	w9, #1
    4664:	09 95 02 39	strb	w9, [x8, #165]
    4668:	20 00 80 52	mov	w0, #1
    466c:	67 02 00 94	bl	_pthread_exit
    4670:	b3 1b 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_mutex_droplock:
    4674:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4678:	fd 03 00 91	mov	x29, sp
    467c:	0c 0c 40 b9	ldr	w12, [x0, #12]
    4680:	8e 09 1a 12	and	w14, w12, #0x1c0
    4684:	88 79 13 12	and	w8, w12, #0xffffefff
    4688:	09 9c 00 91	add	x9, x0, #39
    468c:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    4690:	2b 01 40 f9	ldr	x11, [x9]
    4694:	0a 7c 00 91	add	x10, x0, #31
    4698:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    469c:	8d 05 1e 12	and	w13, w12, #0xc
    46a0:	df 01 01 71	cmp	w14, #64
    46a4:	21 07 00 54	b.ne	0x4788
    46a8:	cd 01 00 34	cbz	w13, 0x46e0
    46ac:	6e d0 3b d5	mrs	x14, TPIDRRO_EL0
    46b0:	ce 81 5f f8	ldur	x14, [x14, #-8]
    46b4:	4f 01 40 f9	ldr	x15, [x10]
    46b8:	ff 01 0e eb	cmp	x15, x14
    46bc:	a1 0c 00 54	b.ne	0x4850
    46c0:	bf 21 00 71	cmp	w13, #8
    46c4:	e1 00 00 54	b.ne	0x46e0
    46c8:	8d 7d 10 53	lsr	w13, w12, #16
    46cc:	ad 05 00 51	sub	w13, w13, #1
    46d0:	ac 3d 10 33	bfi	w12, w13, #16, #16
    46d4:	0c 0c 00 b9	str	w12, [x0, #12]
    46d8:	bf 3d 00 72	tst	w13, #0xffff
    46dc:	21 0b 00 54	b.ne	0x4840
    46e0:	6c fd 60 d3	lsr	x12, x11, #32
    46e4:	50 01 40 f9	ldr	x16, [x10]
    46e8:	8d 01 0b 4a	eor	w13, w12, w11
    46ec:	ae 5d 78 f2	ands	x14, x13, #0xffffff00
    46f0:	40 02 00 54	b.eq	0x4738
    46f4:	8c 01 04 11	add	w12, w12, #256
    46f8:	8d 01 0b 4a	eor	w13, w12, w11
    46fc:	bf fd 03 71	cmp	w13, #255
    4700:	f1 93 9f da	csetm	x17, hi
    4704:	6f 75 1e 12	and	w15, w11, #0xfffffffc
    4708:	bf 01 04 71	cmp	w13, #256
    470c:	ed 31 8b 1a	csel	w13, w15, w11, lo
    4710:	ef 27 9f 1a	cset	w15, lo
    4714:	05 01 14 32	orr	w5, w8, #0x1000
    4718:	08 31 85 1a	csel	w8, w8, w5, lo
    471c:	1f 02 11 eb	cmp	x16, x17
    4720:	00 01 00 54	b.eq	0x4740
    4724:	e5 03 10 aa	mov	x5, x16
    4728:		.long	0xc8a57d51
    472c:	bf 00 10 eb	cmp	x5, x16
    4730:	80 00 00 54	b.eq	0x4740
    4734:	4a 00 00 14	b	0x485c
    4738:	0f 00 80 52	mov	w15, #0
    473c:	ed 03 0b aa	mov	x13, x11
    4740:	df 01 00 f1	cmp	x14, #0
    4744:	ee 15 9f 1a	csinc	w14, w15, wzr, ne
    4748:	0f 79 13 12	and	w15, w8, #0xffffefff
    474c:	df 01 00 71	cmp	w14, #0
    4750:	e8 11 88 1a	csel	w8, w15, w8, ne
    4754:	ee 03 0c aa	mov	x14, x12
    4758:	ef 03 0d 2a	mov	w15, w13
    475c:	ee 81 0e aa	orr	x14, x15, x14, lsl #32
    4760:	ef 03 0b aa	mov	x15, x11
    4764:		.long	0xc8affd2e
    4768:	ff 01 0b eb	cmp	x15, x11
    476c:	eb 03 0f aa	mov	x11, x15
    4770:	81 fb ff 54	b.ne	0x46e0
    4774:	43 00 00 b4	cbz	x3, 0x477c
    4778:	6d 00 00 b9	str	w13, [x3]
    477c:	e4 05 00 b4	cbz	x4, 0x4838
    4780:	8c 00 00 b9	str	w12, [x4]
    4784:	2d 00 00 14	b	0x4838
    4788:	cd 01 00 34	cbz	w13, 0x47c0
    478c:	6e d0 3b d5	mrs	x14, TPIDRRO_EL0
    4790:	ce 81 5f f8	ldur	x14, [x14, #-8]
    4794:	4f 01 40 f9	ldr	x15, [x10]
    4798:	ff 01 0e eb	cmp	x15, x14
    479c:	a1 05 00 54	b.ne	0x4850
    47a0:	bf 21 00 71	cmp	w13, #8
    47a4:	e1 00 00 54	b.ne	0x47c0
    47a8:	8d 7d 10 53	lsr	w13, w12, #16
    47ac:	ad 05 00 51	sub	w13, w13, #1
    47b0:	ac 3d 10 33	bfi	w12, w13, #16, #16
    47b4:	0c 0c 00 b9	str	w12, [x0, #12]
    47b8:	bf 3d 00 72	tst	w13, #0xffff
    47bc:	21 04 00 54	b.ne	0x4840
    47c0:	ec 03 0b aa	mov	x12, x11
    47c4:	6d fd 60 d3	lsr	x13, x11, #32
    47c8:	4f 01 40 f9	ldr	x15, [x10]
    47cc:	6e 5d 18 12	and	w14, w11, #0xffffff00
    47d0:	b0 5d 18 12	and	w16, w13, #0xffffff00
    47d4:	ce 01 10 4b	sub	w14, w14, w16
    47d8:	b0 01 04 11	add	w16, w13, #256
    47dc:	df 01 00 71	cmp	w14, #0
    47e0:	0d c2 8d 1a	csel	w13, w16, w13, gt
    47e4:	af 00 00 b4	cbz	x15, 0x47f8
    47e8:	f0 03 0f aa	mov	x16, x15
    47ec:		.long	0xc8b07d5f
    47f0:	1f 02 0f eb	cmp	x16, x15
    47f4:	41 03 00 54	b.ne	0x485c
    47f8:	4f 00 80 12	mov	w15, #-3
    47fc:	6f 01 0f 8a	and	x15, x11, x15
    4800:	ef 81 0d aa	orr	x15, x15, x13, lsl #32
    4804:	f0 03 0b aa	mov	x16, x11
    4808:		.long	0xc8b0fd2f
    480c:	1f 02 0b eb	cmp	x16, x11
    4810:	eb 03 10 aa	mov	x11, x16
    4814:	61 fd ff 54	b.ne	0x47c0
    4818:	df 01 00 71	cmp	w14, #0
    481c:	e9 d7 9f 1a	cset	w9, gt
    4820:	63 00 00 b4	cbz	x3, 0x482c
    4824:	8a 79 1e 12	and	w10, w12, #0xfffffffd
    4828:	6a 00 00 b9	str	w10, [x3]
    482c:	44 00 00 b4	cbz	x4, 0x4834
    4830:	8d 00 00 b9	str	w13, [x4]
    4834:	08 31 09 2a	orr	w8, w8, w9, lsl #12
    4838:	42 00 00 b4	cbz	x2, 0x4840
    483c:	40 00 00 f9	str	x0, [x2]
    4840:	00 00 80 52	mov	w0, #0
    4844:	81 00 00 b4	cbz	x1, 0x4854
    4848:	28 00 00 b9	str	w8, [x1]
    484c:	02 00 00 14	b	0x4854
    4850:	20 00 80 52	mov	w0, #1
    4854:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4858:	c0 03 5f d6	ret
    485c:	1d 1c 00 94	bl	__pthread_mutex_corruption_abort
_cthread_yield:
_pthread_yield_np:
_sched_yield:
    4860:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4864:	fd 03 00 91	mov	x29, sp
    4868:	88 00 00 90	adrp	x8, 16 ; 0x14000
    486c:	08 01 40 39	ldrb	w8, [x8]
    4870:	c8 00 00 34	cbz	w8, 0x4888
    4874:	00 00 80 52	mov	w0, #0
    4878:	2b 1d 00 94	bl	0xbd24 ; symbol stub for: _swtch_pri
    487c:	00 00 80 52	mov	w0, #0
    4880:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4884:	c0 03 5f d6	ret
    4888:	00 00 80 52	mov	w0, #0
    488c:	01 00 80 52	mov	w1, #0
    4890:	02 00 80 52	mov	w2, #0
    4894:	30 1d 00 94	bl	0xbd54 ; symbol stub for: _thread_switch
    4898:	f9 ff ff 17	b	0x487c
__pthread_cond_updateval:
    489c:	3f 00 18 72	tst	w1, #0x100
    48a0:	08 20 80 52	mov	w8, #256
    48a4:	08 05 88 1a	cinc	w8, w8, ne
    48a8:	29 7c 08 53	lsr	w9, w1, #8
    48ac:	29 01 1f 12	and	w9, w9, #0x2
    48b0:	08 01 09 2a	orr	w8, w8, w9
    48b4:	3f 00 00 71	cmp	w1, #0
    48b8:	48 00 88 1a	csel	w8, w2, w8, eq
    48bc:	09 0c 40 b9	ldr	w9, [x0, #12]
    48c0:	0b 60 00 91	add	x11, x0, #24
    48c4:	0a 70 00 91	add	x10, x0, #28
    48c8:	0c 80 00 91	add	x12, x0, #32
    48cc:	3f 01 03 72	tst	w9, #0x20000000
    48d0:	69 01 8a 9a	csel	x9, x11, x10, eq
    48d4:	4a 01 8c 9a	csel	x10, x10, x12, eq
    48d8:	8b 01 8b 9a	csel	x11, x12, x11, eq
    48dc:	0c 5d 18 12	and	w12, w8, #0xffffff00
    48e0:	21 01 40 b9	ldr	w1, [x9]
    48e4:	62 01 40 b9	ldr	w2, [x11]
    48e8:	50 01 40 b9	ldr	w16, [x10]
    48ec:	2d 5c 18 12	and	w13, w1, #0xffffff00
    48f0:	0e 5e 18 12	and	w14, w16, #0xffffff00
    48f4:	2f 80 10 aa	orr	x15, x1, x16, lsl #32
    48f8:	e8 00 08 37	tbnz	w8, #1, 0x4914
    48fc:	bf 01 0e 6b	cmp	w13, w14
    4900:	a1 00 00 54	b.ne	0x4914
    4904:	03 00 80 52	mov	w3, #0
    4908:	10 00 80 52	mov	w16, #0
    490c:	f1 03 0f aa	mov	x17, x15
    4910:	0d 00 00 14	b	0x4944
    4914:	10 02 08 2a	orr	w16, w16, w8
    4918:	10 06 00 12	and	w16, w16, #0x3
    491c:	d1 01 0c 0b	add	w17, w14, w12
    4920:	23 02 10 2a	orr	w3, w17, w16
    4924:	3f 02 0d 6b	cmp	w17, w13
    4928:	f1 17 9f 1a	cset	w17, eq
    492c:	1f 0e 00 71	cmp	w16, #3
    4930:	f0 17 9f 1a	cset	w16, eq
    4934:	64 60 18 12	and	w4, w3, #0xffffff01
    4938:	30 02 10 6a	ands	w16, w17, w16
    493c:	83 10 83 1a	csel	w3, w4, w3, ne
    4940:	31 80 03 aa	orr	x17, x1, x3, lsl #32
    4944:	e4 03 0f aa	mov	x4, x15
    4948:		.long	0xc8e4fd31
    494c:	9f 00 0f eb	cmp	x4, x15
    4950:	81 fc ff 54	b.ne	0x48e0
    4954:	bf 01 0e 6b	cmp	w13, w14
    4958:	a0 00 00 54	b.eq	0x496c
    495c:	68 00 01 4a	eor	w8, w3, w1
    4960:	1f fd 03 71	cmp	w8, #255
    4964:	48 00 00 54	b.hi	0x496c
    4968:	1f 08 00 f9	str	xzr, [x0, #16]
    496c:	30 01 00 34	cbz	w16, 0x4990
    4970:	08 0c 40 b9	ldr	w8, [x0, #12]
    4974:	08 7d 1e 53	lsr	w8, w8, #30
    4978:	1f 05 00 71	cmp	w8, #1
    497c:	e8 17 9f 1a	cset	w8, eq
    4980:	06 6d 1c 53	lsl	w6, w8, #4
    4984:	04 00 80 52	mov	w4, #0
    4988:	e5 03 01 aa	mov	x5, x1
    498c:	3e 1c 00 14	b	0xba84 ; symbol stub for: ___psynch_cvclrprepost
    4990:	c0 03 5f d6	ret
_pthread_cond_timedwait:
    4994:	03 00 80 52	mov	w3, #0
    4998:	44 00 80 52	mov	w4, #2
    499c:	95 0b 00 14	b	__pthread_cond_wait
_pthread_get_stackaddr_np:
    49a0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    49a4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    49a8:	fd 43 00 91	add	x29, sp, #16
    49ac:	f3 03 00 aa	mov	x19, x0
    49b0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    49b4:	08 81 03 d1	sub	x8, x8, #224
    49b8:	09 01 00 90	adrp	x9, 32 ; 0x24000
    49bc:	29 25 40 f9	ldr	x9, [x9, #72]
    49c0:	1f 01 00 eb	cmp	x8, x0
    49c4:	24 11 40 fa	ccmp	x9, x0, #4, ne
    49c8:	61 00 00 54	b.ne	0x49d4
    49cc:	73 5a 40 f9	ldr	x19, [x19, #176]
    49d0:	11 00 00 14	b	0x4a14
    49d4:	f3 01 00 b4	cbz	x19, 0x4a10
    49d8:	00 01 00 90	adrp	x0, 32 ; 0x24000
    49dc:	00 10 01 91	add	x0, x0, #68
    49e0:	a1 00 a0 52	mov	w1, #327680
    49e4:	c1 1c 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    49e8:	08 01 00 90	adrp	x8, 32 ; 0x24000
    49ec:	08 01 40 f9	ldr	x8, [x8]
    49f0:	a8 00 00 b4	cbz	x8, 0x4a04
    49f4:	1f 01 13 eb	cmp	x8, x19
    49f8:	60 01 00 54	b.eq	0x4a24
    49fc:	08 09 40 f9	ldr	x8, [x8, #16]
    4a00:	a8 ff ff b5	cbnz	x8, 0x49f4
    4a04:	00 01 00 90	adrp	x0, 32 ; 0x24000
    4a08:	00 10 01 91	add	x0, x0, #68
    4a0c:	ba 1c 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    4a10:	73 00 80 52	mov	w19, #3
    4a14:	e0 03 13 aa	mov	x0, x19
    4a18:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    4a1c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    4a20:	c0 03 5f d6	ret
    4a24:	68 02 40 f9	ldr	x8, [x19]
    4a28:	09 01 00 90	adrp	x9, 32 ; 0x24000
    4a2c:	29 35 40 f9	ldr	x9, [x9, #104]
    4a30:	28 01 08 ca	eor	x8, x9, x8
    4a34:	1f 01 13 eb	cmp	x8, x19
    4a38:	c1 00 00 54	b.ne	0x4a50
    4a3c:	73 5a 40 f9	ldr	x19, [x19, #176]
    4a40:	00 01 00 90	adrp	x0, 32 ; 0x24000
    4a44:	00 10 01 91	add	x0, x0, #68
    4a48:	ab 1c 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    4a4c:	f2 ff ff 17	b	0x4a14
    4a50:	bb 1a 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_workqueue_override_start_direct:
    4a54:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4a58:	fd 03 00 91	mov	x29, sp
    4a5c:	e2 03 01 aa	mov	x2, x1
    4a60:	e1 03 00 2a	mov	w1, w0
    4a64:	00 80 80 52	mov	w0, #1024
    4a68:	03 00 80 d2	mov	x3, #0
    4a6c:	ee 1b 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    4a70:	1f 04 00 31	cmn	w0, #1
    4a74:	81 00 00 54	b.ne	0x4a84
    4a78:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    4a7c:	08 05 40 f9	ldr	x8, [x8, #8]
    4a80:	00 01 40 b9	ldr	w0, [x8]
    4a84:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4a88:	c0 03 5f d6	ret
__pthread_mutex_firstfit_lock_wait:
    4a8c:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    4a90:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    4a94:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    4a98:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    4a9c:	fd c3 00 91	add	x29, sp, #48
    4aa0:	e3 03 02 aa	mov	x3, x2
    4aa4:	f3 03 00 aa	mov	x19, x0
    4aa8:	08 7c 00 91	add	x8, x0, #31
    4aac:	16 f1 7d 92	and	x22, x8, #0xfffffffffffffff8
    4ab0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    4ab4:	17 81 5f f8	ldur	x23, [x8, #-8]
    4ab8:	08 9c 00 91	add	x8, x0, #39
    4abc:	18 f1 7d 92	and	x24, x8, #0xfffffffffffffff8
    4ac0:	f4 03 01 aa	mov	x20, x1
    4ac4:	35 fc 60 d3	lsr	x21, x1, #32
    4ac8:	64 0e 40 b9	ldr	w4, [x19, #12]
    4acc:	e0 03 13 aa	mov	x0, x19
    4ad0:	e1 03 14 aa	mov	x1, x20
    4ad4:	e2 03 15 aa	mov	x2, x21
    4ad8:	f7 1b 00 94	bl	0xbab4 ; symbol stub for: ___psynch_mutexwait
    4adc:	c3 02 40 f9	ldr	x3, [x22]
    4ae0:	1f 04 00 31	cmn	w0, #1
    4ae4:	20 ff ff 54	b.eq	0x4ac8
    4ae8:	08 03 40 f9	ldr	x8, [x24]
    4aec:	e1 03 08 aa	mov	x1, x8
    4af0:	29 00 04 11	add	w9, w1, #256
    4af4:	2a 00 1f 32	orr	w10, w1, #0x2
    4af8:	1f 01 7f f2	tst	x8, #0x2
    4afc:	49 01 89 9a	csel	x9, x10, x9, eq
    4b00:	f4 03 08 aa	mov	x20, x8
    4b04:	34 7d 40 b3	bfxil	x20, x9, #0, #32
    4b08:		.long	0xc8e87f14
    4b0c:	1f 01 01 eb	cmp	x8, x1
    4b10:	e1 fe ff 54	b.ne	0x4aec
    4b14:	81 fd 0f 37	tbnz	w1, #1, 0x4ac4
    4b18:	d7 02 00 f9	str	x23, [x22]
    4b1c:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    4b20:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    4b24:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    4b28:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    4b2c:	c0 03 5f d6	ret
__pthread_mutex_firstfit_wake:
    4b30:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4b34:	fd 03 00 91	mov	x29, sp
    4b38:	e4 03 02 aa	mov	x4, x2
    4b3c:	22 fc 60 d3	lsr	x2, x1, #32
    4b40:	03 00 80 d2	mov	x3, #0
    4b44:	d9 1b 00 94	bl	0xbaa8 ; symbol stub for: ___psynch_mutexdrop
    4b48:	1f 04 00 31	cmn	w0, #1
    4b4c:	c1 00 00 54	b.ne	0x4b64
    4b50:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    4b54:	08 05 40 f9	ldr	x8, [x8, #8]
    4b58:	08 01 80 b9	ldrsw	x8, [x8]
    4b5c:	1f 79 1d 72	tst	w8, #0xfffffffb
    4b60:	61 00 00 54	b.ne	0x4b6c
    4b64:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4b68:	c0 03 5f d6	ret
    4b6c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    4b70:	54 00 00 90	adrp	x20, 8 ; 0xc000
    4b74:	94 be 22 91	add	x20, x20, #2223 ; literal pool for: "BUG IN LIBPTHREAD: __psynch_mutexdrop failed"
    4b78:	95 00 00 90	adrp	x21, 16 ; 0x14000
    4b7c:	b5 22 00 91	add	x21, x21, #8
    4b80:	b4 06 00 f9	str	x20, [x21, #8]
    4b84:	a8 1e 00 f9	str	x8, [x21, #56]
    4b88:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    4b8c:	20 00 20 d4	brk	#0x1
__pthread_workqueue_override_reset:
    4b90:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4b94:	fd 03 00 91	mov	x29, sp
    4b98:	00 40 80 52	mov	w0, #512
    4b9c:	01 00 80 d2	mov	x1, #0
    4ba0:	02 00 80 d2	mov	x2, #0
    4ba4:	03 00 80 d2	mov	x3, #0
    4ba8:	9f 1b 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    4bac:	1f 04 00 31	cmn	w0, #1
    4bb0:	81 00 00 54	b.ne	0x4bc0
    4bb4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    4bb8:	08 05 40 f9	ldr	x8, [x8, #8]
    4bbc:	00 01 40 b9	ldr	w0, [x8]
    4bc0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4bc4:	c0 03 5f d6	ret
__pthread_workqueue_should_narrow:
    4bc8:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4bcc:	fd 03 00 91	mov	x29, sp
    4bd0:	e2 03 00 aa	mov	x2, x0
    4bd4:	00 40 80 52	mov	w0, #512
    4bd8:	01 00 80 d2	mov	x1, #0
    4bdc:	03 00 80 52	mov	w3, #0
    4be0:	e8 1b 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    4be4:	08 04 00 51	sub	w8, w0, #1
    4be8:	1f 09 00 31	cmn	w8, #2
    4bec:	e0 27 9f 1a	cset	w0, lo
    4bf0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    4bf4:	c0 03 5f d6	ret
_pthread_get_stacksize_np:
    4bf8:	ff 03 01 d1	sub	sp, sp, #64
    4bfc:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    4c00:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    4c04:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    4c08:	fd c3 00 91	add	x29, sp, #48
    4c0c:	80 04 00 b4	cbz	x0, 0x4c9c
    4c10:	f3 03 00 aa	mov	x19, x0
    4c14:	08 01 00 90	adrp	x8, 32 ; 0x24000
    4c18:	08 25 40 f9	ldr	x8, [x8, #72]
    4c1c:	1f 01 00 eb	cmp	x8, x0
    4c20:	41 01 00 54	b.ne	0x4c48
    4c24:	75 00 00 90	adrp	x21, 12 ; 0x10000
    4c28:	b5 32 41 f9	ldr	x21, [x21, #608] ; literal pool symbol address: _vm_page_size
    4c2c:	69 2a 4b a9	ldp	x9, x10, [x19, #176]
    4c30:	ab 02 40 f9	ldr	x11, [x21]
    4c34:	34 01 0a cb	sub	x20, x9, x10
    4c38:	8a 02 0b 8b	add	x10, x20, x11
    4c3c:	69 66 40 f9	ldr	x9, [x19, #200]
    4c40:	5f 01 09 eb	cmp	x10, x9
    4c44:	81 03 00 54	b.ne	0x4cb4
    4c48:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    4c4c:	29 81 03 d1	sub	x9, x9, #224
    4c50:	3f 01 13 eb	cmp	x9, x19
    4c54:	80 02 00 54	b.eq	0x4ca4
    4c58:	1f 01 13 eb	cmp	x8, x19
    4c5c:	40 02 00 54	b.eq	0x4ca4
    4c60:	00 01 00 90	adrp	x0, 32 ; 0x24000
    4c64:	00 10 01 91	add	x0, x0, #68
    4c68:	a1 00 a0 52	mov	w1, #327680
    4c6c:	1f 1c 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    4c70:	08 01 00 90	adrp	x8, 32 ; 0x24000
    4c74:	08 01 40 f9	ldr	x8, [x8]
    4c78:	a8 00 00 b4	cbz	x8, 0x4c8c
    4c7c:	1f 01 13 eb	cmp	x8, x19
    4c80:	e0 02 00 54	b.eq	0x4cdc
    4c84:	08 09 40 f9	ldr	x8, [x8, #16]
    4c88:	a8 ff ff b5	cbnz	x8, 0x4c7c
    4c8c:	00 01 00 90	adrp	x0, 32 ; 0x24000
    4c90:	00 10 01 91	add	x0, x0, #68
    4c94:	18 1c 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    4c98:	1d 00 00 14	b	0x4d0c
    4c9c:	74 00 80 52	mov	w20, #3
    4ca0:	1c 00 00 14	b	0x4d10
    4ca4:	68 26 4b a9	ldp	x8, x9, [x19, #176]
    4ca8:	14 01 09 cb	sub	x20, x8, x9
    4cac:	34 03 00 b5	cbnz	x20, 0x4d10
    4cb0:	17 00 00 14	b	0x4d0c
    4cb4:	b6 00 00 90	adrp	x22, 20 ; 0x18000
    4cb8:	c8 02 40 f9	ldr	x8, [x22]
    4cbc:	e8 03 00 b5	cbnz	x8, 0x4d38
    4cc0:	ff 7f 00 a9	stp	xzr, xzr, [sp]
    4cc4:	e1 03 00 91	mov	x1, sp
    4cc8:	60 00 80 52	mov	w0, #3
    4ccc:	dd 1b 00 94	bl	0xbc40 ; symbol stub for: _getrlimit
    4cd0:	c0 02 00 34	cbz	w0, 0x4d28
    4cd4:	c8 02 40 f9	ldr	x8, [x22]
    4cd8:	16 00 00 14	b	0x4d30
    4cdc:	68 02 40 f9	ldr	x8, [x19]
    4ce0:	09 01 00 90	adrp	x9, 32 ; 0x24000
    4ce4:	29 35 40 f9	ldr	x9, [x9, #104]
    4ce8:	28 01 08 ca	eor	x8, x9, x8
    4cec:	1f 01 13 eb	cmp	x8, x19
    4cf0:	41 03 00 54	b.ne	0x4d58
    4cf4:	68 26 4b a9	ldp	x8, x9, [x19, #176]
    4cf8:	14 01 09 cb	sub	x20, x8, x9
    4cfc:	00 01 00 90	adrp	x0, 32 ; 0x24000
    4d00:	00 10 01 91	add	x0, x0, #68
    4d04:	fc 1b 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    4d08:	54 00 00 b5	cbnz	x20, 0x4d10
    4d0c:	14 01 a0 52	mov	w20, #524288
    4d10:	e0 03 14 aa	mov	x0, x20
    4d14:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    4d18:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    4d1c:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    4d20:	ff 03 01 91	add	sp, sp, #64
    4d24:	c0 03 5f d6	ret
    4d28:	e8 03 40 f9	ldr	x8, [sp]
    4d2c:	c8 02 00 f9	str	x8, [x22]
    4d30:	08 ff ff b4	cbz	x8, 0x4d10
    4d34:	69 66 40 f9	ldr	x9, [x19, #200]
    4d38:	1f 01 09 eb	cmp	x8, x9
    4d3c:	a8 fe ff 54	b.hi	0x4d10
    4d40:	a9 02 40 f9	ldr	x9, [x21]
    4d44:	08 01 09 8b	add	x8, x8, x9
    4d48:	08 05 00 d1	sub	x8, x8, #1
    4d4c:	e9 03 09 cb	neg	x9, x9
    4d50:	14 01 09 8a	and	x20, x8, x9
    4d54:	ef ff ff 17	b	0x4d10
    4d58:	f9 19 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_mutex_trylock:
    4d5c:	08 00 40 f9	ldr	x8, [x0]
    4d60:	49 8b 8a 52	mov	w9, #21594
    4d64:	a9 aa a9 72	movk	w9, #19797, lsl #16
    4d68:	1f 01 09 eb	cmp	x8, x9
    4d6c:	41 03 00 54	b.ne	0x4dd4
    4d70:	08 0c 40 b9	ldr	w8, [x0, #12]
    4d74:	09 09 1a 12	and	w9, w8, #0x1c0
    4d78:	3f 01 01 71	cmp	w9, #64
    4d7c:	00 03 00 54	b.eq	0x4ddc
    4d80:	28 03 70 37	tbnz	w8, #14, 0x4de4
    4d84:	08 7c 00 91	add	x8, x0, #31
    4d88:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    4d8c:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    4d90:	29 81 5f f8	ldur	x9, [x9, #-8]
    4d94:	0a 9c 00 91	add	x10, x0, #39
    4d98:	4a f1 7d 92	and	x10, x10, #0xfffffffffffffff8
    4d9c:	4b 01 40 f9	ldr	x11, [x10]
    4da0:	4b 01 08 37	tbnz	w11, #1, 0x4dc8
    4da4:	6c 01 7f b2	orr	x12, x11, #0x2
    4da8:	ed 03 0b aa	mov	x13, x11
    4dac:		.long	0xc8ed7d4c
    4db0:	bf 01 0b eb	cmp	x13, x11
    4db4:	eb 03 0d aa	mov	x11, x13
    4db8:	41 ff ff 54	b.ne	0x4da0
    4dbc:	00 00 80 52	mov	w0, #0
    4dc0:	09 01 00 f9	str	x9, [x8]
    4dc4:	c0 03 5f d6	ret
    4dc8:	bf 39 03 d5	dmb	ishld
    4dcc:	00 02 80 52	mov	w0, #16
    4dd0:	c0 03 5f d6	ret
    4dd4:	21 00 80 52	mov	w1, #1
    4dd8:	3a f5 ff 17	b	__pthread_mutex_lock_init_slow
    4ddc:	21 00 80 52	mov	w1, #1
    4de0:	66 17 00 14	b	__pthread_mutex_fairshare_lock
    4de4:	08 00 80 52	mov	w8, #0
    4de8:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    4dec:	29 19 40 b9	ldr	w9, [x9, #24]
    4df0:	29 75 1e 12	and	w9, w9, #0xfffffffc
    4df4:	0a 60 00 91	add	x10, x0, #24
    4df8:		.long	0x88e87d49
    4dfc:	09 02 80 52	mov	w9, #16
    4e00:	1f 01 00 71	cmp	w8, #0
    4e04:	e0 03 89 1a	csel	w0, wzr, w9, eq
    4e08:	c0 03 5f d6	ret
_pthread_rwlock_init:
    4e0c:	28 88 89 52	mov	w8, #19521
    4e10:	e8 4a aa 72	movk	w8, #21079, lsl #16
    4e14:	81 00 00 b4	cbz	x1, 0x4e24
    4e18:	29 00 40 f9	ldr	x9, [x1]
    4e1c:	3f 01 08 eb	cmp	x9, x8
    4e20:	01 09 00 54	b.ne	0x4f40
    4e24:	09 00 40 f9	ldr	x9, [x0]
    4e28:	08 29 00 91	add	x8, x8, #10
    4e2c:	3f 01 08 eb	cmp	x9, x8
    4e30:	81 02 00 54	b.ne	0x4e80
    4e34:	08 bc 00 91	add	x8, x0, #47
    4e38:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    4e3c:	02 25 40 29	ldp	w2, w9, [x8]
    4e40:	03 29 41 29	ldp	w3, w10, [x8, #8]
    4e44:	eb 03 03 2a	mov	w11, w3
    4e48:	65 81 0a aa	orr	x5, x11, x10, lsl #32
    4e4c:	ea 03 02 2a	mov	w10, w2
    4e50:	44 81 09 aa	orr	x4, x10, x9, lsl #32
    4e54:	e2 03 04 aa	mov	x2, x4
    4e58:	e3 03 05 aa	mov	x3, x5
    4e5c:		.long	0x48227d04
    4e60:	6a fc 60 d3	lsr	x10, x3, #32
    4e64:	49 fc 60 d3	lsr	x9, x2, #32
    4e68:	7f 00 05 eb	cmp	x3, x5
    4e6c:	40 00 44 fa	ccmp	x2, x4, #0, eq
    4e70:	a1 fe ff 54	b.ne	0x4e44
    4e74:	48 5c 18 12	and	w8, w2, #0xffffff00
    4e78:	1f 01 03 6b	cmp	w8, w3
    4e7c:	61 06 00 54	b.ne	0x4f48
    4e80:	1f 08 00 b9	str	wzr, [x0, #8]
    4e84:	0b 60 00 91	add	x11, x0, #24
    4e88:	08 7c 00 91	add	x8, x0, #31
    4e8c:	09 f1 7d 92	and	x9, x8, #0xfffffffffffffff8
    4e90:	0a 80 00 91	add	x10, x0, #32
    4e94:	08 bc 00 91	add	x8, x0, #47
    4e98:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    4e9c:	7f 01 09 eb	cmp	x11, x9
    4ea0:	c0 00 00 54	b.eq	0x4eb8
    4ea4:	0b 0c 40 b9	ldr	w11, [x0, #12]
    4ea8:	6b 01 03 32	orr	w11, w11, #0x20000000
    4eac:	0b 0c 00 b9	str	w11, [x0, #12]
    4eb0:	0b 00 80 92	mov	x11, #-1
    4eb4:	0b 0c 00 f9	str	x11, [x0, #24]
    4eb8:	5f 01 08 eb	cmp	x10, x8
    4ebc:	60 00 00 54	b.eq	0x4ec8
    4ec0:	0b 00 80 92	mov	x11, #-1
    4ec4:	4b 2d 00 a9	stp	x11, x11, [x10]
    4ec8:	0a 00 80 92	mov	x10, #-1
    4ecc:	0a 28 03 a9	stp	x10, x10, [x0, #48]
    4ed0:	3f 01 00 f9	str	xzr, [x9]
    4ed4:	29 00 00 f0	adrp	x9, 7 ; 0xb000
    4ed8:	20 6d 47 fd	ldr	d0, [x9, #3800]
    4edc:	00 01 00 fd	str	d0, [x8]
    4ee0:	1f 09 00 b9	str	wzr, [x8, #8]
    4ee4:	e1 00 00 b4	cbz	x1, 0x4f00
    4ee8:	28 08 40 b9	ldr	w8, [x1, #8]
    4eec:	1f 05 00 71	cmp	w8, #1
    4ef0:	81 00 00 54	b.ne	0x4f00
    4ef4:	09 02 80 52	mov	w9, #16
    4ef8:	0a 00 a8 52	mov	w10, #1073741824
    4efc:	03 00 00 14	b	0x4f08
    4f00:	09 04 80 52	mov	w9, #32
    4f04:	0a 00 b0 52	mov	w10, #-2147483648
    4f08:	08 00 80 52	mov	w8, #0
    4f0c:	0b 0c 40 b9	ldr	w11, [x0, #12]
    4f10:	6b 75 00 12	and	w11, w11, #0x3fffffff
    4f14:	6a 01 0a 2a	orr	w10, w11, w10
    4f18:	0a a4 01 29	stp	w10, w9, [x0, #12]
    4f1c:	e9 03 20 aa	mvn	x9, x0
    4f20:	09 20 00 f9	str	x9, [x0, #64]
    4f24:	69 89 89 52	mov	w9, #19531
    4f28:	e9 4a aa 72	movk	w9, #21079, lsl #16
    4f2c:	09 c4 00 b9	str	w9, [x0, #196]
    4f30:	09 14 00 b9	str	w9, [x0, #20]
    4f34:	1f 04 00 b9	str	wzr, [x0, #4]
    4f38:	09 fc 9f 88	stlr	w9, [x0]
    4f3c:	04 00 00 14	b	0x4f4c
    4f40:	c8 02 80 52	mov	w8, #22
    4f44:	02 00 00 14	b	0x4f4c
    4f48:	08 02 80 52	mov	w8, #16
    4f4c:	e0 03 08 aa	mov	x0, x8
    4f50:	c0 03 5f d6	ret
__pthread_qos_class_decode:
    4f54:	08 40 a4 52	mov	w8, #570425344
    4f58:	1f 00 08 ea	tst	x0, x8
    4f5c:	e8 17 9f 1a	cset	w8, eq
    4f60:	1f 14 78 f2	tst	x0, #0x3f00
    4f64:	e9 03 88 1a	csel	w9, wzr, w8, eq
    4f68:	3f 05 00 71	cmp	w9, #1
    4f6c:	21 01 00 54	b.ne	0x4f90
    4f70:	08 34 08 53	ubfx	w8, w0, #8, #6
    4f74:	08 01 00 34	cbz	w8, 0x4f94
    4f78:	08 01 c0 5a	rbit	w8, w8
    4f7c:	08 11 c0 5a	clz	w8, w8
    4f80:	1f 15 00 71	cmp	w8, #5
    4f84:	28 02 00 54	b.hi	0x4fc8
    4f88:	08 05 00 11	add	w8, w8, #1
    4f8c:	02 00 00 14	b	0x4f94
    4f90:	08 00 80 52	mov	w8, #0
    4f94:	2a 00 00 f0	adrp	x10, 7 ; 0xb000
    4f98:	4a 31 39 91	add	x10, x10, #3660
    4f9c:	48 59 68 b8	ldr	w8, [x10, w8, uxtw #2]
    4fa0:	a1 00 00 b4	cbz	x1, 0x4fb4
    4fa4:	0a 1c 00 13	sxtb	w10, w0
    4fa8:	3f 01 00 71	cmp	w9, #0
    4fac:	e9 07 8a 1a	csinc	w9, wzr, w10, eq
    4fb0:	29 00 00 b9	str	w9, [x1]
    4fb4:	62 00 00 b4	cbz	x2, 0x4fc0
    4fb8:	09 1c 68 92	and	x9, x0, #0xff000000
    4fbc:	49 00 00 f9	str	x9, [x2]
    4fc0:	e0 03 08 aa	mov	x0, x8
    4fc4:	c0 03 5f d6	ret
    4fc8:	08 00 80 52	mov	w8, #0
    4fcc:	c1 fe ff b5	cbnz	x1, 0x4fa4
    4fd0:	f9 ff ff 17	b	0x4fb4
__pthread_wqthread_exit:
    4fd4:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    4fd8:	fd 03 00 91	mov	x29, sp
    4fdc:	08 80 40 f9	ldr	x8, [x0, #256]
    4fe0:	09 40 a4 52	mov	w9, #570425344
    4fe4:	09 01 09 8a	and	x9, x8, x9
    4fe8:	08 0d 78 92	and	x8, x8, #0xf00
    4fec:	3f 01 00 f1	cmp	x9, #0
    4ff0:	04 09 40 fa	ccmp	x8, #0, #4, eq
    4ff4:	61 00 00 54	b.ne	0x5000
    4ff8:	e8 1f 81 52	mov	w8, #2303
    4ffc:	08 80 00 f9	str	x8, [x0, #256]
    5000:	01 00 80 d2	mov	x1, #0
    5004:	5a 0b 00 94	bl	__pthread_exit
_pthread_exit:
    5008:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    500c:	fd 03 00 91	mov	x29, sp
    5010:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    5014:	09 e1 56 78	ldurh	w9, [x8, #-146]
    5018:	49 01 50 37	tbnz	w9, #10, 0x5040
    501c:	e1 03 00 aa	mov	x1, x0
    5020:	00 81 03 d1	sub	x0, x8, #224
    5024:	08 00 40 f9	ldr	x8, [x0]
    5028:	e9 00 00 f0	adrp	x9, 31 ; 0x24000
    502c:	29 35 40 f9	ldr	x9, [x9, #104]
    5030:	28 01 08 ca	eor	x8, x9, x8
    5034:	1f 01 00 eb	cmp	x8, x0
    5038:	41 01 00 54	b.ne	0x5060
    503c:	4c 0b 00 94	bl	__pthread_exit
    5040:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    5044:	34 00 00 f0	adrp	x20, 7 ; 0xc000
    5048:	94 6a 08 91	add	x20, x20, #538 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_exit() called from a thread not created by pthread_create()"
    504c:	75 00 00 f0	adrp	x21, 15 ; 0x14000
    5050:	b5 22 00 91	add	x21, x21, #8
    5054:	b4 06 00 f9	str	x20, [x21, #8]
    5058:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    505c:	20 00 20 d4	brk	#0x1
    5060:	22 00 00 f0	adrp	x2, 7 ; 0xc000
    5064:	42 10 0e 91	add	x2, x2, #900 ; literal pool for: "pthread_t was corrupted"
    5068:	40 02 80 52	mov	w0, #18
    506c:	81 00 80 52	mov	w1, #4
    5070:	03 00 80 d2	mov	x3, #0
    5074:	ed 1a 00 94	bl	0xbc28 ; symbol stub for: _abort_with_reason
__pthread_setcancelstate_exit:
    5078:	09 4c 41 79	ldrh	w9, [x0, #166]
    507c:	48 04 80 52	mov	w8, #34
    5080:	ea 03 09 aa	mov	x10, x9
    5084:	2b 75 1e 12	and	w11, w9, #0xfffffffc
    5088:	6b 01 08 2a	orr	w11, w11, w8
    508c:	0c 98 02 91	add	x12, x0, #166
    5090:		.long	0x48aa7d8b
    5094:	5f 21 29 6b	cmp	w10, w9, uxth
    5098:	e9 03 0a aa	mov	x9, x10
    509c:	41 ff ff 54	b.ne	0x5084
    50a0:	c0 03 5f d6	ret
__pthread_tsd_cleanup:
    50a4:	fc 6f ba a9	stp	x28, x27, [sp, #-96]!
    50a8:	fa 67 01 a9	stp	x26, x25, [sp, #16]
    50ac:	f8 5f 02 a9	stp	x24, x23, [sp, #32]
    50b0:	f6 57 03 a9	stp	x22, x21, [sp, #48]
    50b4:	f4 4f 04 a9	stp	x20, x19, [sp, #64]
    50b8:	fd 7b 05 a9	stp	x29, x30, [sp, #80]
    50bc:	fd 43 01 91	add	x29, sp, #80
    50c0:	f3 03 00 aa	mov	x19, x0
    50c4:	c8 00 00 f0	adrp	x8, 27 ; 0x20000
    50c8:	08 01 41 39	ldrb	w8, [x8, #64]
    50cc:	16 01 00 f0	adrp	x22, 35 ; 0x28000
    50d0:	d6 e2 00 91	add	x22, x22, #56
    50d4:	14 00 80 52	mov	w20, #0
    50d8:	15 80 23 91	add	x21, x0, #2272
    50dc:	17 20 13 91	add	x23, x0, #1224
    50e0:	48 0b 00 36	tbz	w8, #0, 0x5248
    50e4:	68 9a 40 79	ldrh	w8, [x19, #76]
    50e8:	1f 01 04 71	cmp	w8, #256
    50ec:	23 02 00 54	b.lo	0x5130
    50f0:	18 00 80 d2	mov	x24, #0
    50f4:	c9 0e 18 8b	add	x9, x22, x24, lsl #3
    50f8:	29 01 44 f9	ldr	x9, [x9, #2048]
    50fc:	29 01 00 b4	cbz	x9, 0x5120
    5100:	a0 7a 78 f8	ldr	x0, [x21, x24, lsl #3]
    5104:	e0 00 00 b4	cbz	x0, 0x5120
    5108:	bf 7a 38 f8	str	xzr, [x21, x24, lsl #3]
    510c:	3f 05 00 b1	cmn	x9, #1
    5110:	80 00 00 54	b.eq	0x5120
    5114:	e8 03 29 aa	mvn	x8, x9
    5118:	00 01 3f d6	blr	x8
    511c:	68 9a 40 79	ldrh	w8, [x19, #76]
    5120:	09 03 04 91	add	x9, x24, #256
    5124:	18 07 00 91	add	x24, x24, #1
    5128:	3f 21 28 eb	cmp	x9, w8, uxth
    512c:	43 fe ff 54	b.lo	0x50f4
    5130:	18 00 80 d2	mov	x24, #0
    5134:	c8 02 18 8b	add	x8, x22, x24
    5138:	08 f5 41 f9	ldr	x8, [x8, #1000]
    513c:	08 01 00 b4	cbz	x8, 0x515c
    5140:	e0 6a 78 f8	ldr	x0, [x23, x24]
    5144:	c0 00 00 b4	cbz	x0, 0x515c
    5148:	ff 6a 38 f8	str	xzr, [x23, x24]
    514c:	1f 05 00 b1	cmn	x8, #1
    5150:	60 00 00 54	b.eq	0x515c
    5154:	e8 03 28 aa	mvn	x8, x8
    5158:	00 01 3f d6	blr	x8
    515c:	18 23 00 91	add	x24, x24, #8
    5160:	1f a3 0a f1	cmp	x24, #680
    5164:	81 fe ff 54	b.ne	0x5134
    5168:	94 06 00 11	add	w20, w20, #1
    516c:	9f 12 00 71	cmp	w20, #4
    5170:	a1 fb ff 54	b.ne	0x50e4
    5174:	17 00 80 52	mov	w23, #0
    5178:	7f 9a 00 79	strh	wzr, [x19, #76]
    517c:	78 c2 04 91	add	x24, x19, #304
    5180:	79 82 23 91	add	x25, x19, #2272
    5184:	fa 00 00 f0	adrp	x26, 31 ; 0x24000
    5188:	db 00 00 f0	adrp	x27, 27 ; 0x20000
    518c:	34 00 00 f0	adrp	x20, 7 ; 0xc000
    5190:	94 36 2c 91	add	x20, x20, #2829 ; literal pool for: "pthread_tsd"
    5194:	35 00 00 f0	adrp	x21, 7 ; 0xc000
    5198:	b5 66 2c 91	add	x21, x21, #2841 ; literal pool for: "warning: dynamic tsd keys dirty after static key cleanup loop."
    519c:	48 3b 40 b9	ldr	w8, [x26, #56]
    51a0:	1f 29 00 71	cmp	w8, #10
    51a4:	23 02 00 54	b.lo	0x51e8
    51a8:	1c 00 80 d2	mov	x28, #0
    51ac:	c9 0e 1c 8b	add	x9, x22, x28, lsl #3
    51b0:	29 29 40 f9	ldr	x9, [x9, #80]
    51b4:	29 01 00 b4	cbz	x9, 0x51d8
    51b8:	00 7b 7c f8	ldr	x0, [x24, x28, lsl #3]
    51bc:	e0 00 00 b4	cbz	x0, 0x51d8
    51c0:	1f 7b 3c f8	str	xzr, [x24, x28, lsl #3]
    51c4:	3f 05 00 b1	cmn	x9, #1
    51c8:	80 00 00 54	b.eq	0x51d8
    51cc:	e8 03 29 aa	mvn	x8, x9
    51d0:	00 01 3f d6	blr	x8
    51d4:	48 3b 40 b9	ldr	w8, [x26, #56]
    51d8:	89 2b 00 91	add	x9, x28, #10
    51dc:	9c 07 00 91	add	x28, x28, #1
    51e0:	3f 01 08 eb	cmp	x9, x8
    51e4:	43 fe ff 54	b.lo	0x51ac
    51e8:	68 07 41 39	ldrb	w8, [x27, #65]
    51ec:	1f 05 00 71	cmp	w8, #1
    51f0:	41 02 00 54	b.ne	0x5238
    51f4:	68 9a 40 79	ldrh	w8, [x19, #76]
    51f8:	08 02 00 34	cbz	w8, 0x5238
    51fc:	1c 00 80 d2	mov	x28, #0
    5200:	c8 02 1c 8b	add	x8, x22, x28
    5204:	08 01 44 f9	ldr	x8, [x8, #2048]
    5208:	28 01 00 b4	cbz	x8, 0x522c
    520c:	29 6b 7c f8	ldr	x9, [x25, x28]
    5210:	1f 05 00 b1	cmn	x8, #1
    5214:	24 19 40 fa	ccmp	x9, #0, #4, ne
    5218:	a0 00 00 54	b.eq	0x522c
    521c:	60 00 80 52	mov	w0, #3
    5220:	e1 03 14 aa	mov	x1, x20
    5224:	e2 03 15 aa	mov	x2, x21
    5228:	77 1a 00 94	bl	0xbc04 ; symbol stub for: __simple_asl_log
    522c:	9c 23 00 91	add	x28, x28, #8
    5230:	9f 07 40 f1	cmp	x28, #1, lsl #12
    5234:	61 fe ff 54	b.ne	0x5200
    5238:	f7 06 00 11	add	w23, w23, #1
    523c:	ff 12 00 71	cmp	w23, #4
    5240:	e1 fa ff 54	b.ne	0x519c
    5244:	3b 00 00 14	b	0x5330
    5248:	78 c2 04 91	add	x24, x19, #304
    524c:	f9 00 00 f0	adrp	x25, 31 ; 0x24000
    5250:	68 9a 40 79	ldrh	w8, [x19, #76]
    5254:	1f 01 04 71	cmp	w8, #256
    5258:	23 02 00 54	b.lo	0x529c
    525c:	1a 00 80 d2	mov	x26, #0
    5260:	c9 0e 1a 8b	add	x9, x22, x26, lsl #3
    5264:	29 01 44 f9	ldr	x9, [x9, #2048]
    5268:	29 01 00 b4	cbz	x9, 0x528c
    526c:	a0 7a 7a f8	ldr	x0, [x21, x26, lsl #3]
    5270:	e0 00 00 b4	cbz	x0, 0x528c
    5274:	bf 7a 3a f8	str	xzr, [x21, x26, lsl #3]
    5278:	3f 05 00 b1	cmn	x9, #1
    527c:	80 00 00 54	b.eq	0x528c
    5280:	e8 03 29 aa	mvn	x8, x9
    5284:	00 01 3f d6	blr	x8
    5288:	68 9a 40 79	ldrh	w8, [x19, #76]
    528c:	49 03 04 91	add	x9, x26, #256
    5290:	5a 07 00 91	add	x26, x26, #1
    5294:	3f 21 28 eb	cmp	x9, w8, uxth
    5298:	43 fe ff 54	b.lo	0x5260
    529c:	1a 00 80 d2	mov	x26, #0
    52a0:	c8 02 1a 8b	add	x8, x22, x26
    52a4:	08 f5 41 f9	ldr	x8, [x8, #1000]
    52a8:	08 01 00 b4	cbz	x8, 0x52c8
    52ac:	e0 6a 7a f8	ldr	x0, [x23, x26]
    52b0:	c0 00 00 b4	cbz	x0, 0x52c8
    52b4:	ff 6a 3a f8	str	xzr, [x23, x26]
    52b8:	1f 05 00 b1	cmn	x8, #1
    52bc:	60 00 00 54	b.eq	0x52c8
    52c0:	e8 03 28 aa	mvn	x8, x8
    52c4:	00 01 3f d6	blr	x8
    52c8:	5a 23 00 91	add	x26, x26, #8
    52cc:	5f a3 0a f1	cmp	x26, #680
    52d0:	81 fe ff 54	b.ne	0x52a0
    52d4:	28 3b 40 b9	ldr	w8, [x25, #56]
    52d8:	1f 29 00 71	cmp	w8, #10
    52dc:	23 02 00 54	b.lo	0x5320
    52e0:	1a 00 80 d2	mov	x26, #0
    52e4:	c9 0e 1a 8b	add	x9, x22, x26, lsl #3
    52e8:	29 29 40 f9	ldr	x9, [x9, #80]
    52ec:	29 01 00 b4	cbz	x9, 0x5310
    52f0:	00 7b 7a f8	ldr	x0, [x24, x26, lsl #3]
    52f4:	e0 00 00 b4	cbz	x0, 0x5310
    52f8:	1f 7b 3a f8	str	xzr, [x24, x26, lsl #3]
    52fc:	3f 05 00 b1	cmn	x9, #1
    5300:	80 00 00 54	b.eq	0x5310
    5304:	e8 03 29 aa	mvn	x8, x9
    5308:	00 01 3f d6	blr	x8
    530c:	28 3b 40 b9	ldr	w8, [x25, #56]
    5310:	49 2b 00 91	add	x9, x26, #10
    5314:	5a 07 00 91	add	x26, x26, #1
    5318:	3f 01 08 eb	cmp	x9, x8
    531c:	43 fe ff 54	b.lo	0x52e4
    5320:	94 06 00 11	add	w20, w20, #1
    5324:	9f 12 00 71	cmp	w20, #4
    5328:	41 f9 ff 54	b.ne	0x5250
    532c:	7f 9a 00 79	strh	wzr, [x19, #76]
    5330:	fd 7b 45 a9	ldp	x29, x30, [sp, #80]
    5334:	f4 4f 44 a9	ldp	x20, x19, [sp, #64]
    5338:	f6 57 43 a9	ldp	x22, x21, [sp, #48]
    533c:	f8 5f 42 a9	ldp	x24, x23, [sp, #32]
    5340:	fa 67 41 a9	ldp	x26, x25, [sp, #16]
    5344:	fc 6f c6 a8	ldp	x28, x27, [sp], #96
    5348:	c0 03 5f d6	ret
__pthread_terminate_invoke:
    534c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    5350:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    5354:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    5358:	fd 83 00 91	add	x29, sp, #32
    535c:	f3 03 01 aa	mov	x19, x1
    5360:	f4 03 00 aa	mov	x20, x0
    5364:	15 00 80 d2	mov	x21, #0
    5368:	48 00 00 f0	adrp	x8, 11 ; 0x10000
    536c:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    5370:	08 01 40 f9	ldr	x8, [x8]
    5374:	e8 03 08 cb	neg	x8, x8
    5378:	a9 03 00 ca	eor	x9, x29, x0
    537c:	3f 01 08 ea	tst	x9, x8
    5380:	c1 00 00 54	b.ne	0x5398
    5384:	f5 0f 40 d1	sub	x21, sp, #3, lsl #12
    5388:	bf 02 00 91	mov	sp, x21
    538c:	e0 03 15 aa	mov	x0, x21
    5390:	01 00 86 52	mov	w1, #12288
    5394:	f0 0f 00 94	bl	_bzero
    5398:	e0 03 14 aa	mov	x0, x20
    539c:	e1 03 13 aa	mov	x1, x19
    53a0:	01 00 00 94	bl	__pthread_terminate
__pthread_terminate:
    53a4:	fc 6f ba a9	stp	x28, x27, [sp, #-96]!
    53a8:	fa 67 01 a9	stp	x26, x25, [sp, #16]
    53ac:	f8 5f 02 a9	stp	x24, x23, [sp, #32]
    53b0:	f6 57 03 a9	stp	x22, x21, [sp, #48]
    53b4:	f4 4f 04 a9	stp	x20, x19, [sp, #64]
    53b8:	fd 7b 05 a9	stp	x29, x30, [sp, #80]
    53bc:	fd 43 01 91	add	x29, sp, #80
    53c0:	f6 03 01 aa	mov	x22, x1
    53c4:	f3 03 00 aa	mov	x19, x0
    53c8:	c8 00 00 f0	adrp	x8, 27 ; 0x20000
    53cc:	08 19 40 f9	ldr	x8, [x8, #48]
    53d0:	68 00 00 b4	cbz	x8, 0x53dc
    53d4:	e0 03 13 aa	mov	x0, x19
    53d8:	f9 0f 00 94	bl	__pthread_introspection_hook_callout_thread_terminate
    53dc:	77 66 4c a9	ldp	x23, x25, [x19, #192]
    53e0:	e8 02 19 8b	add	x8, x23, x25
    53e4:	ff 02 13 eb	cmp	x23, x19
    53e8:	00 31 53 fa	ccmp	x8, x19, #0, lo
    53ec:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    53f0:	28 02 00 54	b.hi	0x5434
    53f4:	f8 03 08 aa	mov	x24, x8
    53f8:	08 25 40 f9	ldr	x8, [x8, #72]
    53fc:	1f 01 13 eb	cmp	x8, x19
    5400:	01 03 00 54	b.ne	0x5460
    5404:	74 5a 40 f9	ldr	x20, [x19, #176]
    5408:	e0 03 13 aa	mov	x0, x19
    540c:	fb fd ff 97	bl	_pthread_get_stacksize_np
    5410:	97 02 00 cb	sub	x23, x20, x0
    5414:	2b 07 00 94	bl	__pthread_current_stack_address
    5418:	48 00 00 f0	adrp	x8, 11 ; 0x10000
    541c:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    5420:	08 01 40 f9	ldr	x8, [x8]
    5424:	e8 03 08 cb	neg	x8, x8
    5428:	08 00 08 8a	and	x8, x0, x8
    542c:	14 01 17 cb	sub	x20, x8, x23
    5430:	0d 00 00 14	b	0x5464
    5434:	f8 03 08 aa	mov	x24, x8
    5438:	68 02 17 cb	sub	x8, x19, x23
    543c:	49 00 00 f0	adrp	x9, 11 ; 0x10000
    5440:	29 31 41 f9	ldr	x9, [x9, #608] ; literal pool symbol address: _vm_page_size
    5444:	29 01 40 f9	ldr	x9, [x9]
    5448:	e9 03 09 cb	neg	x9, x9
    544c:	14 01 09 8a	and	x20, x8, x9
    5450:	e8 02 14 8b	add	x8, x23, x20
    5454:	29 03 14 cb	sub	x9, x25, x20
    5458:	68 26 0c a9	stp	x8, x9, [x19, #192]
    545c:	02 00 00 14	b	0x5464
    5460:	14 00 80 d2	mov	x20, #0
    5464:	75 fa 40 b9	ldr	w21, [x19, #248]
    5468:	60 22 41 b9	ldr	w0, [x19, #288]
    546c:	80 00 00 34	cbz	w0, 0x547c
    5470:	7f 22 01 b9	str	wzr, [x19, #288]
    5474:	01 00 80 52	mov	w1, #0
    5478:	2e 1a 00 94	bl	0xbd30 ; symbol stub for: _thread_destruct_special_reply_port
    547c:	60 f2 40 b9	ldr	w0, [x19, #240]
    5480:	40 00 00 34	cbz	w0, 0x5488
    5484:	13 1a 00 94	bl	0xbcd0 ; symbol stub for: _mig_dealloc_reply_port
    5488:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    548c:	00 10 01 91	add	x0, x0, #68
    5490:	a1 00 a0 52	mov	w1, #327680
    5494:	15 1a 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5498:	08 00 80 12	mov	w8, #-1
    549c:	68 36 00 b9	str	w8, [x19, #52]
    54a0:	76 16 00 f9	str	x22, [x19, #40]
    54a4:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    54a8:	1b 1d 40 b9	ldr	w27, [x8, #28]
    54ac:	69 07 00 51	sub	w9, w27, #1
    54b0:	09 1d 00 b9	str	w9, [x8, #28]
    54b4:	7a 12 40 f9	ldr	x26, [x19, #32]
    54b8:	7a 00 00 b5	cbnz	x26, 0x54c4
    54bc:	16 00 80 52	mov	w22, #0
    54c0:	04 00 00 14	b	0x54d0
    54c4:	e0 03 13 aa	mov	x0, x19
    54c8:	44 07 00 94	bl	__pthread_joiner_prepost_wake
    54cc:	f6 03 00 aa	mov	x22, x0
    54d0:	68 c6 40 39	ldrb	w8, [x19, #49]
    54d4:	1c 01 00 12	and	w28, w8, #0x1
    54d8:	88 00 00 36	tbz	w8, #0, 0x54e8
    54dc:	08 01 1f 32	orr	w8, w8, #0x2
    54e0:	68 c6 00 39	strb	w8, [x19, #49]
    54e4:	09 00 00 14	b	0x5508
    54e8:	68 26 41 a9	ldp	x8, x9, [x19, #16]
    54ec:	88 00 00 b5	cbnz	x8, 0x54fc
    54f0:	ea 00 00 f0	adrp	x10, 31 ; 0x24000
    54f4:	49 05 00 f9	str	x9, [x10, #8]
    54f8:	03 00 00 14	b	0x5504
    54fc:	09 0d 00 f9	str	x9, [x8, #24]
    5500:	69 0e 40 f9	ldr	x9, [x19, #24]
    5504:	28 01 00 f9	str	x8, [x9]
    5508:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    550c:	00 10 01 91	add	x0, x0, #68
    5510:	f9 19 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    5514:	1a 02 00 b4	cbz	x26, 0x5554
    5518:	e0 03 13 aa	mov	x0, x19
    551c:	48 07 00 94	bl	__pthread_joiner_wake
    5520:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    5524:	00 10 01 91	add	x0, x0, #68
    5528:	a1 00 a0 52	mov	w1, #327680
    552c:	ef 19 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5530:	68 12 40 f9	ldr	x8, [x19, #32]
    5534:	a8 00 00 b4	cbz	x8, 0x5548
    5538:	68 c6 40 39	ldrb	w8, [x19, #49]
    553c:	08 01 1f 32	orr	w8, w8, #0x2
    5540:	68 c6 00 39	strb	w8, [x19, #49]
    5544:	3c 00 80 52	mov	w28, #1
    5548:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    554c:	00 10 01 91	add	x0, x0, #68
    5550:	e9 19 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    5554:	5c 01 00 37	tbnz	w28, #0, 0x557c
    5558:	08 27 40 f9	ldr	x8, [x24, #72]
    555c:	1f 01 13 eb	cmp	x8, x19
    5560:	e0 00 00 54	b.eq	0x557c
    5564:	c8 00 00 f0	adrp	x8, 27 ; 0x20000
    5568:	08 19 40 f9	ldr	x8, [x8, #48]
    556c:	68 00 00 b4	cbz	x8, 0x5578
    5570:	e0 03 13 aa	mov	x0, x19
    5574:	2a 10 00 94	bl	__pthread_introspection_hook_callout_thread_destroy
    5578:	f4 03 19 aa	mov	x20, x25
    557c:	7f 07 00 71	cmp	w27, #1
    5580:	ac 00 00 54	b.gt	0x5594
    5584:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5588:	08 09 40 f9	ldr	x8, [x8, #16]
    558c:	00 00 80 52	mov	w0, #0
    5590:	00 01 3f d6	blr	x8
    5594:	9f 02 00 f1	cmp	x20, #0
    5598:	e0 03 97 9a	csel	x0, xzr, x23, eq
    559c:	e1 03 14 aa	mov	x1, x20
    55a0:	e2 03 15 aa	mov	x2, x21
    55a4:	e3 03 16 aa	mov	x3, x22
    55a8:	25 19 00 94	bl	0xba3c ; symbol stub for: ___bsdthread_terminate
    55ac:	e8 03 13 aa	mov	x8, x19
    55b0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    55b4:	34 00 00 f0	adrp	x20, 7 ; 0xc000
    55b8:	94 1a 13 91	add	x20, x20, #1222 ; literal pool for: "BUG IN LIBPTHREAD: thread didn't terminate"
    55bc:	75 00 00 f0	adrp	x21, 15 ; 0x14000
    55c0:	b5 22 00 91	add	x21, x21, #8
    55c4:	b4 06 00 f9	str	x20, [x21, #8]
    55c8:	a8 1e 00 f9	str	x8, [x21, #56]
    55cc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    55d0:	20 00 20 d4	brk	#0x1
_pthread_cond_init:
    55d4:	1f 08 00 f9	str	xzr, [x0, #16]
    55d8:	e8 03 00 aa	mov	x8, x0
    55dc:	1f 8d 01 b8	str	wzr, [x8, #24]!
    55e0:	1f fc 03 29	stp	wzr, wzr, [x0, #28]
    55e4:	09 0c 40 b9	ldr	w9, [x0, #12]
    55e8:	1f 09 40 f2	tst	x8, #0x7
    55ec:	ea 07 9f 1a	cset	w10, ne
    55f0:	48 09 03 53	lsl	w8, w10, #29
    55f4:	29 05 02 12	and	w9, w9, #0xc0000000
    55f8:	49 01 03 33	bfi	w9, w10, #29, #1
    55fc:	1f 24 01 29	stp	wzr, w9, [x0, #8]
    5600:	09 04 80 52	mov	w9, #32
    5604:	8a 03 80 52	mov	w10, #28
    5608:	49 01 89 9a	csel	x9, x10, x9, eq
    560c:	2a 00 80 52	mov	w10, #1
    5610:	0a 68 29 b8	str	w10, [x0, x9]
    5614:	81 00 00 b4	cbz	x1, 0x5624
    5618:	29 08 40 b9	ldr	w9, [x1, #8]
    561c:	08 79 09 2a	orr	w8, w8, w9, lsl #30
    5620:	02 00 00 14	b	0x5628
    5624:	08 01 01 32	orr	w8, w8, #0x80000000
    5628:	08 0c 00 b9	str	w8, [x0, #12]
    562c:	1f 04 00 b9	str	wzr, [x0, #4]
    5630:	88 c8 89 52	mov	w8, #20036
    5634:	e8 69 a8 72	movk	w8, #17231, lsl #16
    5638:	08 fc 9f 88	stlr	w8, [x0]
    563c:	00 00 80 52	mov	w0, #0
    5640:	c0 03 5f d6	ret
_pthread_attr_getstacksize:
    5644:	09 00 40 f9	ldr	x9, [x0]
    5648:	2a 88 88 52	mov	w10, #17473
    564c:	0a 89 aa 72	movk	w10, #21576, lsl #16
    5650:	3f 01 0a eb	cmp	x9, x10
    5654:	21 01 00 54	b.ne	0x5678
    5658:	e8 03 00 aa	mov	x8, x0
    565c:	00 00 80 52	mov	w0, #0
    5660:	08 0d 40 f9	ldr	x8, [x8, #24]
    5664:	09 01 a0 52	mov	w9, #524288
    5668:	1f 01 00 f1	cmp	x8, #0
    566c:	28 01 88 9a	csel	x8, x9, x8, eq
    5670:	28 00 00 f9	str	x8, [x1]
    5674:	c0 03 5f d6	ret
    5678:	c0 02 80 52	mov	w0, #22
    567c:	c0 03 5f d6	ret
_pthread_attr_setstacksize:
    5680:	3f 2c 40 f2	tst	x1, #0xfff
    5684:	01 01 00 54	b.ne	0x56a4
    5688:	48 00 00 f0	adrp	x8, 11 ; 0x10000
    568c:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    5690:	08 01 40 f9	ldr	x8, [x8]
    5694:	29 00 08 8b	add	x9, x1, x8
    5698:	29 05 00 d1	sub	x9, x9, #1
    569c:	e8 03 08 cb	neg	x8, x8
    56a0:	21 01 08 8a	and	x1, x9, x8
    56a4:	08 00 40 f9	ldr	x8, [x0]
    56a8:	29 88 88 52	mov	w9, #17473
    56ac:	09 89 aa 72	movk	w9, #21576, lsl #16
    56b0:	1f 01 09 eb	cmp	x8, x9
    56b4:	81 01 00 54	b.ne	0x56e4
    56b8:	c8 02 80 52	mov	w8, #22
    56bc:	3f 10 40 f1	cmp	x1, #4, lsl #12
    56c0:	43 01 00 54	b.lo	0x56e8
    56c4:	49 00 00 f0	adrp	x9, 11 ; 0x10000
    56c8:	29 2d 41 f9	ldr	x9, [x9, #600] ; literal pool symbol address: _vm_page_mask
    56cc:	29 01 40 f9	ldr	x9, [x9]
    56d0:	29 01 01 8a	and	x9, x9, x1
    56d4:	a9 00 00 b5	cbnz	x9, 0x56e8
    56d8:	08 00 80 52	mov	w8, #0
    56dc:	01 0c 00 f9	str	x1, [x0, #24]
    56e0:	02 00 00 14	b	0x56e8
    56e4:	c8 02 80 52	mov	w8, #22
    56e8:	e0 03 08 aa	mov	x0, x8
    56ec:	c0 03 5f d6	ret
_pthread_attr_destroy:
    56f0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    56f4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    56f8:	fd 43 00 91	add	x29, sp, #16
    56fc:	08 00 40 f9	ldr	x8, [x0]
    5700:	29 88 88 52	mov	w9, #17473
    5704:	09 89 aa 72	movk	w9, #21576, lsl #16
    5708:	1f 01 09 eb	cmp	x8, x9
    570c:	21 01 00 54	b.ne	0x5730
    5710:	f3 03 00 aa	mov	x19, x0
    5714:	01 30 40 b9	ldr	w1, [x0, #48]
    5718:	28 04 00 11	add	w8, w1, #1
    571c:	1f 09 00 71	cmp	w8, #2
    5720:	02 01 00 54	b.hs	0x5740
    5724:	00 00 80 52	mov	w0, #0
    5728:	7f 02 00 f9	str	xzr, [x19]
    572c:	02 00 00 14	b	0x5734
    5730:	c0 02 80 52	mov	w0, #22
    5734:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    5738:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    573c:	c0 03 5f d6	ret
    5740:	48 00 00 f0	adrp	x8, 11 ; 0x10000
    5744:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    5748:	00 01 40 b9	ldr	w0, [x8]
    574c:	02 00 80 52	mov	w2, #0
    5750:	03 00 80 12	mov	w3, #-1
    5754:	4d 19 00 94	bl	0xbc88 ; symbol stub for: _mach_port_mod_refs
    5758:	e0 fe ff 35	cbnz	w0, 0x5734
    575c:	f2 ff ff 17	b	0x5724
_pthread_getschedparam:
    5760:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    5764:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    5768:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    576c:	fd 83 00 91	add	x29, sp, #32
    5770:	20 02 00 b4	cbz	x0, 0x57b4
    5774:	f3 03 02 aa	mov	x19, x2
    5778:	f5 03 01 aa	mov	x21, x1
    577c:	f4 03 00 aa	mov	x20, x0
    5780:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    5784:	00 10 01 91	add	x0, x0, #68
    5788:	a1 00 a0 52	mov	w1, #327680
    578c:	57 19 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5790:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5794:	08 01 40 f9	ldr	x8, [x8]
    5798:	a8 00 00 b4	cbz	x8, 0x57ac
    579c:	1f 01 14 eb	cmp	x8, x20
    57a0:	e0 00 00 54	b.eq	0x57bc
    57a4:	08 09 40 f9	ldr	x8, [x8, #16]
    57a8:	a8 ff ff b5	cbnz	x8, 0x579c
    57ac:	75 00 80 52	mov	w21, #3
    57b0:	10 00 00 14	b	0x57f0
    57b4:	75 00 80 52	mov	w21, #3
    57b8:	11 00 00 14	b	0x57fc
    57bc:	88 02 40 f9	ldr	x8, [x20]
    57c0:	e9 00 00 f0	adrp	x9, 31 ; 0x24000
    57c4:	29 35 40 f9	ldr	x9, [x9, #104]
    57c8:	28 01 08 ca	eor	x8, x9, x8
    57cc:	1f 01 14 eb	cmp	x8, x20
    57d0:	01 02 00 54	b.ne	0x5810
    57d4:	75 00 00 b4	cbz	x21, 0x57e0
    57d8:	88 c2 40 39	ldrb	w8, [x20, #48]
    57dc:	a8 02 00 b9	str	w8, [x21]
    57e0:	15 00 80 52	mov	w21, #0
    57e4:	73 00 00 b4	cbz	x19, 0x57f0
    57e8:	88 1e 40 f9	ldr	x8, [x20, #56]
    57ec:	68 02 00 f9	str	x8, [x19]
    57f0:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    57f4:	00 10 01 91	add	x0, x0, #68
    57f8:	3f 19 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    57fc:	e0 03 15 aa	mov	x0, x21
    5800:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    5804:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    5808:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    580c:	c0 03 5f d6	ret
    5810:	4b 17 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_setschedparam:
    5814:	ff 43 01 d1	sub	sp, sp, #80
    5818:	f8 5f 01 a9	stp	x24, x23, [sp, #16]
    581c:	f6 57 02 a9	stp	x22, x21, [sp, #32]
    5820:	f4 4f 03 a9	stp	x20, x19, [sp, #48]
    5824:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    5828:	fd 03 01 91	add	x29, sp, #64
    582c:	f3 03 02 aa	mov	x19, x2
    5830:	f5 03 01 aa	mov	x21, x1
    5834:	f4 03 00 aa	mov	x20, x0
    5838:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    583c:	08 81 03 d1	sub	x8, x8, #224
    5840:	1f 01 00 eb	cmp	x8, x0
    5844:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5848:	08 25 40 f9	ldr	x8, [x8, #72]
    584c:	04 11 40 fa	ccmp	x8, x0, #4, ne
    5850:	f7 07 9f 1a	cset	w23, ne
    5854:	c0 01 00 54	b.eq	0x588c
    5858:	74 08 00 b4	cbz	x20, 0x5964
    585c:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    5860:	00 10 01 91	add	x0, x0, #68
    5864:	a1 00 a0 52	mov	w1, #327680
    5868:	20 19 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    586c:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5870:	08 01 40 f9	ldr	x8, [x8]
    5874:	28 07 00 b4	cbz	x8, 0x5958
    5878:	1f 01 14 eb	cmp	x8, x20
    587c:	20 08 00 54	b.eq	0x5980
    5880:	08 09 40 f9	ldr	x8, [x8, #16]
    5884:	a8 ff ff b5	cbnz	x8, 0x5878
    5888:	34 00 00 14	b	0x5958
    588c:	88 02 40 f9	ldr	x8, [x20]
    5890:	e9 00 00 f0	adrp	x9, 31 ; 0x24000
    5894:	29 35 40 f9	ldr	x9, [x9, #104]
    5898:	28 01 08 ca	eor	x8, x9, x8
    589c:	1f 01 14 eb	cmp	x8, x20
    58a0:	61 0a 00 54	b.ne	0x59ec
    58a4:	96 fa 40 b9	ldr	w22, [x20, #248]
    58a8:	ff 7f 00 a9	stp	xzr, xzr, [sp]
    58ac:	88 3e 41 39	ldrb	w8, [x20, #79]
    58b0:	a8 09 10 37	tbnz	w8, #2, 0x59e4
    58b4:	bf 12 00 71	cmp	w21, #4
    58b8:	40 01 00 54	b.eq	0x58e0
    58bc:	bf 0a 00 71	cmp	w21, #2
    58c0:	c0 01 00 54	b.eq	0x58f8
    58c4:	bf 06 00 71	cmp	w21, #1
    58c8:	c1 02 00 54	b.ne	0x5920
    58cc:	68 02 40 b9	ldr	w8, [x19]
    58d0:	e8 03 00 b9	str	w8, [sp]
    58d4:	23 00 80 52	mov	w3, #1
    58d8:	e2 03 00 91	mov	x2, sp
    58dc:	0c 00 00 14	b	0x590c
    58e0:	68 02 40 b9	ldr	w8, [x19]
    58e4:	e9 03 00 91	mov	x9, sp
    58e8:	22 31 00 91	add	x2, x9, #12
    58ec:	e8 0f 00 b9	str	w8, [sp, #12]
    58f0:	23 00 80 52	mov	w3, #1
    58f4:	06 00 00 14	b	0x590c
    58f8:	e8 03 00 91	mov	x8, sp
    58fc:	02 01 7e b2	orr	x2, x8, #0x4
    5900:	60 02 40 fd	ldr	d0, [x19]
    5904:	e0 43 00 fc	stur	d0, [sp, #4]
    5908:	43 00 80 52	mov	w3, #2
    590c:	e0 03 16 aa	mov	x0, x22
    5910:	e1 03 15 aa	mov	x1, x21
    5914:	24 00 80 52	mov	w4, #1
    5918:	0c 19 00 94	bl	0xbd48 ; symbol stub for: _thread_policy
    591c:	60 00 00 34	cbz	w0, 0x5928
    5920:	c0 02 80 52	mov	w0, #22
    5924:	11 00 00 14	b	0x5968
    5928:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    592c:	00 10 01 91	add	x0, x0, #68
    5930:	a1 00 a0 52	mov	w1, #327680
    5934:	ed 18 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5938:	77 04 00 34	cbz	w23, 0x59c4
    593c:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5940:	08 01 40 f9	ldr	x8, [x8]
    5944:	a8 00 00 b4	cbz	x8, 0x5958
    5948:	1f 01 14 eb	cmp	x8, x20
    594c:	00 03 00 54	b.eq	0x59ac
    5950:	08 09 40 f9	ldr	x8, [x8, #16]
    5954:	a8 ff ff b5	cbnz	x8, 0x5948
    5958:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    595c:	00 10 01 91	add	x0, x0, #68
    5960:	e5 18 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    5964:	60 00 80 52	mov	w0, #3
    5968:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    596c:	f4 4f 43 a9	ldp	x20, x19, [sp, #48]
    5970:	f6 57 42 a9	ldp	x22, x21, [sp, #32]
    5974:	f8 5f 41 a9	ldp	x24, x23, [sp, #16]
    5978:	ff 43 01 91	add	sp, sp, #80
    597c:	c0 03 5f d6	ret
    5980:	88 02 40 f9	ldr	x8, [x20]
    5984:	e9 00 00 f0	adrp	x9, 31 ; 0x24000
    5988:	29 35 40 f9	ldr	x9, [x9, #104]
    598c:	28 01 08 ca	eor	x8, x9, x8
    5990:	1f 01 14 eb	cmp	x8, x20
    5994:	e1 02 00 54	b.ne	0x59f0
    5998:	96 fa 40 b9	ldr	w22, [x20, #248]
    599c:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    59a0:	00 10 01 91	add	x0, x0, #68
    59a4:	d4 18 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    59a8:	c0 ff ff 17	b	0x58a8
    59ac:	88 02 40 f9	ldr	x8, [x20]
    59b0:	e9 00 00 f0	adrp	x9, 31 ; 0x24000
    59b4:	29 35 40 f9	ldr	x9, [x9, #104]
    59b8:	28 01 08 ca	eor	x8, x9, x8
    59bc:	1f 01 14 eb	cmp	x8, x20
    59c0:	a1 01 00 54	b.ne	0x59f4
    59c4:	95 c2 00 39	strb	w21, [x20, #48]
    59c8:	68 02 40 f9	ldr	x8, [x19]
    59cc:	88 1e 00 f9	str	x8, [x20, #56]
    59d0:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    59d4:	00 10 01 91	add	x0, x0, #68
    59d8:	c7 18 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    59dc:	00 00 80 52	mov	w0, #0
    59e0:	e2 ff ff 17	b	0x5968
    59e4:	a0 05 80 52	mov	w0, #45
    59e8:	e0 ff ff 17	b	0x5968
    59ec:	d4 16 00 94	bl	_pthread_mach_thread_np.cold.1
    59f0:	d3 16 00 94	bl	_pthread_mach_thread_np.cold.1
    59f4:	d2 16 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_clear_qos_tsd:
    59f8:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    59fc:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    5a00:	fd 43 00 91	add	x29, sp, #16
    5a04:	c0 00 00 34	cbz	w0, 0x5a1c
    5a08:	f3 03 00 aa	mov	x19, x0
    5a0c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    5a10:	08 19 40 b9	ldr	w8, [x8, #24]
    5a14:	1f 01 00 6b	cmp	w8, w0
    5a18:	c1 00 00 54	b.ne	0x5a30
    5a1c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    5a20:	1f 11 00 f9	str	xzr, [x8, #32]
    5a24:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    5a28:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    5a2c:	c0 03 5f d6	ret
    5a30:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    5a34:	00 10 01 91	add	x0, x0, #68
    5a38:	a1 00 a0 52	mov	w1, #327680
    5a3c:	ab 18 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5a40:	e8 00 00 f0	adrp	x8, 31 ; 0x24000
    5a44:	08 01 40 f9	ldr	x8, [x8]
    5a48:	08 01 00 b4	cbz	x8, 0x5a68
    5a4c:	09 f9 40 b9	ldr	w9, [x8, #248]
    5a50:	3f 01 13 6b	cmp	w9, w19
    5a54:	80 00 00 54	b.eq	0x5a64
    5a58:	08 09 40 f9	ldr	x8, [x8, #16]
    5a5c:	88 ff ff b5	cbnz	x8, 0x5a4c
    5a60:	02 00 00 14	b	0x5a68
    5a64:	1f 81 00 f9	str	xzr, [x8, #256]
    5a68:	e0 00 00 f0	adrp	x0, 31 ; 0x24000
    5a6c:	00 10 01 91	add	x0, x0, #68
    5a70:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    5a74:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    5a78:	9f 18 00 14	b	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
_pthread_cond_destroy:
    5a7c:	fa 67 bb a9	stp	x26, x25, [sp, #-80]!
    5a80:	f8 5f 01 a9	stp	x24, x23, [sp, #16]
    5a84:	f6 57 02 a9	stp	x22, x21, [sp, #32]
    5a88:	f4 4f 03 a9	stp	x20, x19, [sp, #48]
    5a8c:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    5a90:	fd 03 01 91	add	x29, sp, #64
    5a94:	f3 03 00 aa	mov	x19, x0
    5a98:	08 00 40 b9	ldr	w8, [x0]
    5a9c:	c0 02 80 52	mov	w0, #22
    5aa0:	89 c8 89 52	mov	w9, #20036
    5aa4:	e9 69 a8 72	movk	w9, #17231, lsl #16
    5aa8:	1f 01 09 6b	cmp	w8, w9
    5aac:	ec 00 00 54	b.gt	0x5ac8
    5ab0:	6a 37 96 52	mov	w10, #45499
    5ab4:	0a 96 a7 72	movk	w10, #15536, lsl #16
    5ab8:	1f 01 0a 6b	cmp	w8, w10
    5abc:	04 11 49 7a	ccmp	w8, w9, #4, ne
    5ac0:	40 05 00 54	b.eq	0x5b68
    5ac4:	44 00 00 14	b	0x5bd4
    5ac8:	c9 c8 89 52	mov	w9, #20038
    5acc:	e9 69 a8 72	movk	w9, #17231, lsl #16
    5ad0:	1f 01 09 6b	cmp	w8, w9
    5ad4:	a0 04 00 54	b.eq	0x5b68
    5ad8:	a9 c8 89 52	mov	w9, #20037
    5adc:	e9 69 a8 72	movk	w9, #17231, lsl #16
    5ae0:	1f 01 09 6b	cmp	w8, w9
    5ae4:	81 07 00 54	b.ne	0x5bd4
    5ae8:	08 00 80 52	mov	w8, #0
    5aec:	74 22 00 91	add	x20, x19, #8
    5af0:	79 d0 3b d5	mrs	x25, TPIDRRO_EL0
    5af4:	29 1b 40 b9	ldr	w9, [x25, #24]
    5af8:		.long	0x88e87e89
    5afc:	1f 01 00 71	cmp	w8, #0
    5b00:	80 00 00 54	b.eq	0x5b10
    5b04:	e0 03 14 aa	mov	x0, x20
    5b08:	a1 00 a0 52	mov	w1, #327680
    5b0c:	77 18 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    5b10:	68 0e 40 b9	ldr	w8, [x19, #12]
    5b14:	6a 62 00 91	add	x10, x19, #24
    5b18:	69 72 00 91	add	x9, x19, #28
    5b1c:	6b 82 00 91	add	x11, x19, #32
    5b20:	1f 01 03 72	tst	w8, #0x20000000
    5b24:	48 01 89 9a	csel	x8, x10, x9, eq
    5b28:	29 01 8b 9a	csel	x9, x9, x11, eq
    5b2c:	6a 01 8a 9a	csel	x10, x11, x10, eq
    5b30:	15 01 40 b9	ldr	w21, [x8]
    5b34:	57 01 40 b9	ldr	w23, [x10]
    5b38:	36 01 40 b9	ldr	w22, [x9]
    5b3c:	cb 02 15 4a	eor	w11, w22, w21
    5b40:	7f fd 03 71	cmp	w11, #255
    5b44:	c8 00 00 54	b.hi	0x5b5c
    5b48:	ab 82 16 aa	orr	x11, x21, x22, lsl #32
    5b4c:	ec 03 0b aa	mov	x12, x11
    5b50:		.long	0xc8ecfd0b
    5b54:	9f 01 0b eb	cmp	x12, x11
    5b58:	c1 fe ff 54	b.ne	0x5b30
    5b5c:	d6 00 08 37	tbnz	w22, #1, 0x5b74
    5b60:	18 00 80 52	mov	w24, #0
    5b64:	09 00 00 14	b	0x5b88
    5b68:	00 00 80 52	mov	w0, #0
    5b6c:	7f 02 00 b9	str	wzr, [x19]
    5b70:	19 00 00 14	b	0x5bd4
    5b74:	68 0e 40 b9	ldr	w8, [x19, #12]
    5b78:	08 7d 1e 53	lsr	w8, w8, #30
    5b7c:	1f 05 00 71	cmp	w8, #1
    5b80:	e8 17 9f 1a	cset	w8, eq
    5b84:	18 6d 1c 53	lsl	w24, w8, #4
    5b88:	7f 02 00 b9	str	wzr, [x19]
    5b8c:	28 1b 40 b9	ldr	w8, [x25, #24]
    5b90:	69 22 00 91	add	x9, x19, #8
    5b94:	ea 03 08 aa	mov	x10, x8
    5b98:		.long	0x88aafd3f
    5b9c:	5f 01 08 6b	cmp	w10, w8
    5ba0:	60 00 00 54	b.eq	0x5bac
    5ba4:	e0 03 14 aa	mov	x0, x20
    5ba8:	53 18 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    5bac:	36 01 08 36	tbz	w22, #1, 0x5bd0
    5bb0:	e0 03 13 aa	mov	x0, x19
    5bb4:	e1 03 15 aa	mov	x1, x21
    5bb8:	e2 03 17 aa	mov	x2, x23
    5bbc:	e3 03 16 aa	mov	x3, x22
    5bc0:	04 00 80 52	mov	w4, #0
    5bc4:	e5 03 15 aa	mov	x5, x21
    5bc8:	e6 03 18 aa	mov	x6, x24
    5bcc:	ae 17 00 94	bl	0xba84 ; symbol stub for: ___psynch_cvclrprepost
    5bd0:	00 00 80 52	mov	w0, #0
    5bd4:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    5bd8:	f4 4f 43 a9	ldp	x20, x19, [sp, #48]
    5bdc:	f6 57 42 a9	ldp	x22, x21, [sp, #32]
    5be0:	f8 5f 41 a9	ldp	x24, x23, [sp, #16]
    5be4:	fa 67 c5 a8	ldp	x26, x25, [sp], #80
    5be8:	c0 03 5f d6	ret
_qos_class_self:
    5bec:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    5bf0:	08 11 40 f9	ldr	x8, [x8, #32]
    5bf4:	09 40 a4 52	mov	w9, #570425344
    5bf8:	09 01 09 8a	and	x9, x8, x9
    5bfc:	0a 15 78 92	and	x10, x8, #0x3f00
    5c00:	3f 01 00 f1	cmp	x9, #0
    5c04:	44 09 40 fa	ccmp	x10, #0, #4, eq
    5c08:	61 00 00 54	b.ne	0x5c14
    5c0c:	08 00 80 52	mov	w8, #0
    5c10:	08 00 00 14	b	0x5c30
    5c14:	08 35 08 53	ubfx	w8, w8, #8, #6
    5c18:	c8 00 00 34	cbz	w8, 0x5c30
    5c1c:	08 01 c0 5a	rbit	w8, w8
    5c20:	08 11 c0 5a	clz	w8, w8
    5c24:	1f 15 00 71	cmp	w8, #5
    5c28:	c8 00 00 54	b.hi	0x5c40
    5c2c:	08 05 00 11	add	w8, w8, #1
    5c30:	29 00 00 d0	adrp	x9, 6 ; 0xb000
    5c34:	29 31 39 91	add	x9, x9, #3660
    5c38:	20 59 68 b8	ldr	w0, [x9, w8, uxtw #2]
    5c3c:	c0 03 5f d6	ret
    5c40:	00 00 80 52	mov	w0, #0
    5c44:	c0 03 5f d6	ret
_pthread_stack_frame_decode_np:
    5c48:	61 00 00 b4	cbz	x1, 0x5c54
    5c4c:	08 04 40 f9	ldr	x8, [x0, #8]
    5c50:	28 00 00 f9	str	x8, [x1]
    5c54:	08 00 40 f9	ldr	x8, [x0]
    5c58:	00 dd 40 92	and	x0, x8, #0xffffffffffffff
    5c5c:	c0 03 5f d6	ret
__pthread_workqueue_override_start_direct_check_owner:
    5c60:	fa 67 bb a9	stp	x26, x25, [sp, #-80]!
    5c64:	f8 5f 01 a9	stp	x24, x23, [sp, #16]
    5c68:	f6 57 02 a9	stp	x22, x21, [sp, #32]
    5c6c:	f4 4f 03 a9	stp	x20, x19, [sp, #48]
    5c70:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    5c74:	fd 03 01 91	add	x29, sp, #64
    5c78:	f3 03 01 aa	mov	x19, x1
    5c7c:	f4 03 00 aa	mov	x20, x0
    5c80:	d7 00 00 f0	adrp	x23, 27 ; 0x20000
    5c84:	e8 f2 40 39	ldrb	w8, [x23, #60]
    5c88:	1f 01 00 71	cmp	w8, #0
    5c8c:	f6 13 82 9a	csel	x22, xzr, x2, ne
    5c90:	f5 03 00 2a	mov	w21, w0
    5c94:	78 d0 3b d5	mrs	x24, TPIDRRO_EL0
    5c98:	39 00 80 52	mov	w25, #1
    5c9c:	00 80 80 52	mov	w0, #1024
    5ca0:	e1 03 15 aa	mov	x1, x21
    5ca4:	e2 03 13 aa	mov	x2, x19
    5ca8:	e3 03 16 aa	mov	x3, x22
    5cac:	5e 17 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    5cb0:	1f 04 00 31	cmn	w0, #1
    5cb4:	60 00 00 54	b.eq	0x5cc0
    5cb8:	b6 00 00 b5	cbnz	x22, 0x5ccc
    5cbc:	06 00 00 14	b	0x5cd4
    5cc0:	08 07 40 f9	ldr	x8, [x24, #8]
    5cc4:	00 01 40 b9	ldr	w0, [x8]
    5cc8:	76 00 00 b4	cbz	x22, 0x5cd4
    5ccc:	1f 58 00 71	cmp	w0, #22
    5cd0:	20 01 00 54	b.eq	0x5cf4
    5cd4:	d6 01 00 b4	cbz	x22, 0x5d0c
    5cd8:	1f 38 00 71	cmp	w0, #14
    5cdc:	81 01 00 54	b.ne	0x5d0c
    5ce0:	c8 02 40 b9	ldr	w8, [x22]
    5ce4:	08 05 00 32	orr	w8, w8, #0x3
    5ce8:	1f 01 14 6b	cmp	w8, w20
    5cec:	80 fd ff 54	b.eq	0x5c9c
    5cf0:	06 00 00 14	b	0x5d08
    5cf4:	df 06 40 f2	tst	x22, #0x3
    5cf8:	61 01 00 54	b.ne	0x5d24
    5cfc:	16 00 80 d2	mov	x22, #0
    5d00:	f9 f2 00 39	strb	w25, [x23, #60]
    5d04:	e6 ff ff 17	b	0x5c9c
    5d08:	c0 08 80 52	mov	w0, #70
    5d0c:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    5d10:	f4 4f 43 a9	ldp	x20, x19, [sp, #48]
    5d14:	f6 57 42 a9	ldp	x22, x21, [sp, #32]
    5d18:	f8 5f 41 a9	ldp	x24, x23, [sp, #16]
    5d1c:	fa 67 c5 a8	ldp	x26, x25, [sp], #80
    5d20:	c0 03 5f d6	ret
    5d24:	c0 02 80 52	mov	w0, #22
    5d28:	f9 ff ff 17	b	0x5d0c
_pthread_rwlock_trywrlock:
    5d2c:	08 00 40 f9	ldr	x8, [x0]
    5d30:	69 89 89 52	mov	w9, #19531
    5d34:	e9 4a aa 72	movk	w9, #21079, lsl #16
    5d38:	1f 01 09 eb	cmp	x8, x9
    5d3c:	21 04 00 54	b.ne	0x5dc0
    5d40:	08 bc 00 91	add	x8, x0, #47
    5d44:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    5d48:	0c 01 40 f9	ldr	x12, [x8]
    5d4c:	ac 03 08 37	tbnz	w12, #1, 0x5dc0
    5d50:	09 05 40 f9	ldr	x9, [x8, #8]
    5d54:	2b 81 cc 93	extr	x11, x9, x12, #32
    5d58:	09 20 c0 d2	mov	x9, #1099511627776
    5d5c:	ea 03 0c aa	mov	x10, x12
    5d60:	6c 7d 60 d3	lsl	x12, x11, #32
    5d64:	ed 03 0a 2a	mov	w13, w10
    5d68:	6d 7d 60 b3	bfi	x13, x11, #32, #32
    5d6c:	4e 5d 18 12	and	w14, w10, #0xffffff00
    5d70:	ce 0d 06 11	add	w14, w14, #387
    5d74:	5f 01 1a 72	tst	w10, #0x40
    5d78:	4e 01 8e 1a	csel	w14, w10, w14, eq
    5d7c:	2b 81 0b 8b	add	x11, x9, x11, lsl #32
    5d80:	8b 01 8b 9a	csel	x11, x12, x11, eq
    5d84:	6b 01 0e aa	orr	x11, x11, x14
    5d88:	ec 03 0d aa	mov	x12, x13
    5d8c:		.long	0xc8ec7d0b
    5d90:	8b fd 60 d3	lsr	x11, x12, #32
    5d94:	9f 01 0d eb	cmp	x12, x13
    5d98:	21 fe ff 54	b.ne	0x5d5c
    5d9c:	8a 01 30 36	tbz	w10, #6, 0x5dcc
    5da0:	08 00 80 52	mov	w8, #0
    5da4:	09 7c 00 91	add	x9, x0, #31
    5da8:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    5dac:	6a d0 3b d5	mrs	x10, TPIDRRO_EL0
    5db0:	4a 81 5f f8	ldur	x10, [x10, #-8]
    5db4:	2a 01 00 f9	str	x10, [x9]
    5db8:	e0 03 08 aa	mov	x0, x8
    5dbc:	c0 03 5f d6	ret
    5dc0:	01 00 80 52	mov	w1, #0
    5dc4:	22 00 80 52	mov	w2, #1
    5dc8:	36 f8 ff 17	b	__pthread_rwlock_lock_slow
    5dcc:	08 02 80 52	mov	w8, #16
    5dd0:	fa ff ff 17	b	0x5db8
_pthread_attr_set_qos_class_np:
    5dd4:	28 14 00 51	sub	w8, w1, #5
    5dd8:	08 09 88 13	ror	w8, w8, #2
    5ddc:	49 04 00 51	sub	w9, w2, #1
    5de0:	0a 7d 7d d3	ubfiz	x10, x8, #3, #32
    5de4:	2b 40 80 d2	mov	x11, #513
    5de8:	0b 60 a0 f2	movk	x11, #768, lsl #16
    5dec:	8b a0 c0 f2	movk	x11, #1284, lsl #32
    5df0:	0b c0 e0 f2	movk	x11, #1536, lsl #48
    5df4:	6a 25 ca 9a	lsr	x10, x11, x10
    5df8:	4a 09 00 12	and	w10, w10, #0x7
    5dfc:	1f 1d 00 71	cmp	w8, #7
    5e00:	e8 83 8a 1a	csel	w8, wzr, w10, hi
    5e04:	3f 41 00 31	cmn	w9, #16
    5e08:	ea 33 88 1a	csel	w10, wzr, w8, lo
    5e0c:	08 00 40 f9	ldr	x8, [x0]
    5e10:	2b 88 88 52	mov	w11, #17473
    5e14:	0b 89 aa 72	movk	w11, #21576, lsl #16
    5e18:	1f 01 0b eb	cmp	x8, x11
    5e1c:	e1 01 00 54	b.ne	0x5e58
    5e20:	0b 14 40 f9	ldr	x11, [x0, #40]
    5e24:	ab 01 c0 37	tbnz	w11, #24, 0x5e58
    5e28:	08 00 80 52	mov	w8, #0
    5e2c:	4c 05 00 51	sub	w12, w10, #1
    5e30:	0d 10 80 52	mov	w13, #128
    5e34:	aa 21 ca 1a	lsl	w10, w13, w10
    5e38:	29 1d 00 12	and	w9, w9, #0xff
    5e3c:	49 01 09 2a	orr	w9, w10, w9
    5e40:	9f 15 00 71	cmp	w12, #5
    5e44:	e9 83 89 9a	csel	x9, xzr, x9, hi
    5e48:	6a f5 66 92	and	x10, x11, #0xfffffffffcffffff
    5e4c:	4a 01 67 b2	orr	x10, x10, #0x2000000
    5e50:	09 28 02 a9	stp	x9, x10, [x0, #32]
    5e54:	02 00 00 14	b	0x5e5c
    5e58:	c8 02 80 52	mov	w8, #22
    5e5c:	e0 03 08 aa	mov	x0, x8
    5e60:	c0 03 5f d6	ret
__pthread_rwlock_lock_wait:
    5e64:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    5e68:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    5e6c:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    5e70:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    5e74:	fd c3 00 91	add	x29, sp, #48
    5e78:	f4 03 03 aa	mov	x20, x3
    5e7c:	f5 03 02 aa	mov	x21, x2
    5e80:	f6 03 01 aa	mov	x22, x1
    5e84:	f3 03 00 aa	mov	x19, x0
    5e88:	57 fc 60 d3	lsr	x23, x2, #32
    5e8c:	78 d0 3b d5	mrs	x24, TPIDRRO_EL0
    5e90:	64 12 40 b9	ldr	w4, [x19, #16]
    5e94:	e0 03 13 aa	mov	x0, x19
    5e98:	e1 03 15 aa	mov	x1, x21
    5e9c:	e2 03 14 aa	mov	x2, x20
    5ea0:	e3 03 17 aa	mov	x3, x23
    5ea4:	76 00 00 34	cbz	w22, 0x5eb0
    5ea8:	06 17 00 94	bl	0xbac0 ; symbol stub for: ___psynch_rw_rdlock
    5eac:	02 00 00 14	b	0x5eb4
    5eb0:	0a 17 00 94	bl	0xbad8 ; symbol stub for: ___psynch_rw_wrlock
    5eb4:	1f 04 00 31	cmn	w0, #1
    5eb8:	c1 00 00 54	b.ne	0x5ed0
    5ebc:	08 07 40 f9	ldr	x8, [x24, #8]
    5ec0:	08 01 40 b9	ldr	w8, [x8]
    5ec4:	1f 11 00 71	cmp	w8, #4
    5ec8:	40 fe ff 54	b.eq	0x5e90
    5ecc:	a8 05 00 35	cbnz	w8, 0x5f80
    5ed0:	68 be 00 91	add	x8, x19, #47
    5ed4:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    5ed8:	0a 01 40 f9	ldr	x10, [x8]
    5edc:	09 00 00 12	and	w9, w0, #0x1
    5ee0:	0b 5c 18 12	and	w11, w0, #0xffffff00
    5ee4:	cc 17 80 52	mov	w12, #190
    5ee8:	ad 00 80 52	mov	w13, #5
    5eec:	0f 00 1a 12	and	w15, w0, #0x40
    5ef0:	4e fd 60 d3	lsr	x14, x10, #32
    5ef4:	d0 01 1f 12	and	w16, w14, #0x2
    5ef8:	ef 01 10 2a	orr	w15, w15, w16
    5efc:	6f 00 00 35	cbnz	w15, 0x5f08
    5f00:	ef 03 0a aa	mov	x15, x10
    5f04:	13 00 00 14	b	0x5f50
    5f08:	0f 00 0a 2a	orr	w15, w0, w10
    5f0c:	50 01 1e 12	and	w16, w10, #0x4
    5f10:	10 02 09 2a	orr	w16, w16, w9
    5f14:	1f 02 00 71	cmp	w16, #0
    5f18:	90 05 8c 1a	cinc	w16, w12, ne
    5f1c:	10 02 0f 0a	and	w16, w16, w15
    5f20:	ff 05 1f 72	tst	w15, #0x6
    5f24:	ef 17 9f 1a	cset	w15, eq
    5f28:	11 02 0d 2a	orr	w17, w16, w13
    5f2c:	ff 09 4e 6a	tst	w15, w14, lsr #2
    5f30:	2f 12 90 1a	csel	w15, w17, w16, ne
    5f34:	50 5d 18 12	and	w16, w10, #0xffffff00
    5f38:	ef 01 10 2a	orr	w15, w15, w16
    5f3c:	6e 01 0e 0b	add	w14, w11, w14
    5f40:	d0 5d 18 12	and	w16, w14, #0xffffff00
    5f44:	1f 00 1a 72	tst	w0, #0x40
    5f48:	0e 02 8e 1a	csel	w14, w16, w14, eq
    5f4c:	ce 79 1d 12	and	w14, w14, #0xfffffffb
    5f50:	ef 03 0f 2a	mov	w15, w15
    5f54:	ee 81 0e aa	orr	x14, x15, x14, lsl #32
    5f58:	ef 03 0a aa	mov	x15, x10
    5f5c:		.long	0xc8af7d0e
    5f60:	ff 01 0a eb	cmp	x15, x10
    5f64:	ea 03 0f aa	mov	x10, x15
    5f68:	21 fc ff 54	b.ne	0x5eec
    5f6c:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    5f70:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    5f74:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    5f78:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    5f7c:	c0 03 5f d6	ret
    5f80:	08 7d 40 93	sxtw	x8, w8
    5f84:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    5f88:	34 00 00 f0	adrp	x20, 7 ; 0xc000
    5f8c:	94 b2 25 91	add	x20, x20, #2412 ; literal pool for: "BUG IN LIBPTHREAD: kernel rwlock returned unknown error"
    5f90:	75 00 00 f0	adrp	x21, 15 ; 0x14000
    5f94:	b5 22 00 91	add	x21, x21, #8
    5f98:	b4 06 00 f9	str	x20, [x21, #8]
    5f9c:	a8 1e 00 f9	str	x8, [x21, #56]
    5fa0:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    5fa4:	20 00 20 d4	brk	#0x1
__pthread_rwlock_unlock_slow:
    5fa8:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    5fac:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    5fb0:	fd 43 00 91	add	x29, sp, #16
    5fb4:	f4 03 01 aa	mov	x20, x1
    5fb8:	f3 03 00 aa	mov	x19, x0
    5fbc:	08 00 40 f9	ldr	x8, [x0]
    5fc0:	69 89 89 52	mov	w9, #19531
    5fc4:	e9 4a aa 72	movk	w9, #21079, lsl #16
    5fc8:	1f 01 09 eb	cmp	x8, x9
    5fcc:	80 00 00 54	b.eq	0x5fdc
    5fd0:	e0 03 13 aa	mov	x0, x19
    5fd4:	64 f8 ff 97	bl	__pthread_rwlock_check_init_slow
    5fd8:	20 0a 00 35	cbnz	w0, 0x611c
    5fdc:	68 be 00 91	add	x8, x19, #47
    5fe0:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    5fe4:	06 01 40 b9	ldr	w6, [x8]
    5fe8:	86 09 30 37	tbnz	w6, #6, 0x6118
    5fec:	11 9d 40 29	ldp	w17, w7, [x8, #4]
    5ff0:	00 0d 40 b9	ldr	w0, [x8, #12]
    5ff4:	86 00 08 36	tbz	w6, #1, 0x6004
    5ff8:	69 7e 00 91	add	x9, x19, #31
    5ffc:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    6000:	3f 01 00 f9	str	xzr, [x9]
    6004:	69 00 80 52	mov	w9, #3
    6008:	2b 00 80 52	mov	w11, #1
    600c:	6d 00 80 52	mov	w13, #3
    6010:	ea 03 00 aa	mov	x10, x0
    6014:	ad 01 34 0a	bic	w13, w13, w20
    6018:	ec 00 04 11	add	w12, w7, #256
    601c:	bf 01 1f 72	tst	w13, #0x2
    6020:	ec 00 8c 1a	csel	w12, w7, w12, eq
    6024:	ce 5c 18 12	and	w14, w6, #0xffffff00
    6028:	9f 01 0e 6b	cmp	w12, w14
    602c:	a1 00 00 54	b.ne	0x6040
    6030:	10 00 80 52	mov	w16, #0
    6034:	8e 05 1a 32	orr	w14, w12, #0xc0
    6038:	8f 01 00 32	orr	w15, w12, #0x1
    603c:	10 00 00 14	b	0x607c
    6040:	df 08 00 72	tst	w6, #0x7
    6044:	60 01 00 54	b.eq	0x6070
    6048:	2f 5e 18 12	and	w15, w17, #0xffffff00
    604c:	ce 01 00 32	orr	w14, w14, #0x1
    6050:	d0 00 1e 12	and	w16, w6, #0x4
    6054:	10 02 11 2a	orr	w16, w16, w17
    6058:	10 02 1f 32	orr	w16, w16, #0x2
    605c:	9f 01 0f 6b	cmp	w12, w15
    6060:	ce 10 8e 1a	csel	w14, w6, w14, ne
    6064:	2f 12 90 1a	csel	w15, w17, w16, ne
    6068:	f0 13 8b 1a	csel	w16, wzr, w11, ne
    606c:	04 00 00 14	b	0x607c
    6070:	10 00 80 52	mov	w16, #0
    6074:	ee 03 06 aa	mov	x14, x6
    6078:	ef 03 11 aa	mov	x15, x17
    607c:	e0 03 06 2a	mov	w0, w6
    6080:	00 80 11 aa	orr	x0, x0, x17, lsl #32
    6084:	bf 05 00 71	cmp	w13, #1
    6088:	00 02 00 54	b.eq	0x60c8
    608c:	bf 0d 00 71	cmp	w13, #3
    6090:	c1 04 00 54	b.ne	0x6128
    6094:	e1 03 07 2a	mov	w1, w7
    6098:	41 7d 60 b3	bfi	x1, x10, #32, #32
    609c:	f1 03 0e 2a	mov	w17, w14
    60a0:	22 82 0f aa	orr	x2, x17, x15, lsl #32
    60a4:	83 81 0a aa	orr	x3, x12, x10, lsl #32
    60a8:	e6 03 00 aa	mov	x6, x0
    60ac:	e7 03 01 aa	mov	x7, x1
    60b0:		.long	0x4826fd02
    60b4:	ff 00 01 eb	cmp	x7, x1
    60b8:	c0 00 40 fa	ccmp	x6, x0, #0, eq
    60bc:	e0 fc 60 d3	lsr	x0, x7, #32
    60c0:	34 01 9f 1a	csel	w20, w9, wzr, eq
    60c4:	09 00 00 14	b	0x60e8
    60c8:	f1 03 0f aa	mov	x17, x15
    60cc:	e2 03 0e 2a	mov	w2, w14
    60d0:	51 80 11 aa	orr	x17, x2, x17, lsl #32
    60d4:	e6 03 00 aa	mov	x6, x0
    60d8:		.long	0xc8a6fd11
    60dc:	df 00 00 eb	cmp	x6, x0
    60e0:	f4 17 9f 1a	cset	w20, eq
    60e4:	e0 03 0a aa	mov	x0, x10
    60e8:	d1 fc 60 d3	lsr	x17, x6, #32
    60ec:	bf 01 14 6b	cmp	w13, w20
    60f0:	01 f9 ff 54	b.ne	0x6010
    60f4:	30 01 00 34	cbz	w16, 0x6118
    60f8:	e8 03 07 2a	mov	w8, w7
    60fc:	02 81 00 aa	orr	x2, x8, x0, lsl #32
    6100:	e8 03 0e 2a	mov	w8, w14
    6104:	03 81 0f aa	orr	x3, x8, x15, lsl #32
    6108:	84 81 0a aa	orr	x4, x12, x10, lsl #32
    610c:	e0 03 13 aa	mov	x0, x19
    6110:	e1 03 06 aa	mov	x1, x6
    6114:	06 00 00 94	bl	__pthread_rwlock_unlock_drop
    6118:	00 00 80 52	mov	w0, #0
    611c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    6120:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    6124:	c0 03 5f d6	ret
    6128:	20 00 20 d4	brk	#0x1
__pthread_rwlock_unlock_drop:
    612c:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    6130:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    6134:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    6138:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    613c:	fd c3 00 91	add	x29, sp, #48
    6140:	f3 03 04 aa	mov	x19, x4
    6144:	f4 03 01 aa	mov	x20, x1
    6148:	f5 03 00 aa	mov	x21, x0
    614c:	76 fc 60 d3	lsr	x22, x3, #32
    6150:	77 d0 3b d5	mrs	x23, TPIDRRO_EL0
    6154:	a4 12 40 b9	ldr	w4, [x21, #16]
    6158:	e0 03 15 aa	mov	x0, x21
    615c:	e1 03 14 aa	mov	x1, x20
    6160:	e2 03 13 aa	mov	x2, x19
    6164:	e3 03 16 aa	mov	x3, x22
    6168:	59 16 00 94	bl	0xbacc ; symbol stub for: ___psynch_rw_unlock
    616c:	1f 04 00 31	cmn	w0, #1
    6170:	c1 00 00 54	b.ne	0x6188
    6174:	e8 06 40 f9	ldr	x8, [x23, #8]
    6178:	08 01 40 b9	ldr	w8, [x8]
    617c:	1f 11 00 71	cmp	w8, #4
    6180:	a0 fe ff 54	b.eq	0x6154
    6184:	c8 00 00 35	cbnz	w8, 0x619c
    6188:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    618c:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    6190:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    6194:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    6198:	c0 03 5f d6	ret
    619c:	08 7d 40 93	sxtw	x8, w8
    61a0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    61a4:	34 00 00 d0	adrp	x20, 6 ; 0xc000
    61a8:	94 92 26 91	add	x20, x20, #2468 ; literal pool for: "BUG IN LIBPTHREAD: kernel rwunlock returned unknown error"
    61ac:	75 00 00 d0	adrp	x21, 14 ; 0x14000
    61b0:	b5 22 00 91	add	x21, x21, #8
    61b4:	b4 06 00 f9	str	x20, [x21, #8]
    61b8:	a8 1e 00 f9	str	x8, [x21, #56]
    61bc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    61c0:	20 00 20 d4	brk	#0x1
__pthread_qos_override_end_direct:
    61c4:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    61c8:	fd 03 00 91	mov	x29, sp
    61cc:	e2 03 01 aa	mov	x2, x1
    61d0:	e1 03 00 2a	mov	w1, w0
    61d4:	00 10 80 52	mov	w0, #128
    61d8:	03 00 80 d2	mov	x3, #0
    61dc:	12 16 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    61e0:	1f 04 00 31	cmn	w0, #1
    61e4:	81 00 00 54	b.ne	0x61f4
    61e8:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    61ec:	08 05 40 f9	ldr	x8, [x8, #8]
    61f0:	00 01 40 b9	ldr	w0, [x8]
    61f4:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    61f8:	c0 03 5f d6	ret
_pthread_cond_timedwait_relative_np:
    61fc:	23 00 80 52	mov	w3, #1
    6200:	24 00 80 52	mov	w4, #1
    6204:	7b 05 00 14	b	__pthread_cond_wait
_pthread_rwlock_destroy:
    6208:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    620c:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    6210:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    6214:	fd 83 00 91	add	x29, sp, #32
    6218:	f4 03 00 aa	mov	x20, x0
    621c:	08 00 80 52	mov	w8, #0
    6220:	13 20 00 91	add	x19, x0, #8
    6224:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    6228:	c9 1a 40 b9	ldr	w9, [x22, #24]
    622c:		.long	0x88e87e69
    6230:	1f 01 00 71	cmp	w8, #0
    6234:	80 00 00 54	b.eq	0x6244
    6238:	e0 03 13 aa	mov	x0, x19
    623c:	a1 00 a0 52	mov	w1, #327680
    6240:	aa 16 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6244:	88 02 40 f9	ldr	x8, [x20]
    6248:	89 76 96 52	mov	w9, #46004
    624c:	09 b5 a5 72	movk	w9, #11688, lsl #16
    6250:	1f 01 09 eb	cmp	x8, x9
    6254:	00 03 00 54	b.eq	0x62b4
    6258:	69 89 89 52	mov	w9, #19531
    625c:	e9 4a aa 72	movk	w9, #21079, lsl #16
    6260:	1f 01 09 eb	cmp	x8, x9
    6264:	e1 02 00 54	b.ne	0x62c0
    6268:	88 be 00 91	add	x8, x20, #47
    626c:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    6270:	00 25 40 29	ldp	w0, w9, [x8]
    6274:	01 29 41 29	ldp	w1, w10, [x8, #8]
    6278:	eb 03 01 2a	mov	w11, w1
    627c:	63 81 0a aa	orr	x3, x11, x10, lsl #32
    6280:	ea 03 00 2a	mov	w10, w0
    6284:	42 81 09 aa	orr	x2, x10, x9, lsl #32
    6288:	e0 03 02 aa	mov	x0, x2
    628c:	e1 03 03 aa	mov	x1, x3
    6290:		.long	0x48207d02
    6294:	2a fc 60 d3	lsr	x10, x1, #32
    6298:	09 fc 60 d3	lsr	x9, x0, #32
    629c:	3f 00 03 eb	cmp	x1, x3
    62a0:	00 00 42 fa	ccmp	x0, x2, #0, eq
    62a4:	a1 fe ff 54	b.ne	0x6278
    62a8:	08 5c 18 12	and	w8, w0, #0xffffff00
    62ac:	1f 01 01 6b	cmp	w8, w1
    62b0:	c1 00 00 54	b.ne	0x62c8
    62b4:	15 00 80 52	mov	w21, #0
    62b8:	9f 02 00 f9	str	xzr, [x20]
    62bc:	04 00 00 14	b	0x62cc
    62c0:	d5 02 80 52	mov	w21, #22
    62c4:	02 00 00 14	b	0x62cc
    62c8:	15 02 80 52	mov	w21, #16
    62cc:	c8 1a 40 b9	ldr	w8, [x22, #24]
    62d0:	e9 03 08 aa	mov	x9, x8
    62d4:		.long	0x88a9fe7f
    62d8:	3f 01 08 6b	cmp	w9, w8
    62dc:	60 00 00 54	b.eq	0x62e8
    62e0:	e0 03 13 aa	mov	x0, x19
    62e4:	84 16 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    62e8:	e0 03 15 aa	mov	x0, x21
    62ec:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    62f0:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    62f4:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    62f8:	c0 03 5f d6	ret
_pthread_getname_np:
    62fc:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    6300:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    6304:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    6308:	fd 83 00 91	add	x29, sp, #32
    630c:	f3 03 02 aa	mov	x19, x2
    6310:	f4 03 01 aa	mov	x20, x1
    6314:	f5 03 00 aa	mov	x21, x0
    6318:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    631c:	08 81 03 d1	sub	x8, x8, #224
    6320:	1f 01 00 eb	cmp	x8, x0
    6324:	40 02 00 54	b.eq	0x636c
    6328:	f5 01 00 b4	cbz	x21, 0x6364
    632c:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6330:	00 10 01 91	add	x0, x0, #68
    6334:	a1 00 a0 52	mov	w1, #327680
    6338:	6c 16 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    633c:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6340:	08 01 40 f9	ldr	x8, [x8]
    6344:	a8 00 00 b4	cbz	x8, 0x6358
    6348:	1f 01 15 eb	cmp	x8, x21
    634c:	a0 01 00 54	b.eq	0x6380
    6350:	08 09 40 f9	ldr	x8, [x8, #16]
    6354:	a8 ff ff b5	cbnz	x8, 0x6348
    6358:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    635c:	00 10 01 91	add	x0, x0, #68
    6360:	65 16 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    6364:	60 00 80 52	mov	w0, #3
    6368:	14 00 00 14	b	0x63b8
    636c:	a1 42 01 91	add	x1, x21, #80
    6370:	e0 03 14 aa	mov	x0, x20
    6374:	e2 03 13 aa	mov	x2, x19
    6378:	1d 16 00 94	bl	0xbbec ; symbol stub for: __platform_strlcpy
    637c:	0e 00 00 14	b	0x63b4
    6380:	a8 02 40 f9	ldr	x8, [x21]
    6384:	e9 00 00 d0	adrp	x9, 30 ; 0x24000
    6388:	29 35 40 f9	ldr	x9, [x9, #104]
    638c:	28 01 08 ca	eor	x8, x9, x8
    6390:	1f 01 15 eb	cmp	x8, x21
    6394:	a1 01 00 54	b.ne	0x63c8
    6398:	a1 42 01 91	add	x1, x21, #80
    639c:	e0 03 14 aa	mov	x0, x20
    63a0:	e2 03 13 aa	mov	x2, x19
    63a4:	12 16 00 94	bl	0xbbec ; symbol stub for: __platform_strlcpy
    63a8:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    63ac:	00 10 01 91	add	x0, x0, #68
    63b0:	51 16 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    63b4:	00 00 80 52	mov	w0, #0
    63b8:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    63bc:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    63c0:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    63c4:	c0 03 5f d6	ret
    63c8:	5d 14 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_attr_setschedpolicy:
    63cc:	08 00 40 f9	ldr	x8, [x0]
    63d0:	29 88 88 52	mov	w9, #17473
    63d4:	09 89 aa 72	movk	w9, #21576, lsl #16
    63d8:	1f 01 09 eb	cmp	x8, x9
    63dc:	41 02 00 54	b.ne	0x6424
    63e0:	3f 10 00 71	cmp	w1, #4
    63e4:	00 01 00 54	b.eq	0x6404
    63e8:	3f 08 00 71	cmp	w1, #2
    63ec:	c0 00 00 54	b.eq	0x6404
    63f0:	3f 04 00 71	cmp	w1, #1
    63f4:	81 01 00 54	b.ne	0x6424
    63f8:	08 14 40 f9	ldr	x8, [x0, #40]
    63fc:	08 f9 64 92	and	x8, x8, #0xfffffffff7ffffff
    6400:	08 14 00 f9	str	x8, [x0, #40]
    6404:	08 00 80 52	mov	w8, #0
    6408:	09 14 40 f9	ldr	x9, [x0, #40]
    640c:	29 dd 68 92	and	x9, x9, #0xffffffffff00ffff
    6410:	0a 80 a0 52	mov	w10, #67108864
    6414:	2a 1c 10 33	bfi	w10, w1, #16, #8
    6418:	29 01 0a aa	orr	x9, x9, x10
    641c:	09 14 00 f9	str	x9, [x0, #40]
    6420:	02 00 00 14	b	0x6428
    6424:	c8 02 80 52	mov	w8, #22
    6428:	e0 03 08 aa	mov	x0, x8
    642c:	c0 03 5f d6	ret
__pthread_workloop_create:
    6430:	ff 03 01 d1	sub	sp, sp, #64
    6434:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    6438:	fd c3 00 91	add	x29, sp, #48
    643c:	28 00 00 b0	adrp	x8, 5 ; 0xb000
    6440:	00 e5 46 fd	ldr	d0, [x8, #3528]
    6444:	e0 07 00 fd	str	d0, [sp, #8]
    6448:	e0 7f 01 a9	stp	x0, xzr, [sp, #16]
    644c:	ff 13 00 f9	str	xzr, [sp, #32]
    6450:	ff 2b 00 b9	str	wzr, [sp, #40]
    6454:	c0 02 80 52	mov	w0, #22
    6458:	3f 04 00 f1	cmp	x1, #1
    645c:	e8 04 00 54	b.hi	0x64f8
    6460:	c2 04 00 b4	cbz	x2, 0x64f8
    6464:	49 14 40 f9	ldr	x9, [x2, #40]
    6468:	89 00 c0 37	tbnz	w9, #24, 0x6478
    646c:	08 00 80 52	mov	w8, #0
    6470:	e9 00 d0 37	tbnz	w9, #26, 0x648c
    6474:	0a 00 00 14	b	0x649c
    6478:	28 00 80 52	mov	w8, #1
    647c:	4a 20 40 b9	ldr	w10, [x2, #32]
    6480:	e8 0f 00 b9	str	w8, [sp, #12]
    6484:	ea 1b 00 b9	str	w10, [sp, #24]
    6488:	a9 00 d0 36	tbz	w9, #26, 0x649c
    648c:	08 01 1f 32	orr	w8, w8, #0x2
    6490:	2a 5d 10 53	ubfx	w10, w9, #16, #8
    6494:	e8 0f 00 b9	str	w8, [sp, #12]
    6498:	ea 1f 00 b9	str	w10, [sp, #28]
    649c:	c9 00 d8 36	tbz	w9, #27, 0x64b4
    64a0:	08 01 1e 32	orr	w8, w8, #0x4
    64a4:	2a 9d 60 d3	ubfx	x10, x9, #32, #8
    64a8:	e8 0f 00 b9	str	w8, [sp, #12]
    64ac:	29 fd 68 d3	lsr	x9, x9, #40
    64b0:	ea 27 04 29	stp	w10, w9, [sp, #32]
    64b4:	49 30 40 b9	ldr	w9, [x2, #48]
    64b8:	2a 05 00 11	add	w10, w9, #1
    64bc:	5f 09 00 71	cmp	w10, #2
    64c0:	22 02 00 54	b.hs	0x6504
    64c4:	61 00 00 b4	cbz	x1, 0x64d0
    64c8:	08 01 1c 32	orr	w8, w8, #0x10
    64cc:	e8 0f 00 b9	str	w8, [sp, #12]
    64d0:	e2 23 00 91	add	x2, sp, #8
    64d4:	20 00 80 52	mov	w0, #1
    64d8:	01 00 80 d2	mov	x1, #0
    64dc:	83 04 80 52	mov	w3, #36
    64e0:	60 15 00 94	bl	0xba60 ; symbol stub for: ___kqueue_workloop_ctl
    64e4:	1f 04 00 31	cmn	w0, #1
    64e8:	81 00 00 54	b.ne	0x64f8
    64ec:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    64f0:	08 05 40 f9	ldr	x8, [x8, #8]
    64f4:	00 01 40 b9	ldr	w0, [x8]
    64f8:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    64fc:	ff 03 01 91	add	sp, sp, #64
    6500:	c0 03 5f d6	ret
    6504:	08 01 1d 32	orr	w8, w8, #0x8
    6508:	e8 0f 00 b9	str	w8, [sp, #12]
    650c:	e9 2b 00 b9	str	w9, [sp, #40]
    6510:	c1 fd ff b5	cbnz	x1, 0x64c8
    6514:	ef ff ff 17	b	0x64d0
_pthread_threadid_np:
    6518:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    651c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    6520:	fd 43 00 91	add	x29, sp, #16
    6524:	01 03 00 b4	cbz	x1, 0x6584
    6528:	f3 03 01 aa	mov	x19, x1
    652c:	f4 03 00 aa	mov	x20, x0
    6530:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    6534:	08 81 03 d1	sub	x8, x8, #224
    6538:	a0 02 00 b4	cbz	x0, 0x658c
    653c:	1f 01 14 eb	cmp	x8, x20
    6540:	60 02 00 54	b.eq	0x658c
    6544:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6548:	00 10 01 91	add	x0, x0, #68
    654c:	a1 00 a0 52	mov	w1, #327680
    6550:	e6 15 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6554:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6558:	08 01 40 f9	ldr	x8, [x8]
    655c:	a8 00 00 b4	cbz	x8, 0x6570
    6560:	1f 01 14 eb	cmp	x8, x20
    6564:	c0 01 00 54	b.eq	0x659c
    6568:	08 09 40 f9	ldr	x8, [x8, #16]
    656c:	a8 ff ff b5	cbnz	x8, 0x6560
    6570:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6574:	00 10 01 91	add	x0, x0, #68
    6578:	df 15 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    657c:	74 00 80 52	mov	w20, #3
    6580:	14 00 00 14	b	0x65d0
    6584:	d4 02 80 52	mov	w20, #22
    6588:	12 00 00 14	b	0x65d0
    658c:	14 00 80 52	mov	w20, #0
    6590:	08 6d 40 f9	ldr	x8, [x8, #216]
    6594:	68 02 00 f9	str	x8, [x19]
    6598:	0e 00 00 14	b	0x65d0
    659c:	88 02 40 f9	ldr	x8, [x20]
    65a0:	e9 00 00 d0	adrp	x9, 30 ; 0x24000
    65a4:	29 35 40 f9	ldr	x9, [x9, #104]
    65a8:	28 01 08 ca	eor	x8, x9, x8
    65ac:	1f 01 14 eb	cmp	x8, x20
    65b0:	81 01 00 54	b.ne	0x65e0
    65b4:	88 6e 40 f9	ldr	x8, [x20, #216]
    65b8:	68 02 00 f9	str	x8, [x19]
    65bc:	48 01 00 b4	cbz	x8, 0x65e4
    65c0:	14 00 80 52	mov	w20, #0
    65c4:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    65c8:	00 10 01 91	add	x0, x0, #68
    65cc:	ca 15 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    65d0:	e0 03 14 aa	mov	x0, x20
    65d4:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    65d8:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    65dc:	c0 03 5f d6	ret
    65e0:	d7 13 00 94	bl	_pthread_mach_thread_np.cold.1
    65e4:	e0 03 14 aa	mov	x0, x20
    65e8:	e1 03 13 aa	mov	x1, x19
    65ec:	65 07 00 94	bl	__pthread_threadid_slow
    65f0:	f4 03 00 aa	mov	x20, x0
    65f4:	f4 ff ff 17	b	0x65c4
_pthread_get_qos_class_np:
    65f8:	08 80 40 f9	ldr	x8, [x0, #256]
    65fc:	81 02 00 b4	cbz	x1, 0x664c
    6600:	09 40 a4 52	mov	w9, #570425344
    6604:	09 01 09 8a	and	x9, x8, x9
    6608:	0a 15 78 92	and	x10, x8, #0x3f00
    660c:	3f 01 00 f1	cmp	x9, #0
    6610:	44 09 40 fa	ccmp	x10, #0, #4, eq
    6614:	61 00 00 54	b.ne	0x6620
    6618:	09 00 80 52	mov	w9, #0
    661c:	08 00 00 14	b	0x663c
    6620:	09 35 08 53	ubfx	w9, w8, #8, #6
    6624:	c9 00 00 34	cbz	w9, 0x663c
    6628:	29 01 c0 5a	rbit	w9, w9
    662c:	29 11 c0 5a	clz	w9, w9
    6630:	3f 15 00 71	cmp	w9, #5
    6634:	08 02 00 54	b.hi	0x6674
    6638:	29 05 00 11	add	w9, w9, #1
    663c:	2a 00 00 b0	adrp	x10, 5 ; 0xb000
    6640:	4a 31 39 91	add	x10, x10, #3660
    6644:	49 59 69 b8	ldr	w9, [x10, w9, uxtw #2]
    6648:	29 00 00 b9	str	w9, [x1]
    664c:	02 01 00 b4	cbz	x2, 0x666c
    6650:	09 40 a4 52	mov	w9, #570425344
    6654:	09 01 09 8a	and	x9, x8, x9
    6658:	1f 15 78 f2	tst	x8, #0x3f00
    665c:	20 19 40 fa	ccmp	x9, #0, #0, ne
    6660:	08 1d 00 13	sxtb	w8, w8
    6664:	e8 17 88 1a	csinc	w8, wzr, w8, ne
    6668:	48 00 00 b9	str	w8, [x2]
    666c:	00 00 80 52	mov	w0, #0
    6670:	c0 03 5f d6	ret
    6674:	09 00 80 52	mov	w9, #0
    6678:	f4 ff ff 17	b	0x6648
_pthread_override_qos_class_start_np:
    667c:	ff 43 01 d1	sub	sp, sp, #80
    6680:	f8 5f 01 a9	stp	x24, x23, [sp, #16]
    6684:	f6 57 02 a9	stp	x22, x21, [sp, #32]
    6688:	f4 4f 03 a9	stp	x20, x19, [sp, #48]
    668c:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    6690:	fd 03 01 91	add	x29, sp, #64
    6694:	48 04 00 51	sub	w8, w2, #1
    6698:	1f 41 00 31	cmn	w8, #16
    669c:	43 0b 00 54	b.lo	0x6804
    66a0:	28 14 00 51	sub	w8, w1, #5
    66a4:	08 09 88 13	ror	w8, w8, #2
    66a8:	1f 1d 00 71	cmp	w8, #7
    66ac:	c8 0a 00 54	b.hi	0x6804
    66b0:	69 17 80 52	mov	w9, #187
    66b4:	29 25 c8 1a	lsr	w9, w9, w8
    66b8:	69 0a 00 36	tbz	w9, #0, 0x6804
    66bc:	f4 03 02 aa	mov	x20, x2
    66c0:	f5 03 00 aa	mov	x21, x0
    66c4:	29 00 00 b0	adrp	x9, 5 ; 0xb000
    66c8:	29 a1 39 91	add	x9, x9, #3688
    66cc:	38 d9 68 b8	ldr	w24, [x9, w8, sxtw #2]
    66d0:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    66d4:	08 29 40 f9	ldr	x8, [x8, #80]
    66d8:	56 00 00 d0	adrp	x22, 10 ; 0x10000
    66dc:	d6 e6 40 f9	ldr	x22, [x22, #456] ; literal pool symbol address: _mach_task_self_
    66e0:	28 04 00 b4	cbz	x8, 0x6764
    66e4:	00 04 80 52	mov	w0, #32
    66e8:	00 01 3f d6	blr	x8
    66ec:	e0 07 00 f9	str	x0, [sp, #8]
    66f0:	a0 03 00 b4	cbz	x0, 0x6764
    66f4:	f3 03 00 aa	mov	x19, x0
    66f8:	37 00 80 52	mov	w23, #1
    66fc:	48 ae 8c 52	mov	w8, #25970
    6700:	c8 ee ad 72	movk	w8, #28534, lsl #16
    6704:	68 02 00 b9	str	w8, [x19]
    6708:	75 06 00 f9	str	x21, [x19, #8]
    670c:	e0 03 15 aa	mov	x0, x21
    6710:	04 f3 ff 97	bl	_pthread_mach_thread_np
    6714:	e1 03 00 aa	mov	x1, x0
    6718:	60 06 00 b9	str	w0, [x19, #4]
    671c:	08 10 80 52	mov	w8, #128
    6720:	08 21 d8 1a	lsl	w8, w8, w24
    6724:	89 fe 03 11	add	w9, w20, #255
    6728:	08 01 09 2a	orr	w8, w8, w9
    672c:	68 0a 00 f9	str	x8, [x19, #16]
    6730:	77 62 00 39	strb	w23, [x19, #24]
    6734:	c0 02 40 b9	ldr	w0, [x22]
    6738:	02 00 80 52	mov	w2, #0
    673c:	23 00 80 52	mov	w3, #1
    6740:	52 15 00 94	bl	0xbc88 ; symbol stub for: _mach_port_mod_refs
    6744:	60 03 00 34	cbz	w0, 0x67b0
    6748:	d7 04 00 34	cbz	w23, 0x67e0
    674c:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6750:	08 2d 40 f9	ldr	x8, [x8, #88]
    6754:	88 05 00 b4	cbz	x8, 0x6804
    6758:	e0 03 13 aa	mov	x0, x19
    675c:	00 01 3f d6	blr	x8
    6760:	29 00 00 14	b	0x6804
    6764:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    6768:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    676c:	08 01 40 f9	ldr	x8, [x8]
    6770:	e8 07 00 f9	str	x8, [sp, #8]
    6774:	c0 02 40 b9	ldr	w0, [x22]
    6778:	09 7d 00 91	add	x9, x8, #31
    677c:	e8 03 08 cb	neg	x8, x8
    6780:	22 01 08 8a	and	x2, x9, x8
    6784:	e1 23 00 91	add	x1, sp, #8
    6788:	23 00 80 52	mov	w3, #1
    678c:	03 40 a9 72	movk	w3, #18944, lsl #16
    6790:	44 15 00 94	bl	0xbca0 ; symbol stub for: _mach_vm_allocate
    6794:	80 04 00 34	cbz	w0, 0x6824
    6798:	13 00 80 d2	mov	x19, #0
    679c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    67a0:	08 05 40 f9	ldr	x8, [x8, #8]
    67a4:	89 01 80 52	mov	w9, #12
    67a8:	09 01 00 b9	str	w9, [x8]
    67ac:	17 00 00 14	b	0x6808
    67b0:	61 06 40 b9	ldr	w1, [x19, #4]
    67b4:	62 0a 40 f9	ldr	x2, [x19, #16]
    67b8:	00 08 80 52	mov	w0, #64
    67bc:	e3 03 13 aa	mov	x3, x19
    67c0:	99 14 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    67c4:	20 02 00 34	cbz	w0, 0x6808
    67c8:	c0 02 40 b9	ldr	w0, [x22]
    67cc:	61 06 40 b9	ldr	w1, [x19, #4]
    67d0:	02 00 80 52	mov	w2, #0
    67d4:	03 00 80 12	mov	w3, #-1
    67d8:	2c 15 00 94	bl	0xbc88 ; symbol stub for: _mach_port_mod_refs
    67dc:	97 fb ff 35	cbnz	w23, 0x674c
    67e0:	c0 02 40 b9	ldr	w0, [x22]
    67e4:	e1 07 40 f9	ldr	x1, [sp, #8]
    67e8:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    67ec:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    67f0:	08 01 40 f9	ldr	x8, [x8]
    67f4:	09 7d 00 91	add	x9, x8, #31
    67f8:	e8 03 08 cb	neg	x8, x8
    67fc:	22 01 08 8a	and	x2, x9, x8
    6800:	2b 15 00 94	bl	0xbcac ; symbol stub for: _mach_vm_deallocate
    6804:	13 00 80 d2	mov	x19, #0
    6808:	e0 03 13 aa	mov	x0, x19
    680c:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    6810:	f4 4f 43 a9	ldp	x20, x19, [sp, #48]
    6814:	f6 57 42 a9	ldp	x22, x21, [sp, #32]
    6818:	f8 5f 41 a9	ldp	x24, x23, [sp, #16]
    681c:	ff 43 01 91	add	sp, sp, #80
    6820:	c0 03 5f d6	ret
    6824:	17 00 80 52	mov	w23, #0
    6828:	f3 07 40 f9	ldr	x19, [sp, #8]
    682c:	b4 ff ff 17	b	0x66fc
_pthread_cond_signal:
    6830:	ff 83 01 d1	sub	sp, sp, #96
    6834:	fa 67 01 a9	stp	x26, x25, [sp, #16]
    6838:	f8 5f 02 a9	stp	x24, x23, [sp, #32]
    683c:	f6 57 03 a9	stp	x22, x21, [sp, #48]
    6840:	f4 4f 04 a9	stp	x20, x19, [sp, #64]
    6844:	fd 7b 05 a9	stp	x29, x30, [sp, #80]
    6848:	fd 43 01 91	add	x29, sp, #80
    684c:	f3 03 00 aa	mov	x19, x0
    6850:	94 c8 89 52	mov	w20, #20036
    6854:	f4 69 a8 72	movk	w20, #17231, lsl #16
    6858:	f4 0f 00 b9	str	w20, [sp, #12]
    685c:	08 00 40 b9	ldr	w8, [x0]
    6860:	69 37 96 52	mov	w9, #45499
    6864:	09 96 b7 72	movk	w9, #48304, lsl #16
    6868:	09 01 09 0b	add	w9, w8, w9
    686c:	3f 09 00 71	cmp	w9, #2
    6870:	63 01 00 54	b.lo	0x689c
    6874:	69 37 96 52	mov	w9, #45499
    6878:	09 96 a7 72	movk	w9, #15536, lsl #16
    687c:	1f 01 09 6b	cmp	w8, w9
    6880:	60 01 00 54	b.eq	0x68ac
    6884:	c9 02 80 52	mov	w9, #22
    6888:	8a c8 89 52	mov	w10, #20036
    688c:	ea 69 a8 72	movk	w10, #17231, lsl #16
    6890:	1f 01 0a 6b	cmp	w8, w10
    6894:	20 11 9f 1a	csel	w0, w9, wzr, ne
    6898:	a2 00 00 14	b	0x6b20
    689c:	00 00 80 52	mov	w0, #0
    68a0:	e8 0f 00 b9	str	w8, [sp, #12]
    68a4:	e0 00 00 34	cbz	w0, 0x68c0
    68a8:	9e 00 00 14	b	0x6b20
    68ac:	e1 33 00 91	add	x1, sp, #12
    68b0:	e0 03 13 aa	mov	x0, x19
    68b4:	22 f1 ff 97	bl	__pthread_cond_check_init_slow
    68b8:	e8 0f 40 b9	ldr	w8, [sp, #12]
    68bc:	20 13 00 35	cbnz	w0, 0x6b20
    68c0:	1f 01 14 6b	cmp	w8, w20
    68c4:	e0 12 00 54	b.eq	0x6b20
    68c8:	c9 c8 89 52	mov	w9, #20038
    68cc:	e9 69 a8 72	movk	w9, #17231, lsl #16
    68d0:	1f 01 09 6b	cmp	w8, w9
    68d4:	a0 0a 00 54	b.eq	0x6a28
    68d8:	a9 c8 89 52	mov	w9, #20037
    68dc:	e9 69 a8 72	movk	w9, #17231, lsl #16
    68e0:	1f 01 09 6b	cmp	w8, w9
    68e4:	41 13 00 54	b.ne	0x6b4c
    68e8:	19 00 80 52	mov	w25, #0
    68ec:	1a 00 80 52	mov	w26, #0
    68f0:	14 00 80 52	mov	w20, #0
    68f4:	f5 ef 9f 52	mov	w21, #65407
    68f8:	f5 ff af 72	movk	w21, #32767, lsl #16
    68fc:	68 0e 40 b9	ldr	w8, [x19, #12]
    6900:	69 62 00 91	add	x9, x19, #24
    6904:	6a 72 00 91	add	x10, x19, #28
    6908:	6b 82 00 91	add	x11, x19, #32
    690c:	1f 01 03 72	tst	w8, #0x20000000
    6910:	36 01 8a 9a	csel	x22, x9, x10, eq
    6914:	57 01 8b 9a	csel	x23, x10, x11, eq
    6918:	78 01 89 9a	csel	x24, x11, x9, eq
    691c:	c8 02 40 b9	ldr	w8, [x22]
    6920:	02 03 40 b9	ldr	w2, [x24]
    6924:	e9 02 40 b9	ldr	w9, [x23]
    6928:	0c 5d 18 12	and	w12, w8, #0xffffff00
    692c:	2a 5d 18 12	and	w10, w9, #0xffffff00
    6930:	8e 01 0a 6b	subs	w14, w12, w10
    6934:	4b 5c 18 12	and	w11, w2, #0xffffff00
    6938:	84 11 4b 7a	ccmp	w12, w11, #4, ne
    693c:	e1 00 00 54	b.ne	0x6958
    6940:	08 81 09 aa	orr	x8, x8, x9, lsl #32
    6944:	e9 03 08 aa	mov	x9, x8
    6948:		.long	0xc8e9fec8
    694c:	3f 01 08 eb	cmp	x9, x8
    6950:	61 fe ff 54	b.ne	0x691c
    6954:	72 00 00 14	b	0x6b1c
    6958:	4d 01 0c 6b	subs	w13, w10, w12
    695c:	bf 01 15 6b	cmp	w13, w21
    6960:	ef 97 9f 1a	cset	w15, hi
    6964:	ad 0a 00 11	add	w13, w21, #2
    6968:	df 01 0d 6b	cmp	w14, w13
    696c:	ee 27 9f 1a	cset	w14, lo
    6970:	5f 01 0c 6b	cmp	w10, w12
    6974:	ee 81 8e 1a	csel	w14, w15, w14, hi
    6978:	6e 03 00 36	tbz	w14, #0, 0x69e4
    697c:	6e 01 0c 6b	subs	w14, w11, w12
    6980:	df 01 15 6b	cmp	w14, w21
    6984:	ee 97 9f 1a	cset	w14, hi
    6988:	8f 01 0b 4b	sub	w15, w12, w11
    698c:	ff 01 0d 6b	cmp	w15, w13
    6990:	ed 27 9f 1a	cset	w13, lo
    6994:	7f 01 0c 6b	cmp	w11, w12
    6998:	cc 81 8d 1a	csel	w12, w14, w13, hi
    699c:	cc 02 00 36	tbz	w12, #0, 0x69f4
    69a0:	4c 01 0b 4b	sub	w12, w10, w11
    69a4:	9f 01 15 6b	cmp	w12, w21
    69a8:	ec 97 9f 1a	cset	w12, hi
    69ac:	6d 01 0a 6b	subs	w13, w11, w10
    69b0:	ae 0a 00 11	add	w14, w21, #2
    69b4:	bf 01 0e 6b	cmp	w13, w14
    69b8:	ed 27 9f 1a	cset	w13, lo
    69bc:	7f 01 0a 6b	cmp	w11, w10
    69c0:	8c 31 8d 1a	csel	w12, w12, w13, lo
    69c4:	9f 01 00 71	cmp	w12, #0
    69c8:	6a 11 8a 1a	csel	w10, w11, w10, ne
    69cc:	4a 01 04 11	add	w10, w10, #256
    69d0:	eb 03 02 aa	mov	x11, x2
    69d4:		.long	0x88ebff0a
    69d8:	7f 01 02 6b	cmp	w11, w2
    69dc:	01 fa ff 54	b.ne	0x691c
    69e0:	3b 00 00 14	b	0x6acc
    69e4:	9f 0a 40 71	cmp	w20, #2, lsl #12
    69e8:	aa 0a 00 54	b.ge	0x6b3c
    69ec:	94 06 00 11	add	w20, w20, #1
    69f0:	0c 00 00 14	b	0x6a20
    69f4:	48 07 00 11	add	w8, w26, #1
    69f8:	5f 0b 40 71	cmp	w26, #2, lsl #12
    69fc:	0b 01 00 54	b.lt	0x6a1c
    6a00:	f9 09 00 35	cbnz	w25, 0x6b3c
    6a04:	e9 03 02 aa	mov	x9, x2
    6a08:		.long	0x88e9ff0a
    6a0c:	3f 01 02 6b	cmp	w9, w2
    6a10:	fa 03 88 1a	csel	w26, wzr, w8, eq
    6a14:	f9 17 9f 1a	cset	w25, eq
    6a18:	02 00 00 14	b	0x6a20
    6a1c:	fa 03 08 aa	mov	x26, x8
    6a20:	90 f7 ff 97	bl	_sched_yield
    6a24:	be ff ff 17	b	0x691c
    6a28:	68 0e 40 b9	ldr	w8, [x19, #12]
    6a2c:	08 75 5d d3	ubfx	x8, x8, #29, #1
    6a30:	73 0a 08 8b	add	x19, x19, x8, lsl #2
    6a34:	68 8e 41 f8	ldr	x8, [x19, #24]!
    6a38:	00 00 80 52	mov	w0, #0
    6a3c:	09 bd 60 d3	ubfx	x9, x8, #32, #16
    6a40:	09 07 00 34	cbz	w9, 0x6b20
    6a44:	0a fd 70 d3	lsr	x10, x8, #48
    6a48:	3f 01 0a 6b	cmp	w9, w10
    6a4c:	a0 06 00 54	b.eq	0x6b20
    6a50:	0b fd 60 d3	lsr	x11, x8, #32
    6a54:	0c 05 00 11	add	w12, w8, #1
    6a58:	4d 05 00 11	add	w13, w10, #1
    6a5c:	bf 21 2b 6b	cmp	w13, w11, uxth
    6a60:	2b 25 8a 1a	csinc	w11, w9, w10, hs
    6a64:	0d 3d 60 92	and	x13, x8, #0xffff00000000
    6a68:	8b c1 0b aa	orr	x11, x12, x11, lsl #48
    6a6c:	6b 01 0d aa	orr	x11, x11, x13
    6a70:	ec 03 08 aa	mov	x12, x8
    6a74:		.long	0xc8acfe6b
    6a78:	9f 01 08 eb	cmp	x12, x8
    6a7c:	e8 03 0c aa	mov	x8, x12
    6a80:	c1 fd ff 54	b.ne	0x6a38
    6a84:	5f 01 09 6b	cmp	w10, w9
    6a88:	a2 04 00 54	b.hs	0x6b1c
    6a8c:	20 00 80 52	mov	w0, #1
    6a90:	00 20 a0 72	movk	w0, #256, lsl #16
    6a94:	e1 03 13 aa	mov	x1, x19
    6a98:	02 00 80 d2	mov	x2, #0
    6a9c:	36 14 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    6aa0:	e0 03 f8 36	tbz	w0, #31, 0x6b1c
    6aa4:	e8 03 00 aa	mov	x8, x0
    6aa8:	1f 10 00 31	cmn	w0, #4
    6aac:	00 ff ff 54	b.eq	0x6a8c
    6ab0:	00 00 80 52	mov	w0, #0
    6ab4:	e8 03 08 4b	neg	w8, w8
    6ab8:	1f 09 00 71	cmp	w8, #2
    6abc:	20 03 00 54	b.eq	0x6b20
    6ac0:	1f 95 00 71	cmp	w8, #37
    6ac4:	01 04 00 54	b.ne	0x6b44
    6ac8:	7a 13 00 94	bl	_pthread_cond_broadcast.cold.3
    6acc:	6a 0e 40 b9	ldr	w10, [x19, #12]
    6ad0:	4a 7d 1e 53	lsr	w10, w10, #30
    6ad4:	5f 05 00 71	cmp	w10, #1
    6ad8:	ea 17 9f 1a	cset	w10, eq
    6adc:	47 6d 1c 53	lsl	w7, w10, #4
    6ae0:	01 81 09 aa	orr	x1, x8, x9, lsl #32
    6ae4:	e0 03 13 aa	mov	x0, x19
    6ae8:	03 00 80 52	mov	w3, #0
    6aec:	04 00 80 d2	mov	x4, #0
    6af0:	05 00 80 d2	mov	x5, #0
    6af4:	06 00 80 d2	mov	x6, #0
    6af8:	e6 13 00 94	bl	0xba90 ; symbol stub for: ___psynch_cvsignal
    6afc:	e2 03 00 aa	mov	x2, x0
    6b00:	00 00 80 52	mov	w0, #0
    6b04:	48 04 00 51	sub	w8, w2, #1
    6b08:	1f 0d 00 31	cmn	w8, #3
    6b0c:	a8 00 00 54	b.hi	0x6b20
    6b10:	e0 03 13 aa	mov	x0, x19
    6b14:	01 00 80 52	mov	w1, #0
    6b18:	61 f7 ff 97	bl	__pthread_cond_updateval
    6b1c:	00 00 80 52	mov	w0, #0
    6b20:	fd 7b 45 a9	ldp	x29, x30, [sp, #80]
    6b24:	f4 4f 44 a9	ldp	x20, x19, [sp, #64]
    6b28:	f6 57 43 a9	ldp	x22, x21, [sp, #48]
    6b2c:	f8 5f 42 a9	ldp	x24, x23, [sp, #32]
    6b30:	fa 67 41 a9	ldp	x26, x25, [sp, #16]
    6b34:	ff 83 01 91	add	sp, sp, #96
    6b38:	c0 03 5f d6	ret
    6b3c:	60 04 80 52	mov	w0, #35
    6b40:	f8 ff ff 17	b	0x6b20
    6b44:	e0 03 08 aa	mov	x0, x8
    6b48:	50 13 00 94	bl	_pthread_cond_broadcast.cold.2
    6b4c:	e0 03 08 aa	mov	x0, x8
    6b50:	44 13 00 94	bl	_pthread_cond_broadcast.cold.1
_pthread_setcanceltype:
    6b54:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    6b58:	fd 03 00 91	mov	x29, sp
    6b5c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    6b60:	09 0d 52 f8	ldr	x9, [x8, #-224]!
    6b64:	ea 00 00 d0	adrp	x10, 30 ; 0x24000
    6b68:	4a 35 40 f9	ldr	x10, [x10, #104]
    6b6c:	49 01 09 ca	eor	x9, x10, x9
    6b70:	3f 01 08 eb	cmp	x9, x8
    6b74:	61 02 00 54	b.ne	0x6bc0
    6b78:	1f 78 1e 72	tst	w0, #0xfffffffd
    6b7c:	60 00 00 54	b.eq	0x6b88
    6b80:	c0 02 80 52	mov	w0, #22
    6b84:	0d 00 00 14	b	0x6bb8
    6b88:	09 4d 41 79	ldrh	w9, [x8, #166]
    6b8c:	ea 03 09 aa	mov	x10, x9
    6b90:	2b 79 1e 12	and	w11, w9, #0xfffffffd
    6b94:	6b 01 00 2a	orr	w11, w11, w0
    6b98:	0c 99 02 91	add	x12, x8, #166
    6b9c:		.long	0x48a97d8b
    6ba0:	3f 21 2a 6b	cmp	w9, w10, uxth
    6ba4:	41 ff ff 54	b.ne	0x6b8c
    6ba8:	00 00 80 52	mov	w0, #0
    6bac:	61 00 00 b4	cbz	x1, 0x6bb8
    6bb0:	48 01 1f 12	and	w8, w10, #0x2
    6bb4:	28 00 00 b9	str	w8, [x1]
    6bb8:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    6bbc:	c0 03 5f d6	ret
    6bc0:	5f 12 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_set_fixedpriority_self:
    6bc4:	80 00 80 52	mov	w0, #4
    6bc8:	01 00 80 d2	mov	x1, #0
    6bcc:	02 00 80 52	mov	w2, #0
    6bd0:	2f f6 ff 17	b	__pthread_set_properties_self
_pthread_sigmask:
    6bd4:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    6bd8:	fd 03 00 91	mov	x29, sp
    6bdc:	d1 13 00 94	bl	0xbb20 ; symbol stub for: ___pthread_sigmask
    6be0:	1f 04 00 31	cmn	w0, #1
    6be4:	60 00 00 54	b.eq	0x6bf0
    6be8:	00 00 80 52	mov	w0, #0
    6bec:	04 00 00 14	b	0x6bfc
    6bf0:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    6bf4:	08 05 40 f9	ldr	x8, [x8, #8]
    6bf8:	00 01 40 b9	ldr	w0, [x8]
    6bfc:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    6c00:	c0 03 5f d6	ret
_pthread_attr_setschedparam:
    6c04:	09 00 40 f9	ldr	x9, [x0]
    6c08:	2a 88 88 52	mov	w10, #17473
    6c0c:	0a 89 aa 72	movk	w10, #21576, lsl #16
    6c10:	3f 01 0a eb	cmp	x9, x10
    6c14:	01 01 00 54	b.ne	0x6c34
    6c18:	e8 03 00 aa	mov	x8, x0
    6c1c:	00 00 80 52	mov	w0, #0
    6c20:	29 00 40 f9	ldr	x9, [x1]
    6c24:	0a 15 40 f9	ldr	x10, [x8, #40]
    6c28:	4a 01 68 b2	orr	x10, x10, #0x1000000
    6c2c:	09 29 02 a9	stp	x9, x10, [x8, #32]
    6c30:	c0 03 5f d6	ret
    6c34:	c0 02 80 52	mov	w0, #22
    6c38:	c0 03 5f d6	ret
_pthread_attr_get_qos_class_np:
    6c3c:	08 00 40 f9	ldr	x8, [x0]
    6c40:	29 88 88 52	mov	w9, #17473
    6c44:	09 89 aa 72	movk	w9, #21576, lsl #16
    6c48:	1f 01 09 eb	cmp	x8, x9
    6c4c:	c1 00 00 54	b.ne	0x6c64
    6c50:	08 ac 40 39	ldrb	w8, [x0, #43]
    6c54:	c8 00 08 37	tbnz	w8, #1, 0x6c6c
    6c58:	08 00 80 d2	mov	x8, #0
    6c5c:	c1 00 00 b5	cbnz	x1, 0x6c74
    6c60:	16 00 00 14	b	0x6cb8
    6c64:	c0 02 80 52	mov	w0, #22
    6c68:	c0 03 5f d6	ret
    6c6c:	08 10 40 f9	ldr	x8, [x0, #32]
    6c70:	41 02 00 b4	cbz	x1, 0x6cb8
    6c74:	09 00 80 52	mov	w9, #0
    6c78:	0a 40 a4 52	mov	w10, #570425344
    6c7c:	1f 01 0a ea	tst	x8, x10
    6c80:	41 01 00 54	b.ne	0x6ca8
    6c84:	0a 15 78 92	and	x10, x8, #0x3f00
    6c88:	0a 01 00 b4	cbz	x10, 0x6ca8
    6c8c:	09 35 08 53	ubfx	w9, w8, #8, #6
    6c90:	c9 00 00 34	cbz	w9, 0x6ca8
    6c94:	29 01 c0 5a	rbit	w9, w9
    6c98:	29 11 c0 5a	clz	w9, w9
    6c9c:	3f 15 00 71	cmp	w9, #5
    6ca0:	08 02 00 54	b.hi	0x6ce0
    6ca4:	29 05 00 11	add	w9, w9, #1
    6ca8:	2a 00 00 b0	adrp	x10, 5 ; 0xb000
    6cac:	4a 31 39 91	add	x10, x10, #3660
    6cb0:	49 59 69 b8	ldr	w9, [x10, w9, uxtw #2]
    6cb4:	29 00 00 b9	str	w9, [x1]
    6cb8:	00 00 80 52	mov	w0, #0
    6cbc:	02 01 00 b4	cbz	x2, 0x6cdc
    6cc0:	09 40 a4 52	mov	w9, #570425344
    6cc4:	09 01 09 8a	and	x9, x8, x9
    6cc8:	1f 15 78 f2	tst	x8, #0x3f00
    6ccc:	20 19 40 fa	ccmp	x9, #0, #0, ne
    6cd0:	08 1d 00 13	sxtb	w8, w8
    6cd4:	e8 17 88 1a	csinc	w8, wzr, w8, ne
    6cd8:	48 00 00 b9	str	w8, [x2]
    6cdc:	c0 03 5f d6	ret
    6ce0:	09 00 80 52	mov	w9, #0
    6ce4:	f4 ff ff 17	b	0x6cb4
_pthread_override_qos_class_end_np:
    6ce8:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    6cec:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    6cf0:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    6cf4:	fd 83 00 91	add	x29, sp, #32
    6cf8:	f3 03 00 aa	mov	x19, x0
    6cfc:	e1 cd 8e 52	mov	w1, #30319
    6d00:	a1 4c ae 72	movk	w1, #29285, lsl #16
    6d04:	fc 11 00 94	bl	__pthread_atomic_xchg_uint32_relaxed
    6d08:	48 ae 8c 52	mov	w8, #25970
    6d0c:	c8 ee ad 72	movk	w8, #28534, lsl #16
    6d10:	1f 00 08 6b	cmp	w0, w8
    6d14:	e1 05 00 54	b.ne	0x6dd0
    6d18:	61 06 40 b9	ldr	w1, [x19, #4]
    6d1c:	00 10 80 52	mov	w0, #128
    6d20:	e2 03 13 aa	mov	x2, x19
    6d24:	03 00 80 d2	mov	x3, #0
    6d28:	3f 13 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    6d2c:	1f 04 00 31	cmn	w0, #1
    6d30:	81 00 00 54	b.ne	0x6d40
    6d34:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    6d38:	08 05 40 f9	ldr	x8, [x8, #8]
    6d3c:	00 01 40 b9	ldr	w0, [x8]
    6d40:	1f 38 00 71	cmp	w0, #14
    6d44:	f4 03 80 1a	csel	w20, wzr, w0, eq
    6d48:	56 00 00 d0	adrp	x22, 10 ; 0x10000
    6d4c:	d6 e6 40 f9	ldr	x22, [x22, #456] ; literal pool symbol address: _mach_task_self_
    6d50:	c0 02 40 b9	ldr	w0, [x22]
    6d54:	61 06 40 b9	ldr	w1, [x19, #4]
    6d58:	02 00 80 52	mov	w2, #0
    6d5c:	03 00 80 12	mov	w3, #-1
    6d60:	ca 13 00 94	bl	0xbc88 ; symbol stub for: _mach_port_mod_refs
    6d64:	d5 02 80 52	mov	w21, #22
    6d68:	1f 00 00 71	cmp	w0, #0
    6d6c:	94 02 95 1a	csel	w20, w20, w21, eq
    6d70:	68 62 40 39	ldrb	w8, [x19, #24]
    6d74:	e8 00 00 34	cbz	w8, 0x6d90
    6d78:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6d7c:	08 2d 40 f9	ldr	x8, [x8, #88]
    6d80:	e8 01 00 b4	cbz	x8, 0x6dbc
    6d84:	e0 03 13 aa	mov	x0, x19
    6d88:	00 01 3f d6	blr	x8
    6d8c:	0c 00 00 14	b	0x6dbc
    6d90:	c0 02 40 b9	ldr	w0, [x22]
    6d94:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    6d98:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    6d9c:	08 01 40 f9	ldr	x8, [x8]
    6da0:	09 7d 00 91	add	x9, x8, #31
    6da4:	e8 03 08 cb	neg	x8, x8
    6da8:	22 01 08 8a	and	x2, x9, x8
    6dac:	e1 03 13 aa	mov	x1, x19
    6db0:	bf 13 00 94	bl	0xbcac ; symbol stub for: _mach_vm_deallocate
    6db4:	1f 00 00 71	cmp	w0, #0
    6db8:	94 02 95 1a	csel	w20, w20, w21, eq
    6dbc:	e0 03 14 aa	mov	x0, x20
    6dc0:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    6dc4:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    6dc8:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    6dcc:	c0 03 5f d6	ret
    6dd0:	20 00 20 d4	brk	#0x1
_pthread_detach:
    6dd4:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    6dd8:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    6ddc:	fd 43 00 91	add	x29, sp, #16
    6de0:	00 02 00 b4	cbz	x0, 0x6e20
    6de4:	f3 03 00 aa	mov	x19, x0
    6de8:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6dec:	00 10 01 91	add	x0, x0, #68
    6df0:	a1 00 a0 52	mov	w1, #327680
    6df4:	bd 13 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6df8:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6dfc:	08 01 40 f9	ldr	x8, [x8]
    6e00:	a8 00 00 b4	cbz	x8, 0x6e14
    6e04:	1f 01 13 eb	cmp	x8, x19
    6e08:	60 01 00 54	b.eq	0x6e34
    6e0c:	08 09 40 f9	ldr	x8, [x8, #16]
    6e10:	a8 ff ff b5	cbnz	x8, 0x6e04
    6e14:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6e18:	00 10 01 91	add	x0, x0, #68
    6e1c:	b6 13 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    6e20:	73 00 80 52	mov	w19, #3
    6e24:	e0 03 13 aa	mov	x0, x19
    6e28:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    6e2c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    6e30:	c0 03 5f d6	ret
    6e34:	68 02 40 f9	ldr	x8, [x19]
    6e38:	e9 00 00 d0	adrp	x9, 30 ; 0x24000
    6e3c:	29 35 40 f9	ldr	x9, [x9, #104]
    6e40:	28 01 08 ca	eor	x8, x9, x8
    6e44:	1f 01 13 eb	cmp	x8, x19
    6e48:	21 04 00 54	b.ne	0x6ecc
    6e4c:	68 c6 40 39	ldrb	w8, [x19, #49]
    6e50:	c8 00 00 37	tbnz	w8, #0, 0x6e68
    6e54:	d3 02 80 52	mov	w19, #22
    6e58:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6e5c:	00 10 01 91	add	x0, x0, #68
    6e60:	a5 13 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    6e64:	f0 ff ff 17	b	0x6e24
    6e68:	69 36 40 b9	ldr	w9, [x19, #52]
    6e6c:	3f 05 00 31	cmn	w9, #1
    6e70:	a0 01 00 54	b.eq	0x6ea4
    6e74:	08 19 1f 12	and	w8, w8, #0xfe
    6e78:	68 c6 00 39	strb	w8, [x19, #49]
    6e7c:	68 12 40 f9	ldr	x8, [x19, #32]
    6e80:	28 02 00 b4	cbz	x8, 0x6ec4
    6e84:	e0 03 13 aa	mov	x0, x19
    6e88:	d4 00 00 94	bl	__pthread_joiner_prepost_wake
    6e8c:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6e90:	00 10 01 91	add	x0, x0, #68
    6e94:	98 13 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    6e98:	e0 03 13 aa	mov	x0, x19
    6e9c:	e8 00 00 94	bl	__pthread_joiner_wake
    6ea0:	07 00 00 14	b	0x6ebc
    6ea4:	e0 00 00 d0	adrp	x0, 30 ; 0x24000
    6ea8:	00 10 01 91	add	x0, x0, #68
    6eac:	92 13 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    6eb0:	e0 03 13 aa	mov	x0, x19
    6eb4:	01 00 80 d2	mov	x1, #0
    6eb8:	ca 03 00 94	bl	_pthread_join$NOCANCEL
    6ebc:	13 00 80 52	mov	w19, #0
    6ec0:	d9 ff ff 17	b	0x6e24
    6ec4:	13 00 80 52	mov	w19, #0
    6ec8:	e4 ff ff 17	b	0x6e58
    6ecc:	9c 11 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_atfork_prepare_handlers:
    6ed0:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    6ed4:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    6ed8:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    6edc:	fd 83 00 91	add	x29, sp, #32
    6ee0:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    6ee4:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    6ee8:	09 81 40 f9	ldr	x9, [x8, #256]
    6eec:	3f 05 00 b1	cmn	x9, #1
    6ef0:	a1 02 00 54	b.ne	0x6f44
    6ef4:	13 85 40 f9	ldr	x19, [x8, #264]
    6ef8:	60 32 00 91	add	x0, x19, #12
    6efc:	a1 00 a0 52	mov	w1, #327680
    6f00:	7a 13 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6f04:	74 0a 40 f9	ldr	x20, [x19, #16]
    6f08:	74 01 00 b4	cbz	x20, 0x6f34
    6f0c:	08 03 80 52	mov	w8, #24
    6f10:	e9 02 80 92	mov	x9, #-24
    6f14:	95 26 08 9b	madd	x21, x20, x8, x9
    6f18:	68 86 40 f9	ldr	x8, [x19, #264]
    6f1c:	08 69 75 f8	ldr	x8, [x8, x21]
    6f20:	48 00 00 b4	cbz	x8, 0x6f28
    6f24:	00 01 3f d6	blr	x8
    6f28:	b5 62 00 d1	sub	x21, x21, #24
    6f2c:	94 06 00 d1	sub	x20, x20, #1
    6f30:	54 ff ff b5	cbnz	x20, 0x6f18
    6f34:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    6f38:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    6f3c:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    6f40:	c0 03 5f d6	ret
    6f44:	00 01 04 91	add	x0, x8, #256
    6f48:	02 00 00 b0	adrp	x2, 1 ; 0x7000
    6f4c:	42 50 3f 91	add	x2, x2, #4052
    6f50:	01 28 80 52	mov	w1, #320
    6f54:	14 13 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    6f58:	f3 03 00 aa	mov	x19, x0
    6f5c:	e7 ff ff 17	b	0x6ef8
__pthread_is_threaded:
_pthread_is_threaded_np:
    6f60:	e8 00 00 d0	adrp	x8, 30 ; 0x24000
    6f64:	00 41 40 b9	ldr	w0, [x8, #64]
    6f68:	c0 03 5f d6	ret
__pthread_atfork_prepare:
    6f6c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    6f70:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    6f74:	fd 43 00 91	add	x29, sp, #16
    6f78:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    6f7c:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    6f80:	09 81 40 f9	ldr	x9, [x8, #256]
    6f84:	3f 05 00 b1	cmn	x9, #1
    6f88:	a1 01 00 54	b.ne	0x6fbc
    6f8c:	13 85 40 f9	ldr	x19, [x8, #264]
    6f90:	60 22 00 91	add	x0, x19, #8
    6f94:	a1 00 a0 52	mov	w1, #327680
    6f98:	54 13 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6f9c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    6fa0:	09 81 03 d1	sub	x9, x8, #224
    6fa4:	69 02 00 f9	str	x9, [x19]
    6fa8:	00 61 02 d1	sub	x0, x8, #152
    6fac:	a1 00 a0 52	mov	w1, #327680
    6fb0:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    6fb4:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    6fb8:	4c 13 00 14	b	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    6fbc:	00 01 04 91	add	x0, x8, #256
    6fc0:	02 00 00 b0	adrp	x2, 1 ; 0x7000
    6fc4:	42 50 3f 91	add	x2, x2, #4052
    6fc8:	01 28 80 52	mov	w1, #320
    6fcc:	f6 12 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    6fd0:	f3 03 00 aa	mov	x19, x0
    6fd4:	ef ff ff 17	b	0x6f90
__pthread_atfork_parent:
    6fd8:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    6fdc:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    6fe0:	fd 43 00 91	add	x29, sp, #16
    6fe4:	48 00 00 d0	adrp	x8, 10 ; 0x10000
    6fe8:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    6fec:	09 81 40 f9	ldr	x9, [x8, #256]
    6ff0:	3f 05 00 b1	cmn	x9, #1
    6ff4:	21 01 00 54	b.ne	0x7018
    6ff8:	13 85 40 f9	ldr	x19, [x8, #264]
    6ffc:	68 86 40 f8	ldr	x8, [x19], #8
    7000:	00 21 01 91	add	x0, x8, #72
    7004:	3c 13 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    7008:	e0 03 13 aa	mov	x0, x19
    700c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7010:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    7014:	38 13 00 14	b	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    7018:	00 01 04 91	add	x0, x8, #256
    701c:	02 00 00 90	adrp	x2, 0 ; 0x7000
    7020:	42 50 3f 91	add	x2, x2, #4052
    7024:	01 28 80 52	mov	w1, #320
    7028:	df 12 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    702c:	f3 03 00 aa	mov	x19, x0
    7030:	f3 ff ff 17	b	0x6ffc
__pthread_atfork_parent_handlers:
    7034:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    7038:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    703c:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    7040:	fd 83 00 91	add	x29, sp, #32
    7044:	48 00 00 b0	adrp	x8, 9 ; 0x10000
    7048:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    704c:	09 81 40 f9	ldr	x9, [x8, #256]
    7050:	3f 05 00 b1	cmn	x9, #1
    7054:	81 02 00 54	b.ne	0x70a4
    7058:	13 85 40 f9	ldr	x19, [x8, #264]
    705c:	68 0a 40 f9	ldr	x8, [x19, #16]
    7060:	88 01 00 b4	cbz	x8, 0x7090
    7064:	14 00 80 d2	mov	x20, #0
    7068:	15 01 80 52	mov	w21, #8
    706c:	69 86 40 f9	ldr	x9, [x19, #264]
    7070:	29 69 75 f8	ldr	x9, [x9, x21]
    7074:	69 00 00 b4	cbz	x9, 0x7080
    7078:	20 01 3f d6	blr	x9
    707c:	68 0a 40 f9	ldr	x8, [x19, #16]
    7080:	94 06 00 91	add	x20, x20, #1
    7084:	b5 62 00 91	add	x21, x21, #24
    7088:	9f 02 08 eb	cmp	x20, x8
    708c:	03 ff ff 54	b.lo	0x706c
    7090:	60 32 00 91	add	x0, x19, #12
    7094:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    7098:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    709c:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    70a0:	15 13 00 14	b	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    70a4:	00 01 04 91	add	x0, x8, #256
    70a8:	02 00 00 90	adrp	x2, 0 ; 0x7000
    70ac:	42 50 3f 91	add	x2, x2, #4052
    70b0:	01 28 80 52	mov	w1, #320
    70b4:	bc 12 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    70b8:	f3 03 00 aa	mov	x19, x0
    70bc:	e8 ff ff 17	b	0x705c
__pthread_current_stack_address:
    70c0:	ff 43 00 d1	sub	sp, sp, #16
    70c4:	e0 33 00 91	add	x0, sp, #12
    70c8:	ff 43 00 91	add	sp, sp, #16
    70cc:	c0 03 5f d6	ret
_pthread_key_delete:
    70d0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    70d4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    70d8:	fd 43 00 91	add	x29, sp, #16
    70dc:	f3 03 00 aa	mov	x19, x0
    70e0:	00 01 00 b0	adrp	x0, 33 ; 0x28000
    70e4:	00 d0 00 91	add	x0, x0, #52
    70e8:	a1 00 a0 52	mov	w1, #327680
    70ec:	ff 12 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    70f0:	68 02 04 d1	sub	x8, x19, #256
    70f4:	1f fd 07 f1	cmp	x8, #511
    70f8:	c8 02 00 54	b.hi	0x7150
    70fc:	08 01 00 b0	adrp	x8, 33 ; 0x28000
    7100:	08 e1 00 91	add	x8, x8, #56
    7104:	09 79 73 f8	ldr	x9, [x8, x19, lsl #3]
    7108:	49 02 00 b4	cbz	x9, 0x7150
    710c:	1f 79 33 f8	str	xzr, [x8, x19, lsl #3]
    7110:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7114:	00 10 01 91	add	x0, x0, #68
    7118:	a1 00 a0 52	mov	w1, #327680
    711c:	f3 12 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    7120:	e8 00 00 b0	adrp	x8, 29 ; 0x24000
    7124:	08 01 40 f9	ldr	x8, [x8]
    7128:	a8 00 00 b4	cbz	x8, 0x713c
    712c:	09 0d 13 8b	add	x9, x8, x19, lsl #3
    7130:	3f 71 00 f9	str	xzr, [x9, #224]
    7134:	08 09 40 f9	ldr	x8, [x8, #16]
    7138:	a8 ff ff b5	cbnz	x8, 0x712c
    713c:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7140:	00 10 01 91	add	x0, x0, #68
    7144:	ec 12 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    7148:	13 00 80 52	mov	w19, #0
    714c:	02 00 00 14	b	0x7154
    7150:	d3 02 80 52	mov	w19, #22
    7154:	00 01 00 b0	adrp	x0, 33 ; 0x28000
    7158:	00 d0 00 91	add	x0, x0, #52
    715c:	e6 12 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    7160:	e0 03 13 aa	mov	x0, x19
    7164:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7168:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    716c:	c0 03 5f d6	ret
__pthread_qos_override_start_direct:
    7170:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    7174:	fd 03 00 91	mov	x29, sp
    7178:	e3 03 02 aa	mov	x3, x2
    717c:	e2 03 01 aa	mov	x2, x1
    7180:	e1 03 00 2a	mov	w1, w0
    7184:	00 08 80 52	mov	w0, #64
    7188:	27 12 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    718c:	1f 04 00 31	cmn	w0, #1
    7190:	81 00 00 54	b.ne	0x71a0
    7194:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    7198:	08 05 40 f9	ldr	x8, [x8, #8]
    719c:	00 01 40 b9	ldr	w0, [x8]
    71a0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    71a4:	c0 03 5f d6	ret
_pthread_join:
    71a8:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    71ac:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    71b0:	fd 43 00 91	add	x29, sp, #16
    71b4:	f3 03 01 aa	mov	x19, x1
    71b8:	f4 03 00 aa	mov	x20, x0
    71bc:	19 f5 ff 97	bl	_pthread_testcancel
    71c0:	e0 03 14 aa	mov	x0, x20
    71c4:	e1 03 13 aa	mov	x1, x19
    71c8:	42 00 80 52	mov	w2, #2
    71cc:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    71d0:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    71d4:	7c 09 00 14	b	__pthread_join
__pthread_joiner_prepost_wake:
    71d8:	e8 03 00 aa	mov	x8, x0
    71dc:	09 10 40 f9	ldr	x9, [x0, #32]
    71e0:	0a c4 40 39	ldrb	w10, [x0, #49]
    71e4:	ca 00 00 37	tbnz	w10, #0, 0x71fc
    71e8:	00 00 80 52	mov	w0, #0
    71ec:	2a 00 80 52	mov	w10, #1
    71f0:	2a 61 00 39	strb	w10, [x9, #24]
    71f4:	1f 11 00 f9	str	xzr, [x8, #32]
    71f8:	04 00 00 14	b	0x7208
    71fc:	20 15 40 b9	ldr	w0, [x9, #20]
    7200:	4a 19 1f 12	and	w10, w10, #0xfe
    7204:	0a c5 00 39	strb	w10, [x8, #49]
    7208:	2a 05 40 f9	ldr	x10, [x9, #8]
    720c:	2a 01 00 b4	cbz	x10, 0x7230
    7210:	0a 99 02 91	add	x10, x8, #166
    7214:	4a fd df 48	ldarh	w10, [x10]
    7218:	2b 02 80 52	mov	w11, #17
    721c:	7f 01 2a 6a	bics	wzr, w11, w10
    7220:	a0 00 00 54	b.eq	0x7234
    7224:	08 15 40 f9	ldr	x8, [x8, #40]
    7228:	29 05 40 f9	ldr	x9, [x9, #8]
    722c:	28 01 00 f9	str	x8, [x9]
    7230:	c0 03 5f d6	ret
    7234:	28 00 80 52	mov	w8, #1
    7238:	fc ff ff 17	b	0x7228
__pthread_joiner_wake:
    723c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7240:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    7244:	fd 43 00 91	add	x29, sp, #16
    7248:	13 d0 00 91	add	x19, x0, #52
    724c:	40 00 80 52	mov	w0, #2
    7250:	00 20 a0 72	movk	w0, #256, lsl #16
    7254:	e1 03 13 aa	mov	x1, x19
    7258:	02 00 80 d2	mov	x2, #0
    725c:	46 12 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    7260:	1f 10 00 31	cmn	w0, #4
    7264:	40 ff ff 54	b.eq	0x724c
    7268:	1f 08 00 31	cmn	w0, #2
    726c:	40 00 00 54	b.eq	0x7274
    7270:	80 00 00 35	cbnz	w0, 0x7280
    7274:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7278:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    727c:	c0 03 5f d6	ret
    7280:	19 11 00 94	bl	__pthread_joiner_wake.cold.1
__pthread_deallocate:
    7284:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7288:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    728c:	fd 43 00 91	add	x29, sp, #16
    7290:	e8 00 00 b0	adrp	x8, 29 ; 0x24000
    7294:	08 25 40 f9	ldr	x8, [x8, #72]
    7298:	1f 01 00 eb	cmp	x8, x0
    729c:	c0 01 00 54	b.eq	0x72d4
    72a0:	f3 03 00 aa	mov	x19, x0
    72a4:	c1 00 00 37	tbnz	w1, #0, 0x72bc
    72a8:	c8 00 00 b0	adrp	x8, 25 ; 0x20000
    72ac:	08 19 40 f9	ldr	x8, [x8, #48]
    72b0:	68 00 00 b4	cbz	x8, 0x72bc
    72b4:	e0 03 13 aa	mov	x0, x19
    72b8:	d9 08 00 94	bl	__pthread_introspection_hook_callout_thread_destroy
    72bc:	48 00 00 b0	adrp	x8, 9 ; 0x10000
    72c0:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    72c4:	00 01 40 b9	ldr	w0, [x8]
    72c8:	61 0a 4c a9	ldp	x1, x2, [x19, #192]
    72cc:	78 12 00 94	bl	0xbcac ; symbol stub for: _mach_vm_deallocate
    72d0:	80 00 00 35	cbnz	w0, 0x72e0
    72d4:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    72d8:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    72dc:	c0 03 5f d6	ret
    72e0:	08 7c 40 93	sxtw	x8, w0
    72e4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    72e8:	34 00 00 90	adrp	x20, 4 ; 0xb000
    72ec:	94 c2 3b 91	add	x20, x20, #3824 ; literal pool for: "BUG IN LIBPTHREAD: Unable to deallocate stack"
    72f0:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    72f4:	b5 22 00 91	add	x21, x21, #8
    72f8:	b4 06 00 f9	str	x20, [x21, #8]
    72fc:	a8 1e 00 f9	str	x8, [x21, #56]
    7300:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7304:	20 00 20 d4	brk	#0x1
_pthread_kill:
    7308:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    730c:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    7310:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    7314:	fd 83 00 91	add	x29, sp, #32
    7318:	3f 80 00 71	cmp	w1, #32
    731c:	69 00 00 54	b.ls	0x7328
    7320:	c0 02 80 52	mov	w0, #22
    7324:	4d 00 00 14	b	0x7458
    7328:	f3 03 01 aa	mov	x19, x1
    732c:	f4 03 00 aa	mov	x20, x0
    7330:	48 00 00 b0	adrp	x8, 9 ; 0x10000
    7334:	08 a1 40 f9	ldr	x8, [x8, #320] ; literal pool symbol address: __os_xbs_chrooted
    7338:	09 01 40 39	ldrb	w9, [x8]
    733c:	75 d0 3b d5	mrs	x21, TPIDRRO_EL0
    7340:	a8 82 03 d1	sub	x8, x21, #224
    7344:	1f 01 00 eb	cmp	x8, x0
    7348:	e9 01 00 34	cbz	w9, 0x7384
    734c:	00 04 00 54	b.eq	0x73cc
    7350:	b4 03 00 b4	cbz	x20, 0x73c4
    7354:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7358:	00 10 01 91	add	x0, x0, #68
    735c:	a1 00 a0 52	mov	w1, #327680
    7360:	62 12 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    7364:	e8 00 00 b0	adrp	x8, 29 ; 0x24000
    7368:	08 01 40 f9	ldr	x8, [x8]
    736c:	68 02 00 b4	cbz	x8, 0x73b8
    7370:	1f 01 14 eb	cmp	x8, x20
    7374:	40 05 00 54	b.eq	0x741c
    7378:	08 09 40 f9	ldr	x8, [x8, #16]
    737c:	a8 ff ff b5	cbnz	x8, 0x7370
    7380:	0e 00 00 14	b	0x73b8
    7384:	e0 02 00 54	b.eq	0x73e0
    7388:	f4 01 00 b4	cbz	x20, 0x73c4
    738c:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7390:	00 10 01 91	add	x0, x0, #68
    7394:	a1 00 a0 52	mov	w1, #327680
    7398:	54 12 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    739c:	e8 00 00 b0	adrp	x8, 29 ; 0x24000
    73a0:	08 01 40 f9	ldr	x8, [x8]
    73a4:	a8 00 00 b4	cbz	x8, 0x73b8
    73a8:	1f 01 14 eb	cmp	x8, x20
    73ac:	e0 05 00 54	b.eq	0x7468
    73b0:	08 09 40 f9	ldr	x8, [x8, #16]
    73b4:	a8 ff ff b5	cbnz	x8, 0x73a8
    73b8:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    73bc:	00 10 01 91	add	x0, x0, #68
    73c0:	4d 12 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    73c4:	60 00 80 52	mov	w0, #3
    73c8:	24 00 00 14	b	0x7458
    73cc:	88 9e 40 79	ldrh	w8, [x20, #78]
    73d0:	08 05 16 12	and	w8, w8, #0xc00
    73d4:	1f 01 10 71	cmp	w8, #1024
    73d8:	01 01 00 54	b.ne	0x73f8
    73dc:	1e 00 00 14	b	0x7454
    73e0:	88 02 40 f9	ldr	x8, [x20]
    73e4:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    73e8:	29 35 40 f9	ldr	x9, [x9, #104]
    73ec:	28 01 08 ca	eor	x8, x9, x8
    73f0:	1f 01 14 eb	cmp	x8, x20
    73f4:	01 05 00 54	b.ne	0x7494
    73f8:	94 fa 40 b9	ldr	w20, [x20, #248]
    73fc:	e0 03 14 aa	mov	x0, x20
    7400:	e1 03 13 aa	mov	x1, x19
    7404:	c1 11 00 94	bl	0xbb08 ; symbol stub for: ___pthread_kill
    7408:	1f 04 00 31	cmn	w0, #1
    740c:	61 02 00 54	b.ne	0x7458
    7410:	a8 06 40 f9	ldr	x8, [x21, #8]
    7414:	00 01 40 b9	ldr	w0, [x8]
    7418:	10 00 00 14	b	0x7458
    741c:	88 02 40 f9	ldr	x8, [x20]
    7420:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    7424:	29 35 40 f9	ldr	x9, [x9, #104]
    7428:	28 01 08 ca	eor	x8, x9, x8
    742c:	1f 01 14 eb	cmp	x8, x20
    7430:	41 03 00 54	b.ne	0x7498
    7434:	88 9e 40 79	ldrh	w8, [x20, #78]
    7438:	16 05 16 12	and	w22, w8, #0xc00
    743c:	94 fa 40 b9	ldr	w20, [x20, #248]
    7440:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7444:	00 10 01 91	add	x0, x0, #68
    7448:	2b 12 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    744c:	df 02 10 71	cmp	w22, #1024
    7450:	61 fd ff 54	b.ne	0x73fc
    7454:	a0 05 80 52	mov	w0, #45
    7458:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    745c:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    7460:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    7464:	c0 03 5f d6	ret
    7468:	88 02 40 f9	ldr	x8, [x20]
    746c:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    7470:	29 35 40 f9	ldr	x9, [x9, #104]
    7474:	28 01 08 ca	eor	x8, x9, x8
    7478:	1f 01 14 eb	cmp	x8, x20
    747c:	01 01 00 54	b.ne	0x749c
    7480:	94 fa 40 b9	ldr	w20, [x20, #248]
    7484:	e0 00 00 b0	adrp	x0, 29 ; 0x24000
    7488:	00 10 01 91	add	x0, x0, #68
    748c:	1a 12 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    7490:	db ff ff 17	b	0x73fc
    7494:	2a 10 00 94	bl	_pthread_mach_thread_np.cold.1
    7498:	29 10 00 94	bl	_pthread_mach_thread_np.cold.1
    749c:	28 10 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_set_timeshare_self:
    74a0:	00 01 80 52	mov	w0, #8
    74a4:	01 00 80 d2	mov	x1, #0
    74a8:	02 00 80 52	mov	w2, #0
    74ac:	f8 f3 ff 17	b	__pthread_set_properties_self
__pthread_workqueue_init_with_workloop:
    74b0:	ff 03 01 d1	sub	sp, sp, #64
    74b4:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    74b8:	fd c3 00 91	add	x29, sp, #48
    74bc:	48 00 80 52	mov	w8, #2
    74c0:	ff 07 00 a9	stp	xzr, x1, [sp]
    74c4:	e8 07 00 b9	str	w8, [sp, #4]
    74c8:	e2 03 01 a9	stp	x2, x0, [sp, #16]
    74cc:	68 7c 40 93	sxtw	x8, w3
    74d0:	e8 7f 02 a9	stp	x8, xzr, [sp, #32]
    74d4:	e0 03 00 91	mov	x0, sp
    74d8:	01 06 80 52	mov	w1, #48
    74dc:	35 f0 ff 97	bl	_pthread_workqueue_setup
    74e0:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    74e4:	ff 03 01 91	add	sp, sp, #64
    74e8:	c0 03 5f d6	ret
_pthread_attr_setinheritsched:
    74ec:	e8 03 00 aa	mov	x8, x0
    74f0:	29 04 00 51	sub	w9, w1, #1
    74f4:	c0 02 80 52	mov	w0, #22
    74f8:	3f 05 00 71	cmp	w9, #1
    74fc:	08 01 00 54	b.hi	0x751c
    7500:	09 01 40 f9	ldr	x9, [x8]
    7504:	2a 88 88 52	mov	w10, #17473
    7508:	0a 89 aa 72	movk	w10, #21576, lsl #16
    750c:	3f 01 0a eb	cmp	x9, x10
    7510:	61 00 00 54	b.ne	0x751c
    7514:	00 00 80 52	mov	w0, #0
    7518:	01 a5 00 39	strb	w1, [x8, #41]
    751c:	c0 03 5f d6	ret
_pthread_fchdir_np:
    7520:	77 11 00 14	b	0xbafc ; symbol stub for: ___pthread_fchdir
_pthread_rwlockattr_init:
    7524:	28 88 89 52	mov	w8, #19521
    7528:	e8 4a aa 72	movk	w8, #21079, lsl #16
    752c:	08 00 00 f9	str	x8, [x0]
    7530:	48 00 80 52	mov	w8, #2
    7534:	08 08 00 b9	str	w8, [x0, #8]
    7538:	00 00 80 52	mov	w0, #0
    753c:	c0 03 5f d6	ret
_pthread_rwlockattr_destroy:
    7540:	1f 00 00 f9	str	xzr, [x0]
    7544:	1f 08 00 b9	str	wzr, [x0, #8]
    7548:	00 00 80 52	mov	w0, #0
    754c:	c0 03 5f d6	ret
_sched_get_priority_max:
    7550:	08 01 00 b0	adrp	x8, 33 ; 0x28000
    7554:	08 41 40 39	ldrb	w8, [x8, #16]
    7558:	00 41 00 11	add	w0, w8, #16
    755c:	c0 03 5f d6	ret
__pthread_set_self:
    7560:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7564:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    7568:	fd 43 00 91	add	x29, sp, #16
    756c:	f3 03 00 aa	mov	x19, x0
    7570:	78 11 00 94	bl	0xbb50 ; symbol stub for: ___thread_selfid
    7574:	60 6e 00 f9	str	x0, [x19, #216]
    7578:	1f 04 00 b1	cmn	x0, #1
    757c:	a0 00 00 54	b.eq	0x7590
    7580:	60 82 03 91	add	x0, x19, #224
    7584:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7588:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    758c:	a4 11 00 14	b	0xbc1c ; symbol stub for: __thread_set_tsd_base
    7590:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7594:	34 00 00 b0	adrp	x20, 5 ; 0xc000
    7598:	94 c6 13 91	add	x20, x20, #1265 ; literal pool for: "BUG IN LIBPTHREAD: failed to set thread_id"
    759c:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    75a0:	b5 22 00 91	add	x21, x21, #8
    75a4:	b4 06 00 f9	str	x20, [x21, #8]
    75a8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    75ac:	20 00 20 d4	brk	#0x1
__pthread_workqueue_init:
    75b0:	ff 03 01 d1	sub	sp, sp, #64
    75b4:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    75b8:	fd c3 00 91	add	x29, sp, #48
    75bc:	48 00 c0 d2	mov	x8, #8589934592
    75c0:	e8 7f 00 a9	stp	x8, xzr, [sp]
    75c4:	ff 03 01 a9	stp	xzr, x0, [sp, #16]
    75c8:	28 7c 40 93	sxtw	x8, w1
    75cc:	e8 7f 02 a9	stp	x8, xzr, [sp, #32]
    75d0:	e0 03 00 91	mov	x0, sp
    75d4:	01 06 80 52	mov	w1, #48
    75d8:	f6 ef ff 97	bl	_pthread_workqueue_setup
    75dc:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    75e0:	ff 03 01 91	add	sp, sp, #64
    75e4:	c0 03 5f d6	ret
__pthread_qos_class_encode_workqueue:
    75e8:	1f 0c 00 71	cmp	w0, #3
    75ec:	68 01 00 54	b.hi	0x7618
    75f0:	c8 00 80 52	mov	w8, #6
    75f4:	e9 03 00 2a	mov	w9, w0
    75f8:	2a 00 00 90	adrp	x10, 4 ; 0xb000
    75fc:	4a 21 39 91	add	x10, x10, #3656
    7600:	8b 00 00 10	adr	x11, #16
    7604:	4c 69 69 38	ldrb	w12, [x10, x9]
    7608:	6b 09 0c 8b	add	x11, x11, x12, lsl #2
    760c:	60 01 1f d6	br	x11
    7610:	88 00 80 52	mov	w8, #4
    7614:	06 00 00 14	b	0x762c
    7618:	1f 00 02 71	cmp	w0, #128
    761c:	41 01 00 54	b.ne	0x7644
    7620:	68 00 80 52	mov	w8, #3
    7624:	02 00 00 14	b	0x762c
    7628:	48 00 80 52	mov	w8, #2
    762c:	29 1c 08 12	and	w9, w1, #0xff000000
    7630:	0a 10 80 52	mov	w10, #128
    7634:	48 21 c8 1a	lsl	w8, w10, w8
    7638:	08 01 09 2a	orr	w8, w8, w9
    763c:	00 1d 00 32	orr	w0, w8, #0xff
    7640:	c0 03 5f d6	ret
    7644:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    7648:	fd 03 00 91	mov	x29, sp
    764c:	a9 10 00 94	bl	__pthread_qos_class_encode_workqueue.cold.1
__pthread_override_qos_class_start_direct:
    7650:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7654:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    7658:	fd 43 00 91	add	x29, sp, #16
    765c:	e2 03 01 aa	mov	x2, x1
    7660:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    7664:	63 82 03 d1	sub	x3, x19, #224
    7668:	e1 03 00 2a	mov	w1, w0
    766c:	00 08 80 52	mov	w0, #64
    7670:	ed 10 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    7674:	1f 04 00 31	cmn	w0, #1
    7678:	61 00 00 54	b.ne	0x7684
    767c:	68 06 40 f9	ldr	x8, [x19, #8]
    7680:	00 01 40 b9	ldr	w0, [x8]
    7684:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7688:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    768c:	c0 03 5f d6	ret
__pthread_start:
    7690:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7694:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    7698:	fd 43 00 91	add	x29, sp, #16
    769c:	45 03 e8 37	tbnz	w5, #29, 0x7704
    76a0:	65 04 e0 36	tbz	w5, #28, 0x772c
    76a4:	f3 03 00 aa	mov	x19, x0
    76a8:	08 00 40 f9	ldr	x8, [x0]
    76ac:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    76b0:	29 35 40 f9	ldr	x9, [x9, #104]
    76b4:	28 01 08 ca	eor	x8, x9, x8
    76b8:	1f 01 00 eb	cmp	x8, x0
    76bc:	c1 04 00 54	b.ne	0x7754
    76c0:	e0 03 13 aa	mov	x0, x19
    76c4:	54 f3 ff 97	bl	__pthread_markcancel_if_canceled
    76c8:	22 11 00 94	bl	0xbb50 ; symbol stub for: ___thread_selfid
    76cc:	60 6e 00 f9	str	x0, [x19, #216]
    76d0:	1f 04 00 b1	cmn	x0, #1
    76d4:	c0 04 00 54	b.eq	0x776c
    76d8:	68 fa 40 b9	ldr	w8, [x19, #248]
    76dc:	09 05 00 11	add	w9, w8, #1
    76e0:	3f 05 00 71	cmp	w9, #1
    76e4:	49 05 00 54	b.ls	0x778c
    76e8:	e0 03 13 aa	mov	x0, x19
    76ec:	41 06 00 94	bl	__pthread_introspection_thread_start
    76f0:	68 02 49 a9	ldp	x8, x0, [x19, #144]
    76f4:	00 01 3f d6	blr	x8
    76f8:	e1 03 00 aa	mov	x1, x0
    76fc:	e0 03 13 aa	mov	x0, x19
    7700:	9b 01 00 94	bl	__pthread_exit
    7704:	e8 03 05 2a	mov	w8, w5
    7708:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    770c:	34 00 00 90	adrp	x20, 4 ; 0xb000
    7710:	94 7a 3c 91	add	x20, x20, #3870 ; literal pool for: "BUG IN LIBPTHREAD: kernel without PTHREAD_START_SUSPENDED support"
    7714:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    7718:	b5 22 00 91	add	x21, x21, #8
    771c:	b4 06 00 f9	str	x20, [x21, #8]
    7720:	a8 1e 00 f9	str	x8, [x21, #56]
    7724:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7728:	20 00 20 d4	brk	#0x1
    772c:	e8 03 05 2a	mov	w8, w5
    7730:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7734:	34 00 00 90	adrp	x20, 4 ; 0xb000
    7738:	94 82 3d 91	add	x20, x20, #3936 ; literal pool for: "BUG IN LIBPTHREAD: thread_set_tsd_base() wasn't called by the kernel"
    773c:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    7740:	b5 22 00 91	add	x21, x21, #8
    7744:	b4 06 00 f9	str	x20, [x21, #8]
    7748:	a8 1e 00 f9	str	x8, [x21, #56]
    774c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7750:	20 00 20 d4	brk	#0x1
    7754:	22 00 00 b0	adrp	x2, 5 ; 0xc000
    7758:	42 10 0e 91	add	x2, x2, #900 ; literal pool for: "pthread_t was corrupted"
    775c:	40 02 80 52	mov	w0, #18
    7760:	81 00 80 52	mov	w1, #4
    7764:	03 00 80 d2	mov	x3, #0
    7768:	30 11 00 94	bl	0xbc28 ; symbol stub for: _abort_with_reason
    776c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7770:	34 00 00 b0	adrp	x20, 5 ; 0xc000
    7774:	94 c6 13 91	add	x20, x20, #1265 ; literal pool for: "BUG IN LIBPTHREAD: failed to set thread_id"
    7778:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    777c:	b5 22 00 91	add	x21, x21, #8
    7780:	b4 06 00 f9	str	x20, [x21, #8]
    7784:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7788:	20 00 20 d4	brk	#0x1
    778c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7790:	34 00 00 b0	adrp	x20, 5 ; 0xc000
    7794:	94 3a 0f 91	add	x20, x20, #974 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak"
    7798:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    779c:	b5 22 00 91	add	x21, x21, #8
    77a0:	b4 06 00 f9	str	x20, [x21, #8]
    77a4:	a8 1e 00 f9	str	x8, [x21, #56]
    77a8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    77ac:	20 00 20 d4	brk	#0x1
__pthread_override_qos_class_end_direct:
    77b0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    77b4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    77b8:	fd 43 00 91	add	x29, sp, #16
    77bc:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    77c0:	62 82 03 d1	sub	x2, x19, #224
    77c4:	e1 03 00 2a	mov	w1, w0
    77c8:	00 10 80 52	mov	w0, #128
    77cc:	03 00 80 d2	mov	x3, #0
    77d0:	95 10 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    77d4:	1f 04 00 31	cmn	w0, #1
    77d8:	61 00 00 54	b.ne	0x77e4
    77dc:	68 06 40 f9	ldr	x8, [x19, #8]
    77e0:	00 01 40 b9	ldr	w0, [x8]
    77e4:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    77e8:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    77ec:	c0 03 5f d6	ret
__pthread_cond_wait:
    77f0:	ff 83 02 d1	sub	sp, sp, #160
    77f4:	fc 6f 04 a9	stp	x28, x27, [sp, #64]
    77f8:	fa 67 05 a9	stp	x26, x25, [sp, #80]
    77fc:	f8 5f 06 a9	stp	x24, x23, [sp, #96]
    7800:	f6 57 07 a9	stp	x22, x21, [sp, #112]
    7804:	f4 4f 08 a9	stp	x20, x19, [sp, #128]
    7808:	fd 7b 09 a9	stp	x29, x30, [sp, #144]
    780c:	fd 43 02 91	add	x29, sp, #144
    7810:	28 00 40 f9	ldr	x8, [x1]
    7814:	09 7d 40 92	and	x9, x8, #0xffffffff
    7818:	29 f9 7e 92	and	x9, x9, #0xfffffffffffffffd
    781c:	08 6d 7c 92	and	x8, x8, #0xfffffff0
    7820:	0a 8b 8a 52	mov	w10, #21592
    7824:	aa aa a9 72	movk	w10, #19797, lsl #16
    7828:	3f 01 0a eb	cmp	x9, x10
    782c:	09 74 95 52	mov	w9, #43936
    7830:	49 55 a6 72	movk	w9, #12970, lsl #16
    7834:	04 11 49 fa	ccmp	x8, x9, #4, ne
    7838:	81 10 00 54	b.ne	0x7a48
    783c:	f5 03 04 aa	mov	x21, x4
    7840:	f8 03 03 aa	mov	x24, x3
    7844:	f7 03 02 aa	mov	x23, x2
    7848:	f3 03 01 aa	mov	x19, x1
    784c:	f4 03 00 aa	mov	x20, x0
    7850:	39 0c 40 b9	ldr	w25, [x1, #12]
    7854:	3f 03 12 72	tst	w25, #0x4000
    7858:	a8 c8 89 52	mov	w8, #20037
    785c:	e8 69 a8 72	movk	w8, #17231, lsl #16
    7860:	08 05 88 1a	cinc	w8, w8, ne
    7864:	e8 07 00 b9	str	w8, [sp, #4]
    7868:	09 00 40 b9	ldr	w9, [x0]
    786c:	6a 37 96 52	mov	w10, #45499
    7870:	0a 96 b7 72	movk	w10, #48304, lsl #16
    7874:	2a 01 0a 0b	add	w10, w9, w10
    7878:	5f 09 00 71	cmp	w10, #2
    787c:	63 01 00 54	b.lo	0x78a8
    7880:	6a 37 96 52	mov	w10, #45499
    7884:	0a 96 a7 72	movk	w10, #15536, lsl #16
    7888:	3f 01 0a 6b	cmp	w9, w10
    788c:	20 04 00 54	b.eq	0x7910
    7890:	8a c8 89 52	mov	w10, #20036
    7894:	ea 69 a8 72	movk	w10, #17231, lsl #16
    7898:	3f 01 0a 6b	cmp	w9, w10
    789c:	61 0d 00 54	b.ne	0x7a48
    78a0:	88 02 00 b9	str	w8, [x20]
    78a4:	03 00 00 14	b	0x78b0
    78a8:	1f 01 09 6b	cmp	w8, w9
    78ac:	e1 23 00 54	b.ne	0x7d28
    78b0:	bf 0a 00 71	cmp	w21, #2
    78b4:	41 00 00 54	b.ne	0x78bc
    78b8:	5a f3 ff 97	bl	_pthread_testcancel
    78bc:	b7 01 00 b4	cbz	x23, 0x78f0
    78c0:	1a 40 99 52	mov	w26, #51712
    78c4:	5a 73 a7 72	movk	w26, #15258, lsl #16
    78c8:	f6 06 40 f9	ldr	x22, [x23, #8]
    78cc:	48 07 00 d1	sub	x8, x26, #1
    78d0:	df 02 08 eb	cmp	x22, x8
    78d4:	a8 0b 00 54	b.hi	0x7a48
    78d8:	f8 02 00 34	cbz	w24, 0x7934
    78dc:	f7 02 40 f9	ldr	x23, [x23]
    78e0:	e8 02 16 aa	orr	x8, x23, x22
    78e4:	1f 01 00 f1	cmp	x8, #0
    78e8:	e8 17 9f 1a	cset	w8, eq
    78ec:	31 00 00 14	b	0x79b0
    78f0:	d9 01 70 37	tbnz	w25, #14, 0x7928
    78f4:	16 00 80 d2	mov	x22, #0
    78f8:	88 0a 40 f9	ldr	x8, [x20, #16]
    78fc:	68 04 00 b4	cbz	x8, 0x7988
    7900:	f7 03 16 aa	mov	x23, x22
    7904:	1f 01 13 eb	cmp	x8, x19
    7908:	01 0a 00 54	b.ne	0x7a48
    790c:	2f 00 00 14	b	0x79c8
    7910:	e1 13 00 91	add	x1, sp, #4
    7914:	e0 03 14 aa	mov	x0, x20
    7918:	09 ed ff 97	bl	__pthread_cond_check_init_slow
    791c:	f6 03 00 aa	mov	x22, x0
    7920:	60 09 00 35	cbnz	w0, 0x7a4c
    7924:	e3 ff ff 17	b	0x78b0
    7928:	17 00 80 d2	mov	x23, #0
    792c:	16 00 80 d2	mov	x22, #0
    7930:	5b 00 00 14	b	0x7a9c
    7934:	ff ff 01 a9	stp	xzr, xzr, [sp, #24]
    7938:	e0 63 00 91	add	x0, sp, #24
    793c:	01 00 80 d2	mov	x1, #0
    7940:	45 10 00 94	bl	0xba54 ; symbol stub for: ___gettimeofday
    7944:	ea 0f 40 f9	ldr	x10, [sp, #24]
    7948:	e8 23 80 b9	ldrsw	x8, [sp, #32]
    794c:	09 7d 80 52	mov	w9, #1000
    7950:	09 7d 29 9b	smull	x9, w8, w9
    7954:	eb 02 40 f9	ldr	x11, [x23]
    7958:	68 01 0a eb	subs	x8, x11, x10
    795c:	a1 00 00 54	b.ne	0x7970
    7960:	ea 06 40 f9	ldr	x10, [x23, #8]
    7964:	5f 01 09 eb	cmp	x10, x9
    7968:	8d 00 00 54	b.le	0x7978
    796c:	0a 00 00 14	b	0x7994
    7970:	7f 01 0a eb	cmp	x11, x10
    7974:	ea 00 00 54	b.ge	0x7990
    7978:	17 00 80 d2	mov	x23, #0
    797c:	16 00 80 d2	mov	x22, #0
    7980:	28 00 80 52	mov	w8, #1
    7984:	0b 00 00 14	b	0x79b0
    7988:	f7 03 16 aa	mov	x23, x22
    798c:	0f 00 00 14	b	0x79c8
    7990:	ea 06 40 f9	ldr	x10, [x23, #8]
    7994:	49 01 09 cb	sub	x9, x10, x9
    7998:	2a 01 1a 8b	add	x10, x9, x26
    799c:	0b 05 00 d1	sub	x11, x8, #1
    79a0:	3f 01 41 f2	tst	x9, #0x8000000000000000
    79a4:	17 01 8b 9a	csel	x23, x8, x11, eq
    79a8:	36 01 8a 9a	csel	x22, x9, x10, eq
    79ac:	e8 03 9f 1a	csel	w8, wzr, wzr, eq
    79b0:	19 06 70 37	tbnz	w25, #14, 0x7a70
    79b4:	89 0a 40 f9	ldr	x9, [x20, #16]
    79b8:	69 00 00 b4	cbz	x9, 0x79c4
    79bc:	3f 01 13 eb	cmp	x9, x19
    79c0:	41 04 00 54	b.ne	0x7a48
    79c4:	88 05 00 35	cbnz	w8, 0x7a74
    79c8:	ff 1f 00 f9	str	xzr, [sp, #56]
    79cc:	ff 37 00 b9	str	wzr, [sp, #52]
    79d0:	ff 07 00 f9	str	xzr, [sp, #8]
    79d4:	88 0e 40 b9	ldr	w8, [x20, #12]
    79d8:	8a 62 00 91	add	x10, x20, #24
    79dc:	89 72 00 91	add	x9, x20, #28
    79e0:	8b 82 00 91	add	x11, x20, #32
    79e4:	1f 01 03 72	tst	w8, #0x20000000
    79e8:	48 01 89 9a	csel	x8, x10, x9, eq
    79ec:	29 01 8b 9a	csel	x9, x9, x11, eq
    79f0:	6a 01 8a 9a	csel	x10, x11, x10, eq
    79f4:	0b 01 40 b9	ldr	w11, [x8]
    79f8:	58 01 40 b9	ldr	w24, [x10]
    79fc:	39 01 40 b9	ldr	w25, [x9]
    7a00:	6c 81 19 aa	orr	x12, x11, x25, lsl #32
    7a04:	2d 5f 18 12	and	w13, w25, #0xffffff00
    7a08:	ad fd 48 d3	lsr	x13, x13, #8
    7a0c:	7a 01 04 11	add	w26, w11, #256
    7a10:	eb 03 1a aa	mov	x11, x26
    7a14:	ab 5d 58 b3	bfi	x11, x13, #40, #24
    7a18:	ed 03 0c aa	mov	x13, x12
    7a1c:		.long	0xc8edfd0b
    7a20:	bf 01 0c eb	cmp	x13, x12
    7a24:	81 fe ff 54	b.ne	0x79f4
    7a28:	93 0a 00 f9	str	x19, [x20, #16]
    7a2c:	e1 d3 00 91	add	x1, sp, #52
    7a30:	e2 23 00 91	add	x2, sp, #8
    7a34:	e3 f3 00 91	add	x3, sp, #60
    7a38:	e4 e3 00 91	add	x4, sp, #56
    7a3c:	e0 03 13 aa	mov	x0, x19
    7a40:	0d f3 ff 97	bl	__pthread_mutex_droplock
    7a44:	e0 0d 00 34	cbz	w0, 0x7c00
    7a48:	d6 02 80 52	mov	w22, #22
    7a4c:	e0 03 16 aa	mov	x0, x22
    7a50:	fd 7b 49 a9	ldp	x29, x30, [sp, #144]
    7a54:	f4 4f 48 a9	ldp	x20, x19, [sp, #128]
    7a58:	f6 57 47 a9	ldp	x22, x21, [sp, #112]
    7a5c:	f8 5f 46 a9	ldp	x24, x23, [sp, #96]
    7a60:	fa 67 45 a9	ldp	x26, x25, [sp, #80]
    7a64:	fc 6f 44 a9	ldp	x28, x27, [sp, #64]
    7a68:	ff 83 02 91	add	sp, sp, #160
    7a6c:	c0 03 5f d6	ret
    7a70:	68 01 00 36	tbz	w8, #0, 0x7a9c
    7a74:	e0 03 13 aa	mov	x0, x19
    7a78:	10 eb ff 97	bl	_pthread_mutex_unlock
    7a7c:	f6 03 00 aa	mov	x22, x0
    7a80:	60 fe ff 35	cbnz	w0, 0x7a4c
    7a84:	e0 03 13 aa	mov	x0, x19
    7a88:	d9 e9 ff 97	bl	_pthread_mutex_lock
    7a8c:	88 07 80 52	mov	w8, #60
    7a90:	1f 00 00 71	cmp	w0, #0
    7a94:	16 01 80 1a	csel	w22, w8, w0, eq
    7a98:	ed ff ff 17	b	0x7a4c
    7a9c:	e8 02 16 aa	orr	x8, x23, x22
    7aa0:	c9 76 40 92	and	x9, x22, #0x3fffffff
    7aa4:	ff 02 00 f1	cmp	x23, #0
    7aa8:	ea a7 9f 1a	cset	w10, lt
    7aac:	eb 56 97 da	cneg	x11, x23, mi
    7ab0:	0c 40 99 52	mov	w12, #51712
    7ab4:	4c 73 a7 72	movk	w12, #15258, lsl #16
    7ab8:	6d 7d cc 9b	umulh	x13, x11, x12
    7abc:	6b 7d 0c 9b	mul	x11, x11, x12
    7ac0:	6c a5 8b da	cneg	x12, x11, lt
    7ac4:	7f 01 00 f1	cmp	x11, #0
    7ac8:	ea 03 8a 1a	csel	w10, wzr, w10, eq
    7acc:	ff 03 0d eb	cmp	xzr, x13
    7ad0:	4a 05 9f 1a	csinc	w10, w10, wzr, eq
    7ad4:	29 01 0c ab	adds	x9, x9, x12
    7ad8:	4a 35 9f 1a	csinc	w10, w10, wzr, lo
    7adc:	5f 01 00 71	cmp	w10, #0
    7ae0:	29 01 9f da	csinv	x9, x9, xzr, eq
    7ae4:	1f 01 00 f1	cmp	x8, #0
    7ae8:	f8 03 89 9a	csel	x24, xzr, x9, eq
    7aec:	88 0e 40 b9	ldr	w8, [x20, #12]
    7af0:	08 75 5d d3	ubfx	x8, x8, #29, #1
    7af4:	88 0a 08 8b	add	x8, x20, x8, lsl #2
    7af8:	17 61 00 91	add	x23, x8, #24
    7afc:	28 00 c0 d2	mov	x8, #4294967296
    7b00:		.long	0xf82802fa
    7b04:	e0 03 13 aa	mov	x0, x19
    7b08:	bc 0b 00 94	bl	__pthread_mutex_ulock_unlock
    7b0c:	20 02 00 34	cbz	w0, 0x7b50
    7b10:	f6 03 00 aa	mov	x22, x0
    7b14:	e9 02 40 f9	ldr	x9, [x23]
    7b18:	e8 ff df d2	mov	x8, #281470681743360
    7b1c:	ea 03 09 aa	mov	x10, x9
    7b20:	2b fd 70 d3	lsr	x11, x9, #48
    7b24:	6b 05 00 71	subs	w11, w11, #1
    7b28:	eb 33 8b 1a	csel	w11, wzr, w11, lo
    7b2c:	2c 01 08 8b	add	x12, x9, x8
    7b30:	8c 3d 60 92	and	x12, x12, #0xffff00000000
    7b34:	8b c1 0b aa	orr	x11, x12, x11, lsl #48
    7b38:	2b 7d 40 b3	bfxil	x11, x9, #0, #32
    7b3c:		.long	0xc8ea7eeb
    7b40:	5f 01 09 eb	cmp	x10, x9
    7b44:	e9 03 0a aa	mov	x9, x10
    7b48:	c1 fe ff 54	b.ne	0x7b20
    7b4c:	c0 ff ff 17	b	0x7a4c
    7b50:	59 7f 40 92	and	x25, x26, #0xffffffff
    7b54:	7c d0 3b d5	mrs	x28, TPIDRRO_EL0
    7b58:	1b 00 00 f0	adrp	x27, 3 ; 0xa000
    7b5c:	7b 63 04 91	add	x27, x27, #280
    7b60:	bf 0a 00 71	cmp	w21, #2
    7b64:	01 03 00 54	b.ne	0x7bc4
    7b68:	f4 cf 00 a9	stp	x20, x19, [sp, #8]
    7b6c:	fb 0f 00 f9	str	x27, [sp, #24]
    7b70:	e8 23 00 91	add	x8, sp, #8
    7b74:	e8 7f 02 a9	stp	x8, xzr, [sp, #32]
    7b78:	88 83 52 f8	ldur	x8, [x28, #-216]
    7b7c:	e8 17 00 f9	str	x8, [sp, #40]
    7b80:	e8 63 00 91	add	x8, sp, #24
    7b84:	88 83 12 f8	stur	x8, [x28, #-216]
    7b88:	28 00 80 52	mov	w8, #1
    7b8c:	08 20 a0 72	movk	w8, #256, lsl #16
    7b90:	00 81 40 11	add	w0, w8, #32, lsl #12
    7b94:	e1 03 17 aa	mov	x1, x23
    7b98:	e2 03 19 aa	mov	x2, x25
    7b9c:	e3 03 18 aa	mov	x3, x24
    7ba0:	04 00 80 d2	mov	x4, #0
    7ba4:	f1 0f 00 94	bl	0xbb68 ; symbol stub for: ___ulock_wait2
    7ba8:	f6 03 00 aa	mov	x22, x0
    7bac:	9d f2 ff 97	bl	_pthread_testcancel
    7bb0:	e8 17 40 f9	ldr	x8, [sp, #40]
    7bb4:	88 83 12 f8	stur	x8, [x28, #-216]
    7bb8:	96 01 f8 37	tbnz	w22, #31, 0x7be8
    7bbc:	16 00 80 52	mov	w22, #0
    7bc0:	0c 00 00 14	b	0x7bf0
    7bc4:	20 00 80 52	mov	w0, #1
    7bc8:	00 20 a0 72	movk	w0, #256, lsl #16
    7bcc:	e1 03 17 aa	mov	x1, x23
    7bd0:	e2 03 19 aa	mov	x2, x25
    7bd4:	e3 03 18 aa	mov	x3, x24
    7bd8:	04 00 80 d2	mov	x4, #0
    7bdc:	e3 0f 00 94	bl	0xbb68 ; symbol stub for: ___ulock_wait2
    7be0:	f6 03 00 aa	mov	x22, x0
    7be4:	d6 fe ff 36	tbz	w22, #31, 0x7bbc
    7be8:	df 3a 00 31	cmn	w22, #14
    7bec:	41 01 00 54	b.ne	0x7c14
    7bf0:	e8 02 40 b9	ldr	w8, [x23]
    7bf4:	1f 01 1a 6b	cmp	w8, w26
    7bf8:	40 fb ff 54	b.eq	0x7b60
    7bfc:	0d 00 00 14	b	0x7c30
    7c00:	e8 37 40 b9	ldr	w8, [sp, #52]
    7c04:	e8 01 60 37	tbnz	w8, #12, 0x7c40
    7c08:	04 00 80 d2	mov	x4, #0
    7c0c:	ff 07 00 f9	str	xzr, [sp, #8]
    7c10:	0e 00 00 14	b	0x7c48
    7c14:	e8 03 16 4b	neg	w8, w22
    7c18:	16 00 80 52	mov	w22, #0
    7c1c:	1f 11 00 71	cmp	w8, #4
    7c20:	80 00 00 54	b.eq	0x7c30
    7c24:	1f f1 00 71	cmp	w8, #60
    7c28:	01 09 00 54	b.ne	0x7d48
    7c2c:	f6 03 08 aa	mov	x22, x8
    7c30:	e0 03 17 aa	mov	x0, x23
    7c34:	e1 03 13 aa	mov	x1, x19
    7c38:	1f 09 00 94	bl	__pthread_ulock_cond_wait_complete
    7c3c:	84 ff ff 17	b	0x7a4c
    7c40:	e9 2b 47 29	ldp	w9, w10, [sp, #56]
    7c44:	44 81 09 aa	orr	x4, x10, x9, lsl #32
    7c48:	05 79 12 12	and	w5, w8, #0xffffdfff
    7c4c:	e5 37 00 b9	str	w5, [sp, #52]
    7c50:	28 67 18 12	and	w8, w25, #0xffffff03
    7c54:	41 83 08 aa	orr	x1, x26, x8, lsl #32
    7c58:	bf 0a 00 71	cmp	w21, #2
    7c5c:	81 02 00 54	b.ne	0x7cac
    7c60:	75 d0 3b d5	mrs	x21, TPIDRRO_EL0
    7c64:	08 00 00 f0	adrp	x8, 3 ; 0xa000
    7c68:	08 41 05 91	add	x8, x8, #336
    7c6c:	e8 d3 01 a9	stp	x8, x20, [sp, #24]
    7c70:	a8 82 52 f8	ldur	x8, [x21, #-216]
    7c74:	e8 17 00 f9	str	x8, [sp, #40]
    7c78:	e8 63 00 91	add	x8, sp, #24
    7c7c:	a8 82 12 f8	stur	x8, [x21, #-216]
    7c80:	e3 07 40 f9	ldr	x3, [sp, #8]
    7c84:	e0 03 14 aa	mov	x0, x20
    7c88:	e2 03 18 aa	mov	x2, x24
    7c8c:	e6 03 17 aa	mov	x6, x23
    7c90:	e7 03 16 aa	mov	x7, x22
    7c94:	82 0f 00 94	bl	0xba9c ; symbol stub for: ___psynch_cvwait
    7c98:	f6 03 00 aa	mov	x22, x0
    7c9c:	61 f2 ff 97	bl	_pthread_testcancel
    7ca0:	e8 17 40 f9	ldr	x8, [sp, #40]
    7ca4:	a8 82 12 f8	stur	x8, [x21, #-216]
    7ca8:	08 00 00 14	b	0x7cc8
    7cac:	e3 07 40 f9	ldr	x3, [sp, #8]
    7cb0:	e0 03 14 aa	mov	x0, x20
    7cb4:	e2 03 18 aa	mov	x2, x24
    7cb8:	e6 03 17 aa	mov	x6, x23
    7cbc:	e7 03 16 aa	mov	x7, x22
    7cc0:	77 0f 00 94	bl	0xba9c ; symbol stub for: ___psynch_cvwait
    7cc4:	f6 03 00 aa	mov	x22, x0
    7cc8:	b6 02 00 34	cbz	w22, 0x7d1c
    7ccc:	df 06 00 31	cmn	w22, #1
    7cd0:	c1 01 00 54	b.ne	0x7d08
    7cd4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    7cd8:	08 05 40 f9	ldr	x8, [x8, #8]
    7cdc:	01 01 40 b9	ldr	w1, [x8]
    7ce0:	28 1c 00 12	and	w8, w1, #0xff
    7ce4:	c9 02 80 52	mov	w9, #22
    7ce8:	1f 11 00 71	cmp	w8, #4
    7cec:	e9 03 89 1a	csel	w9, wzr, w9, eq
    7cf0:	1f f1 00 71	cmp	w8, #60
    7cf4:	16 01 89 1a	csel	w22, w8, w9, eq
    7cf8:	e0 03 14 aa	mov	x0, x20
    7cfc:	02 00 80 52	mov	w2, #0
    7d00:	e7 f2 ff 97	bl	__pthread_cond_updateval
    7d04:	06 00 00 14	b	0x7d1c
    7d08:	e0 03 14 aa	mov	x0, x20
    7d0c:	01 00 80 52	mov	w1, #0
    7d10:	e2 03 16 aa	mov	x2, x22
    7d14:	e2 f2 ff 97	bl	__pthread_cond_updateval
    7d18:	16 00 80 52	mov	w22, #0
    7d1c:	e0 03 13 aa	mov	x0, x19
    7d20:	33 e9 ff 97	bl	_pthread_mutex_lock
    7d24:	4a ff ff 17	b	0x7a4c
    7d28:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7d2c:	34 00 00 b0	adrp	x20, 5 ; 0xc000
    7d30:	94 6e 1e 91	add	x20, x20, #1947 ; literal pool for: "BUG IN LIBPTHREAD: Mixed ulock and psych condvar use"
    7d34:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    7d38:	b5 22 00 91	add	x21, x21, #8
    7d3c:	b4 06 00 f9	str	x20, [x21, #8]
    7d40:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7d44:	20 00 20 d4	brk	#0x1
    7d48:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    7d4c:	34 00 00 b0	adrp	x20, 5 ; 0xc000
    7d50:	94 42 1f 91	add	x20, x20, #2000 ; literal pool for: "BUG IN LIBPTHREAD: ulock_wait failure"
    7d54:	75 00 00 b0	adrp	x21, 13 ; 0x14000
    7d58:	b5 22 00 91	add	x21, x21, #8
    7d5c:	b4 06 00 f9	str	x20, [x21, #8]
    7d60:	a8 1e 00 f9	str	x8, [x21, #56]
    7d64:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    7d68:	20 00 20 d4	brk	#0x1
__pthread_exit:
    7d6c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    7d70:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    7d74:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    7d78:	fd 83 00 91	add	x29, sp, #32
    7d7c:	f3 03 01 aa	mov	x19, x1
    7d80:	f4 03 00 aa	mov	x20, x0
    7d84:	20 00 80 52	mov	w0, #1
    7d88:	30 0f 00 94	bl	0xba48 ; symbol stub for: ___disable_threadsignal
    7d8c:	e0 03 14 aa	mov	x0, x20
    7d90:	e1 03 13 aa	mov	x1, x19
    7d94:	b9 f4 ff 97	bl	__pthread_setcancelstate_exit
    7d98:	95 06 40 f9	ldr	x21, [x20, #8]
    7d9c:	d5 00 00 b4	cbz	x21, 0x7db4
    7da0:	a8 02 40 a9	ldp	x8, x0, [x21]
    7da4:	00 01 3f d6	blr	x8
    7da8:	b5 0a 40 f9	ldr	x21, [x21, #16]
    7dac:	95 06 00 f9	str	x21, [x20, #8]
    7db0:	95 ff ff b5	cbnz	x21, 0x7da0
    7db4:	e0 03 14 aa	mov	x0, x20
    7db8:	bb f4 ff 97	bl	__pthread_tsd_cleanup
    7dbc:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    7dc0:	00 25 40 f9	ldr	x0, [x8, #72]
    7dc4:	1f 25 00 f9	str	xzr, [x8, #72]
    7dc8:	80 00 00 b5	cbnz	x0, 0x7dd8
    7dcc:	e0 03 14 aa	mov	x0, x20
    7dd0:	e1 03 13 aa	mov	x1, x19
    7dd4:	5e f5 ff 97	bl	__pthread_terminate_invoke
    7dd8:	7c 0f 00 94	bl	0xbbc8 ; symbol stub for: __os_semaphore_dispose
    7ddc:	fc ff ff 17	b	0x7dcc
_pthread_join$NOCANCEL:
    7de0:	22 00 80 52	mov	w2, #1
    7de4:	78 06 00 14	b	__pthread_join
_pthread_mutexattr_setpshared:
    7de8:	e8 03 00 aa	mov	x8, x0
    7dec:	29 04 00 51	sub	w9, w1, #1
    7df0:	c0 02 80 52	mov	w0, #22
    7df4:	3f 05 00 71	cmp	w9, #1
    7df8:	48 01 00 54	b.hi	0x7e20
    7dfc:	09 01 40 f9	ldr	x9, [x8]
    7e00:	2a 08 8b 52	mov	w10, #22593
    7e04:	8a aa a9 72	movk	w10, #19796, lsl #16
    7e08:	3f 01 0a eb	cmp	x9, x10
    7e0c:	a1 00 00 54	b.ne	0x7e20
    7e10:	00 00 80 52	mov	w0, #0
    7e14:	09 0d 40 b9	ldr	w9, [x8, #12]
    7e18:	29 04 1c 33	bfi	w9, w1, #4, #2
    7e1c:	09 0d 00 b9	str	w9, [x8, #12]
    7e20:	c0 03 5f d6	ret
__pthread_fork_prepare:
    7e24:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    7e28:	fd 03 00 91	mov	x29, sp
    7e2c:	29 fc ff 97	bl	__pthread_atfork_prepare_handlers
    7e30:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    7e34:	4e fc ff 17	b	__pthread_atfork_prepare
__pthread_fork_parent:
    7e38:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    7e3c:	fd 03 00 91	mov	x29, sp
    7e40:	66 fc ff 97	bl	__pthread_atfork_parent
    7e44:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    7e48:	7b fc ff 17	b	__pthread_atfork_parent_handlers
_sigwait:
    7e4c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    7e50:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    7e54:	fd 43 00 91	add	x29, sp, #16
    7e58:	f3 03 01 aa	mov	x19, x1
    7e5c:	f4 03 00 aa	mov	x20, x0
    7e60:	f0 f1 ff 97	bl	_pthread_testcancel
    7e64:	e0 03 14 aa	mov	x0, x20
    7e68:	e1 03 13 aa	mov	x1, x19
    7e6c:	33 0f 00 94	bl	0xbb38 ; symbol stub for: ___sigwait
    7e70:	1f 04 00 31	cmn	w0, #1
    7e74:	60 00 00 54	b.eq	0x7e80
    7e78:	00 00 80 52	mov	w0, #0
    7e7c:	07 00 00 14	b	0x7e98
    7e80:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    7e84:	08 05 40 f9	ldr	x8, [x8, #8]
    7e88:	13 01 40 b9	ldr	w19, [x8]
    7e8c:	e5 f1 ff 97	bl	_pthread_testcancel
    7e90:	7f 12 00 71	cmp	w19, #4
    7e94:	e0 03 93 1a	csel	w0, wzr, w19, eq
    7e98:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    7e9c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    7ea0:	c0 03 5f d6	ret
_pthread_workqueue_setdispatch_np:
    7ea4:	ff 03 01 d1	sub	sp, sp, #64
    7ea8:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    7eac:	fd c3 00 91	add	x29, sp, #48
    7eb0:	00 e4 00 6f	movi.2d	v0, #0000000000000000
    7eb4:	e0 03 00 ad	stp	q0, q0, [sp]
    7eb8:	e0 0b 80 3d	str	q0, [sp, #32]
    7ebc:	48 00 80 52	mov	w8, #2
    7ec0:	e8 07 00 b9	str	w8, [sp, #4]
    7ec4:	e0 0f 00 f9	str	x0, [sp, #24]
    7ec8:	e0 03 00 91	mov	x0, sp
    7ecc:	01 06 80 52	mov	w1, #48
    7ed0:	b8 ed ff 97	bl	_pthread_workqueue_setup
    7ed4:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    7ed8:	ff 03 01 91	add	sp, sp, #64
    7edc:	c0 03 5f d6	ret
_sched_get_priority_min:
    7ee0:	08 01 00 b0	adrp	x8, 33 ; 0x28000
    7ee4:	08 41 40 39	ldrb	w8, [x8, #16]
    7ee8:	00 41 00 51	sub	w0, w8, #16
    7eec:	c0 03 5f d6	ret
_pthread_setcancelstate:
    7ef0:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    7ef4:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    7ef8:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    7efc:	fd 83 00 91	add	x29, sp, #32
    7f00:	75 d0 3b d5	mrs	x21, TPIDRRO_EL0
    7f04:	a8 0e 52 f8	ldr	x8, [x21, #-224]!
    7f08:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    7f0c:	29 35 40 f9	ldr	x9, [x9, #104]
    7f10:	28 01 08 ca	eor	x8, x9, x8
    7f14:	1f 01 15 eb	cmp	x8, x21
    7f18:	41 03 00 54	b.ne	0x7f80
    7f1c:	f3 03 01 aa	mov	x19, x1
    7f20:	f4 03 00 aa	mov	x20, x0
    7f24:	1f 04 00 71	cmp	w0, #1
    7f28:	60 00 00 54	b.eq	0x7f34
    7f2c:	14 02 00 35	cbnz	w20, 0x7f6c
    7f30:	40 00 80 52	mov	w0, #2
    7f34:	ec 0e 00 94	bl	0xbae4 ; symbol stub for: ___pthread_canceled
    7f38:	a8 4e 41 79	ldrh	w8, [x21, #166]
    7f3c:	e9 03 08 aa	mov	x9, x8
    7f40:	0a 79 1f 12	and	w10, w8, #0xfffffffe
    7f44:	4a 01 14 2a	orr	w10, w10, w20
    7f48:	ab 9a 02 91	add	x11, x21, #166
    7f4c:		.long	0x48a87d6a
    7f50:	1f 21 29 6b	cmp	w8, w9, uxth
    7f54:	41 ff ff 54	b.ne	0x7f3c
    7f58:	00 00 80 52	mov	w0, #0
    7f5c:	b3 00 00 b4	cbz	x19, 0x7f70
    7f60:	28 01 00 12	and	w8, w9, #0x1
    7f64:	68 02 00 b9	str	w8, [x19]
    7f68:	02 00 00 14	b	0x7f70
    7f6c:	c0 02 80 52	mov	w0, #22
    7f70:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    7f74:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    7f78:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    7f7c:	c0 03 5f d6	ret
    7f80:	6f 0d 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_set_qos_class_np:
    7f84:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    7f88:	fd 03 00 91	mov	x29, sp
    7f8c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    7f90:	08 81 03 d1	sub	x8, x8, #224
    7f94:	1f 01 00 eb	cmp	x8, x0
    7f98:	80 00 00 54	b.eq	0x7fa8
    7f9c:	20 00 80 52	mov	w0, #1
    7fa0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    7fa4:	c0 03 5f d6	ret
    7fa8:	08 00 40 f9	ldr	x8, [x0]
    7fac:	e9 00 00 b0	adrp	x9, 29 ; 0x24000
    7fb0:	29 35 40 f9	ldr	x9, [x9, #104]
    7fb4:	28 01 08 ca	eor	x8, x9, x8
    7fb8:	1f 01 00 eb	cmp	x8, x0
    7fbc:	a1 00 00 54	b.ne	0x7fd0
    7fc0:	e0 03 01 aa	mov	x0, x1
    7fc4:	e1 03 02 aa	mov	x1, x2
    7fc8:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    7fcc:	1a f1 ff 17	b	_pthread_set_qos_class_self_np
    7fd0:	5b 0d 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_globals_init:
    7fd4:	08 00 80 d2	mov	x8, #0
    7fd8:	e9 ff 9f 52	mov	w9, #65535
    7fdc:	0a 00 08 8b	add	x10, x0, x8
    7fe0:	49 21 02 79	strh	w9, [x10, #272]
    7fe4:	49 3d 02 79	strh	w9, [x10, #286]
    7fe8:	49 59 02 79	strh	w9, [x10, #300]
    7fec:	08 09 00 91	add	x8, x8, #2
    7ff0:	1f 39 00 f1	cmp	x8, #14
    7ff4:	41 ff ff 54	b.ne	0x7fdc
    7ff8:	c0 03 5f d6	ret
_pthread_attr_getdetachstate:
    7ffc:	09 00 40 f9	ldr	x9, [x0]
    8000:	2a 88 88 52	mov	w10, #17473
    8004:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8008:	3f 01 0a eb	cmp	x9, x10
    800c:	c1 00 00 54	b.ne	0x8024
    8010:	e8 03 00 aa	mov	x8, x0
    8014:	00 00 80 52	mov	w0, #0
    8018:	08 a1 40 39	ldrb	w8, [x8, #40]
    801c:	28 00 00 b9	str	w8, [x1]
    8020:	c0 03 5f d6	ret
    8024:	c0 02 80 52	mov	w0, #22
    8028:	c0 03 5f d6	ret
_pthread_attr_getinheritsched:
    802c:	09 00 40 f9	ldr	x9, [x0]
    8030:	2a 88 88 52	mov	w10, #17473
    8034:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8038:	3f 01 0a eb	cmp	x9, x10
    803c:	c1 00 00 54	b.ne	0x8054
    8040:	e8 03 00 aa	mov	x8, x0
    8044:	00 00 80 52	mov	w0, #0
    8048:	08 a5 40 39	ldrb	w8, [x8, #41]
    804c:	28 00 00 b9	str	w8, [x1]
    8050:	c0 03 5f d6	ret
    8054:	c0 02 80 52	mov	w0, #22
    8058:	c0 03 5f d6	ret
_pthread_attr_getscope:
    805c:	08 00 40 f9	ldr	x8, [x0]
    8060:	29 88 88 52	mov	w9, #17473
    8064:	09 89 aa 72	movk	w9, #21576, lsl #16
    8068:	1f 01 09 eb	cmp	x8, x9
    806c:	a1 00 00 54	b.ne	0x8080
    8070:	00 00 80 52	mov	w0, #0
    8074:	28 00 80 52	mov	w8, #1
    8078:	28 00 00 b9	str	w8, [x1]
    807c:	c0 03 5f d6	ret
    8080:	c0 02 80 52	mov	w0, #22
    8084:	c0 03 5f d6	ret
_pthread_attr_getstackaddr:
    8088:	09 00 40 f9	ldr	x9, [x0]
    808c:	2a 88 88 52	mov	w10, #17473
    8090:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8094:	3f 01 0a eb	cmp	x9, x10
    8098:	c1 00 00 54	b.ne	0x80b0
    809c:	e8 03 00 aa	mov	x8, x0
    80a0:	00 00 80 52	mov	w0, #0
    80a4:	08 09 40 f9	ldr	x8, [x8, #16]
    80a8:	28 00 00 f9	str	x8, [x1]
    80ac:	c0 03 5f d6	ret
    80b0:	c0 02 80 52	mov	w0, #22
    80b4:	c0 03 5f d6	ret
_pthread_attr_setstackaddr:
    80b8:	09 00 40 f9	ldr	x9, [x0]
    80bc:	2a 88 88 52	mov	w10, #17473
    80c0:	0a 89 aa 72	movk	w10, #21576, lsl #16
    80c4:	3f 01 0a eb	cmp	x9, x10
    80c8:	c1 00 00 54	b.ne	0x80e0
    80cc:	49 00 00 90	adrp	x9, 8 ; 0x10000
    80d0:	29 2d 41 f9	ldr	x9, [x9, #600] ; literal pool symbol address: _vm_page_mask
    80d4:	29 01 40 f9	ldr	x9, [x9]
    80d8:	3f 01 01 ea	tst	x9, x1
    80dc:	60 00 00 54	b.eq	0x80e8
    80e0:	c0 02 80 52	mov	w0, #22
    80e4:	c0 03 5f d6	ret
    80e8:	e8 03 00 aa	mov	x8, x0
    80ec:	00 00 80 52	mov	w0, #0
    80f0:	09 15 40 f9	ldr	x9, [x8, #40]
    80f4:	29 f9 63 92	and	x9, x9, #0xffffffffefffffff
    80f8:	09 15 00 f9	str	x9, [x8, #40]
    80fc:	1f 85 00 a9	stp	xzr, x1, [x8, #8]
    8100:	c0 03 5f d6	ret
_pthread_attr_getstack:
    8104:	09 00 40 f9	ldr	x9, [x0]
    8108:	2a 88 88 52	mov	w10, #17473
    810c:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8110:	3f 01 0a eb	cmp	x9, x10
    8114:	61 01 00 54	b.ne	0x8140
    8118:	e8 03 00 aa	mov	x8, x0
    811c:	00 00 80 52	mov	w0, #0
    8120:	09 21 41 a9	ldp	x9, x8, [x8, #16]
    8124:	29 01 08 cb	sub	x9, x9, x8
    8128:	29 00 00 f9	str	x9, [x1]
    812c:	09 01 a0 52	mov	w9, #524288
    8130:	1f 01 00 f1	cmp	x8, #0
    8134:	28 01 88 9a	csel	x8, x9, x8, eq
    8138:	48 00 00 f9	str	x8, [x2]
    813c:	c0 03 5f d6	ret
    8140:	c0 02 80 52	mov	w0, #22
    8144:	c0 03 5f d6	ret
_pthread_attr_setstack:
    8148:	09 00 40 f9	ldr	x9, [x0]
    814c:	2a 88 88 52	mov	w10, #17473
    8150:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8154:	3f 01 0a eb	cmp	x9, x10
    8158:	c1 00 00 54	b.ne	0x8170
    815c:	49 00 00 90	adrp	x9, 8 ; 0x10000
    8160:	29 2d 41 f9	ldr	x9, [x9, #600] ; literal pool symbol address: _vm_page_mask
    8164:	29 01 40 f9	ldr	x9, [x9]
    8168:	3f 01 01 ea	tst	x9, x1
    816c:	60 00 00 54	b.eq	0x8178
    8170:	c0 02 80 52	mov	w0, #22
    8174:	c0 03 5f d6	ret
    8178:	e8 03 00 aa	mov	x8, x0
    817c:	c0 02 80 52	mov	w0, #22
    8180:	5f 10 40 f1	cmp	x2, #4, lsl #12
    8184:	c3 00 00 54	b.lo	0x819c
    8188:	29 01 02 8a	and	x9, x9, x2
    818c:	89 00 00 b5	cbnz	x9, 0x819c
    8190:	00 00 80 52	mov	w0, #0
    8194:	29 00 02 8b	add	x9, x1, x2
    8198:	09 09 01 a9	stp	x9, x2, [x8, #16]
    819c:	c0 03 5f d6	ret
_pthread_attr_setguardsize:
    81a0:	3f 2c 40 f2	tst	x1, #0xfff
    81a4:	01 01 00 54	b.ne	0x81c4
    81a8:	48 00 00 90	adrp	x8, 8 ; 0x10000
    81ac:	08 31 41 f9	ldr	x8, [x8, #608] ; literal pool symbol address: _vm_page_size
    81b0:	08 01 40 f9	ldr	x8, [x8]
    81b4:	29 00 08 8b	add	x9, x1, x8
    81b8:	29 05 00 d1	sub	x9, x9, #1
    81bc:	e8 03 08 cb	neg	x8, x8
    81c0:	21 01 08 8a	and	x1, x9, x8
    81c4:	08 00 40 f9	ldr	x8, [x0]
    81c8:	29 88 88 52	mov	w9, #17473
    81cc:	09 89 aa 72	movk	w9, #21576, lsl #16
    81d0:	1f 01 09 eb	cmp	x8, x9
    81d4:	c1 00 00 54	b.ne	0x81ec
    81d8:	48 00 00 90	adrp	x8, 8 ; 0x10000
    81dc:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    81e0:	08 01 40 f9	ldr	x8, [x8]
    81e4:	1f 01 01 ea	tst	x8, x1
    81e8:	60 00 00 54	b.eq	0x81f4
    81ec:	c8 02 80 52	mov	w8, #22
    81f0:	06 00 00 14	b	0x8208
    81f4:	08 00 80 52	mov	w8, #0
    81f8:	09 14 40 f9	ldr	x9, [x0, #40]
    81fc:	29 f9 63 92	and	x9, x9, #0xffffffffefffffff
    8200:	09 14 00 f9	str	x9, [x0, #40]
    8204:	01 04 00 f9	str	x1, [x0, #8]
    8208:	e0 03 08 aa	mov	x0, x8
    820c:	c0 03 5f d6	ret
_pthread_attr_getguardsize:
    8210:	09 00 40 f9	ldr	x9, [x0]
    8214:	2a 88 88 52	mov	w10, #17473
    8218:	0a 89 aa 72	movk	w10, #21576, lsl #16
    821c:	3f 01 0a eb	cmp	x9, x10
    8220:	81 01 00 54	b.ne	0x8250
    8224:	e8 03 00 aa	mov	x8, x0
    8228:	00 00 80 52	mov	w0, #0
    822c:	09 15 40 f9	ldr	x9, [x8, #40]
    8230:	08 21 00 91	add	x8, x8, #8
    8234:	4a 00 00 90	adrp	x10, 8 ; 0x10000
    8238:	4a 31 41 f9	ldr	x10, [x10, #608] ; literal pool symbol address: _vm_page_size
    823c:	3f 01 64 f2	tst	x9, #0x10000000
    8240:	08 01 8a 9a	csel	x8, x8, x10, eq
    8244:	08 01 40 f9	ldr	x8, [x8]
    8248:	28 00 00 f9	str	x8, [x1]
    824c:	c0 03 5f d6	ret
    8250:	c0 02 80 52	mov	w0, #22
    8254:	c0 03 5f d6	ret
_pthread_attr_setcpupercent_np:
    8258:	e8 03 00 aa	mov	x8, x0
    825c:	c0 02 80 52	mov	w0, #22
    8260:	e9 5f 1f 32	mov	w9, #33554430
    8264:	5f 00 09 eb	cmp	x2, x9
    8268:	a8 02 00 54	b.hi	0x82bc
    826c:	3f f8 03 71	cmp	w1, #254
    8270:	6c 02 00 54	b.gt	0x82bc
    8274:	09 01 40 f9	ldr	x9, [x8]
    8278:	2a 88 88 52	mov	w10, #17473
    827c:	0a 89 aa 72	movk	w10, #21576, lsl #16
    8280:	3f 01 0a eb	cmp	x9, x10
    8284:	c1 01 00 54	b.ne	0x82bc
    8288:	09 15 40 f9	ldr	x9, [x8, #40]
    828c:	89 01 d0 36	tbz	w9, #26, 0x82bc
    8290:	2a 5d 10 53	ubfx	w10, w9, #16, #8
    8294:	5f 11 00 71	cmp	w10, #4
    8298:	44 19 42 7a	ccmp	w10, #2, #4, ne
    829c:	01 01 00 54	b.ne	0x82bc
    82a0:	00 00 80 52	mov	w0, #0
    82a4:	2a 1c 00 12	and	w10, w1, #0xff
    82a8:	29 7d 40 92	and	x9, x9, #0xffffffff
    82ac:	29 81 0a aa	orr	x9, x9, x10, lsl #32
    82b0:	29 a1 02 aa	orr	x9, x9, x2, lsl #40
    82b4:	29 01 65 b2	orr	x9, x9, #0x8000000
    82b8:	09 15 00 f9	str	x9, [x8, #40]
    82bc:	c0 03 5f d6	ret
_pthread_attr_setworkinterval_np:
    82c0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    82c4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    82c8:	fd 43 00 91	add	x29, sp, #16
    82cc:	f4 03 00 aa	mov	x20, x0
    82d0:	28 04 00 51	sub	w8, w1, #1
    82d4:	c0 02 80 52	mov	w0, #22
    82d8:	1f 0d 00 31	cmn	w8, #3
    82dc:	e8 01 00 54	b.hi	0x8318
    82e0:	88 02 40 f9	ldr	x8, [x20]
    82e4:	29 88 88 52	mov	w9, #17473
    82e8:	09 89 aa 72	movk	w9, #21576, lsl #16
    82ec:	1f 01 09 eb	cmp	x8, x9
    82f0:	41 01 00 54	b.ne	0x8318
    82f4:	f3 03 01 aa	mov	x19, x1
    82f8:	48 00 00 90	adrp	x8, 8 ; 0x10000
    82fc:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    8300:	00 01 40 b9	ldr	w0, [x8]
    8304:	02 00 80 52	mov	w2, #0
    8308:	23 00 80 52	mov	w3, #1
    830c:	5f 0e 00 94	bl	0xbc88 ; symbol stub for: _mach_port_mod_refs
    8310:	40 00 00 35	cbnz	w0, 0x8318
    8314:	93 32 00 b9	str	w19, [x20, #48]
    8318:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    831c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    8320:	c0 03 5f d6	ret
_pthread_from_mach_thread_np:
    8324:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    8328:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    832c:	fd 43 00 91	add	x29, sp, #16
    8330:	f4 03 00 aa	mov	x20, x0
    8334:	e0 00 00 90	adrp	x0, 28 ; 0x24000
    8338:	00 10 01 91	add	x0, x0, #68
    833c:	a1 00 a0 52	mov	w1, #327680
    8340:	6a 0e 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    8344:	e8 00 00 90	adrp	x8, 28 ; 0x24000
    8348:	13 01 40 f9	ldr	x19, [x8]
    834c:	d3 00 00 b4	cbz	x19, 0x8364
    8350:	68 fa 40 b9	ldr	w8, [x19, #248]
    8354:	1f 01 14 6b	cmp	w8, w20
    8358:	60 00 00 54	b.eq	0x8364
    835c:	73 0a 40 f9	ldr	x19, [x19, #16]
    8360:	93 ff ff b5	cbnz	x19, 0x8350
    8364:	e0 00 00 90	adrp	x0, 28 ; 0x24000
    8368:	00 10 01 91	add	x0, x0, #68
    836c:	62 0e 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    8370:	e0 03 13 aa	mov	x0, x19
    8374:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    8378:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    837c:	c0 03 5f d6	ret
__pthread_threadid_slow:
    8380:	ff 03 01 d1	sub	sp, sp, #64
    8384:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    8388:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    838c:	fd c3 00 91	add	x29, sp, #48
    8390:	f4 03 01 aa	mov	x20, x1
    8394:	f3 03 00 aa	mov	x19, x0
    8398:	c8 00 80 52	mov	w8, #6
    839c:	a8 c3 1e b8	stur	w8, [x29, #-20]
    83a0:	00 f8 40 b9	ldr	w0, [x0, #248]
    83a4:	ff 7f 00 a9	stp	xzr, xzr, [sp]
    83a8:	ff 0b 00 f9	str	xzr, [sp, #16]
    83ac:	e2 03 00 91	mov	x2, sp
    83b0:	a3 53 00 d1	sub	x3, x29, #20
    83b4:	81 00 80 52	mov	w1, #4
    83b8:	61 0e 00 94	bl	0xbd3c ; symbol stub for: _thread_info
    83bc:	e8 03 40 f9	ldr	x8, [sp]
    83c0:	1f 00 00 71	cmp	w0, #0
    83c4:	04 09 40 fa	ccmp	x8, #0, #4, eq
    83c8:	61 00 00 54	b.ne	0x83d4
    83cc:	c0 02 80 52	mov	w0, #22
    83d0:	04 00 00 14	b	0x83e0
    83d4:	00 00 80 52	mov	w0, #0
    83d8:	88 02 00 f9	str	x8, [x20]
    83dc:	68 6e 00 f9	str	x8, [x19, #216]
    83e0:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    83e4:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    83e8:	ff 03 01 91	add	sp, sp, #64
    83ec:	c0 03 5f d6	ret
_pthread_cpu_number_np:
    83f0:	e0 00 00 b4	cbz	x0, 0x840c
    83f4:	e8 03 00 aa	mov	x8, x0
    83f8:	00 00 80 52	mov	w0, #0
    83fc:	49 d0 3b d5	mrs	x9, TPIDR_EL0
    8400:	29 2d 40 92	and	x9, x9, #0xfff
    8404:	09 01 00 f9	str	x9, [x8]
    8408:	c0 03 5f d6	ret
    840c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    8410:	08 05 40 f9	ldr	x8, [x8, #8]
    8414:	c0 02 80 52	mov	w0, #22
    8418:	00 01 00 b9	str	w0, [x8]
    841c:	c0 03 5f d6	ret
_pthread_jit_write_protect_np:
    8420:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    8424:	fd 03 00 91	mov	x29, sp
    8428:	e8 4f 70 b2	mov	x8, #68719411200
    842c:	88 21 98 f2	movk	x8, #49420
    8430:	09 01 40 39	ldrb	w9, [x8]
    8434:	69 0a 00 34	cbz	w9, 0x8580
    8438:	09 01 40 39	ldrb	w9, [x8]
    843c:	a0 02 00 34	cbz	w0, 0x8490
    8440:	09 0f 00 34	cbz	w9, 0x8620
    8444:	08 01 40 39	ldrb	w8, [x8]
    8448:	bf 3a 03 d5	dmb	ishst
    844c:	09 09 00 51	sub	w9, w8, #2
    8450:	3f 09 00 71	cmp	w9, #2
    8454:	42 04 00 54	b.hs	0x84dc
    8458:	00 23 98 f2	movk	x0, #49432
    845c:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8460:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8464:	00 00 e0 f2	movk	x0, #0, lsl #48
    8468:	00 00 40 f9	ldr	x0, [x0]
    846c:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    8470:	df 3f 03 d5	isb
    8474:	01 23 98 f2	movk	x1, #49432
    8478:	e1 ff bf f2	movk	x1, #65535, lsl #16
    847c:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8480:	01 00 e0 f2	movk	x1, #0, lsl #48
    8484:	28 00 40 f9	ldr	x8, [x1]
    8488:	a9 f1 3e d5	mrs	x9, S3_6_C15_C1_5
    848c:	23 00 00 14	b	0x8518
    8490:	89 0c 00 34	cbz	w9, 0x8620
    8494:	09 01 40 39	ldrb	w9, [x8]
    8498:	2a 09 00 51	sub	w10, w9, #2
    849c:	5f 09 00 71	cmp	w10, #2
    84a0:	82 04 00 54	b.hs	0x8530
    84a4:	00 22 98 f2	movk	x0, #49424
    84a8:	e0 ff bf f2	movk	x0, #65535, lsl #16
    84ac:	e0 01 c0 f2	movk	x0, #15, lsl #32
    84b0:	00 00 e0 f2	movk	x0, #0, lsl #48
    84b4:	00 00 40 f9	ldr	x0, [x0]
    84b8:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    84bc:	df 3f 03 d5	isb
    84c0:	01 22 98 f2	movk	x1, #49424
    84c4:	e1 ff bf f2	movk	x1, #65535, lsl #16
    84c8:	e1 01 c0 f2	movk	x1, #15, lsl #32
    84cc:	01 00 e0 f2	movk	x1, #0, lsl #48
    84d0:	29 00 40 f9	ldr	x9, [x1]
    84d4:	aa f1 3e d5	mrs	x10, S3_6_C15_C1_5
    84d8:	25 00 00 14	b	0x856c
    84dc:	1f 05 00 71	cmp	w8, #1
    84e0:	01 0a 00 54	b.ne	0x8620
    84e4:	00 23 98 f2	movk	x0, #49432
    84e8:	e0 ff bf f2	movk	x0, #65535, lsl #16
    84ec:	e0 01 c0 f2	movk	x0, #15, lsl #32
    84f0:	00 00 e0 f2	movk	x0, #0, lsl #48
    84f4:	00 00 40 f9	ldr	x0, [x0]
    84f8:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    84fc:	df 3f 03 d5	isb
    8500:	01 23 98 f2	movk	x1, #49432
    8504:	e1 ff bf f2	movk	x1, #65535, lsl #16
    8508:	e1 01 c0 f2	movk	x1, #15, lsl #32
    850c:	01 00 e0 f2	movk	x1, #0, lsl #48
    8510:	28 00 40 f9	ldr	x8, [x1]
    8514:	e9 f2 3c d5	mrs	x9, S3_4_C15_C2_7
    8518:	1f 01 09 eb	cmp	x8, x9
    851c:	21 08 00 54	b.ne	0x8620
    8520:	a8 00 00 90	adrp	x8, 20 ; 0x1c000
    8524:	08 01 40 39	ldrb	w8, [x8]
    8528:	c8 02 00 34	cbz	w8, 0x8580
    852c:	09 0c 00 94	bl	_pthread_jit_write_protect_np.cold.1
    8530:	3f 05 00 71	cmp	w9, #1
    8534:	61 07 00 54	b.ne	0x8620
    8538:	00 22 98 f2	movk	x0, #49424
    853c:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8540:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8544:	00 00 e0 f2	movk	x0, #0, lsl #48
    8548:	00 00 40 f9	ldr	x0, [x0]
    854c:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    8550:	df 3f 03 d5	isb
    8554:	01 22 98 f2	movk	x1, #49424
    8558:	e1 ff bf f2	movk	x1, #65535, lsl #16
    855c:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8560:	01 00 e0 f2	movk	x1, #0, lsl #48
    8564:	29 00 40 f9	ldr	x9, [x1]
    8568:	ea f2 3c d5	mrs	x10, S3_4_C15_C2_7
    856c:	3f 01 0a eb	cmp	x9, x10
    8570:	81 05 00 54	b.ne	0x8620
    8574:	a9 00 00 90	adrp	x9, 20 ; 0x1c000
    8578:	29 01 40 39	ldrb	w9, [x9]
    857c:	69 00 00 35	cbnz	w9, 0x8588
    8580:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8584:	c0 03 5f d6	ret
    8588:	09 01 40 39	ldrb	w9, [x8]
    858c:	a9 04 00 34	cbz	w9, 0x8620
    8590:	08 01 40 39	ldrb	w8, [x8]
    8594:	bf 3a 03 d5	dmb	ishst
    8598:	09 09 00 51	sub	w9, w8, #2
    859c:	3f 09 00 71	cmp	w9, #2
    85a0:	e2 01 00 54	b.hs	0x85dc
    85a4:	00 23 98 f2	movk	x0, #49432
    85a8:	e0 ff bf f2	movk	x0, #65535, lsl #16
    85ac:	e0 01 c0 f2	movk	x0, #15, lsl #32
    85b0:	00 00 e0 f2	movk	x0, #0, lsl #48
    85b4:	00 00 40 f9	ldr	x0, [x0]
    85b8:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    85bc:	df 3f 03 d5	isb
    85c0:	01 23 98 f2	movk	x1, #49432
    85c4:	e1 ff bf f2	movk	x1, #65535, lsl #16
    85c8:	e1 01 c0 f2	movk	x1, #15, lsl #32
    85cc:	01 00 e0 f2	movk	x1, #0, lsl #48
    85d0:	28 00 40 f9	ldr	x8, [x1]
    85d4:	a9 f1 3e d5	mrs	x9, S3_6_C15_C1_5
    85d8:	10 00 00 14	b	0x8618
    85dc:	1f 05 00 71	cmp	w8, #1
    85e0:	01 02 00 54	b.ne	0x8620
    85e4:	00 23 98 f2	movk	x0, #49432
    85e8:	e0 ff bf f2	movk	x0, #65535, lsl #16
    85ec:	e0 01 c0 f2	movk	x0, #15, lsl #32
    85f0:	00 00 e0 f2	movk	x0, #0, lsl #48
    85f4:	00 00 40 f9	ldr	x0, [x0]
    85f8:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    85fc:	df 3f 03 d5	isb
    8600:	01 23 98 f2	movk	x1, #49432
    8604:	e1 ff bf f2	movk	x1, #65535, lsl #16
    8608:	e1 01 c0 f2	movk	x1, #15, lsl #32
    860c:	01 00 e0 f2	movk	x1, #0, lsl #48
    8610:	28 00 40 f9	ldr	x8, [x1]
    8614:	e9 f2 3c d5	mrs	x9, S3_4_C15_C2_7
    8618:	1f 01 09 eb	cmp	x8, x9
    861c:	80 f8 ff 54	b.eq	0x852c
    8620:	20 00 20 d4	brk	#0x1
_pthread_jit_write_protect_supported_np:
    8624:	e8 4f 70 b2	mov	x8, #68719411200
    8628:	88 21 98 f2	movk	x8, #49420
    862c:	08 01 40 39	ldrb	w8, [x8]
    8630:	1f 01 00 71	cmp	w8, #0
    8634:	e0 07 9f 1a	cset	w0, ne
    8638:	c0 03 5f d6	ret
_pthread_jit_write_with_callback_np:
    863c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    8640:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    8644:	fd 43 00 91	add	x29, sp, #16
    8648:	e8 03 01 aa	mov	x8, x1
    864c:	e2 03 00 aa	mov	x2, x0
    8650:	f3 4f 70 b2	mov	x19, #68719411200
    8654:	93 21 98 f2	movk	x19, #49420
    8658:	69 02 40 39	ldrb	w9, [x19]
    865c:	a9 02 00 34	cbz	w9, 0x86b0
    8660:	69 02 40 39	ldrb	w9, [x19]
    8664:	69 12 00 34	cbz	w9, 0x88b0
    8668:	69 02 40 39	ldrb	w9, [x19]
    866c:	2a 09 00 51	sub	w10, w9, #2
    8670:	5f 09 00 71	cmp	w10, #2
    8674:	62 02 00 54	b.hs	0x86c0
    8678:	00 22 98 f2	movk	x0, #49424
    867c:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8680:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8684:	00 00 e0 f2	movk	x0, #0, lsl #48
    8688:	00 00 40 f9	ldr	x0, [x0]
    868c:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    8690:	df 3f 03 d5	isb
    8694:	01 22 98 f2	movk	x1, #49424
    8698:	e1 ff bf f2	movk	x1, #65535, lsl #16
    869c:	e1 01 c0 f2	movk	x1, #15, lsl #32
    86a0:	01 00 e0 f2	movk	x1, #0, lsl #48
    86a4:	29 00 40 f9	ldr	x9, [x1]
    86a8:	aa f1 3e d5	mrs	x10, S3_6_C15_C1_5
    86ac:	14 00 00 14	b	0x86fc
    86b0:	e0 03 08 aa	mov	x0, x8
    86b4:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    86b8:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    86bc:	40 00 1f d6	br	x2
    86c0:	3f 05 00 71	cmp	w9, #1
    86c4:	61 0f 00 54	b.ne	0x88b0
    86c8:	00 22 98 f2	movk	x0, #49424
    86cc:	e0 ff bf f2	movk	x0, #65535, lsl #16
    86d0:	e0 01 c0 f2	movk	x0, #15, lsl #32
    86d4:	00 00 e0 f2	movk	x0, #0, lsl #48
    86d8:	00 00 40 f9	ldr	x0, [x0]
    86dc:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    86e0:	df 3f 03 d5	isb
    86e4:	01 22 98 f2	movk	x1, #49424
    86e8:	e1 ff bf f2	movk	x1, #65535, lsl #16
    86ec:	e1 01 c0 f2	movk	x1, #15, lsl #32
    86f0:	01 00 e0 f2	movk	x1, #0, lsl #48
    86f4:	29 00 40 f9	ldr	x9, [x1]
    86f8:	ea f2 3c d5	mrs	x10, S3_4_C15_C2_7
    86fc:	3f 01 0a eb	cmp	x9, x10
    8700:	81 0d 00 54	b.ne	0x88b0
    8704:	a9 00 00 90	adrp	x9, 20 ; 0x1c000
    8708:	29 01 40 39	ldrb	w9, [x9]
    870c:	29 05 00 34	cbz	w9, 0x87b0
    8710:	a9 00 00 90	adrp	x9, 20 ; 0x1c000
    8714:	29 09 40 39	ldrb	w9, [x9, #2]
    8718:	e9 0c 00 34	cbz	w9, 0x88b4
    871c:	a9 00 00 90	adrp	x9, 20 ; 0x1c000
    8720:	29 05 40 b9	ldr	w9, [x9, #4]
    8724:	09 04 00 34	cbz	w9, 0x87a4
    8728:	0a 00 80 d2	mov	x10, #0
    872c:	ab 00 00 90	adrp	x11, 20 ; 0x1c000
    8730:	6b 01 00 91	add	x11, x11, #0
    8734:	6c 0d 0a 8b	add	x12, x11, x10, lsl #3
    8738:	8c 05 40 f9	ldr	x12, [x12, #8]
    873c:	9f 01 02 eb	cmp	x12, x2
    8740:	40 03 00 54	b.eq	0x87a8
    8744:	4a 05 00 91	add	x10, x10, #1
    8748:	3f 01 0a eb	cmp	x9, x10
    874c:	41 ff ff 54	b.ne	0x8734
    8750:	68 02 40 39	ldrb	w8, [x19]
    8754:	e8 0a 00 34	cbz	w8, 0x88b0
    8758:	68 02 40 39	ldrb	w8, [x19]
    875c:	bf 3a 03 d5	dmb	ishst
    8760:	09 09 00 51	sub	w9, w8, #2
    8764:	3f 09 00 71	cmp	w9, #2
    8768:	e2 07 00 54	b.hs	0x8864
    876c:	00 23 98 f2	movk	x0, #49432
    8770:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8774:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8778:	00 00 e0 f2	movk	x0, #0, lsl #48
    877c:	00 00 40 f9	ldr	x0, [x0]
    8780:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    8784:	df 3f 03 d5	isb
    8788:	01 23 98 f2	movk	x1, #49432
    878c:	e1 ff bf f2	movk	x1, #65535, lsl #16
    8790:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8794:	01 00 e0 f2	movk	x1, #0, lsl #48
    8798:	28 00 40 f9	ldr	x8, [x1]
    879c:	a9 f1 3e d5	mrs	x9, S3_6_C15_C1_5
    87a0:	40 00 00 14	b	0x88a0
    87a4:	0a 00 80 52	mov	w10, #0
    87a8:	5f 01 09 6b	cmp	w10, w9
    87ac:	20 fd ff 54	b.eq	0x8750
    87b0:	e0 03 08 aa	mov	x0, x8
    87b4:	40 00 3f d6	blr	x2
    87b8:	68 02 40 39	ldrb	w8, [x19]
    87bc:	a8 07 00 34	cbz	w8, 0x88b0
    87c0:	e2 03 00 aa	mov	x2, x0
    87c4:	68 02 40 39	ldrb	w8, [x19]
    87c8:	bf 3a 03 d5	dmb	ishst
    87cc:	09 09 00 51	sub	w9, w8, #2
    87d0:	3f 09 00 71	cmp	w9, #2
    87d4:	e2 01 00 54	b.hs	0x8810
    87d8:	00 23 98 f2	movk	x0, #49432
    87dc:	e0 ff bf f2	movk	x0, #65535, lsl #16
    87e0:	e0 01 c0 f2	movk	x0, #15, lsl #32
    87e4:	00 00 e0 f2	movk	x0, #0, lsl #48
    87e8:	00 00 40 f9	ldr	x0, [x0]
    87ec:	a0 f1 1e d5	msr	S3_6_C15_C1_5, x0
    87f0:	df 3f 03 d5	isb
    87f4:	01 23 98 f2	movk	x1, #49432
    87f8:	e1 ff bf f2	movk	x1, #65535, lsl #16
    87fc:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8800:	01 00 e0 f2	movk	x1, #0, lsl #48
    8804:	28 00 40 f9	ldr	x8, [x1]
    8808:	a9 f1 3e d5	mrs	x9, S3_6_C15_C1_5
    880c:	10 00 00 14	b	0x884c
    8810:	1f 05 00 71	cmp	w8, #1
    8814:	e1 04 00 54	b.ne	0x88b0
    8818:	00 23 98 f2	movk	x0, #49432
    881c:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8820:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8824:	00 00 e0 f2	movk	x0, #0, lsl #48
    8828:	00 00 40 f9	ldr	x0, [x0]
    882c:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    8830:	df 3f 03 d5	isb
    8834:	01 23 98 f2	movk	x1, #49432
    8838:	e1 ff bf f2	movk	x1, #65535, lsl #16
    883c:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8840:	01 00 e0 f2	movk	x1, #0, lsl #48
    8844:	28 00 40 f9	ldr	x8, [x1]
    8848:	e9 f2 3c d5	mrs	x9, S3_4_C15_C2_7
    884c:	1f 01 09 eb	cmp	x8, x9
    8850:	01 03 00 54	b.ne	0x88b0
    8854:	e0 03 02 aa	mov	x0, x2
    8858:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    885c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    8860:	c0 03 5f d6	ret
    8864:	1f 05 00 71	cmp	w8, #1
    8868:	41 02 00 54	b.ne	0x88b0
    886c:	00 23 98 f2	movk	x0, #49432
    8870:	e0 ff bf f2	movk	x0, #65535, lsl #16
    8874:	e0 01 c0 f2	movk	x0, #15, lsl #32
    8878:	00 00 e0 f2	movk	x0, #0, lsl #48
    887c:	00 00 40 f9	ldr	x0, [x0]
    8880:	e0 f2 1c d5	msr	S3_4_C15_C2_7, x0
    8884:	df 3f 03 d5	isb
    8888:	01 23 98 f2	movk	x1, #49432
    888c:	e1 ff bf f2	movk	x1, #65535, lsl #16
    8890:	e1 01 c0 f2	movk	x1, #15, lsl #32
    8894:	01 00 e0 f2	movk	x1, #0, lsl #48
    8898:	28 00 40 f9	ldr	x8, [x1]
    889c:	e9 f2 3c d5	mrs	x9, S3_4_C15_C2_7
    88a0:	1f 01 09 eb	cmp	x8, x9
    88a4:	61 00 00 54	b.ne	0x88b0
    88a8:	e0 03 02 aa	mov	x0, x2
    88ac:	3c 0b 00 94	bl	_pthread_jit_write_with_callback_np.cold.2
    88b0:	20 00 20 d4	brk	#0x1
    88b4:	2f 0b 00 94	bl	_pthread_jit_write_with_callback_np.cold.1
_pthread_jit_write_freeze_callbacks_np:
    88b8:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    88bc:	fd 03 00 91	mov	x29, sp
    88c0:	e8 4f 70 b2	mov	x8, #68719411200
    88c4:	88 21 98 f2	movk	x8, #49420
    88c8:	08 01 40 39	ldrb	w8, [x8]
    88cc:	48 02 00 34	cbz	w8, 0x8914
    88d0:	a8 00 00 90	adrp	x8, 20 ; 0x1c000
    88d4:	08 05 40 39	ldrb	w8, [x8, #1]
    88d8:	28 02 00 34	cbz	w8, 0x891c
    88dc:	c0 00 00 90	adrp	x0, 24 ; 0x20000
    88e0:	00 00 00 91	add	x0, x0, #0
    88e4:	a1 00 a0 52	mov	w1, #327680
    88e8:	00 0d 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    88ec:	a8 00 00 90	adrp	x8, 20 ; 0x1c000
    88f0:	09 09 40 39	ldrb	w9, [x8, #2]
    88f4:	69 01 00 35	cbnz	w9, 0x8920
    88f8:	29 00 80 52	mov	w9, #1
    88fc:	09 09 00 39	strb	w9, [x8, #2]
    8900:	c0 00 00 90	adrp	x0, 24 ; 0x20000
    8904:	00 00 00 91	add	x0, x0, #0
    8908:	fb 0c 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    890c:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8910:	05 00 00 14	b	__pthread_jit_write_protect_freeze_config
    8914:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8918:	c0 03 5f d6	ret
    891c:	2a 0b 00 94	bl	_pthread_jit_write_freeze_callbacks_np.cold.1
    8920:	31 0b 00 94	bl	_pthread_jit_write_freeze_callbacks_np.cold.2
__pthread_jit_write_protect_freeze_config:
    8924:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    8928:	fd 03 00 91	mov	x29, sp
    892c:	48 00 00 90	adrp	x8, 8 ; 0x10000
    8930:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    8934:	00 01 40 b9	ldr	w0, [x8]
    8938:	a1 00 00 90	adrp	x1, 20 ; 0x1c000
    893c:	21 00 00 91	add	x1, x1, #0
    8940:	02 00 88 52	mov	w2, #16384
    8944:	23 00 80 52	mov	w3, #1
    8948:	24 00 80 52	mov	w4, #1
    894c:	de 0c 00 94	bl	0xbcc4 ; symbol stub for: _mach_vm_protect
    8950:	60 00 00 35	cbnz	w0, 0x895c
    8954:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8958:	c0 03 5f d6	ret
    895c:	2a 0b 00 94	bl	__pthread_jit_write_protect_freeze_config.cold.1
__pthread_create:
    8960:	ff 03 02 d1	sub	sp, sp, #128
    8964:	fc 6f 02 a9	stp	x28, x27, [sp, #32]
    8968:	fa 67 03 a9	stp	x26, x25, [sp, #48]
    896c:	f8 5f 04 a9	stp	x24, x23, [sp, #64]
    8970:	f6 57 05 a9	stp	x22, x21, [sp, #80]
    8974:	f4 4f 06 a9	stp	x20, x19, [sp, #96]
    8978:	fd 7b 07 a9	stp	x29, x30, [sp, #112]
    897c:	fd c3 01 91	add	x29, sp, #112
    8980:	f4 03 04 aa	mov	x20, x4
    8984:	ec 03 00 aa	mov	x12, x0
    8988:	21 01 00 b4	cbz	x1, 0x89ac
    898c:	f8 03 01 aa	mov	x24, x1
    8990:	28 00 40 f9	ldr	x8, [x1]
    8994:	29 88 88 52	mov	w9, #17473
    8998:	09 89 aa 72	movk	w9, #21576, lsl #16
    899c:	1f 01 09 eb	cmp	x8, x9
    89a0:	a0 00 00 54	b.eq	0x89b4
    89a4:	d5 02 80 52	mov	w21, #22
    89a8:	fa 00 00 14	b	0x8d90
    89ac:	18 00 00 f0	adrp	x24, 3 ; 0xb000
    89b0:	18 e3 37 91	add	x24, x24, #3576
    89b4:	0b 23 42 a9	ldp	x11, x8, [x24, #32]
    89b8:	09 20 a0 52	mov	w9, #16777216
    89bc:	0a 20 a1 52	mov	w10, #150994944
    89c0:	19 0f 40 f9	ldr	x25, [x24, #24]
    89c4:	6a 5d 00 33	bfxil	w10, w11, #0, #24
    89c8:	7f 01 00 f1	cmp	x11, #0
    89cc:	29 01 8a 1a	csel	w9, w9, w10, eq
    89d0:	0a 1d 10 12	and	w10, w8, #0xff0000
    89d4:	6a 3d 00 33	bfxil	w10, w11, #0, #16
    89d8:	4a 05 08 32	orr	w10, w10, #0x3000000
    89dc:	1f 01 08 72	tst	w8, #0x1000000
    89e0:	35 01 8a 1a	csel	w21, w9, w10, eq
    89e4:	29 00 80 52	mov	w9, #1
    89e8:	ea 00 00 90	adrp	x10, 28 ; 0x24000
    89ec:	49 41 00 b9	str	w9, [x10, #64]
    89f0:	e9 00 00 90	adrp	x9, 28 ; 0x24000
    89f4:	29 11 40 f9	ldr	x9, [x9, #32]
    89f8:	e9 0f 00 f9	str	x9, [sp, #24]
    89fc:	29 07 00 d1	sub	x9, x25, #1
    8a00:	ca ff 87 52	mov	w10, #16382
    8a04:	3f 01 0a eb	cmp	x9, x10
    8a08:	c9 21 00 54	b.ls	0x8e40
    8a0c:	00 0b 40 f9	ldr	x0, [x24, #16]
    8a10:	49 00 00 90	adrp	x9, 8 ; 0x10000
    8a14:	29 2d 41 f9	ldr	x9, [x9, #600] ; literal pool symbol address: _vm_page_mask
    8a18:	29 01 40 f9	ldr	x9, [x9]
    8a1c:	3f 01 00 ea	tst	x9, x0
    8a20:	41 21 00 54	b.ne	0x8e48
    8a24:	f3 03 02 aa	mov	x19, x2
    8a28:	ec 0b 00 f9	str	x12, [sp, #16]
    8a2c:	4b 00 00 90	adrp	x11, 8 ; 0x10000
    8a30:	6b 31 41 f9	ldr	x11, [x11, #608] ; literal pool symbol address: _vm_page_size
    8a34:	f6 03 03 aa	mov	x22, x3
    8a38:	20 01 00 b4	cbz	x0, 0x8a5c
    8a3c:	1c 00 80 d2	mov	x28, #0
    8a40:	1a 00 80 d2	mov	x26, #0
    8a44:	08 1c 83 52	mov	w8, #6368
    8a48:	ea 03 29 2a	mvn	w10, w9
    8a4c:	4a 7d 40 93	sxtw	x10, w10
    8a50:	28 01 08 8b	add	x8, x9, x8
    8a54:	5b 01 08 8a	and	x27, x10, x8
    8a58:	13 00 00 14	b	0x8aa4
    8a5c:	0a 23 00 91	add	x10, x24, #8
    8a60:	1f 01 64 f2	tst	x8, #0x10000000
    8a64:	48 01 8b 9a	csel	x8, x10, x11, eq
    8a68:	1a 01 40 f9	ldr	x26, [x8]
    8a6c:	28 0f 40 91	add	x8, x25, #3, lsl #12
    8a70:	0a 00 86 52	mov	w10, #12288
    8a74:	0a 01 a0 72	movk	w10, #8, lsl #16
    8a78:	3f 03 00 f1	cmp	x25, #0
    8a7c:	59 01 88 9a	csel	x25, x10, x8, eq
    8a80:	5c 03 19 8b	add	x28, x26, x25
    8a84:	08 1c 83 52	mov	w8, #6368
    8a88:	ea 03 29 2a	mvn	w10, w9
    8a8c:	4a 7d 40 93	sxtw	x10, w10
    8a90:	28 01 08 8b	add	x8, x9, x8
    8a94:	48 01 08 8a	and	x8, x10, x8
    8a98:	08 01 09 8b	add	x8, x8, x9
    8a9c:	08 01 1c 8b	add	x8, x8, x28
    8aa0:	1b 01 0a 8a	and	x27, x8, x10
    8aa4:	57 00 00 90	adrp	x23, 8 ; 0x10000
    8aa8:	f7 e6 40 f9	ldr	x23, [x23, #456] ; literal pool symbol address: _mach_task_self_
    8aac:	e0 02 40 b9	ldr	w0, [x23]
    8ab0:	68 01 40 f9	ldr	x8, [x11]
    8ab4:	03 05 00 d1	sub	x3, x8, #1
    8ab8:	28 00 80 52	mov	w8, #1
    8abc:	e8 0b 00 b9	str	w8, [sp, #8]
    8ac0:	68 00 80 d2	mov	x8, #3
    8ac4:	e8 00 c0 f2	movk	x8, #7, lsl #32
    8ac8:	e8 03 00 f9	str	x8, [sp]
    8acc:	e1 63 00 91	add	x1, sp, #24
    8ad0:	e2 03 1b aa	mov	x2, x27
    8ad4:	24 00 80 52	mov	w4, #1
    8ad8:	04 c0 a3 72	movk	w4, #7680, lsl #16
    8adc:	05 00 80 52	mov	w5, #0
    8ae0:	06 00 80 d2	mov	x6, #0
    8ae4:	07 00 80 52	mov	w7, #0
    8ae8:	74 0c 00 94	bl	0xbcb8 ; symbol stub for: _mach_vm_map
    8aec:	40 01 00 34	cbz	w0, 0x8b14
    8af0:	e0 02 40 b9	ldr	w0, [x23]
    8af4:	e1 63 00 91	add	x1, sp, #24
    8af8:	e2 03 1b aa	mov	x2, x27
    8afc:	23 00 80 52	mov	w3, #1
    8b00:	03 c0 a3 72	movk	w3, #7680, lsl #16
    8b04:	67 0c 00 94	bl	0xbca0 ; symbol stub for: _mach_vm_allocate
    8b08:	60 02 00 34	cbz	w0, 0x8b54
    8b0c:	75 04 80 52	mov	w21, #35
    8b10:	a0 00 00 14	b	0x8d90
    8b14:	14 02 00 37	tbnz	w20, #0, 0x8b54
    8b18:	48 00 00 90	adrp	x8, 8 ; 0x10000
    8b1c:	08 69 40 f9	ldr	x8, [x8, #208] ; literal pool symbol address: ___syscall_logger
    8b20:	08 01 40 f9	ldr	x8, [x8]
    8b24:	88 01 00 b4	cbz	x8, 0x8b54
    8b28:	49 00 00 90	adrp	x9, 8 ; 0x10000
    8b2c:	29 e5 40 f9	ldr	x9, [x9, #456] ; literal pool symbol address: _mach_task_self_
    8b30:	21 01 40 b9	ldr	w1, [x9]
    8b34:	e4 0f 40 f9	ldr	x4, [sp, #24]
    8b38:	29 00 80 52	mov	w9, #1
    8b3c:	09 c0 a3 72	movk	w9, #7680, lsl #16
    8b40:	20 3d 02 11	add	w0, w9, #143
    8b44:	e2 03 1b aa	mov	x2, x27
    8b48:	03 00 80 d2	mov	x3, #0
    8b4c:	05 00 80 52	mov	w5, #0
    8b50:	00 01 3f d6	blr	x8
    8b54:	14 02 00 37	tbnz	w20, #0, 0x8b94
    8b58:	48 00 00 90	adrp	x8, 8 ; 0x10000
    8b5c:	08 69 40 f9	ldr	x8, [x8, #208] ; literal pool symbol address: ___syscall_logger
    8b60:	08 01 40 f9	ldr	x8, [x8]
    8b64:	88 01 00 b4	cbz	x8, 0x8b94
    8b68:	49 00 00 90	adrp	x9, 8 ; 0x10000
    8b6c:	29 e5 40 f9	ldr	x9, [x9, #456] ; literal pool symbol address: _mach_task_self_
    8b70:	21 01 40 b9	ldr	w1, [x9]
    8b74:	e4 0f 40 f9	ldr	x4, [sp, #24]
    8b78:	29 00 80 52	mov	w9, #1
    8b7c:	09 c0 a3 72	movk	w9, #7680, lsl #16
    8b80:	20 3d 00 11	add	w0, w9, #15
    8b84:	e2 03 1b aa	mov	x2, x27
    8b88:	03 00 80 d2	mov	x3, #0
    8b8c:	05 00 80 52	mov	w5, #0
    8b90:	00 01 3f d6	blr	x8
    8b94:	f7 03 16 aa	mov	x23, x22
    8b98:	3a 01 00 b4	cbz	x26, 0x8bbc
    8b9c:	48 00 00 90	adrp	x8, 8 ; 0x10000
    8ba0:	08 e5 40 f9	ldr	x8, [x8, #456] ; literal pool symbol address: _mach_task_self_
    8ba4:	00 01 40 b9	ldr	w0, [x8]
    8ba8:	e1 0f 40 f9	ldr	x1, [sp, #24]
    8bac:	e2 03 1a aa	mov	x2, x26
    8bb0:	03 00 80 52	mov	w3, #0
    8bb4:	04 00 80 52	mov	w4, #0
    8bb8:	43 0c 00 94	bl	0xbcc4 ; symbol stub for: _mach_vm_protect
    8bbc:	e9 0f 40 f9	ldr	x9, [sp, #24]
    8bc0:	08 0b 40 f9	ldr	x8, [x24, #16]
    8bc4:	ea 00 00 90	adrp	x10, 28 ; 0x24000
    8bc8:	4b 35 40 f9	ldr	x11, [x10, #104]
    8bcc:	3a 01 1c 8b	add	x26, x9, x28
    8bd0:	6b 01 1a ca	eor	x11, x11, x26
    8bd4:	1f 01 00 f1	cmp	x8, #0
    8bd8:	5c 03 88 9a	csel	x28, x26, x8, eq
    8bdc:	4b 03 00 f9	str	x11, [x26]
    8be0:	48 b3 02 91	add	x8, x26, #172
    8be4:	5a 23 0e a9	stp	x26, x8, [x26, #224]
    8be8:	08 af 40 39	ldrb	w8, [x24, #43]
    8bec:	f6 03 13 aa	mov	x22, x19
    8bf0:	68 00 00 37	tbnz	w8, #0, 0x8bfc
    8bf4:	0b 13 40 f9	ldr	x11, [x24, #32]
    8bf8:	02 00 00 14	b	0x8c00
    8bfc:	0b 00 80 d2	mov	x11, #0
    8c00:	4c 00 00 90	adrp	x12, 8 ; 0x10000
    8c04:	8c 31 41 f9	ldr	x12, [x12, #608] ; literal pool symbol address: _vm_page_size
    8c08:	88 7e 01 53	lsr	w8, w20, #1
    8c0c:	4b 83 00 f9	str	x11, [x26, #256]
    8c10:	4a 35 40 f9	ldr	x10, [x10, #104]
    8c14:	4a 8f 00 f9	str	x10, [x26, #280]
    8c18:	0a 0b 40 f9	ldr	x10, [x24, #16]
    8c1c:	5f 01 00 f1	cmp	x10, #0
    8c20:	ea 07 9f 1a	cset	w10, ne
    8c24:	4b c7 40 39	ldrb	w11, [x26, #49]
    8c28:	4b 01 1e 33	bfi	w11, w10, #2, #1
    8c2c:	4b c7 00 39	strb	w11, [x26, #49]
    8c30:	5f 4b 00 b9	str	wzr, [x26, #72]
    8c34:	8a 03 19 cb	sub	x10, x28, x25
    8c38:	5c 2b 0b a9	stp	x28, x10, [x26, #176]
    8c3c:	49 6f 0c a9	stp	x9, x27, [x26, #192]
    8c40:	09 17 40 f9	ldr	x9, [x24, #40]
    8c44:	0a 23 00 91	add	x10, x24, #8
    8c48:	3f 01 64 f2	tst	x9, #0x10000000
    8c4c:	49 01 8c 9a	csel	x9, x10, x12, eq
    8c50:	29 01 40 f9	ldr	x9, [x9]
    8c54:	49 6b 00 f9	str	x9, [x26, #208]
    8c58:	09 a3 40 39	ldrb	w9, [x24, #40]
    8c5c:	3f 05 00 f1	cmp	x9, #1
    8c60:	e9 17 9f 1a	cset	w9, eq
    8c64:	6a 19 1f 12	and	w10, w11, #0xfe
    8c68:	49 01 09 2a	orr	w9, w10, w9
    8c6c:	49 c7 00 39	strb	w9, [x26, #49]
    8c70:	09 a7 40 39	ldrb	w9, [x24, #41]
    8c74:	4a 3f 41 39	ldrb	w10, [x26, #79]
    8c78:	29 21 0a 2a	orr	w9, w9, w10, lsl #8
    8c7c:	49 9f 00 79	strh	w9, [x26, #78]
    8c80:	0a 17 40 f9	ldr	x10, [x24, #40]
    8c84:	4a fd 50 d3	lsr	x10, x10, #16
    8c88:	4a c3 00 39	strb	w10, [x26, #48]
    8c8c:	0a 2b 40 b9	ldr	w10, [x24, #40]
    8c90:	4a 7d 0f 53	lsr	w10, w10, #15
    8c94:	4a 01 17 12	and	w10, w10, #0x200
    8c98:	29 79 16 12	and	w9, w9, #0xfffffdff
    8c9c:	49 01 09 2a	orr	w9, w10, w9
    8ca0:	49 9f 00 79	strh	w9, [x26, #78]
    8ca4:	09 af 40 39	ldrb	w9, [x24, #43]
    8ca8:	c9 00 00 37	tbnz	w9, #0, 0x8cc0
    8cac:	09 01 00 90	adrp	x9, 32 ; 0x28000
    8cb0:	29 41 40 39	ldrb	w9, [x9, #16]
    8cb4:	4a 01 80 52	mov	w10, #10
    8cb8:	49 2b 07 29	stp	w9, w10, [x26, #56]
    8cbc:	03 00 00 14	b	0x8cc8
    8cc0:	09 13 40 f9	ldr	x9, [x24, #32]
    8cc4:	49 1f 00 f9	str	x9, [x26, #56]
    8cc8:	15 01 03 33	bfi	w21, w8, #29, #1
    8ccc:	68 00 80 52	mov	w8, #3
    8cd0:	48 4f 01 79	strh	w8, [x26, #166]
    8cd4:	d4 0b 00 37	tbnz	w20, #0, 0x8e4c
    8cd8:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    8cdc:	18 19 40 b9	ldr	w24, [x8, #24]
    8ce0:	56 5f 09 a9	stp	x22, x23, [x26, #144]
    8ce4:	f9 00 00 90	adrp	x25, 28 ; 0x24000
    8ce8:	39 13 01 91	add	x25, x25, #68
    8cec:	e0 03 19 aa	mov	x0, x25
    8cf0:	a1 00 a0 52	mov	w1, #327680
    8cf4:	e2 03 18 aa	mov	x2, x24
    8cf8:	f9 0b 00 94	bl	0xbcdc ; symbol stub for: _os_unfair_lock_lock_no_tsd
    8cfc:	e8 03 1a aa	mov	x8, x26
    8d00:	1f 0d 01 f8	str	xzr, [x8, #16]!
    8d04:	fb 00 00 90	adrp	x27, 28 ; 0x24000
    8d08:	69 07 40 f9	ldr	x9, [x27, #8]
    8d0c:	49 0f 00 f9	str	x9, [x26, #24]
    8d10:	3a 01 00 f9	str	x26, [x9]
    8d14:	68 07 00 f9	str	x8, [x27, #8]
    8d18:	f3 00 00 90	adrp	x19, 28 ; 0x24000
    8d1c:	68 1e 40 b9	ldr	w8, [x19, #28]
    8d20:	08 05 00 11	add	w8, w8, #1
    8d24:	68 1e 00 b9	str	w8, [x19, #28]
    8d28:	e0 03 19 aa	mov	x0, x25
    8d2c:	e1 03 18 aa	mov	x1, x24
    8d30:	f4 0b 00 94	bl	0xbd00 ; symbol stub for: _os_unfair_lock_unlock_no_tsd
    8d34:	d4 00 00 37	tbnz	w20, #0, 0x8d4c
    8d38:	c8 00 00 90	adrp	x8, 24 ; 0x20000
    8d3c:	08 19 40 f9	ldr	x8, [x8, #48]
    8d40:	68 00 00 b4	cbz	x8, 0x8d4c
    8d44:	e0 03 1a aa	mov	x0, x26
    8d48:	84 01 00 94	bl	__pthread_introspection_hook_callout_thread_create
    8d4c:	e0 03 16 aa	mov	x0, x22
    8d50:	e1 03 17 aa	mov	x1, x23
    8d54:	e2 03 1c aa	mov	x2, x28
    8d58:	e3 03 1a aa	mov	x3, x26
    8d5c:	e4 03 15 aa	mov	x4, x21
    8d60:	2e 0b 00 94	bl	0xba18 ; symbol stub for: ___bsdthread_create
    8d64:	1f 04 00 b1	cmn	x0, #1
    8d68:	60 02 00 54	b.eq	0x8db4
    8d6c:	15 00 80 52	mov	w21, #0
    8d70:	f6 0b 40 f9	ldr	x22, [sp, #16]
    8d74:	57 00 00 90	adrp	x23, 8 ; 0x10000
    8d78:	f7 e6 40 f9	ldr	x23, [x23, #456] ; literal pool symbol address: _mach_task_self_
    8d7c:	94 00 00 36	tbz	w20, #0, 0x8d8c
    8d80:	e0 02 40 b9	ldr	w0, [x23]
    8d84:	e1 03 18 aa	mov	x1, x24
    8d88:	bd 0b 00 94	bl	0xbc7c ; symbol stub for: _mach_port_deallocate
    8d8c:	da 02 00 f9	str	x26, [x22]
    8d90:	e0 03 15 aa	mov	x0, x21
    8d94:	fd 7b 47 a9	ldp	x29, x30, [sp, #112]
    8d98:	f4 4f 46 a9	ldp	x20, x19, [sp, #96]
    8d9c:	f6 57 45 a9	ldp	x22, x21, [sp, #80]
    8da0:	f8 5f 44 a9	ldp	x24, x23, [sp, #64]
    8da4:	fa 67 43 a9	ldp	x26, x25, [sp, #48]
    8da8:	fc 6f 42 a9	ldp	x28, x27, [sp, #32]
    8dac:	ff 03 02 91	add	sp, sp, #128
    8db0:	c0 03 5f d6	ret
    8db4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    8db8:	08 05 40 f9	ldr	x8, [x8, #8]
    8dbc:	08 01 40 b9	ldr	w8, [x8]
    8dc0:	1f 61 00 71	cmp	w8, #24
    8dc4:	a0 04 00 54	b.eq	0x8e58
    8dc8:	e0 00 00 90	adrp	x0, 28 ; 0x24000
    8dcc:	00 10 01 91	add	x0, x0, #68
    8dd0:	a1 00 a0 52	mov	w1, #327680
    8dd4:	e2 03 18 aa	mov	x2, x24
    8dd8:	c1 0b 00 94	bl	0xbcdc ; symbol stub for: _os_unfair_lock_lock_no_tsd
    8ddc:	48 27 41 a9	ldp	x8, x9, [x26, #16]
    8de0:	88 00 00 b4	cbz	x8, 0x8df0
    8de4:	09 0d 00 f9	str	x9, [x8, #24]
    8de8:	49 0f 40 f9	ldr	x9, [x26, #24]
    8dec:	02 00 00 14	b	0x8df4
    8df0:	69 07 00 f9	str	x9, [x27, #8]
    8df4:	f6 0b 40 f9	ldr	x22, [sp, #16]
    8df8:	57 00 00 90	adrp	x23, 8 ; 0x10000
    8dfc:	f7 e6 40 f9	ldr	x23, [x23, #456] ; literal pool symbol address: _mach_task_self_
    8e00:	95 02 00 12	and	w21, w20, #0x1
    8e04:	28 01 00 f9	str	x8, [x9]
    8e08:	68 1e 40 b9	ldr	w8, [x19, #28]
    8e0c:	08 05 00 51	sub	w8, w8, #1
    8e10:	68 1e 00 b9	str	w8, [x19, #28]
    8e14:	e0 00 00 90	adrp	x0, 28 ; 0x24000
    8e18:	00 10 01 91	add	x0, x0, #68
    8e1c:	e1 03 18 aa	mov	x1, x24
    8e20:	b8 0b 00 94	bl	0xbd00 ; symbol stub for: _os_unfair_lock_unlock_no_tsd
    8e24:	e0 03 1a aa	mov	x0, x26
    8e28:	e1 03 15 aa	mov	x1, x21
    8e2c:	16 f9 ff 97	bl	__pthread_deallocate
    8e30:	1a 00 80 d2	mov	x26, #0
    8e34:	75 04 80 52	mov	w21, #35
    8e38:	54 fa 07 37	tbnz	w20, #0, 0x8d80
    8e3c:	d4 ff ff 17	b	0x8d8c
    8e40:	e0 03 19 aa	mov	x0, x25
    8e44:	fa 09 00 94	bl	__pthread_create.cold.1
    8e48:	0b 0a 00 94	bl	__pthread_create.cold.3
    8e4c:	92 0b 00 94	bl	0xbc94 ; symbol stub for: _mach_thread_self
    8e50:	f8 03 00 aa	mov	x24, x0
    8e54:	a3 ff ff 17	b	0x8ce0
    8e58:	ff 09 00 94	bl	__pthread_create.cold.2
_pthread_create_from_mach_thread:
    8e5c:	24 00 80 52	mov	w4, #1
    8e60:	c0 fe ff 17	b	__pthread_create
_pthread_create_suspended_np:
    8e64:	44 00 80 52	mov	w4, #2
    8e68:	be fe ff 17	b	__pthread_create
_pthread_install_workgroup_functions_np:
    8e6c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    8e70:	fd 03 00 91	mov	x29, sp
    8e74:	e8 03 00 aa	mov	x8, x0
    8e78:	09 01 00 90	adrp	x9, 32 ; 0x28000
    8e7c:	20 05 40 f9	ldr	x0, [x9, #8]
    8e80:	80 00 00 b5	cbnz	x0, 0x8e90
    8e84:	28 05 00 f9	str	x8, [x9, #8]
    8e88:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8e8c:	c0 03 5f d6	ret
    8e90:	03 0a 00 94	bl	_pthread_install_workgroup_functions_np.cold.1
_pthread_create_with_workgroup_np:
    8e94:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    8e98:	fd 03 00 91	mov	x29, sp
    8e9c:	08 01 00 90	adrp	x8, 32 ; 0x28000
    8ea0:	08 05 40 f9	ldr	x8, [x8, #8]
    8ea4:	88 00 00 b4	cbz	x8, 0x8eb4
    8ea8:	05 05 40 f9	ldr	x5, [x8, #8]
    8eac:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8eb0:	a0 00 1f d6	br	x5
    8eb4:	04 0a 00 94	bl	_pthread_create_with_workgroup_np.cold.1
___pthread_workqueue_setkill:
    8eb8:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    8ebc:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    8ec0:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    8ec4:	fd 83 00 91	add	x29, sp, #32
    8ec8:	f3 03 00 aa	mov	x19, x0
    8ecc:	48 00 00 90	adrp	x8, 8 ; 0x10000
    8ed0:	08 a1 40 f9	ldr	x8, [x8, #320] ; literal pool symbol address: __os_xbs_chrooted
    8ed4:	08 01 40 39	ldrb	w8, [x8]
    8ed8:	28 03 00 34	cbz	w8, 0x8f3c
    8edc:	75 d0 3b d5	mrs	x21, TPIDRRO_EL0
    8ee0:	a8 0e 52 f8	ldr	x8, [x21, #-224]!
    8ee4:	e9 00 00 90	adrp	x9, 28 ; 0x24000
    8ee8:	29 35 40 f9	ldr	x9, [x9, #104]
    8eec:	28 01 08 ca	eor	x8, x9, x8
    8ef0:	1f 01 15 eb	cmp	x8, x21
    8ef4:	41 03 00 54	b.ne	0x8f5c
    8ef8:	b4 22 01 91	add	x20, x21, #72
    8efc:	e0 03 14 aa	mov	x0, x20
    8f00:	a1 00 a0 52	mov	w1, #327680
    8f04:	79 0b 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    8f08:	7f 02 00 71	cmp	w19, #0
    8f0c:	e8 07 9f 1a	cset	w8, ne
    8f10:	a9 9e 40 79	ldrh	w9, [x21, #78]
    8f14:	29 79 14 12	and	w9, w9, #0xfffff7ff
    8f18:	28 2d 08 2a	orr	w8, w9, w8, lsl #11
    8f1c:	a8 9e 00 79	strh	w8, [x21, #78]
    8f20:	e0 03 14 aa	mov	x0, x20
    8f24:	74 0b 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    8f28:	00 00 80 52	mov	w0, #0
    8f2c:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    8f30:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    8f34:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    8f38:	c0 03 5f d6	ret
    8f3c:	61 7e 40 93	sxtw	x1, w19
    8f40:	00 00 82 52	mov	w0, #4096
    8f44:	02 00 80 d2	mov	x2, #0
    8f48:	03 00 80 d2	mov	x3, #0
    8f4c:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    8f50:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    8f54:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    8f58:	b3 0a 00 14	b	0xba24 ; symbol stub for: ___bsdthread_ctl
    8f5c:	78 09 00 94	bl	_pthread_mach_thread_np.cold.1
_pthread_self_is_exiting_np:
    8f60:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    8f64:	08 61 5c 78	ldurh	w8, [x8, #-58]
    8f68:	00 15 05 53	ubfx	w0, w8, #5, #1
    8f6c:	c0 03 5f d6	ret
_pthread_getconcurrency:
    8f70:	c8 00 00 90	adrp	x8, 24 ; 0x20000
    8f74:	00 15 40 b9	ldr	w0, [x8, #20]
    8f78:	c0 03 5f d6	ret
_pthread_setconcurrency:
    8f7c:	c0 00 f8 37	tbnz	w0, #31, 0x8f94
    8f80:	e8 03 00 aa	mov	x8, x0
    8f84:	00 00 80 52	mov	w0, #0
    8f88:	c9 00 00 90	adrp	x9, 24 ; 0x20000
    8f8c:	28 15 00 b9	str	w8, [x9, #20]
    8f90:	c0 03 5f d6	ret
    8f94:	c0 02 80 52	mov	w0, #22
    8f98:	c0 03 5f d6	ret
___pthread_late_init:
    8f9c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    8fa0:	fd 03 00 91	mov	x29, sp
    8fa4:	a8 00 00 90	adrp	x8, 20 ; 0x1c000
    8fa8:	08 01 40 39	ldrb	w8, [x8]
    8fac:	48 01 00 34	cbz	w8, 0x8fd4
    8fb0:	08 01 00 90	adrp	x8, 32 ; 0x28000
    8fb4:	08 65 40 39	ldrb	w8, [x8, #25]
    8fb8:	88 00 08 36	tbz	w8, #1, 0x8fc8
    8fbc:	00 00 00 b0	adrp	x0, 1 ; 0x9000
    8fc0:	00 30 11 91	add	x0, x0, #1100
    8fc4:	f5 0a 00 94	bl	0xbb98 ; symbol stub for: __dyld_register_for_bulk_image_loads
    8fc8:	a8 00 00 90	adrp	x8, 20 ; 0x1c000
    8fcc:	08 05 40 39	ldrb	w8, [x8, #1]
    8fd0:	68 00 00 34	cbz	w8, 0x8fdc
    8fd4:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8fd8:	c0 03 5f d6	ret
    8fdc:	28 00 80 52	mov	w8, #1
    8fe0:	a9 00 00 90	adrp	x9, 20 ; 0x1c000
    8fe4:	28 09 00 39	strb	w8, [x9, #2]
    8fe8:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    8fec:	4e fe ff 17	b	__pthread_jit_write_protect_freeze_config
__pthread_introspection_thread_start:
    8ff0:	c8 00 00 90	adrp	x8, 24 ; 0x20000
    8ff4:	08 19 40 f9	ldr	x8, [x8, #48]
    8ff8:	48 00 00 b4	cbz	x8, 0x9000
    8ffc:	64 01 00 14	b	__pthread_introspection_hook_callout_thread_start
    9000:	c0 03 5f d6	ret
__pthread_main_thread_postfork_init:
    9004:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    9008:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    900c:	fd 43 00 91	add	x29, sp, #16
    9010:	f3 03 00 aa	mov	x19, x0
    9014:	01 00 80 52	mov	w1, #0
    9018:	54 e3 ff 97	bl	__pthread_main_thread_init
    901c:	cd 0a 00 94	bl	0xbb50 ; symbol stub for: ___thread_selfid
    9020:	60 6e 00 f9	str	x0, [x19, #216]
    9024:	1f 04 00 b1	cmn	x0, #1
    9028:	80 00 00 54	b.eq	0x9038
    902c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    9030:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    9034:	c0 03 5f d6	ret
    9038:	e6 09 00 94	bl	__pthread_main_thread_postfork_init.cold.1
__pthread_yield_to_enqueuer_4dispatch:
    903c:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    9040:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    9044:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    9048:	fd 83 00 91	add	x29, sp, #32
    904c:	f3 03 02 aa	mov	x19, x2
    9050:	f4 03 01 aa	mov	x20, x1
    9054:	f5 03 00 aa	mov	x21, x0
    9058:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    905c:	00 10 01 91	add	x0, x0, #68
    9060:	a1 00 a0 52	mov	w1, #327680
    9064:	21 0b 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    9068:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    906c:	08 01 40 f9	ldr	x8, [x8]
    9070:	48 01 00 b4	cbz	x8, 0x9098
    9074:	09 0d 15 8b	add	x9, x8, x21, lsl #3
    9078:	29 71 40 f9	ldr	x9, [x9, #224]
    907c:	94 00 00 b4	cbz	x20, 0x908c
    9080:	3f 01 14 eb	cmp	x9, x20
    9084:	61 00 00 54	b.ne	0x9090
    9088:	06 00 00 14	b	0x90a0
    908c:	a9 00 00 b5	cbnz	x9, 0x90a0
    9090:	08 09 40 f9	ldr	x8, [x8, #16]
    9094:	08 ff ff b5	cbnz	x8, 0x9074
    9098:	14 00 80 52	mov	w20, #0
    909c:	02 00 00 14	b	0x90a4
    90a0:	14 f9 40 b9	ldr	w20, [x8, #248]
    90a4:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    90a8:	00 10 01 91	add	x0, x0, #68
    90ac:	12 0b 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    90b0:	e0 03 14 aa	mov	x0, x20
    90b4:	81 00 80 52	mov	w1, #4
    90b8:	e2 03 13 aa	mov	x2, x19
    90bc:	26 0b 00 94	bl	0xbd54 ; symbol stub for: _thread_switch
    90c0:	00 00 80 52	mov	w0, #0
    90c4:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    90c8:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    90cc:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    90d0:	c0 03 5f d6	ret
_pthread_current_stack_contains_np:
    90d4:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    90d8:	29 21 7d a9	ldp	x9, x8, [x9, #-48]
    90dc:	1f 01 09 eb	cmp	x8, x9
    90e0:	40 01 00 54	b.eq	0x9108
    90e4:	0a 00 01 ab	adds	x10, x0, x1
    90e8:	eb 37 9f 1a	cset	w11, hs
    90ec:	ac 02 80 12	mov	w12, #-22
    90f0:	1f 01 00 eb	cmp	x8, x0
    90f4:	42 91 49 fa	ccmp	x10, x9, #2, ls
    90f8:	e8 87 9f 1a	cset	w8, ls
    90fc:	7f 01 00 72	tst	w11, #0x1
    9100:	80 11 88 1a	csel	w0, w12, w8, ne
    9104:	c0 03 5f d6	ret
    9108:	80 05 80 12	mov	w0, #-45
    910c:	c0 03 5f d6	ret
__pthread_wqthread_legacy_worker_wrap:
    9110:	08 40 a4 52	mov	w8, #570425344
    9114:	08 00 08 8a	and	x8, x0, x8
    9118:	09 14 78 92	and	x9, x0, #0x3f00
    911c:	1f 01 00 f1	cmp	x8, #0
    9120:	24 09 40 fa	ccmp	x9, #0, #4, eq
    9124:	08 34 08 53	ubfx	w8, w0, #8, #6
    9128:	04 19 40 7a	ccmp	w8, #0, #4, ne
    912c:	60 03 00 54	b.eq	0x9198
    9130:	08 01 c0 5a	rbit	w8, w8
    9134:	08 11 c0 5a	clz	w8, w8
    9138:	09 05 00 51	sub	w9, w8, #1
    913c:	3f 0d 00 71	cmp	w9, #3
    9140:	c8 02 00 54	b.hi	0x9198
    9144:	08 00 80 52	mov	w8, #0
    9148:	ea 00 00 f0	adrp	x10, 31 ; 0x28000
    914c:	43 11 40 f9	ldr	x3, [x10, #32]
    9150:	0a 00 00 90	adrp	x10, 0 ; 0x9000
    9154:	4a 01 07 91	add	x10, x10, #448
    9158:	0b 00 00 10	adr	x11, #0
    915c:	4c 79 a9 b8	ldrsw	x12, [x10, x9, lsl #2]
    9160:	6b 01 0c 8b	add	x11, x11, x12
    9164:	60 01 1f d6	br	x11
    9168:	68 00 80 52	mov	w8, #3
    916c:	07 00 00 14	b	0x9188
    9170:	48 00 80 52	mov	w8, #2
    9174:	05 00 00 14	b	0x9188
    9178:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    917c:	e9 1f 82 52	mov	w9, #4351
    9180:	09 11 00 f9	str	x9, [x8, #32]
    9184:	28 00 80 52	mov	w8, #1
    9188:	01 7c 5f d3	ubfx	x1, x0, #31, #1
    918c:	e0 03 08 aa	mov	x0, x8
    9190:	02 00 80 d2	mov	x2, #0
    9194:	60 00 1f d6	br	x3
    9198:	e8 03 00 aa	mov	x8, x0
    919c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    91a0:	14 00 00 f0	adrp	x20, 3 ; 0xc000
    91a4:	94 6a 1a 91	add	x20, x20, #1690 ; literal pool for: "BUG IN LIBPTHREAD: Invalid pthread priority for the legacy interface"
    91a8:	55 00 00 f0	adrp	x21, 11 ; 0x14000
    91ac:	b5 22 00 91	add	x21, x21, #8
    91b0:	b4 06 00 f9	str	x20, [x21, #8]
    91b4:	a8 1e 00 f9	str	x8, [x21, #56]
    91b8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    91bc:	20 00 20 d4	brk	#0x1
    91c0:	10 00 00 00	udf	#16
    91c4:	18 00 00 00	udf	#24
    91c8:	20 00 00 00	udf	#32
    91cc:	30 00 00 00	udf	#48
_pthread_workqueue_setdispatchoffset_np:
    91d0:	e2 03 00 aa	mov	x2, x0
    91d4:	00 02 80 52	mov	w0, #16
    91d8:	01 00 80 d2	mov	x1, #0
    91dc:	03 00 80 52	mov	w3, #0
    91e0:	68 0a 00 14	b	0xbb80 ; symbol stub for: ___workq_kernreturn
__pthread_workqueue_init_with_kevent:
    91e4:	ff 03 01 d1	sub	sp, sp, #64
    91e8:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    91ec:	fd c3 00 91	add	x29, sp, #48
    91f0:	48 00 c0 d2	mov	x8, #8589934592
    91f4:	e8 07 00 a9	stp	x8, x1, [sp]
    91f8:	ff 03 01 a9	stp	xzr, x0, [sp, #16]
    91fc:	48 7c 40 93	sxtw	x8, w2
    9200:	e8 7f 02 a9	stp	x8, xzr, [sp, #32]
    9204:	e0 03 00 91	mov	x0, sp
    9208:	01 06 80 52	mov	w1, #48
    920c:	e9 e8 ff 97	bl	_pthread_workqueue_setup
    9210:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    9214:	ff 03 01 91	add	sp, sp, #64
    9218:	c0 03 5f d6	ret
_pthread_workqueue_addthreads_np:
    921c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    9220:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    9224:	fd 43 00 91	add	x29, sp, #16
    9228:	e8 00 00 f0	adrp	x8, 31 ; 0x28000
    922c:	08 11 40 f9	ldr	x8, [x8, #32]
    9230:	28 02 00 b4	cbz	x8, 0x9274
    9234:	f3 03 02 aa	mov	x19, x2
    9238:	00 2c 00 12	and	w0, w0, #0xfff
    923c:	28 00 01 53	lsl	w8, w1, #31
    9240:	01 7d 40 93	sxtw	x1, w8
    9244:	e9 f8 ff 97	bl	__pthread_qos_class_encode_workqueue
    9248:	e3 03 00 aa	mov	x3, x0
    924c:	00 04 80 52	mov	w0, #32
    9250:	01 00 80 d2	mov	x1, #0
    9254:	e2 03 13 aa	mov	x2, x19
    9258:	4a 0a 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    925c:	1f 04 00 31	cmn	w0, #1
    9260:	c1 00 00 54	b.ne	0x9278
    9264:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    9268:	08 05 40 f9	ldr	x8, [x8, #8]
    926c:	00 01 40 b9	ldr	w0, [x8]
    9270:	02 00 00 14	b	0x9278
    9274:	20 00 80 52	mov	w0, #1
    9278:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    927c:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    9280:	c0 03 5f d6	ret
__pthread_workqueue_add_cooperativethreads:
    9284:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    9288:	fd 03 00 91	mov	x29, sp
    928c:	e8 00 00 f0	adrp	x8, 31 ; 0x28000
    9290:	08 11 40 f9	ldr	x8, [x8, #32]
    9294:	88 01 00 b4	cbz	x8, 0x92c4
    9298:	e3 03 01 aa	mov	x3, x1
    929c:	e2 03 00 aa	mov	x2, x0
    92a0:	00 06 80 52	mov	w0, #48
    92a4:	01 00 80 d2	mov	x1, #0
    92a8:	36 0a 00 94	bl	0xbb80 ; symbol stub for: ___workq_kernreturn
    92ac:	1f 04 00 31	cmn	w0, #1
    92b0:	c1 00 00 54	b.ne	0x92c8
    92b4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    92b8:	08 05 40 f9	ldr	x8, [x8, #8]
    92bc:	00 01 40 b9	ldr	w0, [x8]
    92c0:	02 00 00 14	b	0x92c8
    92c4:	20 00 80 52	mov	w0, #1
    92c8:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    92cc:	c0 03 5f d6	ret
__pthread_workqueue_allow_send_signals:
    92d0:	08 04 00 51	sub	w8, w0, #1
    92d4:	29 00 80 52	mov	w9, #1
    92d8:	21 21 c8 1a	lsl	w1, w9, w8
    92dc:	00 00 88 52	mov	w0, #16384
    92e0:	02 00 80 d2	mov	x2, #0
    92e4:	03 00 80 d2	mov	x3, #0
    92e8:	cf 09 00 14	b	0xba24 ; symbol stub for: ___bsdthread_ctl
__pthread_workloop_destroy:
    92ec:	ff 03 01 d1	sub	sp, sp, #64
    92f0:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    92f4:	fd c3 00 91	add	x29, sp, #48
    92f8:	08 00 00 d0	adrp	x8, 2 ; 0xb000
    92fc:	00 e5 46 fd	ldr	d0, [x8, #3528]
    9300:	e0 07 00 fd	str	d0, [sp, #8]
    9304:	e0 7f 01 a9	stp	x0, xzr, [sp, #16]
    9308:	ff 13 00 f9	str	xzr, [sp, #32]
    930c:	ff 2b 00 b9	str	wzr, [sp, #40]
    9310:	e2 23 00 91	add	x2, sp, #8
    9314:	40 00 80 52	mov	w0, #2
    9318:	01 00 80 d2	mov	x1, #0
    931c:	83 04 80 52	mov	w3, #36
    9320:	d0 09 00 94	bl	0xba60 ; symbol stub for: ___kqueue_workloop_ctl
    9324:	1f 04 00 31	cmn	w0, #1
    9328:	81 00 00 54	b.ne	0x9338
    932c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    9330:	08 05 40 f9	ldr	x8, [x8, #8]
    9334:	00 01 40 b9	ldr	w0, [x8]
    9338:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    933c:	ff 03 01 91	add	sp, sp, #64
    9340:	c0 03 5f d6	ret
_pthread_introspection_hook_install:
    9344:	e1 03 00 aa	mov	x1, x0
    9348:	a0 00 00 f0	adrp	x0, 23 ; 0x20000
    934c:	00 c0 00 91	add	x0, x0, #48
    9350:	67 08 00 14	b	__pthread_atomic_xchg_ptr
_bzero:
    9354:	20 0a 00 14	b	0xbbd4 ; symbol stub for: __platform_bzero
__pthread_introspection_hook_callout_thread_create:
    9358:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    935c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    9360:	fd 43 00 91	add	x29, sp, #16
    9364:	e1 03 00 aa	mov	x1, x0
    9368:	28 00 00 f0	adrp	x8, 7 ; 0x10000
    936c:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    9370:	08 01 40 f9	ldr	x8, [x8]
    9374:	09 1c 83 52	mov	w9, #6368
    9378:	ea 03 28 2a	mvn	w10, w8
    937c:	4a 7d 40 93	sxtw	x10, w10
    9380:	08 01 09 8b	add	x8, x8, x9
    9384:	43 01 08 8a	and	x3, x10, x8
    9388:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    938c:	74 22 55 78	ldurh	w20, [x19, #-174]
    9390:	28 00 80 52	mov	w8, #1
    9394:	68 22 15 78	sturh	w8, [x19, #-174]
    9398:	a8 00 00 f0	adrp	x8, 23 ; 0x20000
    939c:	08 19 40 f9	ldr	x8, [x8, #48]
    93a0:	20 00 80 52	mov	w0, #1
    93a4:	e2 03 01 aa	mov	x2, x1
    93a8:	00 01 3f d6	blr	x8
    93ac:	74 22 15 78	sturh	w20, [x19, #-174]
    93b0:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    93b4:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    93b8:	c0 03 5f d6	ret
__pthread_introspection_hook_callout_thread_terminate:
    93bc:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    93c0:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    93c4:	fd 43 00 91	add	x29, sp, #16
    93c8:	e1 03 00 aa	mov	x1, x0
    93cc:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    93d0:	08 25 40 f9	ldr	x8, [x8, #72]
    93d4:	1f 01 00 eb	cmp	x8, x0
    93d8:	80 01 00 54	b.eq	0x9408
    93dc:	28 00 00 f0	adrp	x8, 7 ; 0x10000
    93e0:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    93e4:	08 01 40 f9	ldr	x8, [x8]
    93e8:	09 1c 83 52	mov	w9, #6368
    93ec:	ea 03 28 2a	mvn	w10, w8
    93f0:	4a 7d 40 93	sxtw	x10, w10
    93f4:	08 01 09 8b	add	x8, x8, x9
    93f8:	48 01 08 8a	and	x8, x10, x8
    93fc:	22 24 4c a9	ldp	x2, x9, [x1, #192]
    9400:	23 01 08 cb	sub	x3, x9, x8
    9404:	06 00 00 14	b	0x941c
    9408:	28 24 4b a9	ldp	x8, x9, [x1, #176]
    940c:	2a 68 40 f9	ldr	x10, [x1, #208]
    9410:	09 01 09 cb	sub	x9, x8, x9
    9414:	23 01 0a 8b	add	x3, x9, x10
    9418:	02 01 03 cb	sub	x2, x8, x3
    941c:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    9420:	74 22 55 78	ldurh	w20, [x19, #-174]
    9424:	68 00 80 52	mov	w8, #3
    9428:	68 22 15 78	sturh	w8, [x19, #-174]
    942c:	a8 00 00 f0	adrp	x8, 23 ; 0x20000
    9430:	08 19 40 f9	ldr	x8, [x8, #48]
    9434:	60 00 80 52	mov	w0, #3
    9438:	00 01 3f d6	blr	x8
    943c:	74 22 15 78	sturh	w20, [x19, #-174]
    9440:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    9444:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    9448:	c0 03 5f d6	ret
__pthread_jit_write_protect_bulk_image_load_callback:
    944c:	ff c3 01 d1	sub	sp, sp, #112
    9450:	fc 6f 01 a9	stp	x28, x27, [sp, #16]
    9454:	fa 67 02 a9	stp	x26, x25, [sp, #32]
    9458:	f8 5f 03 a9	stp	x24, x23, [sp, #48]
    945c:	f6 57 04 a9	stp	x22, x21, [sp, #64]
    9460:	f4 4f 05 a9	stp	x20, x19, [sp, #80]
    9464:	fd 7b 06 a9	stp	x29, x30, [sp, #96]
    9468:	fd 83 01 91	add	x29, sp, #96
    946c:	f3 03 01 aa	mov	x19, x1
    9470:	f4 03 00 aa	mov	x20, x0
    9474:	96 00 00 f0	adrp	x22, 19 ; 0x1c000
    9478:	c8 06 40 39	ldrb	w8, [x22, #1]
    947c:	a8 00 00 34	cbz	w8, 0x9490
    9480:	a0 00 00 f0	adrp	x0, 23 ; 0x20000
    9484:	00 00 00 91	add	x0, x0, #0
    9488:	a1 00 a0 52	mov	w1, #327680
    948c:	17 0a 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    9490:	88 00 00 f0	adrp	x8, 19 ; 0x1c000
    9494:	08 09 40 39	ldrb	w8, [x8, #2]
    9498:	1f 01 00 71	cmp	w8, #0
    949c:	84 0a 40 7a	ccmp	w20, #0, #4, eq
    94a0:	80 05 00 54	b.eq	0x9550
    94a4:	17 00 80 d2	mov	x23, #0
    94a8:	f8 03 14 2a	mov	w24, w20
    94ac:	14 00 00 f0	adrp	x20, 3 ; 0xc000
    94b0:	94 d6 16 91	add	x20, x20, #1461 ; literal pool for: "__DATA_CONST"
    94b4:	15 00 00 f0	adrp	x21, 3 ; 0xc000
    94b8:	b5 0a 17 91	add	x21, x21, #1474 ; literal pool for: "__pth_jit_func"
    94bc:	99 00 00 f0	adrp	x25, 19 ; 0x1c000
    94c0:	fa ff 80 52	mov	w26, #2047
    94c4:	9b 00 00 f0	adrp	x27, 19 ; 0x1c000
    94c8:	7b 03 00 91	add	x27, x27, #0
    94cc:	60 7a 77 f8	ldr	x0, [x19, x23, lsl #3]
    94d0:	08 18 40 b9	ldr	w8, [x0, #24]
    94d4:	88 03 f8 37	tbnz	w8, #31, 0x9544
    94d8:	ff 07 00 f9	str	xzr, [sp, #8]
    94dc:	e3 23 00 91	add	x3, sp, #8
    94e0:	e1 03 14 aa	mov	x1, x20
    94e4:	e2 03 15 aa	mov	x2, x21
    94e8:	d9 09 00 94	bl	0xbc4c ; symbol stub for: _getsectiondata
    94ec:	e9 07 40 f9	ldr	x9, [sp, #8]
    94f0:	28 09 40 92	and	x8, x9, #0x7
    94f4:	1f 00 00 f1	cmp	x0, #0
    94f8:	24 19 40 fa	ccmp	x9, #0, #4, ne
    94fc:	00 19 40 fa	ccmp	x8, #0, #0, ne
    9500:	20 09 48 fa	ccmp	x9, #8, #0, eq
    9504:	03 02 00 54	b.lo	0x9544
    9508:	28 07 40 b9	ldr	w8, [x25, #4]
    950c:	29 fd 43 d3	lsr	x9, x9, #3
    9510:	4a 03 08 6b	subs	w10, w26, w8
    9514:	ea 33 8a 1a	csel	w10, wzr, w10, lo
    9518:	0b 00 40 f9	ldr	x11, [x0]
    951c:	4b 01 00 b4	cbz	x11, 0x9544
    9520:	2a 03 00 b4	cbz	x10, 0x9584
    9524:	6c 0f 08 8b	add	x12, x27, x8, lsl #3
    9528:	8b 05 00 f9	str	x11, [x12, #8]
    952c:	08 05 00 91	add	x8, x8, #1
    9530:	68 07 00 b9	str	w8, [x27, #4]
    9534:	4a 05 00 d1	sub	x10, x10, #1
    9538:	00 20 00 91	add	x0, x0, #8
    953c:	29 05 00 f1	subs	x9, x9, #1
    9540:	c1 fe ff 54	b.ne	0x9518
    9544:	f7 06 00 91	add	x23, x23, #1
    9548:	ff 02 18 eb	cmp	x23, x24
    954c:	01 fc ff 54	b.ne	0x94cc
    9550:	c8 06 40 39	ldrb	w8, [x22, #1]
    9554:	88 00 00 34	cbz	w8, 0x9564
    9558:	a0 00 00 f0	adrp	x0, 23 ; 0x20000
    955c:	00 00 00 91	add	x0, x0, #0
    9560:	e5 09 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    9564:	fd 7b 46 a9	ldp	x29, x30, [sp, #96]
    9568:	f4 4f 45 a9	ldp	x20, x19, [sp, #80]
    956c:	f6 57 44 a9	ldp	x22, x21, [sp, #64]
    9570:	f8 5f 43 a9	ldp	x24, x23, [sp, #48]
    9574:	fa 67 42 a9	ldp	x26, x25, [sp, #32]
    9578:	fc 6f 41 a9	ldp	x28, x27, [sp, #16]
    957c:	ff c3 01 91	add	sp, sp, #112
    9580:	c0 03 5f d6	ret
    9584:	e0 03 08 aa	mov	x0, x8
    9588:	ac 08 00 94	bl	__pthread_jit_write_protect_bulk_image_load_callback.cold.1
__pthread_introspection_hook_callout_thread_start:
    958c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    9590:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    9594:	fd 43 00 91	add	x29, sp, #16
    9598:	e1 03 00 aa	mov	x1, x0
    959c:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    95a0:	08 25 40 f9	ldr	x8, [x8, #72]
    95a4:	1f 01 00 eb	cmp	x8, x0
    95a8:	80 01 00 54	b.eq	0x95d8
    95ac:	28 00 00 f0	adrp	x8, 7 ; 0x10000
    95b0:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    95b4:	08 01 40 f9	ldr	x8, [x8]
    95b8:	09 1c 83 52	mov	w9, #6368
    95bc:	ea 03 28 2a	mvn	w10, w8
    95c0:	4a 7d 40 93	sxtw	x10, w10
    95c4:	08 01 09 8b	add	x8, x8, x9
    95c8:	48 01 08 8a	and	x8, x10, x8
    95cc:	22 24 4c a9	ldp	x2, x9, [x1, #192]
    95d0:	23 01 08 cb	sub	x3, x9, x8
    95d4:	06 00 00 14	b	0x95ec
    95d8:	28 24 4b a9	ldp	x8, x9, [x1, #176]
    95dc:	2a 68 40 f9	ldr	x10, [x1, #208]
    95e0:	09 01 09 cb	sub	x9, x8, x9
    95e4:	23 01 0a 8b	add	x3, x9, x10
    95e8:	02 01 03 cb	sub	x2, x8, x3
    95ec:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    95f0:	74 22 55 78	ldurh	w20, [x19, #-174]
    95f4:	48 00 80 52	mov	w8, #2
    95f8:	68 22 15 78	sturh	w8, [x19, #-174]
    95fc:	a8 00 00 f0	adrp	x8, 23 ; 0x20000
    9600:	08 19 40 f9	ldr	x8, [x8, #48]
    9604:	40 00 80 52	mov	w0, #2
    9608:	00 01 3f d6	blr	x8
    960c:	74 22 15 78	sturh	w20, [x19, #-174]
    9610:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    9614:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    9618:	c0 03 5f d6	ret
__pthread_introspection_hook_callout_thread_destroy:
    961c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    9620:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    9624:	fd 43 00 91	add	x29, sp, #16
    9628:	e1 03 00 aa	mov	x1, x0
    962c:	28 00 00 f0	adrp	x8, 7 ; 0x10000
    9630:	08 2d 41 f9	ldr	x8, [x8, #600] ; literal pool symbol address: _vm_page_mask
    9634:	08 01 40 f9	ldr	x8, [x8]
    9638:	09 1c 83 52	mov	w9, #6368
    963c:	ea 03 28 2a	mvn	w10, w8
    9640:	4a 7d 40 93	sxtw	x10, w10
    9644:	08 01 09 8b	add	x8, x8, x9
    9648:	43 01 08 8a	and	x3, x10, x8
    964c:	73 d0 3b d5	mrs	x19, TPIDRRO_EL0
    9650:	74 22 55 78	ldurh	w20, [x19, #-174]
    9654:	88 00 80 52	mov	w8, #4
    9658:	68 22 15 78	sturh	w8, [x19, #-174]
    965c:	a8 00 00 f0	adrp	x8, 23 ; 0x20000
    9660:	08 19 40 f9	ldr	x8, [x8, #48]
    9664:	80 00 80 52	mov	w0, #4
    9668:	e2 03 01 aa	mov	x2, x1
    966c:	00 01 3f d6	blr	x8
    9670:	74 22 15 78	sturh	w20, [x19, #-174]
    9674:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    9678:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    967c:	c0 03 5f d6	ret
_OUTLINED_FUNCTION_0:
_OUTLINED_FUNCTION_0:
_OUTLINED_FUNCTION_0:
    9680:	40 02 80 52	mov	w0, #18
    9684:	81 00 80 52	mov	w1, #4
    9688:	03 00 80 d2	mov	x3, #0
    968c:	67 09 00 14	b	0xbc28 ; symbol stub for: _abort_with_reason
_pthread_cancel:
    9690:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    9694:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    9698:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    969c:	fd 83 00 91	add	x29, sp, #32
    96a0:	f3 03 00 aa	mov	x19, x0
    96a4:	74 d0 3b d5	mrs	x20, TPIDRRO_EL0
    96a8:	88 82 03 d1	sub	x8, x20, #224
    96ac:	1f 01 00 eb	cmp	x8, x0
    96b0:	c0 03 00 54	b.eq	0x9728
    96b4:	73 03 00 b4	cbz	x19, 0x9720
    96b8:	08 00 80 52	mov	w8, #0
    96bc:	89 1a 40 b9	ldr	w9, [x20, #24]
    96c0:	d5 00 00 f0	adrp	x21, 27 ; 0x24000
    96c4:	b5 12 01 91	add	x21, x21, #68
    96c8:		.long	0x88e87ea9
    96cc:	1f 01 00 71	cmp	w8, #0
    96d0:	a0 00 00 54	b.eq	0x96e4
    96d4:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    96d8:	00 10 01 91	add	x0, x0, #68
    96dc:	a1 00 a0 52	mov	w1, #327680
    96e0:	82 09 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    96e4:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    96e8:	08 01 40 f9	ldr	x8, [x8]
    96ec:	a8 00 00 b4	cbz	x8, 0x9700
    96f0:	1f 01 13 eb	cmp	x8, x19
    96f4:	60 04 00 54	b.eq	0x9780
    96f8:	08 09 40 f9	ldr	x8, [x8, #16]
    96fc:	a8 ff ff b5	cbnz	x8, 0x96f0
    9700:	88 1a 40 b9	ldr	w8, [x20, #24]
    9704:	e9 03 08 aa	mov	x9, x8
    9708:		.long	0x88a9febf
    970c:	3f 01 08 6b	cmp	w9, w8
    9710:	80 00 00 54	b.eq	0x9720
    9714:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9718:	00 10 01 91	add	x0, x0, #68
    971c:	76 09 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    9720:	60 00 80 52	mov	w0, #3
    9724:	13 00 00 14	b	0x9770
    9728:	68 02 40 f9	ldr	x8, [x19]
    972c:	c9 00 00 f0	adrp	x9, 27 ; 0x24000
    9730:	29 35 40 f9	ldr	x9, [x9, #104]
    9734:	28 01 08 ca	eor	x8, x9, x8
    9738:	1f 01 13 eb	cmp	x8, x19
    973c:	01 04 00 54	b.ne	0x97bc
    9740:	68 9e 40 79	ldrh	w8, [x19, #78]
    9744:	48 01 50 37	tbnz	w8, #10, 0x976c
    9748:	68 9a 02 91	add	x8, x19, #166
    974c:	09 02 80 52	mov	w9, #16
    9750:		.long	0x78293108
    9754:	88 00 00 36	tbz	w8, #0, 0x9764
    9758:	60 fa 40 b9	ldr	w0, [x19, #248]
    975c:	a0 00 00 34	cbz	w0, 0x9770
    9760:	ed 08 00 94	bl	0xbb14 ; symbol stub for: ___pthread_markcancel
    9764:	00 00 80 52	mov	w0, #0
    9768:	02 00 00 14	b	0x9770
    976c:	a0 05 80 52	mov	w0, #45
    9770:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    9774:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    9778:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    977c:	c0 03 5f d6	ret
    9780:	68 02 40 f9	ldr	x8, [x19]
    9784:	c9 00 00 f0	adrp	x9, 27 ; 0x24000
    9788:	29 35 40 f9	ldr	x9, [x9, #104]
    978c:	28 01 08 ca	eor	x8, x9, x8
    9790:	1f 01 13 eb	cmp	x8, x19
    9794:	61 01 00 54	b.ne	0x97c0
    9798:	88 1a 40 b9	ldr	w8, [x20, #24]
    979c:	e9 03 08 aa	mov	x9, x8
    97a0:		.long	0x88a9febf
    97a4:	3f 01 08 6b	cmp	w9, w8
    97a8:	c0 fc ff 54	b.eq	0x9740
    97ac:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    97b0:	00 10 01 91	add	x0, x0, #68
    97b4:	50 09 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    97b8:	e2 ff ff 17	b	0x9740
    97bc:	60 07 00 94	bl	_pthread_mach_thread_np.cold.1
    97c0:	5f 07 00 94	bl	_pthread_mach_thread_np.cold.1
__pthread_join:
    97c4:	ff c3 01 d1	sub	sp, sp, #112
    97c8:	fa 67 02 a9	stp	x26, x25, [sp, #32]
    97cc:	f8 5f 03 a9	stp	x24, x23, [sp, #48]
    97d0:	f6 57 04 a9	stp	x22, x21, [sp, #64]
    97d4:	f4 4f 05 a9	stp	x20, x19, [sp, #80]
    97d8:	fd 7b 06 a9	stp	x29, x30, [sp, #96]
    97dc:	fd 83 01 91	add	x29, sp, #96
    97e0:	77 d0 3b d5	mrs	x23, TPIDRRO_EL0
    97e4:	f5 82 03 d1	sub	x21, x23, #224
    97e8:	f5 07 00 a9	stp	x21, x1, [sp]
    97ec:	ff 0b 00 f9	str	xzr, [sp, #16]
    97f0:	e0 03 00 b4	cbz	x0, 0x986c
    97f4:	f4 03 02 aa	mov	x20, x2
    97f8:	f6 03 01 aa	mov	x22, x1
    97fc:	f3 03 00 aa	mov	x19, x0
    9800:	08 00 80 52	mov	w8, #0
    9804:	ff 0f 00 f9	str	xzr, [sp, #24]
    9808:	e9 1a 40 b9	ldr	w9, [x23, #24]
    980c:	d8 00 00 f0	adrp	x24, 27 ; 0x24000
    9810:	18 13 01 91	add	x24, x24, #68
    9814:		.long	0x88e87f09
    9818:	1f 01 00 71	cmp	w8, #0
    981c:	a0 00 00 54	b.eq	0x9830
    9820:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9824:	00 10 01 91	add	x0, x0, #68
    9828:	a1 00 a0 52	mov	w1, #327680
    982c:	2f 09 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    9830:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    9834:	08 01 40 f9	ldr	x8, [x8]
    9838:	a8 00 00 b4	cbz	x8, 0x984c
    983c:	1f 01 13 eb	cmp	x8, x19
    9840:	80 02 00 54	b.eq	0x9890
    9844:	08 09 40 f9	ldr	x8, [x8, #16]
    9848:	a8 ff ff b5	cbnz	x8, 0x983c
    984c:	e8 1a 40 b9	ldr	w8, [x23, #24]
    9850:	e9 03 08 aa	mov	x9, x8
    9854:		.long	0x88a9ff1f
    9858:	3f 01 08 6b	cmp	w9, w8
    985c:	80 00 00 54	b.eq	0x986c
    9860:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9864:	00 10 01 91	add	x0, x0, #68
    9868:	23 09 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    986c:	75 00 80 52	mov	w21, #3
    9870:	e0 03 15 aa	mov	x0, x21
    9874:	fd 7b 46 a9	ldp	x29, x30, [sp, #96]
    9878:	f4 4f 45 a9	ldp	x20, x19, [sp, #80]
    987c:	f6 57 44 a9	ldp	x22, x21, [sp, #64]
    9880:	f8 5f 43 a9	ldp	x24, x23, [sp, #48]
    9884:	fa 67 42 a9	ldp	x26, x25, [sp, #32]
    9888:	ff c3 01 91	add	sp, sp, #112
    988c:	c0 03 5f d6	ret
    9890:	69 02 40 f9	ldr	x9, [x19]
    9894:	c8 00 00 f0	adrp	x8, 27 ; 0x24000
    9898:	08 35 40 f9	ldr	x8, [x8, #104]
    989c:	09 01 09 ca	eor	x9, x8, x9
    98a0:	3f 01 13 eb	cmp	x9, x19
    98a4:	21 16 00 54	b.ne	0x9b68
    98a8:	a9 02 40 f9	ldr	x9, [x21]
    98ac:	08 01 09 ca	eor	x8, x8, x9
    98b0:	1f 01 15 eb	cmp	x8, x21
    98b4:	a1 15 00 54	b.ne	0x9b68
    98b8:	68 c6 40 39	ldrb	w8, [x19, #49]
    98bc:	68 00 00 36	tbz	w8, #0, 0x98c8
    98c0:	69 12 40 f9	ldr	x9, [x19, #32]
    98c4:	89 05 00 b4	cbz	x9, 0x9974
    98c8:	16 00 80 52	mov	w22, #0
    98cc:	d5 02 80 52	mov	w21, #22
    98d0:	e8 1a 40 b9	ldr	w8, [x23, #24]
    98d4:	e9 03 08 aa	mov	x9, x8
    98d8:		.long	0x88a9ff1f
    98dc:	3f 01 08 6b	cmp	w9, w8
    98e0:	80 00 00 54	b.eq	0x98f0
    98e4:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    98e8:	00 10 01 91	add	x0, x0, #68
    98ec:	02 09 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    98f0:	96 0c 00 34	cbz	w22, 0x9a80
    98f4:	e8 13 40 b9	ldr	w8, [sp, #16]
    98f8:	c8 0b 00 34	cbz	w8, 0x9a70
    98fc:	75 d2 00 91	add	x21, x19, #52
    9900:	48 00 80 52	mov	w8, #2
    9904:	08 20 a0 72	movk	w8, #256, lsl #16
    9908:	09 01 0f 32	orr	w9, w8, #0x20000
    990c:	9f 0a 00 71	cmp	w20, #2
    9910:	16 11 89 1a	csel	w22, w8, w9, ne
    9914:		.long	0xb8bfc2a2
    9918:	5f 04 00 31	cmn	w2, #1
    991c:	81 05 00 54	b.ne	0x99cc
    9920:	08 00 80 52	mov	w8, #0
    9924:	e9 1a 40 b9	ldr	w9, [x23, #24]
    9928:		.long	0x88e87f09
    992c:	1f 01 00 71	cmp	w8, #0
    9930:	a0 00 00 54	b.eq	0x9944
    9934:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9938:	00 10 01 91	add	x0, x0, #68
    993c:	a1 00 a0 52	mov	w1, #327680
    9940:	ea 08 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    9944:	e8 63 40 39	ldrb	w8, [sp, #24]
    9948:	e8 07 00 34	cbz	w8, 0x9a44
    994c:	15 00 80 52	mov	w21, #0
    9950:	e8 1a 40 b9	ldr	w8, [x23, #24]
    9954:	e9 03 08 aa	mov	x9, x8
    9958:		.long	0x88a9ff1f
    995c:	3f 01 08 6b	cmp	w9, w8
    9960:	00 09 00 54	b.eq	0x9a80
    9964:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9968:	00 10 01 91	add	x0, x0, #68
    996c:	e2 08 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    9970:	43 00 00 14	b	0x9a7c
    9974:	bf 02 13 eb	cmp	x21, x19
    9978:	e0 0a 00 54	b.eq	0x9ad4
    997c:	a9 12 40 f9	ldr	x9, [x21, #32]
    9980:	89 00 00 b4	cbz	x9, 0x9990
    9984:	29 01 40 f9	ldr	x9, [x9]
    9988:	3f 01 13 eb	cmp	x9, x19
    998c:	40 0a 00 54	b.eq	0x9ad4
    9990:	69 36 40 b9	ldr	w9, [x19, #52]
    9994:	3f 05 00 31	cmn	w9, #1
    9998:	40 0a 00 54	b.eq	0x9ae0
    999c:	69 fa 40 b9	ldr	w9, [x19, #248]
    99a0:	e9 13 00 b9	str	w9, [sp, #16]
    99a4:	69 36 00 b9	str	w9, [x19, #52]
    99a8:	e9 03 00 91	mov	x9, sp
    99ac:	69 12 00 f9	str	x9, [x19, #32]
    99b0:	28 0c 10 36	tbz	w8, #2, 0x9b34
    99b4:	e0 26 40 f9	ldr	x0, [x23, #72]
    99b8:	40 0e 00 b4	cbz	x0, 0x9b80
    99bc:	ff 26 00 f9	str	xzr, [x23, #72]
    99c0:	15 00 80 52	mov	w21, #0
    99c4:	e0 17 00 b9	str	w0, [sp, #20]
    99c8:	5c 00 00 14	b	0x9b38
    99cc:	39 02 80 52	mov	w25, #17
    99d0:	e8 13 40 b9	ldr	w8, [sp, #16]
    99d4:	5f 00 08 eb	cmp	x2, x8
    99d8:	41 0b 00 54	b.ne	0x9b40
    99dc:	e0 03 16 aa	mov	x0, x22
    99e0:	e1 03 15 aa	mov	x1, x21
    99e4:	03 00 80 52	mov	w3, #0
    99e8:	5d 08 00 94	bl	0xbb5c ; symbol stub for: ___ulock_wait
    99ec:	9f 0a 00 71	cmp	w20, #2
    99f0:	01 01 00 54	b.ne	0x9a10
    99f4:	1f 10 00 31	cmn	w0, #4
    99f8:	c1 00 00 54	b.ne	0x9a10
    99fc:	e8 03 40 f9	ldr	x8, [sp]
    9a00:	08 99 02 91	add	x8, x8, #166
    9a04:	08 fd df 48	ldarh	w8, [x8]
    9a08:	3f 03 28 6a	bics	wzr, w25, w8
    9a0c:	a0 00 00 54	b.eq	0x9a20
    9a10:		.long	0xb8bfc2a2
    9a14:	5f 04 00 31	cmn	w2, #1
    9a18:	c1 fd ff 54	b.ne	0x99d0
    9a1c:	c1 ff ff 17	b	0x9920
    9a20:	e1 03 00 91	mov	x1, sp
    9a24:	e0 03 13 aa	mov	x0, x19
    9a28:	6f 00 00 94	bl	__pthread_joiner_abort_wait
    9a2c:	20 ff ff 34	cbz	w0, 0x9a10
    9a30:	e8 03 40 f9	ldr	x8, [sp]
    9a34:	29 00 80 52	mov	w9, #1
    9a38:	09 95 02 39	strb	w9, [x8, #165]
    9a3c:	20 00 80 52	mov	w0, #1
    9a40:	72 ed ff 97	bl	_pthread_exit
    9a44:	7f 12 00 f9	str	xzr, [x19, #32]
    9a48:	74 c6 40 39	ldrb	w20, [x19, #49]
    9a4c:	e8 1a 40 b9	ldr	w8, [x23, #24]
    9a50:	e9 03 08 aa	mov	x9, x8
    9a54:		.long	0x88a9ff1f
    9a58:	3f 01 08 6b	cmp	w9, w8
    9a5c:	80 00 00 54	b.eq	0x9a6c
    9a60:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9a64:	00 10 01 91	add	x0, x0, #68
    9a68:	a3 08 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    9a6c:	94 00 08 36	tbz	w20, #1, 0x9a7c
    9a70:	e0 03 13 aa	mov	x0, x19
    9a74:	01 00 80 52	mov	w1, #0
    9a78:	03 f6 ff 97	bl	__pthread_deallocate
    9a7c:	15 00 80 52	mov	w21, #0
    9a80:	e8 17 40 b9	ldr	w8, [sp, #20]
    9a84:	b5 01 00 35	cbnz	w21, 0x9ab8
    9a88:	88 01 00 34	cbz	w8, 0x9ab8
    9a8c:	e9 63 40 39	ldrb	w9, [sp, #24]
    9a90:	49 01 00 35	cbnz	w9, 0x9ab8
    9a94:	e0 17 40 b9	ldr	w0, [sp, #20]
    9a98:	01 00 80 52	mov	w1, #0
    9a9c:	02 00 80 52	mov	w2, #0
    9aa0:	03 00 80 52	mov	w3, #0
    9aa4:	04 00 80 d2	mov	x4, #0
    9aa8:	05 00 80 52	mov	w5, #0
    9aac:	20 08 00 94	bl	0xbb2c ; symbol stub for: ___semwait_signal_nocancel
    9ab0:	20 ff ff 35	cbnz	w0, 0x9a94
    9ab4:	e8 17 40 b9	ldr	w8, [sp, #20]
    9ab8:	c8 ed ff 34	cbz	w8, 0x9870
    9abc:	e8 03 08 2a	mov	w8, w8
    9ac0:	e0 26 40 f9	ldr	x0, [x23, #72]
    9ac4:	e8 26 00 f9	str	x8, [x23, #72]
    9ac8:	40 ed ff b4	cbz	x0, 0x9870
    9acc:	3f 08 00 94	bl	0xbbc8 ; symbol stub for: __os_semaphore_dispose
    9ad0:	68 ff ff 17	b	0x9870
    9ad4:	16 00 80 52	mov	w22, #0
    9ad8:	75 01 80 52	mov	w21, #11
    9adc:	7d ff ff 17	b	0x98d0
    9ae0:	68 26 41 a9	ldp	x8, x9, [x19, #16]
    9ae4:	88 00 00 b4	cbz	x8, 0x9af4
    9ae8:	09 0d 00 f9	str	x9, [x8, #24]
    9aec:	69 0e 40 f9	ldr	x9, [x19, #24]
    9af0:	03 00 00 14	b	0x9afc
    9af4:	ca 00 00 f0	adrp	x10, 27 ; 0x24000
    9af8:	49 05 00 f9	str	x9, [x10, #8]
    9afc:	28 01 00 f9	str	x8, [x9]
    9b00:	68 c6 40 39	ldrb	w8, [x19, #49]
    9b04:	08 19 1f 12	and	w8, w8, #0xfe
    9b08:	68 c6 00 39	strb	w8, [x19, #49]
    9b0c:	56 01 00 b4	cbz	x22, 0x9b34
    9b10:	68 9a 02 91	add	x8, x19, #166
    9b14:	08 fd df 48	ldarh	w8, [x8]
    9b18:	29 02 80 52	mov	w9, #17
    9b1c:	3f 01 28 6a	bics	wzr, w9, w8
    9b20:	40 03 00 54	b.eq	0x9b88
    9b24:	68 16 40 f9	ldr	x8, [x19, #40]
    9b28:	15 00 80 52	mov	w21, #0
    9b2c:	c8 02 00 f9	str	x8, [x22]
    9b30:	02 00 00 14	b	0x9b38
    9b34:	15 00 80 52	mov	w21, #0
    9b38:	36 00 80 52	mov	w22, #1
    9b3c:	65 ff ff 17	b	0x98d0
    9b40:	e8 03 02 aa	mov	x8, x2
    9b44:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    9b48:	14 00 00 f0	adrp	x20, 3 ; 0xc000
    9b4c:	94 7e 1b 91	add	x20, x20, #1759 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_join() state corruption"
    9b50:	55 00 00 f0	adrp	x21, 11 ; 0x14000
    9b54:	b5 22 00 91	add	x21, x21, #8
    9b58:	b4 06 00 f9	str	x20, [x21, #8]
    9b5c:	a8 1e 00 f9	str	x8, [x21, #56]
    9b60:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    9b64:	20 00 20 d4	brk	#0x1
    9b68:	02 00 00 f0	adrp	x2, 3 ; 0xc000
    9b6c:	42 10 0e 91	add	x2, x2, #900 ; literal pool for: "pthread_t was corrupted"
    9b70:	40 02 80 52	mov	w0, #18
    9b74:	81 00 80 52	mov	w1, #4
    9b78:	03 00 80 d2	mov	x3, #0
    9b7c:	2b 08 00 94	bl	0xbc28 ; symbol stub for: _abort_with_reason
    9b80:	0f 08 00 94	bl	0xbbbc ; symbol stub for: __os_semaphore_create
    9b84:	8f ff ff 17	b	0x99c0
    9b88:	28 00 80 52	mov	w8, #1
    9b8c:	e7 ff ff 17	b	0x9b28
_pthread_cond_wait$NOCANCEL:
    9b90:	02 00 80 d2	mov	x2, #0
    9b94:	03 00 80 52	mov	w3, #0
    9b98:	24 00 80 52	mov	w4, #1
    9b9c:	15 f7 ff 17	b	__pthread_cond_wait
_pthread_cond_timedwait$NOCANCEL:
    9ba0:	03 00 80 52	mov	w3, #0
    9ba4:	24 00 80 52	mov	w4, #1
    9ba8:	12 f7 ff 17	b	__pthread_cond_wait
_sigwait$NOCANCEL:
    9bac:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    9bb0:	fd 03 00 91	mov	x29, sp
    9bb4:	e1 07 00 94	bl	0xbb38 ; symbol stub for: ___sigwait
    9bb8:	1f 04 00 31	cmn	w0, #1
    9bbc:	60 00 00 54	b.eq	0x9bc8
    9bc0:	00 00 80 52	mov	w0, #0
    9bc4:	06 00 00 14	b	0x9bdc
    9bc8:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    9bcc:	08 05 40 f9	ldr	x8, [x8, #8]
    9bd0:	08 01 40 b9	ldr	w8, [x8]
    9bd4:	1f 11 00 71	cmp	w8, #4
    9bd8:	e0 03 88 1a	csel	w0, wzr, w8, eq
    9bdc:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    9be0:	c0 03 5f d6	ret
__pthread_joiner_abort_wait:
    9be4:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    9be8:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    9bec:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    9bf0:	fd 83 00 91	add	x29, sp, #32
    9bf4:	f4 03 01 aa	mov	x20, x1
    9bf8:	f3 03 00 aa	mov	x19, x0
    9bfc:	08 00 80 52	mov	w8, #0
    9c00:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    9c04:	c9 1a 40 b9	ldr	w9, [x22, #24]
    9c08:	d5 00 00 f0	adrp	x21, 27 ; 0x24000
    9c0c:	b5 12 01 91	add	x21, x21, #68
    9c10:		.long	0x88e87ea9
    9c14:	1f 01 00 71	cmp	w8, #0
    9c18:	a0 00 00 54	b.eq	0x9c2c
    9c1c:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9c20:	00 10 01 91	add	x0, x0, #68
    9c24:	a1 00 a0 52	mov	w1, #327680
    9c28:	30 08 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    9c2c:	88 62 40 39	ldrb	w8, [x20, #24]
    9c30:	68 00 00 34	cbz	w8, 0x9c3c
    9c34:	13 00 80 52	mov	w19, #0
    9c38:	07 00 00 14	b	0x9c54
    9c3c:	68 36 40 b9	ldr	w8, [x19, #52]
    9c40:	1f 05 00 31	cmn	w8, #1
    9c44:	80 ff ff 54	b.eq	0x9c34
    9c48:	7f 12 00 f9	str	xzr, [x19, #32]
    9c4c:	7f 36 00 b9	str	wzr, [x19, #52]
    9c50:	33 00 80 52	mov	w19, #1
    9c54:	c8 1a 40 b9	ldr	w8, [x22, #24]
    9c58:	e9 03 08 aa	mov	x9, x8
    9c5c:		.long	0x88a9febf
    9c60:	3f 01 08 6b	cmp	w9, w8
    9c64:	80 00 00 54	b.eq	0x9c74
    9c68:	c0 00 00 f0	adrp	x0, 27 ; 0x24000
    9c6c:	00 10 01 91	add	x0, x0, #68
    9c70:	21 08 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    9c74:	e0 03 13 aa	mov	x0, x19
    9c78:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    9c7c:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    9c80:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    9c84:	c0 03 5f d6	ret
_pthread_condattr_init:
    9c88:	28 88 88 52	mov	w8, #17473
    9c8c:	c8 69 a8 72	movk	w8, #17230, lsl #16
    9c90:	08 00 00 f9	str	x8, [x0]
    9c94:	08 08 40 b9	ldr	w8, [x0, #8]
    9c98:	08 75 1e 12	and	w8, w8, #0xfffffffc
    9c9c:	08 01 1f 32	orr	w8, w8, #0x2
    9ca0:	08 08 00 b9	str	w8, [x0, #8]
    9ca4:	00 00 80 52	mov	w0, #0
    9ca8:	c0 03 5f d6	ret
_pthread_condattr_destroy:
    9cac:	1f 00 00 f9	str	xzr, [x0]
    9cb0:	00 00 80 52	mov	w0, #0
    9cb4:	c0 03 5f d6	ret
_pthread_condattr_getpshared:
    9cb8:	09 00 40 f9	ldr	x9, [x0]
    9cbc:	2a 88 88 52	mov	w10, #17473
    9cc0:	ca 69 a8 72	movk	w10, #17230, lsl #16
    9cc4:	3f 01 0a eb	cmp	x9, x10
    9cc8:	e1 00 00 54	b.ne	0x9ce4
    9ccc:	e8 03 00 aa	mov	x8, x0
    9cd0:	00 00 80 52	mov	w0, #0
    9cd4:	08 09 40 b9	ldr	w8, [x8, #8]
    9cd8:	08 05 00 12	and	w8, w8, #0x3
    9cdc:	28 00 00 b9	str	w8, [x1]
    9ce0:	c0 03 5f d6	ret
    9ce4:	c0 02 80 52	mov	w0, #22
    9ce8:	c0 03 5f d6	ret
_pthread_condattr_setpshared:
    9cec:	e8 03 00 aa	mov	x8, x0
    9cf0:	29 04 00 51	sub	w9, w1, #1
    9cf4:	c0 02 80 52	mov	w0, #22
    9cf8:	3f 05 00 71	cmp	w9, #1
    9cfc:	68 01 00 54	b.hi	0x9d28
    9d00:	09 01 40 f9	ldr	x9, [x8]
    9d04:	2a 88 88 52	mov	w10, #17473
    9d08:	ca 69 a8 72	movk	w10, #17230, lsl #16
    9d0c:	3f 01 0a eb	cmp	x9, x10
    9d10:	c1 00 00 54	b.ne	0x9d28
    9d14:	00 00 80 52	mov	w0, #0
    9d18:	09 09 40 b9	ldr	w9, [x8, #8]
    9d1c:	29 75 1e 12	and	w9, w9, #0xfffffffc
    9d20:	29 01 01 2a	orr	w9, w9, w1
    9d24:	09 09 00 b9	str	w9, [x8, #8]
    9d28:	c0 03 5f d6	ret
_pthread_cond_signal_thread_np:
    9d2c:	ff c3 01 d1	sub	sp, sp, #112
    9d30:	fc 6f 01 a9	stp	x28, x27, [sp, #16]
    9d34:	fa 67 02 a9	stp	x26, x25, [sp, #32]
    9d38:	f8 5f 03 a9	stp	x24, x23, [sp, #48]
    9d3c:	f6 57 04 a9	stp	x22, x21, [sp, #64]
    9d40:	f4 4f 05 a9	stp	x20, x19, [sp, #80]
    9d44:	fd 7b 06 a9	stp	x29, x30, [sp, #96]
    9d48:	fd 83 01 91	add	x29, sp, #96
    9d4c:	f3 03 00 aa	mov	x19, x0
    9d50:	a1 00 00 b4	cbz	x1, 0x9d64
    9d54:	e0 03 01 aa	mov	x0, x1
    9d58:	72 e5 ff 97	bl	_pthread_mach_thread_np
    9d5c:	f4 03 00 aa	mov	x20, x0
    9d60:	02 00 00 14	b	0x9d68
    9d64:	14 00 80 52	mov	w20, #0
    9d68:	95 c8 89 52	mov	w21, #20036
    9d6c:	f5 69 a8 72	movk	w21, #17231, lsl #16
    9d70:	f5 0f 00 b9	str	w21, [sp, #12]
    9d74:	68 02 40 b9	ldr	w8, [x19]
    9d78:	69 37 96 52	mov	w9, #45499
    9d7c:	09 96 b7 72	movk	w9, #48304, lsl #16
    9d80:	09 01 09 0b	add	w9, w8, w9
    9d84:	3f 09 00 71	cmp	w9, #2
    9d88:	63 01 00 54	b.lo	0x9db4
    9d8c:	69 37 96 52	mov	w9, #45499
    9d90:	09 96 a7 72	movk	w9, #15536, lsl #16
    9d94:	1f 01 09 6b	cmp	w8, w9
    9d98:	60 01 00 54	b.eq	0x9dc4
    9d9c:	c9 02 80 52	mov	w9, #22
    9da0:	8a c8 89 52	mov	w10, #20036
    9da4:	ea 69 a8 72	movk	w10, #17231, lsl #16
    9da8:	1f 01 0a 6b	cmp	w8, w10
    9dac:	20 11 9f 1a	csel	w0, w9, wzr, ne
    9db0:	b2 00 00 14	b	0xa078
    9db4:	00 00 80 52	mov	w0, #0
    9db8:	e8 0f 00 b9	str	w8, [sp, #12]
    9dbc:	e0 00 00 34	cbz	w0, 0x9dd8
    9dc0:	ae 00 00 14	b	0xa078
    9dc4:	e1 33 00 91	add	x1, sp, #12
    9dc8:	e0 03 13 aa	mov	x0, x19
    9dcc:	dc e3 ff 97	bl	__pthread_cond_check_init_slow
    9dd0:	e8 0f 40 b9	ldr	w8, [sp, #12]
    9dd4:	20 15 00 35	cbnz	w0, 0xa078
    9dd8:	1f 01 15 6b	cmp	w8, w21
    9ddc:	e0 14 00 54	b.eq	0xa078
    9de0:	c9 c8 89 52	mov	w9, #20038
    9de4:	e9 69 a8 72	movk	w9, #17231, lsl #16
    9de8:	1f 01 09 6b	cmp	w8, w9
    9dec:	00 0b 00 54	b.eq	0x9f4c
    9df0:	a9 c8 89 52	mov	w9, #20037
    9df4:	e9 69 a8 72	movk	w9, #17231, lsl #16
    9df8:	1f 01 09 6b	cmp	w8, w9
    9dfc:	61 15 00 54	b.ne	0xa0a8
    9e00:	1a 00 80 52	mov	w26, #0
    9e04:	1b 00 80 52	mov	w27, #0
    9e08:	15 00 80 52	mov	w21, #0
    9e0c:	f6 ef 9f 52	mov	w22, #65407
    9e10:	f6 ff af 72	movk	w22, #32767, lsl #16
    9e14:	68 0e 40 b9	ldr	w8, [x19, #12]
    9e18:	69 62 00 91	add	x9, x19, #24
    9e1c:	6a 72 00 91	add	x10, x19, #28
    9e20:	6b 82 00 91	add	x11, x19, #32
    9e24:	1f 01 03 72	tst	w8, #0x20000000
    9e28:	37 01 8a 9a	csel	x23, x9, x10, eq
    9e2c:	58 01 8b 9a	csel	x24, x10, x11, eq
    9e30:	79 01 89 9a	csel	x25, x11, x9, eq
    9e34:	e8 02 40 b9	ldr	w8, [x23]
    9e38:	22 03 40 b9	ldr	w2, [x25]
    9e3c:	09 03 40 b9	ldr	w9, [x24]
    9e40:	0c 5d 18 12	and	w12, w8, #0xffffff00
    9e44:	2a 5d 18 12	and	w10, w9, #0xffffff00
    9e48:	8d 01 0a 6b	subs	w13, w12, w10
    9e4c:	a0 00 00 54	b.eq	0x9e60
    9e50:	4b 5c 18 12	and	w11, w2, #0xffffff00
    9e54:	34 01 00 35	cbnz	w20, 0x9e78
    9e58:	9f 01 0b 6b	cmp	w12, w11
    9e5c:	e1 00 00 54	b.ne	0x9e78
    9e60:	08 81 09 aa	orr	x8, x8, x9, lsl #32
    9e64:	e9 03 08 aa	mov	x9, x8
    9e68:		.long	0xc8e9fee8
    9e6c:	3f 01 08 eb	cmp	x9, x8
    9e70:	21 fe ff 54	b.ne	0x9e34
    9e74:	80 00 00 14	b	0xa074
    9e78:	94 0d 00 35	cbnz	w20, 0xa028
    9e7c:	4e 01 0c 6b	subs	w14, w10, w12
    9e80:	df 01 16 6b	cmp	w14, w22
    9e84:	ef 97 9f 1a	cset	w15, hi
    9e88:	ce 0a 00 11	add	w14, w22, #2
    9e8c:	bf 01 0e 6b	cmp	w13, w14
    9e90:	ed 27 9f 1a	cset	w13, lo
    9e94:	5f 01 0c 6b	cmp	w10, w12
    9e98:	ed 81 8d 1a	csel	w13, w15, w13, hi
    9e9c:	6d 03 00 36	tbz	w13, #0, 0x9f08
    9ea0:	6d 01 0c 6b	subs	w13, w11, w12
    9ea4:	bf 01 16 6b	cmp	w13, w22
    9ea8:	ed 97 9f 1a	cset	w13, hi
    9eac:	8f 01 0b 4b	sub	w15, w12, w11
    9eb0:	ff 01 0e 6b	cmp	w15, w14
    9eb4:	ee 27 9f 1a	cset	w14, lo
    9eb8:	7f 01 0c 6b	cmp	w11, w12
    9ebc:	ac 81 8e 1a	csel	w12, w13, w14, hi
    9ec0:	cc 02 00 36	tbz	w12, #0, 0x9f18
    9ec4:	4c 01 0b 4b	sub	w12, w10, w11
    9ec8:	9f 01 16 6b	cmp	w12, w22
    9ecc:	ec 97 9f 1a	cset	w12, hi
    9ed0:	6d 01 0a 6b	subs	w13, w11, w10
    9ed4:	ce 0a 00 11	add	w14, w22, #2
    9ed8:	bf 01 0e 6b	cmp	w13, w14
    9edc:	ed 27 9f 1a	cset	w13, lo
    9ee0:	7f 01 0a 6b	cmp	w11, w10
    9ee4:	8c 31 8d 1a	csel	w12, w12, w13, lo
    9ee8:	9f 01 00 71	cmp	w12, #0
    9eec:	6a 11 8a 1a	csel	w10, w11, w10, ne
    9ef0:	4a 01 04 11	add	w10, w10, #256
    9ef4:	eb 03 02 aa	mov	x11, x2
    9ef8:		.long	0x88ebff2a
    9efc:	7f 01 02 6b	cmp	w11, w2
    9f00:	a1 f9 ff 54	b.ne	0x9e34
    9f04:	49 00 00 14	b	0xa028
    9f08:	bf 0a 40 71	cmp	w21, #2, lsl #12
    9f0c:	6a 0c 00 54	b.ge	0xa098
    9f10:	b5 06 00 11	add	w21, w21, #1
    9f14:	0c 00 00 14	b	0x9f44
    9f18:	68 07 00 11	add	w8, w27, #1
    9f1c:	7f 0b 40 71	cmp	w27, #2, lsl #12
    9f20:	0b 01 00 54	b.lt	0x9f40
    9f24:	ba 0b 00 35	cbnz	w26, 0xa098
    9f28:	e9 03 02 aa	mov	x9, x2
    9f2c:		.long	0x88e9ff2a
    9f30:	3f 01 02 6b	cmp	w9, w2
    9f34:	fb 03 88 1a	csel	w27, wzr, w8, eq
    9f38:	fa 17 9f 1a	cset	w26, eq
    9f3c:	02 00 00 14	b	0x9f44
    9f40:	fb 03 08 aa	mov	x27, x8
    9f44:	47 ea ff 97	bl	_sched_yield
    9f48:	bb ff ff 17	b	0x9e34
    9f4c:	68 0e 40 b9	ldr	w8, [x19, #12]
    9f50:	08 75 5d d3	ubfx	x8, x8, #29, #1
    9f54:	75 0a 08 8b	add	x21, x19, x8, lsl #2
    9f58:	a8 8e 41 f8	ldr	x8, [x21, #24]!
    9f5c:	00 00 80 52	mov	w0, #0
    9f60:	09 bd 60 d3	ubfx	x9, x8, #32, #16
    9f64:	a9 08 00 34	cbz	w9, 0xa078
    9f68:	0a fd 70 d3	lsr	x10, x8, #48
    9f6c:	3f 01 0a 6b	cmp	w9, w10
    9f70:	40 08 00 54	b.eq	0xa078
    9f74:	0b fd 60 d3	lsr	x11, x8, #32
    9f78:	0c 05 00 11	add	w12, w8, #1
    9f7c:	4d 05 00 11	add	w13, w10, #1
    9f80:	bf 21 2b 6b	cmp	w13, w11, uxth
    9f84:	2b 25 8a 1a	csinc	w11, w9, w10, hs
    9f88:	0d 3d 60 92	and	x13, x8, #0xffff00000000
    9f8c:	8b c1 0b aa	orr	x11, x12, x11, lsl #48
    9f90:	6b 01 0d aa	orr	x11, x11, x13
    9f94:	ec 03 08 aa	mov	x12, x8
    9f98:		.long	0xc8acfeab
    9f9c:	9f 01 08 eb	cmp	x12, x8
    9fa0:	e8 03 0c aa	mov	x8, x12
    9fa4:	c1 fd ff 54	b.ne	0x9f5c
    9fa8:	5f 01 09 6b	cmp	w10, w9
    9fac:	42 06 00 54	b.hs	0xa074
    9fb0:	28 00 80 52	mov	w8, #1
    9fb4:	08 20 a0 72	movk	w8, #256, lsl #16
    9fb8:	09 01 17 32	orr	w9, w8, #0x200
    9fbc:	9f 02 00 71	cmp	w20, #0
    9fc0:	16 01 89 1a	csel	w22, w8, w9, eq
    9fc4:	f7 03 14 2a	mov	w23, w20
    9fc8:	e0 03 16 aa	mov	x0, x22
    9fcc:	e1 03 15 aa	mov	x1, x21
    9fd0:	e2 03 17 aa	mov	x2, x23
    9fd4:	e8 06 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    9fd8:	e0 04 f8 36	tbz	w0, #31, 0xa074
    9fdc:	e8 03 00 aa	mov	x8, x0
    9fe0:	1f 10 00 31	cmn	w0, #4
    9fe4:	20 ff ff 54	b.eq	0x9fc8
    9fe8:	00 00 80 52	mov	w0, #0
    9fec:	e8 03 08 4b	neg	w8, w8
    9ff0:	1f 09 00 71	cmp	w8, #2
    9ff4:	20 04 00 54	b.eq	0xa078
    9ff8:	1f 95 00 71	cmp	w8, #37
    9ffc:	21 05 00 54	b.ne	0xa0a0
    a000:	94 05 00 34	cbz	w20, 0xa0b0
    a004:	e0 03 13 aa	mov	x0, x19
    a008:	fd 7b 46 a9	ldp	x29, x30, [sp, #96]
    a00c:	f4 4f 45 a9	ldp	x20, x19, [sp, #80]
    a010:	f6 57 44 a9	ldp	x22, x21, [sp, #64]
    a014:	f8 5f 43 a9	ldp	x24, x23, [sp, #48]
    a018:	fa 67 42 a9	ldp	x26, x25, [sp, #32]
    a01c:	fc 6f 41 a9	ldp	x28, x27, [sp, #16]
    a020:	ff c3 01 91	add	sp, sp, #112
    a024:	81 e2 ff 17	b	_pthread_cond_broadcast
    a028:	6a 0e 40 b9	ldr	w10, [x19, #12]
    a02c:	4a 7d 1e 53	lsr	w10, w10, #30
    a030:	5f 05 00 71	cmp	w10, #1
    a034:	ea 17 9f 1a	cset	w10, eq
    a038:	47 6d 1c 53	lsl	w7, w10, #4
    a03c:	01 81 09 aa	orr	x1, x8, x9, lsl #32
    a040:	e0 03 13 aa	mov	x0, x19
    a044:	e3 03 14 aa	mov	x3, x20
    a048:	04 00 80 d2	mov	x4, #0
    a04c:	05 00 80 d2	mov	x5, #0
    a050:	06 00 80 d2	mov	x6, #0
    a054:	8f 06 00 94	bl	0xba90 ; symbol stub for: ___psynch_cvsignal
    a058:	08 04 00 51	sub	w8, w0, #1
    a05c:	1f 0d 00 31	cmn	w8, #3
    a060:	a8 00 00 54	b.hi	0xa074
    a064:	e2 03 00 aa	mov	x2, x0
    a068:	e0 03 13 aa	mov	x0, x19
    a06c:	01 00 80 52	mov	w1, #0
    a070:	0b ea ff 97	bl	__pthread_cond_updateval
    a074:	00 00 80 52	mov	w0, #0
    a078:	fd 7b 46 a9	ldp	x29, x30, [sp, #96]
    a07c:	f4 4f 45 a9	ldp	x20, x19, [sp, #80]
    a080:	f6 57 44 a9	ldp	x22, x21, [sp, #64]
    a084:	f8 5f 43 a9	ldp	x24, x23, [sp, #48]
    a088:	fa 67 42 a9	ldp	x26, x25, [sp, #32]
    a08c:	fc 6f 41 a9	ldp	x28, x27, [sp, #16]
    a090:	ff c3 01 91	add	sp, sp, #112
    a094:	c0 03 5f d6	ret
    a098:	60 04 80 52	mov	w0, #35
    a09c:	f7 ff ff 17	b	0xa078
    a0a0:	e0 03 08 aa	mov	x0, x8
    a0a4:	f9 05 00 94	bl	_pthread_cond_broadcast.cold.2
    a0a8:	e0 03 08 aa	mov	x0, x8
    a0ac:	ed 05 00 94	bl	_pthread_cond_broadcast.cold.1
    a0b0:	00 06 00 94	bl	_pthread_cond_broadcast.cold.3
__pthread_ulock_cond_wait_complete:
    a0b4:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    a0b8:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    a0bc:	fd 43 00 91	add	x29, sp, #16
    a0c0:	f3 03 00 aa	mov	x19, x0
    a0c4:	81 00 00 b4	cbz	x1, 0xa0d4
    a0c8:	e0 03 01 aa	mov	x0, x1
    a0cc:	01 00 80 52	mov	w1, #0
    a0d0:	ef 01 00 94	bl	__pthread_mutex_ulock_lock
    a0d4:	69 02 40 f9	ldr	x9, [x19]
    a0d8:	e8 ff df d2	mov	x8, #281470681743360
    a0dc:	ea 03 09 aa	mov	x10, x9
    a0e0:	2b fd 70 d3	lsr	x11, x9, #48
    a0e4:	6b 05 00 71	subs	w11, w11, #1
    a0e8:	eb 33 8b 1a	csel	w11, wzr, w11, lo
    a0ec:	2c 01 08 8b	add	x12, x9, x8
    a0f0:	8c 3d 60 92	and	x12, x12, #0xffff00000000
    a0f4:	8b c1 0b aa	orr	x11, x12, x11, lsl #48
    a0f8:	2b 7d 40 b3	bfxil	x11, x9, #0, #32
    a0fc:		.long	0xc8ea7e6b
    a100:	5f 01 09 eb	cmp	x10, x9
    a104:	e9 03 0a aa	mov	x9, x10
    a108:	c1 fe ff 54	b.ne	0xa0e0
    a10c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    a110:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    a114:	c0 03 5f d6	ret
__pthread_ulock_cond_cleanup:
    a118:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    a11c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    a120:	fd 43 00 91	add	x29, sp, #16
    a124:	f3 03 00 aa	mov	x19, x0
    a128:	08 04 40 a9	ldp	x8, x1, [x0]
    a12c:	09 0d 40 b9	ldr	w9, [x8, #12]
    a130:	29 75 5d d3	ubfx	x9, x9, #29, #1
    a134:	08 09 09 8b	add	x8, x8, x9, lsl #2
    a138:	00 61 00 91	add	x0, x8, #24
    a13c:	de ff ff 97	bl	__pthread_ulock_cond_wait_complete
    a140:	60 02 40 f9	ldr	x0, [x19]
    a144:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    a148:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    a14c:	b9 f1 ff 17	b	_pthread_cond_signal
__pthread_psynch_cond_cleanup:
    a150:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    a154:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    a158:	fd 43 00 91	add	x29, sp, #16
    a15c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    a160:	09 51 5c 38	ldurb	w9, [x8, #-59]
    a164:	49 01 00 34	cbz	w9, 0xa18c
    a168:	13 08 40 f9	ldr	x19, [x0, #16]
    a16c:	01 81 5c b8	ldur	w1, [x8, #-56]
    a170:	02 00 80 52	mov	w2, #0
    a174:	ca e9 ff 97	bl	__pthread_cond_updateval
    a178:	b3 00 00 b4	cbz	x19, 0xa18c
    a17c:	e0 03 13 aa	mov	x0, x19
    a180:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    a184:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    a188:	19 e0 ff 17	b	_pthread_mutex_lock
    a18c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    a190:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    a194:	c0 03 5f d6	ret
_mutex_seq_atomic_cmpxchgv_relaxed:
    a198:	28 00 40 f9	ldr	x8, [x1]
    a19c:	49 00 40 f9	ldr	x9, [x2]
    a1a0:	ea 03 08 aa	mov	x10, x8
    a1a4:		.long	0xc8aa7c09
    a1a8:	5f 01 08 eb	cmp	x10, x8
    a1ac:	e0 17 9f 1a	cset	w0, eq
    a1b0:	2a 00 00 f9	str	x10, [x1]
    a1b4:	c0 03 5f d6	ret
_mutex_seq_atomic_cmpxchgv_acquire:
    a1b8:	28 00 40 f9	ldr	x8, [x1]
    a1bc:	49 00 40 f9	ldr	x9, [x2]
    a1c0:	ea 03 08 aa	mov	x10, x8
    a1c4:		.long	0xc8ea7c09
    a1c8:	5f 01 08 eb	cmp	x10, x8
    a1cc:	e0 17 9f 1a	cset	w0, eq
    a1d0:	2a 00 00 f9	str	x10, [x1]
    a1d4:	c0 03 5f d6	ret
_mutex_seq_atomic_cmpxchgv_release:
    a1d8:	28 00 40 f9	ldr	x8, [x1]
    a1dc:	49 00 40 f9	ldr	x9, [x2]
    a1e0:	ea 03 08 aa	mov	x10, x8
    a1e4:		.long	0xc8aafc09
    a1e8:	5f 01 08 eb	cmp	x10, x8
    a1ec:	e0 17 9f 1a	cset	w0, eq
    a1f0:	2a 00 00 f9	str	x10, [x1]
    a1f4:	c0 03 5f d6	ret
_pthread_mutex_getprioceiling:
    a1f8:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    a1fc:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    a200:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    a204:	fd 83 00 91	add	x29, sp, #32
    a208:	08 00 40 f9	ldr	x8, [x0]
    a20c:	08 7d 40 92	and	x8, x8, #0xffffffff
    a210:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    a214:	09 8b 8a 52	mov	w9, #21592
    a218:	a9 aa a9 72	movk	w9, #19797, lsl #16
    a21c:	1f 01 09 eb	cmp	x8, x9
    a220:	21 03 00 54	b.ne	0xa284
    a224:	f4 03 01 aa	mov	x20, x1
    a228:	f5 03 00 aa	mov	x21, x0
    a22c:	08 00 80 52	mov	w8, #0
    a230:	13 20 00 91	add	x19, x0, #8
    a234:	76 d0 3b d5	mrs	x22, TPIDRRO_EL0
    a238:	c9 1a 40 b9	ldr	w9, [x22, #24]
    a23c:		.long	0x88e87e69
    a240:	1f 01 00 71	cmp	w8, #0
    a244:	80 00 00 54	b.eq	0xa254
    a248:	e0 03 13 aa	mov	x0, x19
    a24c:	a1 00 a0 52	mov	w1, #327680
    a250:	a6 06 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    a254:	00 00 80 52	mov	w0, #0
    a258:	a8 22 c0 79	ldrsh	w8, [x21, #16]
    a25c:	88 02 00 b9	str	w8, [x20]
    a260:	c8 1a 40 b9	ldr	w8, [x22, #24]
    a264:	e9 03 08 aa	mov	x9, x8
    a268:		.long	0x88a9fe7f
    a26c:	3f 01 08 6b	cmp	w9, w8
    a270:	c0 00 00 54	b.eq	0xa288
    a274:	e0 03 13 aa	mov	x0, x19
    a278:	9f 06 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    a27c:	00 00 80 52	mov	w0, #0
    a280:	02 00 00 14	b	0xa288
    a284:	c0 02 80 52	mov	w0, #22
    a288:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    a28c:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    a290:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    a294:	c0 03 5f d6	ret
_pthread_mutex_setprioceiling:
    a298:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    a29c:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    a2a0:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    a2a4:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    a2a8:	fd c3 00 91	add	x29, sp, #48
    a2ac:	08 00 40 f9	ldr	x8, [x0]
    a2b0:	08 7d 40 92	and	x8, x8, #0xffffffff
    a2b4:	08 f9 7e 92	and	x8, x8, #0xfffffffffffffffd
    a2b8:	09 8b 8a 52	mov	w9, #21592
    a2bc:	a9 aa a9 72	movk	w9, #19797, lsl #16
    a2c0:	1f 01 09 eb	cmp	x8, x9
    a2c4:	c1 02 00 54	b.ne	0xa31c
    a2c8:	f5 03 02 aa	mov	x21, x2
    a2cc:	f4 03 01 aa	mov	x20, x1
    a2d0:	f6 03 00 aa	mov	x22, x0
    a2d4:	08 00 80 52	mov	w8, #0
    a2d8:	13 20 00 91	add	x19, x0, #8
    a2dc:	78 d0 3b d5	mrs	x24, TPIDRRO_EL0
    a2e0:	09 1b 40 b9	ldr	w9, [x24, #24]
    a2e4:		.long	0x88e87e69
    a2e8:	1f 01 00 71	cmp	w8, #0
    a2ec:	80 00 00 54	b.eq	0xa2fc
    a2f0:	e0 03 13 aa	mov	x0, x19
    a2f4:	a1 00 a0 52	mov	w1, #327680
    a2f8:	7c 06 00 94	bl	0xbce8 ; symbol stub for: _os_unfair_lock_lock_with_options
    a2fc:	88 9e 0f 11	add	w8, w20, #999
    a300:	1f 39 1f 71	cmp	w8, #1998
    a304:	08 01 00 54	b.hi	0xa324
    a308:	17 00 80 52	mov	w23, #0
    a30c:	c8 22 c0 79	ldrsh	w8, [x22, #16]
    a310:	a8 02 00 b9	str	w8, [x21]
    a314:	d4 22 00 79	strh	w20, [x22, #16]
    a318:	04 00 00 14	b	0xa328
    a31c:	d7 02 80 52	mov	w23, #22
    a320:	09 00 00 14	b	0xa344
    a324:	d7 02 80 52	mov	w23, #22
    a328:	08 1b 40 b9	ldr	w8, [x24, #24]
    a32c:	e9 03 08 aa	mov	x9, x8
    a330:		.long	0x88a9fe7f
    a334:	3f 01 08 6b	cmp	w9, w8
    a338:	60 00 00 54	b.eq	0xa344
    a33c:	e0 03 13 aa	mov	x0, x19
    a340:	6d 06 00 94	bl	0xbcf4 ; symbol stub for: _os_unfair_lock_unlock
    a344:	e0 03 17 aa	mov	x0, x23
    a348:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    a34c:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    a350:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    a354:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    a358:	c0 03 5f d6	ret
_pthread_mutexattr_getprioceiling:
    a35c:	09 00 40 f9	ldr	x9, [x0]
    a360:	2a 08 8b 52	mov	w10, #22593
    a364:	8a aa a9 72	movk	w10, #19796, lsl #16
    a368:	3f 01 0a eb	cmp	x9, x10
    a36c:	c1 00 00 54	b.ne	0xa384
    a370:	e8 03 00 aa	mov	x8, x0
    a374:	00 00 80 52	mov	w0, #0
    a378:	08 09 40 b9	ldr	w8, [x8, #8]
    a37c:	28 00 00 b9	str	w8, [x1]
    a380:	c0 03 5f d6	ret
    a384:	c0 02 80 52	mov	w0, #22
    a388:	c0 03 5f d6	ret
_pthread_mutexattr_getprotocol:
    a38c:	09 00 40 f9	ldr	x9, [x0]
    a390:	2a 08 8b 52	mov	w10, #22593
    a394:	8a aa a9 72	movk	w10, #19796, lsl #16
    a398:	3f 01 0a eb	cmp	x9, x10
    a39c:	e1 00 00 54	b.ne	0xa3b8
    a3a0:	e8 03 00 aa	mov	x8, x0
    a3a4:	00 00 80 52	mov	w0, #0
    a3a8:	08 0d 40 b9	ldr	w8, [x8, #12]
    a3ac:	08 05 00 12	and	w8, w8, #0x3
    a3b0:	28 00 00 b9	str	w8, [x1]
    a3b4:	c0 03 5f d6	ret
    a3b8:	c0 02 80 52	mov	w0, #22
    a3bc:	c0 03 5f d6	ret
_pthread_mutexattr_getpolicy_np:
    a3c0:	08 00 40 f9	ldr	x8, [x0]
    a3c4:	29 08 8b 52	mov	w9, #22593
    a3c8:	89 aa a9 72	movk	w9, #19796, lsl #16
    a3cc:	1f 01 09 eb	cmp	x8, x9
    a3d0:	61 01 00 54	b.ne	0xa3fc
    a3d4:	08 0c 40 b9	ldr	w8, [x0, #12]
    a3d8:	08 21 06 53	ubfx	w8, w8, #6, #3
    a3dc:	1f 05 00 71	cmp	w8, #1
    a3e0:	80 00 00 54	b.eq	0xa3f0
    a3e4:	1f 09 00 71	cmp	w8, #2
    a3e8:	a1 00 00 54	b.ne	0xa3fc
    a3ec:	68 00 80 52	mov	w8, #3
    a3f0:	00 00 80 52	mov	w0, #0
    a3f4:	28 00 00 b9	str	w8, [x1]
    a3f8:	c0 03 5f d6	ret
    a3fc:	c0 02 80 52	mov	w0, #22
    a400:	c0 03 5f d6	ret
_pthread_mutexattr_gettype:
    a404:	09 00 40 f9	ldr	x9, [x0]
    a408:	2a 08 8b 52	mov	w10, #22593
    a40c:	8a aa a9 72	movk	w10, #19796, lsl #16
    a410:	3f 01 0a eb	cmp	x9, x10
    a414:	e1 00 00 54	b.ne	0xa430
    a418:	e8 03 00 aa	mov	x8, x0
    a41c:	00 00 80 52	mov	w0, #0
    a420:	08 0d 40 b9	ldr	w8, [x8, #12]
    a424:	08 0d 02 53	ubfx	w8, w8, #2, #2
    a428:	28 00 00 b9	str	w8, [x1]
    a42c:	c0 03 5f d6	ret
    a430:	c0 02 80 52	mov	w0, #22
    a434:	c0 03 5f d6	ret
_pthread_mutexattr_getpshared:
    a438:	09 00 40 f9	ldr	x9, [x0]
    a43c:	2a 08 8b 52	mov	w10, #22593
    a440:	8a aa a9 72	movk	w10, #19796, lsl #16
    a444:	3f 01 0a eb	cmp	x9, x10
    a448:	e1 00 00 54	b.ne	0xa464
    a44c:	e8 03 00 aa	mov	x8, x0
    a450:	00 00 80 52	mov	w0, #0
    a454:	08 0d 40 b9	ldr	w8, [x8, #12]
    a458:	08 15 04 53	ubfx	w8, w8, #4, #2
    a45c:	28 00 00 b9	str	w8, [x1]
    a460:	c0 03 5f d6	ret
    a464:	c0 02 80 52	mov	w0, #22
    a468:	c0 03 5f d6	ret
_pthread_mutexattr_setprioceiling:
    a46c:	e8 03 00 aa	mov	x8, x0
    a470:	29 9c 0f 11	add	w9, w1, #999
    a474:	c0 02 80 52	mov	w0, #22
    a478:	3f 39 1f 71	cmp	w9, #1998
    a47c:	08 01 00 54	b.hi	0xa49c
    a480:	09 01 40 f9	ldr	x9, [x8]
    a484:	2a 08 8b 52	mov	w10, #22593
    a488:	8a aa a9 72	movk	w10, #19796, lsl #16
    a48c:	3f 01 0a eb	cmp	x9, x10
    a490:	61 00 00 54	b.ne	0xa49c
    a494:	00 00 80 52	mov	w0, #0
    a498:	01 09 00 b9	str	w1, [x8, #8]
    a49c:	c0 03 5f d6	ret
_pthread_mutexattr_setprotocol:
    a4a0:	e8 03 00 aa	mov	x8, x0
    a4a4:	c0 02 80 52	mov	w0, #22
    a4a8:	3f 08 00 71	cmp	w1, #2
    a4ac:	68 01 00 54	b.hi	0xa4d8
    a4b0:	09 01 40 f9	ldr	x9, [x8]
    a4b4:	2a 08 8b 52	mov	w10, #22593
    a4b8:	8a aa a9 72	movk	w10, #19796, lsl #16
    a4bc:	3f 01 0a eb	cmp	x9, x10
    a4c0:	c1 00 00 54	b.ne	0xa4d8
    a4c4:	00 00 80 52	mov	w0, #0
    a4c8:	09 0d 40 b9	ldr	w9, [x8, #12]
    a4cc:	29 75 1e 12	and	w9, w9, #0xfffffffc
    a4d0:	29 01 01 2a	orr	w9, w9, w1
    a4d4:	09 0d 00 b9	str	w9, [x8, #12]
    a4d8:	c0 03 5f d6	ret
_pthread_mutexattr_setpolicy_np:
    a4dc:	08 00 40 f9	ldr	x8, [x0]
    a4e0:	29 08 8b 52	mov	w9, #22593
    a4e4:	89 aa a9 72	movk	w9, #19796, lsl #16
    a4e8:	1f 01 09 eb	cmp	x8, x9
    a4ec:	e1 00 00 54	b.ne	0xa508
    a4f0:	3f 04 00 71	cmp	w1, #1
    a4f4:	e0 00 00 54	b.eq	0xa510
    a4f8:	3f 0c 00 71	cmp	w1, #3
    a4fc:	61 00 00 54	b.ne	0xa508
    a500:	09 10 80 52	mov	w9, #128
    a504:	04 00 00 14	b	0xa514
    a508:	c8 02 80 52	mov	w8, #22
    a50c:	07 00 00 14	b	0xa528
    a510:	09 08 80 52	mov	w9, #64
    a514:	08 00 80 52	mov	w8, #0
    a518:	0a 0c 40 b9	ldr	w10, [x0, #12]
    a51c:	4a 71 17 12	and	w10, w10, #0xfffffe3f
    a520:	49 01 09 2a	orr	w9, w10, w9
    a524:	09 0c 00 b9	str	w9, [x0, #12]
    a528:	e0 03 08 aa	mov	x0, x8
    a52c:	c0 03 5f d6	ret
__pthread_mutex_fairshare_lock_slow:
    a530:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    a534:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    a538:	fd 43 00 91	add	x29, sp, #16
    a53c:	f3 03 00 aa	mov	x19, x0
    a540:	08 9c 00 91	add	x8, x0, #39
    a544:	0a f1 7d 92	and	x10, x8, #0xfffffffffffffff8
    a548:	4c 01 40 f9	ldr	x12, [x10]
    a54c:	08 7c 00 91	add	x8, x0, #31
    a550:	09 f1 7d 92	and	x9, x8, #0xfffffffffffffff8
    a554:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    a558:	0b 81 5f f8	ldur	x11, [x8, #-8]
    a55c:	08 0c 40 b9	ldr	w8, [x0, #12]
    a560:	0d 05 1e 72	ands	w13, w8, #0xc
    a564:	60 01 00 54	b.eq	0xa590
    a568:	2e 01 40 f9	ldr	x14, [x9]
    a56c:	df 01 0b eb	cmp	x14, x11
    a570:	01 01 00 54	b.ne	0xa590
    a574:	bf 21 00 71	cmp	w13, #8
    a578:	a1 04 00 54	b.ne	0xa60c
    a57c:	29 00 a0 12	mov	w9, #-65537
    a580:	1f 01 09 6b	cmp	w8, w9
    a584:	e9 04 00 54	b.ls	0xa620
    a588:	60 04 80 52	mov	w0, #35
    a58c:	28 00 00 14	b	0xa62c
    a590:	ed 03 0c aa	mov	x13, x12
    a594:	22 01 40 f9	ldr	x2, [x9]
    a598:	88 05 41 d3	ubfx	x8, x12, #1, #1
    a59c:	ae 05 00 32	orr	w14, w13, #0x3
    a5a0:	ce 01 04 11	add	w14, w14, #256
    a5a4:	3f 00 08 6a	tst	w1, w8
    a5a8:	8e 11 8e 9a	csel	x14, x12, x14, ne
    a5ac:	e8 03 0c aa	mov	x8, x12
    a5b0:	c8 7d 40 b3	bfxil	x8, x14, #0, #32
    a5b4:		.long	0xc8ec7d48
    a5b8:	9f 01 0d eb	cmp	x12, x13
    a5bc:	a1 fe ff 54	b.ne	0xa590
    a5c0:	8d 00 08 36	tbz	w13, #1, 0xa5d0
    a5c4:	a1 00 00 36	tbz	w1, #0, 0xa5d8
    a5c8:	00 02 80 52	mov	w0, #16
    a5cc:	18 00 00 14	b	0xa62c
    a5d0:	2b 01 00 f9	str	x11, [x9]
    a5d4:	04 00 00 14	b	0xa5e4
    a5d8:	e0 03 13 aa	mov	x0, x19
    a5dc:	e1 03 08 aa	mov	x1, x8
    a5e0:	16 00 00 94	bl	__pthread_mutex_fairshare_lock_wait
    a5e4:	68 0e 40 b9	ldr	w8, [x19, #12]
    a5e8:	09 05 1e 12	and	w9, w8, #0xc
    a5ec:	3f 21 00 71	cmp	w9, #8
    a5f0:	a1 00 00 54	b.ne	0xa604
    a5f4:	00 00 80 52	mov	w0, #0
    a5f8:	08 3d 00 12	and	w8, w8, #0xffff
    a5fc:	08 01 10 32	orr	w8, w8, #0x10000
    a600:	0a 00 00 14	b	0xa628
    a604:	00 00 80 52	mov	w0, #0
    a608:	09 00 00 14	b	0xa62c
    a60c:	68 01 80 52	mov	w8, #11
    a610:	09 02 80 52	mov	w9, #16
    a614:	3f 00 00 71	cmp	w1, #0
    a618:	20 11 88 1a	csel	w0, w9, w8, ne
    a61c:	04 00 00 14	b	0xa62c
    a620:	00 00 80 52	mov	w0, #0
    a624:	08 41 40 11	add	w8, w8, #16, lsl #12
    a628:	68 0e 00 b9	str	w8, [x19, #12]
    a62c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    a630:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    a634:	c0 03 5f d6	ret
__pthread_mutex_fairshare_lock_wait:
    a638:	fa 67 bb a9	stp	x26, x25, [sp, #-80]!
    a63c:	f8 5f 01 a9	stp	x24, x23, [sp, #16]
    a640:	f6 57 02 a9	stp	x22, x21, [sp, #32]
    a644:	f4 4f 03 a9	stp	x20, x19, [sp, #48]
    a648:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    a64c:	fd 03 01 91	add	x29, sp, #64
    a650:	e3 03 02 aa	mov	x3, x2
    a654:	f3 03 01 aa	mov	x19, x1
    a658:	f4 03 00 aa	mov	x20, x0
    a65c:	35 fc 60 d3	lsr	x21, x1, #32
    a660:	08 7c 00 91	add	x8, x0, #31
    a664:	16 f1 7d 92	and	x22, x8, #0xfffffffffffffff8
    a668:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    a66c:	17 81 5f f8	ldur	x23, [x8, #-8]
    a670:	08 9c 00 91	add	x8, x0, #39
    a674:	18 f1 7d 92	and	x24, x8, #0xfffffffffffffff8
    a678:	79 00 80 52	mov	w25, #3
    a67c:	84 0e 40 b9	ldr	w4, [x20, #12]
    a680:	e0 03 14 aa	mov	x0, x20
    a684:	e1 03 13 aa	mov	x1, x19
    a688:	e2 03 15 aa	mov	x2, x21
    a68c:	0a 05 00 94	bl	0xbab4 ; symbol stub for: ___psynch_mutexwait
    a690:	c3 02 40 f9	ldr	x3, [x22]
    a694:	1f 04 00 31	cmn	w0, #1
    a698:	20 ff ff 54	b.eq	0xa67c
    a69c:	88 0e 40 b9	ldr	w8, [x20, #12]
    a6a0:	08 09 1a 12	and	w8, w8, #0x1c0
    a6a4:	0a 03 40 f9	ldr	x10, [x24]
    a6a8:	29 00 80 52	mov	w9, #1
    a6ac:	1f 01 02 71	cmp	w8, #128
    a6b0:	81 00 00 54	b.ne	0xa6c0
    a6b4:	5f 01 1f 72	tst	w10, #0x2
    a6b8:	e9 17 9f 1a	cset	w9, eq
    a6bc:	03 00 00 14	b	0xa6c8
    a6c0:	3f 03 2a 6a	bics	wzr, w25, w10
    a6c4:	e0 00 00 54	b.eq	0xa6e0
    a6c8:	4b 05 40 b2	orr	x11, x10, #0x3
    a6cc:	ec 03 0a aa	mov	x12, x10
    a6d0:		.long	0xc8ec7f0b
    a6d4:	9f 01 0a eb	cmp	x12, x10
    a6d8:	ea 03 0c aa	mov	x10, x12
    a6dc:	81 fe ff 54	b.ne	0xa6ac
    a6e0:	e9 fc 07 36	tbz	w9, #0, 0xa67c
    a6e4:	d7 02 00 f9	str	x23, [x22]
    a6e8:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    a6ec:	f4 4f 43 a9	ldp	x20, x19, [sp, #48]
    a6f0:	f6 57 42 a9	ldp	x22, x21, [sp, #32]
    a6f4:	f8 5f 41 a9	ldp	x24, x23, [sp, #16]
    a6f8:	fa 67 c5 a8	ldp	x26, x25, [sp], #80
    a6fc:	c0 03 5f d6	ret
__pthread_mutex_fairshare_unlock_slow:
    a700:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    a704:	fd 03 00 91	mov	x29, sp
    a708:	0b 0c 40 b9	ldr	w11, [x0, #12]
    a70c:	62 79 13 12	and	w2, w11, #0xffffefff
    a710:	08 9c 00 91	add	x8, x0, #39
    a714:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    a718:	0a 01 40 f9	ldr	x10, [x8]
    a71c:	09 7c 00 91	add	x9, x0, #31
    a720:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    a724:	6c 05 1e 72	ands	w12, w11, #0xc
    a728:	20 02 00 54	b.eq	0xa76c
    a72c:	6d d0 3b d5	mrs	x13, TPIDRRO_EL0
    a730:	ad 81 5f f8	ldur	x13, [x13, #-8]
    a734:	2e 01 40 f9	ldr	x14, [x9]
    a738:	df 01 0d eb	cmp	x14, x13
    a73c:	c1 06 00 54	b.ne	0xa814
    a740:	9f 21 00 71	cmp	w12, #8
    a744:	41 01 00 54	b.ne	0xa76c
    a748:	6c 7d 10 53	lsr	w12, w11, #16
    a74c:	8c 05 00 51	sub	w12, w12, #1
    a750:	8b 3d 10 33	bfi	w11, w12, #16, #16
    a754:	0b 0c 00 b9	str	w11, [x0, #12]
    a758:	9f 3d 00 72	tst	w12, #0xffff
    a75c:	80 00 00 54	b.eq	0xa76c
    a760:	0b 00 80 52	mov	w11, #0
    a764:	0c 00 80 52	mov	w12, #0
    a768:	25 00 00 14	b	0xa7fc
    a76c:	4b fd 60 d3	lsr	x11, x10, #32
    a770:	2f 01 40 f9	ldr	x15, [x9]
    a774:	6c 01 0a 4a	eor	w12, w11, w10
    a778:	8d 5d 78 f2	ands	x13, x12, #0xffffff00
    a77c:	40 02 00 54	b.eq	0xa7c4
    a780:	6b 01 04 11	add	w11, w11, #256
    a784:	6c 01 0a 4a	eor	w12, w11, w10
    a788:	9f fd 03 71	cmp	w12, #255
    a78c:	f0 93 9f da	csetm	x16, hi
    a790:	4e 75 1e 12	and	w14, w10, #0xfffffffc
    a794:	9f 01 04 71	cmp	w12, #256
    a798:	cc 31 8a 1a	csel	w12, w14, w10, lo
    a79c:	ee 27 9f 1a	cset	w14, lo
    a7a0:	51 00 14 32	orr	w17, w2, #0x1000
    a7a4:	42 30 91 1a	csel	w2, w2, w17, lo
    a7a8:	ff 01 10 eb	cmp	x15, x16
    a7ac:	00 01 00 54	b.eq	0xa7cc
    a7b0:	f1 03 0f aa	mov	x17, x15
    a7b4:		.long	0xc8b17d30
    a7b8:	3f 02 0f eb	cmp	x17, x15
    a7bc:	80 00 00 54	b.eq	0xa7cc
    a7c0:	18 00 00 14	b	0xa820
    a7c4:	0e 00 80 52	mov	w14, #0
    a7c8:	ec 03 0a aa	mov	x12, x10
    a7cc:	bf 01 00 f1	cmp	x13, #0
    a7d0:	cd 15 9f 1a	csinc	w13, w14, wzr, ne
    a7d4:	4e 78 13 12	and	w14, w2, #0xffffefff
    a7d8:	bf 01 00 71	cmp	w13, #0
    a7dc:	c2 11 82 1a	csel	w2, w14, w2, ne
    a7e0:	ed 03 0c 2a	mov	w13, w12
    a7e4:	ad 81 0b aa	orr	x13, x13, x11, lsl #32
    a7e8:	ee 03 0a aa	mov	x14, x10
    a7ec:		.long	0xc8aefd0d
    a7f0:	df 01 0a eb	cmp	x14, x10
    a7f4:	ea 03 0e aa	mov	x10, x14
    a7f8:	a1 fb ff 54	b.ne	0xa76c
    a7fc:	82 00 60 36	tbz	w2, #12, 0xa80c
    a800:	e8 03 0c 2a	mov	w8, w12
    a804:	01 81 0b aa	orr	x1, x8, x11, lsl #32
    a808:	07 00 00 94	bl	__pthread_mutex_fairshare_unlock_drop
    a80c:	00 00 80 52	mov	w0, #0
    a810:	02 00 00 14	b	0xa818
    a814:	20 00 80 52	mov	w0, #1
    a818:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    a81c:	c0 03 5f d6	ret
    a820:	2c 04 00 94	bl	__pthread_mutex_corruption_abort
__pthread_mutex_fairshare_unlock_drop:
    a824:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    a828:	fd 03 00 91	mov	x29, sp
    a82c:	e4 03 02 aa	mov	x4, x2
    a830:	22 fc 60 d3	lsr	x2, x1, #32
    a834:	08 7c 00 91	add	x8, x0, #31
    a838:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    a83c:	03 01 40 f9	ldr	x3, [x8]
    a840:	9a 04 00 94	bl	0xbaa8 ; symbol stub for: ___psynch_mutexdrop
    a844:	1f 04 00 31	cmn	w0, #1
    a848:	c1 00 00 54	b.ne	0xa860
    a84c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    a850:	08 05 40 f9	ldr	x8, [x8, #8]
    a854:	08 01 80 b9	ldrsw	x8, [x8]
    a858:	1f 79 1d 72	tst	w8, #0xfffffffb
    a85c:	61 00 00 54	b.ne	0xa868
    a860:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    a864:	c0 03 5f d6	ret
    a868:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    a86c:	14 00 00 d0	adrp	x20, 2 ; 0xc000
    a870:	94 be 22 91	add	x20, x20, #2223 ; literal pool for: "BUG IN LIBPTHREAD: __psynch_mutexdrop failed"
    a874:	55 00 00 d0	adrp	x21, 10 ; 0x14000
    a878:	b5 22 00 91	add	x21, x21, #8
    a87c:	b4 06 00 f9	str	x20, [x21, #8]
    a880:	a8 1e 00 f9	str	x8, [x21, #56]
    a884:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    a888:	20 00 20 d4	brk	#0x1
__pthread_mutex_ulock_lock:
    a88c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    a890:	fd 03 00 91	mov	x29, sp
    a894:	e8 03 01 aa	mov	x8, x1
    a898:	02 00 80 52	mov	w2, #0
    a89c:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    a8a0:	29 19 40 b9	ldr	w9, [x9, #24]
    a8a4:	21 75 1e 12	and	w1, w9, #0xfffffffc
    a8a8:	09 60 00 91	add	x9, x0, #24
    a8ac:		.long	0x88e27d21
    a8b0:	09 02 80 52	mov	w9, #16
    a8b4:	5f 00 00 71	cmp	w2, #0
    a8b8:	e9 03 89 1a	csel	w9, wzr, w9, eq
    a8bc:	80 00 00 54	b.eq	0xa8cc
    a8c0:	68 00 00 37	tbnz	w8, #0, 0xa8cc
    a8c4:	05 00 00 94	bl	__pthread_mutex_ulock_lock_slow
    a8c8:	09 00 80 52	mov	w9, #0
    a8cc:	e0 03 09 aa	mov	x0, x9
    a8d0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    a8d4:	c0 03 5f d6	ret
__pthread_mutex_ulock_lock_slow:
    a8d8:	f8 5f bc a9	stp	x24, x23, [sp, #-64]!
    a8dc:	f6 57 01 a9	stp	x22, x21, [sp, #16]
    a8e0:	f4 4f 02 a9	stp	x20, x19, [sp, #32]
    a8e4:	fd 7b 03 a9	stp	x29, x30, [sp, #48]
    a8e8:	fd c3 00 91	add	x29, sp, #48
    a8ec:	f6 03 02 aa	mov	x22, x2
    a8f0:	f3 03 01 aa	mov	x19, x1
    a8f4:	08 00 80 52	mov	w8, #0
    a8f8:	17 00 80 52	mov	w23, #0
    a8fc:	a9 00 00 d0	adrp	x9, 22 ; 0x20000
    a900:	29 15 41 39	ldrb	w9, [x9, #69]
    a904:	4a 00 80 52	mov	w10, #2
    a908:	0a 20 a0 72	movk	w10, #256, lsl #16
    a90c:	4b 01 0e 32	orr	w11, w10, #0x40000
    a910:	3f 01 00 71	cmp	w9, #0
    a914:	54 01 8b 1a	csel	w20, w10, w11, eq
    a918:	15 60 00 91	add	x21, x0, #24
    a91c:	78 00 80 12	mov	w24, #-4
    a920:	c9 76 1e 12	and	w9, w22, #0xfffffffc
    a924:	1f 01 00 72	tst	w8, #0x1
    a928:	28 01 98 1a	csel	w8, w9, w24, eq
    a92c:	02 01 00 32	orr	w2, w8, #0x1
    a930:	e9 03 16 aa	mov	x9, x22
    a934:		.long	0x88a97ea2
    a938:	3f 01 16 6b	cmp	w9, w22
    a93c:	a1 01 00 54	b.ne	0xa970
    a940:	e0 03 14 aa	mov	x0, x20
    a944:	e1 03 15 aa	mov	x1, x21
    a948:	03 00 80 52	mov	w3, #0
    a94c:	84 04 00 94	bl	0xbb5c ; symbol stub for: ___ulock_wait
    a950:	40 02 f8 37	tbnz	w0, #31, 0xa998
    a954:	1f 00 00 71	cmp	w0, #0
    a958:	e8 07 9f 1a	cset	w8, ne
    a95c:	17 01 17 2a	orr	w23, w8, w23
    a960:	08 00 80 52	mov	w8, #0
    a964:	b6 02 40 b9	ldr	w22, [x21]
    a968:	d6 fd ff 35	cbnz	w22, 0xa920
    a96c:	04 00 00 14	b	0xa97c
    a970:	08 00 80 52	mov	w8, #0
    a974:	f6 03 09 aa	mov	x22, x9
    a978:	56 fd ff 35	cbnz	w22, 0xa920
    a97c:	08 00 80 52	mov	w8, #0
    a980:	e9 02 00 12	and	w9, w23, #0x1
    a984:	29 01 13 2a	orr	w9, w9, w19
    a988:		.long	0x88f67ea9
    a98c:	df 02 00 71	cmp	w22, #0
    a990:	81 fc ff 54	b.ne	0xa920
    a994:	0a 00 00 14	b	0xa9bc
    a998:	e8 03 00 4b	neg	w8, w0
    a99c:	1f 10 00 31	cmn	w0, #4
    a9a0:	04 19 4e 7a	ccmp	w8, #14, #4, ne
    a9a4:	e0 fd ff 54	b.eq	0xa960
    a9a8:	1f a5 01 71	cmp	w8, #105
    a9ac:	21 01 00 54	b.ne	0xa9d0
    a9b0:	28 00 80 52	mov	w8, #1
    a9b4:	76 fb ff 35	cbnz	w22, 0xa920
    a9b8:	f1 ff ff 17	b	0xa97c
    a9bc:	fd 7b 43 a9	ldp	x29, x30, [sp, #48]
    a9c0:	f4 4f 42 a9	ldp	x20, x19, [sp, #32]
    a9c4:	f6 57 41 a9	ldp	x22, x21, [sp, #16]
    a9c8:	f8 5f c4 a8	ldp	x24, x23, [sp], #64
    a9cc:	c0 03 5f d6	ret
    a9d0:	08 7c 40 93	sxtw	x8, w0
    a9d4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    a9d8:	14 00 00 d0	adrp	x20, 2 ; 0xc000
    a9dc:	94 42 1f 91	add	x20, x20, #2000 ; literal pool for: "BUG IN LIBPTHREAD: ulock_wait failure"
    a9e0:	55 00 00 d0	adrp	x21, 10 ; 0x14000
    a9e4:	b5 22 00 91	add	x21, x21, #8
    a9e8:	b4 06 00 f9	str	x20, [x21, #8]
    a9ec:	a8 1e 00 f9	str	x8, [x21, #56]
    a9f0:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    a9f4:	20 00 20 d4	brk	#0x1
__pthread_mutex_ulock_unlock:
    a9f8:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    a9fc:	fd 03 00 91	mov	x29, sp
    aa00:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    aa04:	08 19 40 b9	ldr	w8, [x8, #24]
    aa08:	01 75 1e 12	and	w1, w8, #0xfffffffc
    aa0c:	08 60 00 91	add	x8, x0, #24
    aa10:		.long	0xb87f8102
    aa14:	5f 00 01 6b	cmp	w2, w1
    aa18:	40 00 00 54	b.eq	0xaa20
    aa1c:	04 00 00 94	bl	__pthread_mutex_ulock_unlock_slow
    aa20:	00 00 80 52	mov	w0, #0
    aa24:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    aa28:	c0 03 5f d6	ret
__pthread_mutex_ulock_unlock_slow:
    aa2c:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    aa30:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    aa34:	fd 43 00 91	add	x29, sp, #16
    aa38:	82 03 00 34	cbz	w2, 0xaaa8
    aa3c:	48 74 1e 12	and	w8, w2, #0xfffffffc
    aa40:	1f 01 01 6b	cmp	w8, w1
    aa44:	01 03 00 54	b.ne	0xaaa4
    aa48:	62 03 00 36	tbz	w2, #0, 0xaab4
    aa4c:	53 00 80 52	mov	w19, #2
    aa50:	13 20 a0 72	movk	w19, #256, lsl #16
    aa54:	14 60 00 91	add	x20, x0, #24
    aa58:	e0 03 13 aa	mov	x0, x19
    aa5c:	e1 03 14 aa	mov	x1, x20
    aa60:	02 00 80 d2	mov	x2, #0
    aa64:	44 04 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    aa68:	00 02 f8 36	tbz	w0, #31, 0xaaa8
    aa6c:	1f 10 00 31	cmn	w0, #4
    aa70:	40 ff ff 54	b.eq	0xaa58
    aa74:	e8 03 00 4b	neg	w8, w0
    aa78:	1f 09 00 71	cmp	w8, #2
    aa7c:	60 01 00 54	b.eq	0xaaa8
    aa80:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    aa84:	14 00 00 d0	adrp	x20, 2 ; 0xc000
    aa88:	94 d6 1d 91	add	x20, x20, #1909 ; literal pool for: "BUG IN LIBPTHREAD: ulock_wake failure"
    aa8c:	55 00 00 d0	adrp	x21, 10 ; 0x14000
    aa90:	b5 22 00 91	add	x21, x21, #8
    aa94:	b4 06 00 f9	str	x20, [x21, #8]
    aa98:	a8 1e 00 f9	str	x8, [x21, #56]
    aa9c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    aaa0:	20 00 20 d4	brk	#0x1
    aaa4:	82 01 00 37	tbnz	w2, #0, 0xaad4
    aaa8:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    aaac:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    aab0:	c0 03 5f d6	ret
    aab4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    aab8:	14 00 00 d0	adrp	x20, 2 ; 0xc000
    aabc:	94 72 23 91	add	x20, x20, #2268 ; literal pool for: "BUG IN LIBPTHREAD: unlock_slow without orig_waiters"
    aac0:	55 00 00 d0	adrp	x21, 10 ; 0x14000
    aac4:	b5 22 00 91	add	x21, x21, #8
    aac8:	b4 06 00 f9	str	x20, [x21, #8]
    aacc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    aad0:	20 00 20 d4	brk	#0x1
    aad4:	48 00 80 52	mov	w8, #2
    aad8:	08 20 a0 72	movk	w8, #256, lsl #16
    aadc:	13 01 16 32	orr	w19, w8, #0x400
    aae0:	dd ff ff 17	b	0xaa54
__pthread_mutex_fairshare_unlock:
    aae4:	08 9c 00 91	add	x8, x0, #39
    aae8:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    aaec:	09 01 40 f9	ldr	x9, [x8]
    aaf0:	2a fd 60 d3	lsr	x10, x9, #32
    aaf4:	4b 01 09 4a	eor	w11, w10, w9
    aaf8:	7f 5d 78 f2	tst	x11, #0xffffff00
    aafc:	20 02 00 54	b.eq	0xab40
    ab00:	0b 7c 00 91	add	x11, x0, #31
    ab04:	6b f1 7d 92	and	x11, x11, #0xfffffffffffffff8
    ab08:	7f 01 00 f9	str	xzr, [x11]
    ab0c:	4b 01 04 11	add	w11, w10, #256
    ab10:	6c 01 09 4a	eor	w12, w11, w9
    ab14:	9f fd 03 71	cmp	w12, #255
    ab18:	88 01 00 54	b.hi	0xab48
    ab1c:	2c 75 7e 92	and	x12, x9, #0xfffffffc
    ab20:	49 7d 60 b3	bfi	x9, x10, #32, #32
    ab24:	8a 81 0b aa	orr	x10, x12, x11, lsl #32
    ab28:	eb 03 09 aa	mov	x11, x9
    ab2c:		.long	0xc8abfd0a
    ab30:	6a fd 60 d3	lsr	x10, x11, #32
    ab34:	7f 01 09 eb	cmp	x11, x9
    ab38:	e9 03 0b aa	mov	x9, x11
    ab3c:	81 fe ff 54	b.ne	0xab0c
    ab40:	00 00 80 52	mov	w0, #0
    ab44:	c0 03 5f d6	ret
    ab48:	ee fe ff 17	b	__pthread_mutex_fairshare_unlock_slow
__pthread_mutex_enable_legacy_mode:
    ab4c:	28 00 80 52	mov	w8, #1
    ab50:	a9 00 00 d0	adrp	x9, 22 ; 0x20000
    ab54:	28 e1 00 39	strb	w8, [x9, #56]
    ab58:	c0 03 5f d6	ret
    ab5c:	6c 00 00 00	udf	#108
    ab60:	68 00 00 00	udf	#104
    ab64:	10 00 00 00	udf	#16
    ab68:	80 01 00 00	udf	#384
    ab6c:	80 01 00 00	udf	#384
    ab70:	80 01 00 00	udf	#384
    ab74:	10 00 00 00	udf	#16
__pthread_mutex_fairshare_lock:
    ab78:	08 9c 00 91	add	x8, x0, #39
    ab7c:	08 f1 7d 92	and	x8, x8, #0xfffffffffffffff8
    ab80:	0a 01 40 f9	ldr	x10, [x8]
    ab84:	8a 03 08 37	tbnz	w10, #1, 0xabf4
    ab88:	09 7c 00 91	add	x9, x0, #31
    ab8c:	29 f1 7d 92	and	x9, x9, #0xfffffffffffffff8
    ab90:	6b d0 3b d5	mrs	x11, TPIDRRO_EL0
    ab94:	6b 81 5f f8	ldur	x11, [x11, #-8]
    ab98:	4d 7d 60 92	and	x13, x10, #0xffffffff00000000
    ab9c:	ec 03 0a 2a	mov	w12, w10
    aba0:	ac 01 0c aa	orr	x12, x13, x12
    aba4:	e1 00 00 34	cbz	w1, 0xabc0
    aba8:	ca 00 08 36	tbz	w10, #1, 0xabc0
    abac:	ea 03 0c aa	mov	x10, x12
    abb0:		.long	0xc8ea7d0c
    abb4:	5f 01 0c eb	cmp	x10, x12
    abb8:	a0 01 00 54	b.eq	0xabec
    abbc:	f7 ff ff 17	b	0xab98
    abc0:	aa 01 08 37	tbnz	w10, #1, 0xabf4
    abc4:	4a 05 00 32	orr	w10, w10, #0x3
    abc8:	4a 01 04 11	add	w10, w10, #256
    abcc:	ad 01 0a aa	orr	x13, x13, x10
    abd0:	ea 03 0c aa	mov	x10, x12
    abd4:		.long	0xc8ea7d0d
    abd8:	5f 01 0c eb	cmp	x10, x12
    abdc:	e1 fd ff 54	b.ne	0xab98
    abe0:	00 00 80 52	mov	w0, #0
    abe4:	2b 01 00 f9	str	x11, [x9]
    abe8:	c0 03 5f d6	ret
    abec:	00 02 80 52	mov	w0, #16
    abf0:	c0 03 5f d6	ret
    abf4:	4f fe ff 17	b	__pthread_mutex_fairshare_lock_slow
__pthread_qos_class_and_override_encode:
    abf8:	08 14 00 51	sub	w8, w0, #5
    abfc:	08 09 88 13	ror	w8, w8, #2
    ac00:	09 7d 7d d3	ubfiz	x9, x8, #3, #32
    ac04:	2a 40 80 d2	mov	x10, #513
    ac08:	0a 60 a0 f2	movk	x10, #768, lsl #16
    ac0c:	8a a0 c0 f2	movk	x10, #1284, lsl #32
    ac10:	0a c0 e0 f2	movk	x10, #1536, lsl #48
    ac14:	49 25 c9 9a	lsr	x9, x10, x9
    ac18:	1f 21 00 71	cmp	w8, #8
    ac1c:	28 31 9f 1a	csel	w8, w9, wzr, lo
    ac20:	69 14 00 51	sub	w9, w3, #5
    ac24:	2b 09 89 13	ror	w11, w9, #2
    ac28:	7f 1d 00 71	cmp	w11, #7
    ac2c:	48 02 00 54	b.hi	0xac74
    ac30:	09 00 80 52	mov	w9, #0
    ac34:	ca 00 80 52	mov	w10, #6
    ac38:	0c 00 00 b0	adrp	x12, 1 ; 0xb000
    ac3c:	8c 01 39 91	add	x12, x12, #3648
    ac40:	8d 00 00 10	adr	x13, #16
    ac44:	8e 69 6b 38	ldrb	w14, [x12, x11]
    ac48:	ad 09 0e 8b	add	x13, x13, x14, lsl #2
    ac4c:	a0 01 1f d6	br	x13
    ac50:	09 00 80 52	mov	w9, #0
    ac54:	ea 03 0b aa	mov	x10, x11
    ac58:	09 00 00 14	b	0xac7c
    ac5c:	09 00 80 52	mov	w9, #0
    ac60:	2a 00 80 52	mov	w10, #1
    ac64:	06 00 00 14	b	0xac7c
    ac68:	09 00 80 52	mov	w9, #0
    ac6c:	4a 00 80 52	mov	w10, #2
    ac70:	03 00 00 14	b	0xac7c
    ac74:	0a 00 80 52	mov	w10, #0
    ac78:	29 00 80 52	mov	w9, #1
    ac7c:	4b 1c 08 12	and	w11, w2, #0xff000000
    ac80:	0c 05 00 51	sub	w12, w8, #1
    ac84:	8c 1d 00 12	and	w12, w12, #0xff
    ac88:	0d 10 80 52	mov	w13, #128
    ac8c:	a8 21 c8 1a	lsl	w8, w13, w8
    ac90:	2d 04 00 51	sub	w13, w1, #1
    ac94:	ad 1d 00 12	and	w13, w13, #0xff
    ac98:	ad 01 0b 2a	orr	w13, w13, w11
    ac9c:	a8 01 08 2a	orr	w8, w13, w8
    aca0:	9f 15 00 71	cmp	w12, #5
    aca4:	68 81 88 1a	csel	w8, w11, w8, hi
    aca8:	0b 00 84 52	mov	w11, #8192
    acac:	6a 21 ca 1a	lsl	w10, w11, w10
    acb0:	4a 01 08 2a	orr	w10, w10, w8
    acb4:	4a 01 09 32	orr	w10, w10, #0x800000
    acb8:	3f 01 00 71	cmp	w9, #0
    acbc:	00 11 8a 1a	csel	w0, w8, w10, ne
    acc0:	c0 03 5f d6	ret
__pthread_qos_class_and_override_decode:
    acc4:	08 00 00 b0	adrp	x8, 1 ; 0xb000
    acc8:	08 31 39 91	add	x8, x8, #3660
    accc:	43 02 00 b4	cbz	x3, 0xad14
    acd0:	09 50 a4 52	mov	w9, #578813952
    acd4:	09 00 09 8a	and	x9, x0, x9
    acd8:	0a 1c 72 92	and	x10, x0, #0x3fc000
    acdc:	3f 01 60 f1	cmp	x9, #2048, lsl #12
    ace0:	44 09 40 fa	ccmp	x10, #0, #4, eq
    ace4:	61 00 00 54	b.ne	0xacf0
    ace8:	09 00 80 52	mov	w9, #0
    acec:	08 00 00 14	b	0xad0c
    acf0:	09 54 0e 53	ubfx	w9, w0, #14, #8
    acf4:	c9 00 00 34	cbz	w9, 0xad0c
    acf8:	29 01 c0 5a	rbit	w9, w9
    acfc:	29 11 c0 5a	clz	w9, w9
    ad00:	3f 15 00 71	cmp	w9, #5
    ad04:	28 04 00 54	b.hi	0xad88
    ad08:	29 05 00 11	add	w9, w9, #1
    ad0c:	09 59 69 b8	ldr	w9, [x8, w9, uxtw #2]
    ad10:	69 00 00 b9	str	w9, [x3]
    ad14:	62 00 00 b4	cbz	x2, 0xad20
    ad18:	09 1c 68 92	and	x9, x0, #0xff000000
    ad1c:	49 00 00 f9	str	x9, [x2]
    ad20:	09 40 a4 52	mov	w9, #570425344
    ad24:	09 00 09 8a	and	x9, x0, x9
    ad28:	e1 00 00 b4	cbz	x1, 0xad44
    ad2c:	0a 14 78 f2	ands	x10, x0, #0x3f00
    ad30:	20 19 40 fa	ccmp	x9, #0, #0, ne
    ad34:	0b 1c 00 13	sxtb	w11, w0
    ad38:	eb 17 8b 1a	csinc	w11, wzr, w11, ne
    ad3c:	2b 00 00 b9	str	w11, [x1]
    ad40:	02 00 00 14	b	0xad48
    ad44:	0a 14 78 92	and	x10, x0, #0x3f00
    ad48:	0b 00 80 52	mov	w11, #0
    ad4c:	69 01 00 b5	cbnz	x9, 0xad78
    ad50:	4a 01 00 b4	cbz	x10, 0xad78
    ad54:	09 34 08 53	ubfx	w9, w0, #8, #6
    ad58:	e9 00 00 34	cbz	w9, 0xad74
    ad5c:	29 01 c0 5a	rbit	w9, w9
    ad60:	29 11 c0 5a	clz	w9, w9
    ad64:	3f 15 00 71	cmp	w9, #5
    ad68:	c8 00 00 54	b.hi	0xad80
    ad6c:	2b 05 00 11	add	w11, w9, #1
    ad70:	02 00 00 14	b	0xad78
    ad74:	0b 00 80 52	mov	w11, #0
    ad78:	00 59 6b b8	ldr	w0, [x8, w11, uxtw #2]
    ad7c:	c0 03 5f d6	ret
    ad80:	00 00 80 52	mov	w0, #0
    ad84:	c0 03 5f d6	ret
    ad88:	09 00 80 52	mov	w9, #0
    ad8c:	e1 ff ff 17	b	0xad10
__pthread_sched_pri_encode:
    ad90:	28 1c 08 12	and	w8, w1, #0xff000000
    ad94:	08 01 00 2a	orr	w8, w8, w0
    ad98:	00 01 03 32	orr	w0, w8, #0x20000000
    ad9c:	c0 03 5f d6	ret
__pthread_sched_pri_decode:
    ada0:	81 00 00 b4	cbz	x1, 0xadb0
    ada4:	08 e0 bb 52	mov	w8, #-553648128
    ada8:	08 00 08 8a	and	x8, x0, x8
    adac:	28 00 00 f9	str	x8, [x1]
    adb0:	08 3c 00 12	and	w8, w0, #0xffff
    adb4:	1f 00 63 f2	tst	x0, #0x20000000
    adb8:	e0 03 88 1a	csel	w0, wzr, w8, eq
    adbc:	c0 03 5f d6	ret
_pthread_prefer_alternate_amx_self:
_pthread_prefer_alternate_cluster_self:
    adc0:	00 04 80 52	mov	w0, #32
    adc4:	01 00 80 d2	mov	x1, #0
    adc8:	02 00 80 52	mov	w2, #0
    adcc:	b0 e5 ff 17	b	__pthread_set_properties_self
__pthread_workqueue_asynchronous_override_add:
    add0:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    add4:	fd 03 00 91	mov	x29, sp
    add8:	e3 03 02 aa	mov	x3, x2
    addc:	e2 03 01 aa	mov	x2, x1
    ade0:	e1 03 00 2a	mov	w1, w0
    ade4:	20 80 80 52	mov	w0, #1025
    ade8:	0f 03 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    adec:	1f 04 00 31	cmn	w0, #1
    adf0:	81 00 00 54	b.ne	0xae00
    adf4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    adf8:	08 05 40 f9	ldr	x8, [x8, #8]
    adfc:	00 01 40 b9	ldr	w0, [x8]
    ae00:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    ae04:	c0 03 5f d6	ret
__pthread_workqueue_asynchronous_override_reset_self:
    ae08:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    ae0c:	fd 03 00 91	mov	x29, sp
    ae10:	e2 03 00 aa	mov	x2, x0
    ae14:	40 80 80 52	mov	w0, #1026
    ae18:	01 00 80 d2	mov	x1, #0
    ae1c:	03 00 80 d2	mov	x3, #0
    ae20:	01 03 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    ae24:	1f 04 00 31	cmn	w0, #1
    ae28:	81 00 00 54	b.ne	0xae38
    ae2c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    ae30:	08 05 40 f9	ldr	x8, [x8, #8]
    ae34:	00 01 40 b9	ldr	w0, [x8]
    ae38:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    ae3c:	c0 03 5f d6	ret
__pthread_workqueue_asynchronous_override_reset_all_self:
    ae40:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    ae44:	fd 03 00 91	mov	x29, sp
    ae48:	40 80 80 52	mov	w0, #1026
    ae4c:	21 00 80 52	mov	w1, #1
    ae50:	02 00 80 d2	mov	x2, #0
    ae54:	03 00 80 d2	mov	x3, #0
    ae58:	f3 02 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    ae5c:	1f 04 00 31	cmn	w0, #1
    ae60:	81 00 00 54	b.ne	0xae70
    ae64:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    ae68:	08 05 40 f9	ldr	x8, [x8, #8]
    ae6c:	00 01 40 b9	ldr	w0, [x8]
    ae70:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    ae74:	c0 03 5f d6	ret
_pthread_time_constraint_max_parallelism:
    ae78:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    ae7c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    ae80:	fd 43 00 91	add	x29, sp, #16
    ae84:	f3 03 00 aa	mov	x19, x0
    ae88:	28 00 00 d0	adrp	x8, 6 ; 0x10000
    ae8c:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    ae90:	09 81 40 f9	ldr	x9, [x8, #256]
    ae94:	3f 05 00 b1	cmn	x9, #1
    ae98:	a1 01 00 54	b.ne	0xaecc
    ae9c:	00 85 40 f9	ldr	x0, [x8, #264]
    aea0:	33 02 00 37	tbnz	w19, #0, 0xaee4
    aea4:	93 00 08 37	tbnz	w19, #1, 0xaeb4
    aea8:	14 40 04 91	add	x20, x0, #272
    aeac:	73 00 80 52	mov	w19, #3
    aeb0:	0f 00 00 14	b	0xaeec
    aeb4:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    aeb8:	08 05 40 f9	ldr	x8, [x8, #8]
    aebc:	c9 02 80 52	mov	w9, #22
    aec0:	09 01 00 b9	str	w9, [x8]
    aec4:	00 00 80 12	mov	w0, #-1
    aec8:	16 00 00 14	b	0xaf20
    aecc:	00 01 04 91	add	x0, x8, #256
    aed0:	e2 ff ff b0	adrp	x2, -3 ; 0x7000
    aed4:	42 50 3f 91	add	x2, x2, #4052
    aed8:	01 28 80 52	mov	w1, #320
    aedc:	32 03 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    aee0:	33 fe 07 36	tbz	w19, #0, 0xaea4
    aee4:	14 78 04 91	add	x20, x0, #286
    aee8:	53 00 80 52	mov	w19, #2
    aeec:	80 02 40 79	ldrh	w0, [x20]
    aef0:	e8 ff 9f 52	mov	w8, #65535
    aef4:	1f 00 08 6b	cmp	w0, w8
    aef8:	41 01 00 54	b.ne	0xaf20
    aefc:	00 00 81 52	mov	w0, #2048
    af00:	01 00 80 d2	mov	x1, #0
    af04:	e2 03 13 aa	mov	x2, x19
    af08:	03 00 80 d2	mov	x3, #0
    af0c:	c6 02 00 94	bl	0xba24 ; symbol stub for: ___bsdthread_ctl
    af10:	1f 04 00 31	cmn	w0, #1
    af14:	c0 00 00 54	b.eq	0xaf2c
    af18:	00 3c 00 12	and	w0, w0, #0xffff
    af1c:	80 02 00 79	strh	w0, [x20]
    af20:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    af24:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    af28:	c0 03 5f d6	ret
    af2c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    af30:	08 05 40 f9	ldr	x8, [x8, #8]
    af34:	00 01 40 b9	ldr	w0, [x8]
    af38:	1f 58 00 71	cmp	w0, #22
    af3c:	60 00 00 54	b.eq	0xaf48
    af40:	1f b4 00 71	cmp	w0, #45
    af44:	01 01 00 54	b.ne	0xaf64
    af48:	e8 4f 70 b2	mov	x8, #68719411200
    af4c:	a8 06 98 f2	movk	x8, #49205
    af50:	73 00 00 37	tbnz	w19, #0, 0xaf5c
    af54:	00 01 40 39	ldrb	w0, [x8]
    af58:	f1 ff ff 17	b	0xaf1c
    af5c:	00 05 40 39	ldrb	w0, [x8, #1]
    af60:	ef ff ff 17	b	0xaf1c
    af64:	6d 02 00 94	bl	_pthread_qos_max_parallelism.cold.1
_posix_spawnattr_set_qos_class_np:
    af68:	3f 14 00 71	cmp	w1, #5
    af6c:	e0 00 00 54	b.eq	0xaf88
    af70:	3f 44 00 71	cmp	w1, #17
    af74:	e0 00 00 54	b.eq	0xaf90
    af78:	3f 24 00 71	cmp	w1, #9
    af7c:	e1 00 00 54	b.ne	0xaf98
    af80:	41 00 80 52	mov	w1, #2
    af84:	65 03 00 14	b	0xbd18 ; symbol stub for: _posix_spawnattr_set_qos_clamp_np
    af88:	61 00 80 52	mov	w1, #3
    af8c:	63 03 00 14	b	0xbd18 ; symbol stub for: _posix_spawnattr_set_qos_clamp_np
    af90:	21 00 80 52	mov	w1, #1
    af94:	61 03 00 14	b	0xbd18 ; symbol stub for: _posix_spawnattr_set_qos_clamp_np
    af98:	c0 02 80 52	mov	w0, #22
    af9c:	c0 03 5f d6	ret
_posix_spawnattr_get_qos_class_np:
    afa0:	41 02 00 b4	cbz	x1, 0xafe8
    afa4:	ff c3 00 d1	sub	sp, sp, #48
    afa8:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    afac:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    afb0:	fd 83 00 91	add	x29, sp, #32
    afb4:	f3 03 01 aa	mov	x19, x1
    afb8:	ff 07 00 f9	str	xzr, [sp, #8]
    afbc:	e1 23 00 91	add	x1, sp, #8
    afc0:	53 03 00 94	bl	0xbd0c ; symbol stub for: _posix_spawnattr_get_qos_clamp_np
    afc4:	c0 01 00 35	cbnz	w0, 0xaffc
    afc8:	e8 07 40 f9	ldr	x8, [sp, #8]
    afcc:	08 05 00 d1	sub	x8, x8, #1
    afd0:	1f 09 00 f1	cmp	x8, #2
    afd4:	e8 00 00 54	b.hi	0xaff0
    afd8:	09 00 00 b0	adrp	x9, 1 ; 0xb000
    afdc:	29 21 3b 91	add	x9, x9, #3784
    afe0:	28 79 68 b8	ldr	w8, [x9, x8, lsl #2]
    afe4:	04 00 00 14	b	0xaff4
    afe8:	c0 02 80 52	mov	w0, #22
    afec:	c0 03 5f d6	ret
    aff0:	08 00 80 52	mov	w8, #0
    aff4:	00 00 80 52	mov	w0, #0
    aff8:	68 02 00 b9	str	w8, [x19]
    affc:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    b000:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    b004:	ff c3 00 91	add	sp, sp, #48
    b008:	c0 03 5f d6	ret
_pthread_rwlockattr_getpshared:
    b00c:	09 00 40 f9	ldr	x9, [x0]
    b010:	2a 88 89 52	mov	w10, #19521
    b014:	ea 4a aa 72	movk	w10, #21079, lsl #16
    b018:	3f 01 0a eb	cmp	x9, x10
    b01c:	c1 00 00 54	b.ne	0xb034
    b020:	e8 03 00 aa	mov	x8, x0
    b024:	00 00 80 52	mov	w0, #0
    b028:	08 09 40 b9	ldr	w8, [x8, #8]
    b02c:	28 00 00 b9	str	w8, [x1]
    b030:	c0 03 5f d6	ret
    b034:	c0 02 80 52	mov	w0, #22
    b038:	c0 03 5f d6	ret
_pthread_rwlockattr_setpshared:
    b03c:	e8 03 00 aa	mov	x8, x0
    b040:	29 04 00 51	sub	w9, w1, #1
    b044:	c0 02 80 52	mov	w0, #22
    b048:	3f 05 00 71	cmp	w9, #1
    b04c:	08 01 00 54	b.hi	0xb06c
    b050:	09 01 40 f9	ldr	x9, [x8]
    b054:	2a 88 89 52	mov	w10, #19521
    b058:	ea 4a aa 72	movk	w10, #21079, lsl #16
    b05c:	3f 01 0a eb	cmp	x9, x10
    b060:	61 00 00 54	b.ne	0xb06c
    b064:	00 00 80 52	mov	w0, #0
    b068:	01 09 00 b9	str	w1, [x8, #8]
    b06c:	c0 03 5f d6	ret
_pthread_rwlock_tryrdlock:
    b070:	08 00 40 f9	ldr	x8, [x0]
    b074:	69 89 89 52	mov	w9, #19531
    b078:	e9 4a aa 72	movk	w9, #21079, lsl #16
    b07c:	1f 01 09 eb	cmp	x8, x9
    b080:	a1 04 00 54	b.ne	0xb114
    b084:	08 bc 00 91	add	x8, x0, #47
    b088:	08 ed 7c 92	and	x8, x8, #0xfffffffffffffff0
    b08c:	0c 01 40 f9	ldr	x12, [x8]
    b090:	2c 04 08 37	tbnz	w12, #1, 0xb114
    b094:	09 05 40 f9	ldr	x9, [x8, #8]
    b098:	2d 81 cc 93	extr	x13, x9, x12, #32
    b09c:	29 5d 18 12	and	w9, w9, #0xffffff00
    b0a0:	aa 00 80 52	mov	w10, #5
    b0a4:	0b 20 c0 d2	mov	x11, #1099511627776
    b0a8:	ee 03 0c 2a	mov	w14, w12
    b0ac:	ae 7d 60 b3	bfi	x14, x13, #32, #32
    b0b0:	9f 01 0a 6a	tst	w12, w10
    b0b4:	c0 00 00 54	b.eq	0xb0cc
    b0b8:	ec 03 0e aa	mov	x12, x14
    b0bc:		.long	0xc8ec7d0e
    b0c0:	9f 01 0e eb	cmp	x12, x14
    b0c4:	00 02 00 54	b.eq	0xb104
    b0c8:	0d 00 00 14	b	0xb0fc
    b0cc:	8f 01 09 4b	sub	w15, w12, w9
    b0d0:	ff 05 04 31	cmn	w15, #257
    b0d4:	08 02 00 54	b.hi	0xb114
    b0d8:	ad 7d 60 d3	lsl	x13, x13, #32
    b0dc:	8c 79 19 12	and	w12, w12, #0xffffffbf
    b0e0:	8c 01 04 11	add	w12, w12, #256
    b0e4:	ad 01 0b 8b	add	x13, x13, x11
    b0e8:	ad 01 0c aa	orr	x13, x13, x12
    b0ec:	ec 03 0e aa	mov	x12, x14
    b0f0:		.long	0xc8ec7d0d
    b0f4:	9f 01 0e eb	cmp	x12, x14
    b0f8:	a0 00 00 54	b.eq	0xb10c
    b0fc:	8d fd 60 d3	lsr	x13, x12, #32
    b100:	ea ff ff 17	b	0xb0a8
    b104:	00 02 80 52	mov	w0, #16
    b108:	c0 03 5f d6	ret
    b10c:	00 00 80 52	mov	w0, #0
    b110:	c0 03 5f d6	ret
    b114:	21 00 80 52	mov	w1, #1
    b118:	22 00 80 52	mov	w2, #1
    b11c:	61 e3 ff 17	b	__pthread_rwlock_lock_slow
_pthread_chdir_np:
    b120:	74 02 00 14	b	0xbaf0 ; symbol stub for: ___pthread_chdir
__pthread_setspecific_static:
    b124:	1f fc 03 f1	cmp	x0, #255
    b128:	c8 00 00 54	b.hi	0xb140
    b12c:	e8 03 00 aa	mov	x8, x0
    b130:	00 00 80 52	mov	w0, #0
    b134:	69 d0 3b d5	mrs	x9, TPIDRRO_EL0
    b138:	21 79 28 f8	str	x1, [x9, x8, lsl #3]
    b13c:	c0 03 5f d6	ret
    b140:	c0 02 80 52	mov	w0, #22
    b144:	c0 03 5f d6	ret
_pthread_introspection_setspecific_np:
    b148:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    b14c:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    b150:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    b154:	fd 83 00 91	add	x29, sp, #32
    b158:	f5 03 02 aa	mov	x21, x2
    b15c:	f3 03 01 aa	mov	x19, x1
    b160:	f4 03 00 aa	mov	x20, x0
    b164:	63 e0 ff 97	bl	_pthread_self
    b168:	08 64 40 79	ldrh	w8, [x0, #50]
    b16c:	1f 05 00 71	cmp	w8, #1
    b170:	c1 03 00 54	b.ne	0xb1e8
    b174:	68 2a 00 d1	sub	x8, x19, #10
    b178:	1f d5 0b f1	cmp	x8, #757
    b17c:	e8 00 00 54	b.hi	0xb198
    b180:	e8 00 00 b0	adrp	x8, 29 ; 0x28000
    b184:	08 e1 00 91	add	x8, x8, #56
    b188:	09 79 73 f8	ldr	x9, [x8, x19, lsl #3]
    b18c:	7f 02 04 f1	cmp	x19, #256
    b190:	e3 00 00 54	b.lo	0xb1ac
    b194:	c9 00 00 b5	cbnz	x9, 0xb1ac
    b198:	c0 02 80 52	mov	w0, #22
    b19c:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    b1a0:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    b1a4:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    b1a8:	c0 03 5f d6	ret
    b1ac:	8a 0e 13 8b	add	x10, x20, x19, lsl #3
    b1b0:	55 71 00 f9	str	x21, [x10, #224]
    b1b4:	7f fe 03 f1	cmp	x19, #255
    b1b8:	88 00 00 54	b.hi	0xb1c8
    b1bc:	69 00 00 b5	cbnz	x9, 0xb1c8
    b1c0:	09 00 80 92	mov	x9, #-1
    b1c4:	09 79 33 f8	str	x9, [x8, x19, lsl #3]
    b1c8:	88 9a 40 79	ldrh	w8, [x20, #76]
    b1cc:	1f 01 13 eb	cmp	x8, x19
    b1d0:	82 00 00 54	b.hs	0xb1e0
    b1d4:	00 00 80 52	mov	w0, #0
    b1d8:	93 9a 00 79	strh	w19, [x20, #76]
    b1dc:	f0 ff ff 17	b	0xb19c
    b1e0:	00 00 80 52	mov	w0, #0
    b1e4:	ee ff ff 17	b	0xb19c
    b1e8:	d6 01 00 94	bl	_pthread_introspection_setspecific_np.cold.1
__pthread_self:
    b1ec:	41 e0 ff 17	b	_pthread_self
_pthread_introspection_getspecific_np:
    b1f0:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    b1f4:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    b1f8:	fd 43 00 91	add	x29, sp, #16
    b1fc:	f3 03 01 aa	mov	x19, x1
    b200:	f4 03 00 aa	mov	x20, x0
    b204:	3b e0 ff 97	bl	_pthread_self
    b208:	08 64 40 79	ldrh	w8, [x0, #50]
    b20c:	1f 11 00 71	cmp	w8, #4
    b210:	c1 00 00 54	b.ne	0xb228
    b214:	88 0e 13 8b	add	x8, x20, x19, lsl #3
    b218:	00 71 40 f9	ldr	x0, [x8, #224]
    b21c:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    b220:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    b224:	c0 03 5f d6	ret
    b228:	ce 01 00 94	bl	_pthread_introspection_getspecific_np.cold.1
__pthread_atfork_child:
    b22c:	ff 43 01 d1	sub	sp, sp, #80
    b230:	fd 7b 04 a9	stp	x29, x30, [sp, #64]
    b234:	fd 03 01 91	add	x29, sp, #64
    b238:	28 00 00 b0	adrp	x8, 5 ; 0x10000
    b23c:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    b240:	09 81 40 f9	ldr	x9, [x8, #256]
    b244:	3f 05 00 b1	cmn	x9, #1
    b248:	21 02 00 54	b.ne	0xb28c
    b24c:	00 85 40 f9	ldr	x0, [x8, #264]
    b250:	1f 08 00 b9	str	wzr, [x0, #8]
    b254:	c8 00 00 b0	adrp	x8, 25 ; 0x24000
    b258:	08 01 01 91	add	x8, x8, #64
    b25c:	1f 01 00 b9	str	wzr, [x8]
    b260:	00 00 40 f9	ldr	x0, [x0]
    b264:	68 f7 ff 97	bl	__pthread_main_thread_postfork_init
    b268:	ff 1b 00 f9	str	xzr, [sp, #48]
    b26c:	00 e4 00 6f	movi.2d	v0, #0000000000000000
    b270:	e0 83 00 ad	stp	q0, q0, [sp, #16]
    b274:	e0 03 80 3d	str	q0, [sp]
    b278:	e0 03 00 91	mov	x0, sp
    b27c:	f4 da ff 97	bl	__pthread_bsdthread_init
    b280:	fd 7b 44 a9	ldp	x29, x30, [sp, #64]
    b284:	ff 43 01 91	add	sp, sp, #80
    b288:	c0 03 5f d6	ret
    b28c:	00 01 04 91	add	x0, x8, #256
    b290:	e2 ff ff 90	adrp	x2, -4 ; 0x7000
    b294:	42 50 3f 91	add	x2, x2, #4052
    b298:	01 28 80 52	mov	w1, #320
    b29c:	42 02 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    b2a0:	ec ff ff 17	b	0xb250
__pthread_atfork_child_handlers:
    b2a4:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    b2a8:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    b2ac:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    b2b0:	fd 83 00 91	add	x29, sp, #32
    b2b4:	28 00 00 b0	adrp	x8, 5 ; 0x10000
    b2b8:	08 91 40 f9	ldr	x8, [x8, #288] ; literal pool symbol address: __os_alloc_once_table
    b2bc:	09 81 40 f9	ldr	x9, [x8, #256]
    b2c0:	3f 05 00 b1	cmn	x9, #1
    b2c4:	81 02 00 54	b.ne	0xb314
    b2c8:	13 85 40 f9	ldr	x19, [x8, #264]
    b2cc:	68 0a 40 f9	ldr	x8, [x19, #16]
    b2d0:	88 01 00 b4	cbz	x8, 0xb300
    b2d4:	14 00 80 d2	mov	x20, #0
    b2d8:	15 02 80 52	mov	w21, #16
    b2dc:	69 86 40 f9	ldr	x9, [x19, #264]
    b2e0:	29 69 75 f8	ldr	x9, [x9, x21]
    b2e4:	69 00 00 b4	cbz	x9, 0xb2f0
    b2e8:	20 01 3f d6	blr	x9
    b2ec:	68 0a 40 f9	ldr	x8, [x19, #16]
    b2f0:	94 06 00 91	add	x20, x20, #1
    b2f4:	b5 62 00 91	add	x21, x21, #24
    b2f8:	9f 02 08 eb	cmp	x20, x8
    b2fc:	03 ff ff 54	b.lo	0xb2dc
    b300:	7f 0e 00 b9	str	wzr, [x19, #12]
    b304:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    b308:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    b30c:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    b310:	c0 03 5f d6	ret
    b314:	00 01 04 91	add	x0, x8, #256
    b318:	e2 ff ff 90	adrp	x2, -4 ; 0x7000
    b31c:	42 50 3f 91	add	x2, x2, #4052
    b320:	01 28 80 52	mov	w1, #320
    b324:	20 02 00 94	bl	0xbba4 ; symbol stub for: __os_alloc_once
    b328:	f3 03 00 aa	mov	x19, x0
    b32c:	e8 ff ff 17	b	0xb2cc
__pthread_fork_child:
    b330:	bf ff ff 17	b	__pthread_atfork_child
__pthread_fork_child_postinit:
    b334:	dc ff ff 17	b	__pthread_atfork_child_handlers
_pthread_dependency_init_np:
    b338:	f4 4f be a9	stp	x20, x19, [sp, #-32]!
    b33c:	fd 7b 01 a9	stp	x29, x30, [sp, #16]
    b340:	fd 43 00 91	add	x29, sp, #16
    b344:	f3 03 00 aa	mov	x19, x0
    b348:	42 00 00 b4	cbz	x2, 0xb350
    b34c:	5f 00 40 39	ldrb	wzr, [x2]
    b350:	e0 03 01 aa	mov	x0, x1
    b354:	f3 df ff 97	bl	_pthread_mach_thread_np
    b358:	60 7e 00 29	stp	w0, wzr, [x19]
    b35c:	7f 06 00 f9	str	xzr, [x19, #8]
    b360:	fd 7b 41 a9	ldp	x29, x30, [sp, #16]
    b364:	f4 4f c2 a8	ldp	x20, x19, [sp], #32
    b368:	c0 03 5f d6	ret
__pthread_dependency_fulfill_slow:
    b36c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    b370:	fd 03 00 91	mov	x29, sp
    b374:	3f 04 00 31	cmn	w1, #1
    b378:	40 03 00 54	b.eq	0xb3e0
    b37c:	68 d0 3b d5	mrs	x8, TPIDRRO_EL0
    b380:	08 19 40 b9	ldr	w8, [x8, #24]
    b384:	1f 01 01 6b	cmp	w8, w1
    b388:	81 01 00 54	b.ne	0xb3b8
    b38c:	01 10 00 91	add	x1, x0, #4
    b390:	40 00 80 52	mov	w0, #2
    b394:	00 20 a0 72	movk	w0, #256, lsl #16
    b398:	02 00 80 d2	mov	x2, #0
    b39c:	f6 01 00 94	bl	0xbb74 ; symbol stub for: ___ulock_wake
    b3a0:	e8 03 00 4b	neg	w8, w0
    b3a4:	09 01 1f 32	orr	w9, w8, #0x2
    b3a8:	3f 09 00 71	cmp	w9, #2
    b3ac:	a1 02 00 54	b.ne	0xb400
    b3b0:	fd 7b c1 a8	ldp	x29, x30, [sp], #16
    b3b4:	c0 03 5f d6	ret
    b3b8:	e8 03 01 2a	mov	w8, w1
    b3bc:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b3c0:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b3c4:	94 6a 2e 91	add	x20, x20, #2970 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Fulfilled a dependency not owned by current thread"
    b3c8:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b3cc:	b5 22 00 91	add	x21, x21, #8
    b3d0:	b4 06 00 f9	str	x20, [x21, #8]
    b3d4:	a8 1e 00 f9	str	x8, [x21, #56]
    b3d8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b3dc:	20 00 20 d4	brk	#0x1
    b3e0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b3e4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b3e8:	94 62 2d 91	add	x20, x20, #2904 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Fufilling pthread_dependency_t twice"
    b3ec:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b3f0:	b5 22 00 91	add	x21, x21, #8
    b3f4:	b4 06 00 f9	str	x20, [x21, #8]
    b3f8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b3fc:	20 00 20 d4	brk	#0x1
    b400:	08 7d 40 93	sxtw	x8, w8
    b404:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b408:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b40c:	94 aa 2f 91	add	x20, x20, #3050 ; literal pool for: "BUG IN LIBPTHREAD: __ulock_wake() failed"
    b410:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b414:	b5 22 00 91	add	x21, x21, #8
    b418:	b4 06 00 f9	str	x20, [x21, #8]
    b41c:	a8 1e 00 f9	str	x8, [x21, #56]
    b420:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b424:	20 00 20 d4	brk	#0x1
_pthread_dependency_fulfill_np:
    b428:	01 04 00 f9	str	x1, [x0, #8]
    b42c:	08 10 00 91	add	x8, x0, #4
    b430:	09 00 80 12	mov	w9, #-1
    b434:		.long	0xb8698101
    b438:	41 00 00 34	cbz	w1, 0xb440
    b43c:	cc ff ff 17	b	__pthread_dependency_fulfill_slow
    b440:	c0 03 5f d6	ret
_pthread_dependency_wait_np:
    b444:	f6 57 bd a9	stp	x22, x21, [sp, #-48]!
    b448:	f4 4f 01 a9	stp	x20, x19, [sp, #16]
    b44c:	fd 7b 02 a9	stp	x29, x30, [sp, #32]
    b450:	fd 83 00 91	add	x29, sp, #32
    b454:	f3 03 00 aa	mov	x19, x0
    b458:	09 00 80 52	mov	w9, #0
    b45c:	f4 03 00 aa	mov	x20, x0
    b460:	88 46 40 b8	ldr	w8, [x20], #4
    b464:		.long	0x88a97e88
    b468:	3f 01 00 71	cmp	w9, #0
    b46c:	41 02 00 54	b.ne	0xb4b4
    b470:	35 00 80 52	mov	w21, #1
    b474:	36 02 88 52	mov	w22, #16401
    b478:	e2 03 08 2a	mov	w2, w8
    b47c:	40 00 80 52	mov	w0, #2
    b480:	00 20 a0 72	movk	w0, #256, lsl #16
    b484:	e1 03 14 aa	mov	x1, x20
    b488:	03 00 80 52	mov	w3, #0
    b48c:	b4 01 00 94	bl	0xbb5c ; symbol stub for: ___ulock_wait
    b490:	e0 03 00 4b	neg	w0, w0
    b494:	1f 38 00 71	cmp	w0, #14
    b498:	a8 22 c0 1a	lsl	w8, w21, w0
    b49c:	08 01 16 0a	and	w8, w8, w22
    b4a0:	04 99 40 7a	ccmp	w8, #0, #4, ls
    b4a4:	80 01 00 54	b.eq	0xb4d4
    b4a8:	69 22 40 29	ldp	w9, w8, [x19]
    b4ac:	1f 01 09 6b	cmp	w8, w9
    b4b0:	40 fe ff 54	b.eq	0xb478
    b4b4:		.long	0xb8bfc280
    b4b8:	1f 04 00 31	cmn	w0, #1
    b4bc:	61 01 00 54	b.ne	0xb4e8
    b4c0:	60 06 40 f9	ldr	x0, [x19, #8]
    b4c4:	fd 7b 42 a9	ldp	x29, x30, [sp, #32]
    b4c8:	f4 4f 41 a9	ldp	x20, x19, [sp, #16]
    b4cc:	f6 57 c3 a8	ldp	x22, x21, [sp], #48
    b4d0:	c0 03 5f d6	ret
    b4d4:	1f a4 01 71	cmp	w0, #105
    b4d8:	61 00 00 54	b.ne	0xb4e4
    b4dc:	e0 03 13 aa	mov	x0, x19
    b4e0:	44 01 00 94	bl	_pthread_dependency_wait_np.cold.3
    b4e4:	2f 01 00 94	bl	_pthread_dependency_wait_np.cold.1
    b4e8:	38 01 00 94	bl	_pthread_dependency_wait_np.cold.2
__pthread_atomic_xchg_ptr:
    b4ec:		.long	0xf8e18000
    b4f0:	c0 03 5f d6	ret
__pthread_atomic_xchg_uint32_relaxed:
    b4f4:		.long	0xb8218000
    b4f8:	c0 03 5f d6	ret
___pthread_invalid_workloopfunction:
    b4fc:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b500:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b504:	94 de 18 91	add	x20, x20, #1591 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Invalid kqwl setup"
    b508:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b50c:	b5 22 00 91	add	x21, x21, #8
    b510:	b4 06 00 f9	str	x20, [x21, #8]
    b514:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b518:	20 00 20 d4	brk	#0x1
___pthread_invalid_keventfunction:
    b51c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b520:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b524:	94 9e 19 91	add	x20, x20, #1639 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Invalid kqworkq setup"
    b528:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b52c:	b5 22 00 91	add	x21, x21, #8
    b530:	b4 06 00 f9	str	x20, [x21, #8]
    b534:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b538:	20 00 20 d4	brk	#0x1
_pthread_mach_thread_np.cold.2:
_pthread_get_stacksize_np.cold.1:
_pthread_get_stackaddr_np.cold.1:
_pthread_threadid_np.cold.1:
_pthread_getname_np.cold.1:
_pthread_setname_np.cold.1:
_pthread_detach.cold.1:
_pthread_kill.cold.1:
_pthread_kill.cold.2:
_pthread_kill.cold.3:
___pthread_workqueue_setkill.cold.1:
_pthread_getschedparam.cold.1:
_pthread_setschedparam.cold.1:
_pthread_setschedparam.cold.2:
_pthread_setschedparam.cold.3:
_pthread_cancel.cold.1:
_pthread_cancel.cold.2:
_pthread_setcancelstate.cold.1:
_pthread_setcanceltype.cold.1:
_pthread_testcancel.cold.1:
__pthread_exit_if_canceled.cold.1:
__pthread_set_properties_self.cold.1:
_pthread_set_qos_class_np.cold.1:
_pthread_mach_thread_np.cold.1:
    b53c:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    b540:	fd 03 00 91	mov	x29, sp
    b544:	02 00 00 b0	adrp	x2, 1 ; 0xc000
    b548:	42 10 0e 91	add	x2, x2, #900 ; literal pool for: "pthread_t was corrupted"
    b54c:	4d f8 ff 97	bl	_OUTLINED_FUNCTION_0
_pthread_jit_write_protect_np.cold.1:
    b550:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b554:	14 00 00 90	adrp	x20, 0 ; 0xb000
    b558:	94 96 3e 91	add	x20, x20, #4005 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_protect_np() disallowed by allowlist"
    b55c:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b560:	b5 22 00 91	add	x21, x21, #8
    b564:	b4 06 00 f9	str	x20, [x21, #8]
    b568:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b56c:	20 00 20 d4	brk	#0x1
_pthread_jit_write_with_callback_np.cold.1:
    b570:	88 00 00 b0	adrp	x8, 17 ; 0x1c000
    b574:	08 05 40 39	ldrb	w8, [x8, #1]
    b578:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b57c:	14 00 00 90	adrp	x20, 0 ; 0xb000
    b580:	94 e6 3f 91	add	x20, x20, #4089 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_with_callback_np() called before pthread_jit_write_freeze_callbacks_np()"
    b584:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b588:	b5 22 00 91	add	x21, x21, #8
    b58c:	b4 06 00 f9	str	x20, [x21, #8]
    b590:	a8 1e 00 f9	str	x8, [x21, #56]
    b594:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b598:	20 00 20 d4	brk	#0x1
_pthread_jit_write_with_callback_np.cold.2:
    b59c:	e8 03 00 aa	mov	x8, x0
    b5a0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b5a4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b5a8:	94 c6 01 91	add	x20, x20, #113 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_with_callback_np() callback not in allowlist"
    b5ac:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b5b0:	b5 22 00 91	add	x21, x21, #8
    b5b4:	b4 06 00 f9	str	x20, [x21, #8]
    b5b8:	a8 1e 00 f9	str	x8, [x21, #56]
    b5bc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b5c0:	20 00 20 d4	brk	#0x1
_pthread_jit_write_freeze_callbacks_np.cold.1:
    b5c4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b5c8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b5cc:	94 36 03 91	add	x20, x20, #205 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_freeze_callbacks_np() called but freeze-late entitlement is missing"
    b5d0:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b5d4:	b5 22 00 91	add	x21, x21, #8
    b5d8:	b4 06 00 f9	str	x20, [x21, #8]
    b5dc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b5e0:	20 00 20 d4	brk	#0x1
_pthread_jit_write_freeze_callbacks_np.cold.2:
    b5e4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b5e8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b5ec:	94 02 05 91	add	x20, x20, #320 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_jit_write_freeze_callbacks_np() already called"
    b5f0:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b5f4:	b5 22 00 91	add	x21, x21, #8
    b5f8:	b4 06 00 f9	str	x20, [x21, #8]
    b5fc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b600:	20 00 20 d4	brk	#0x1
__pthread_jit_write_protect_freeze_config.cold.1:
    b604:	08 7c 40 93	sxtw	x8, w0
    b608:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b60c:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b610:	94 72 0e 91	add	x20, x20, #924 ; literal pool for: "BUG IN LIBPTHREAD: jit config vm_protect() failed"
    b614:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b618:	b5 22 00 91	add	x21, x21, #8
    b61c:	b4 06 00 f9	str	x20, [x21, #8]
    b620:	a8 1e 00 f9	str	x8, [x21, #56]
    b624:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b628:	20 00 20 d4	brk	#0x1
__pthread_create.cold.1:
    b62c:	e8 03 00 aa	mov	x8, x0
    b630:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b634:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b638:	94 7a 10 91	add	x20, x20, #1054 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Stack size in attrs is too small"
    b63c:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b640:	b5 22 00 91	add	x21, x21, #8
    b644:	b4 06 00 f9	str	x20, [x21, #8]
    b648:	a8 1e 00 f9	str	x8, [x21, #56]
    b64c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b650:	20 00 20 d4	brk	#0x1
__pthread_create.cold.2:
    b654:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b658:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b65c:	94 3a 0f 91	add	x20, x20, #974 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Unable to allocate thread port, possible port leak"
    b660:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b664:	b5 22 00 91	add	x21, x21, #8
    b668:	b4 06 00 f9	str	x20, [x21, #8]
    b66c:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b670:	20 00 20 d4	brk	#0x1
__pthread_create.cold.3:
    b674:	e8 03 00 aa	mov	x8, x0
    b678:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b67c:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b680:	94 72 11 91	add	x20, x20, #1116 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Unaligned stack addr in attrs"
    b684:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b688:	b5 22 00 91	add	x21, x21, #8
    b68c:	b4 06 00 f9	str	x20, [x21, #8]
    b690:	a8 1e 00 f9	str	x8, [x21, #56]
    b694:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b698:	20 00 20 d4	brk	#0x1
_pthread_install_workgroup_functions_np.cold.1:
    b69c:	e8 03 00 aa	mov	x8, x0
    b6a0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b6a4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b6a8:	94 52 06 91	add	x20, x20, #404 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: workgroup functions already installed"
    b6ac:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b6b0:	b5 22 00 91	add	x21, x21, #8
    b6b4:	b4 06 00 f9	str	x20, [x21, #8]
    b6b8:	a8 1e 00 f9	str	x8, [x21, #56]
    b6bc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b6c0:	20 00 20 d4	brk	#0x1
_pthread_create_with_workgroup_np.cold.1:
    b6c4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b6c8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b6cc:	94 5e 07 91	add	x20, x20, #471 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: workgroup functions not yet installed"
    b6d0:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b6d4:	b5 22 00 91	add	x21, x21, #8
    b6d8:	b4 06 00 f9	str	x20, [x21, #8]
    b6dc:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b6e0:	20 00 20 d4	brk	#0x1
__pthread_joiner_wake.cold.1:
    b6e4:	e8 03 00 4b	neg	w8, w0
    b6e8:	08 7d 40 93	sxtw	x8, w8
    b6ec:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b6f0:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b6f4:	94 5e 12 91	add	x20, x20, #1175 ; literal pool for: "BUG IN LIBPTHREAD: pthread_join() wake failure"
    b6f8:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b6fc:	b5 22 00 91	add	x21, x21, #8
    b700:	b4 06 00 f9	str	x20, [x21, #8]
    b704:	a8 1e 00 f9	str	x8, [x21, #56]
    b708:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b70c:	20 00 20 d4	brk	#0x1
___pthread_init.cold.1:
    b710:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b714:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b718:	94 ee 09 91	add	x20, x20, #635 ; literal pool for: "BUG IN LIBPTHREAD: PTHREAD_SELF TSD not initialized"
    b71c:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b720:	b5 22 00 91	add	x21, x21, #8
    b724:	b4 06 00 f9	str	x20, [x21, #8]
    b728:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b72c:	20 00 20 d4	brk	#0x1
___pthread_init.cold.2:
    b730:	08 00 80 d2	mov	x8, #0
    b734:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b738:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b73c:	94 26 15 91	add	x20, x20, #1353 ; literal pool for: "BUG IN LIBPTHREAD: Token from the kernel is 0"
    b740:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b744:	b5 22 00 91	add	x21, x21, #8
    b748:	b4 06 00 f9	str	x20, [x21, #8]
    b74c:	a8 1e 00 f9	str	x8, [x21, #56]
    b750:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b754:	20 00 20 d4	brk	#0x1
___pthread_init.cold.3:
    b758:	08 7c 40 93	sxtw	x8, w0
    b75c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b760:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b764:	94 fe 15 91	add	x20, x20, #1407 ; literal pool for: "BUG IN LIBPTHREAD: jit config vm_map PERMANENT failed"
    b768:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b76c:	b5 22 00 91	add	x21, x21, #8
    b770:	b4 06 00 f9	str	x20, [x21, #8]
    b774:	a8 1e 00 f9	str	x8, [x21, #56]
    b778:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b77c:	20 00 20 d4	brk	#0x1
___pthread_init.cold.4:
    b780:	08 7c 40 93	sxtw	x8, w0
    b784:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b788:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b78c:	94 be 0a 91	add	x20, x20, #687 ; literal pool for: "BUG IN LIBPTHREAD: host_info() failed"
    b790:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b794:	b5 22 00 91	add	x21, x21, #8
    b798:	b4 06 00 f9	str	x20, [x21, #8]
    b79c:	a8 1e 00 f9	str	x8, [x21, #56]
    b7a0:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b7a4:	20 00 20 d4	brk	#0x1
__pthread_bsdthread_init.cold.1:
    b7a8:	e8 03 00 2a	mov	w8, w0
    b7ac:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b7b0:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b7b4:	94 ae 0b 91	add	x20, x20, #747 ; literal pool for: "BUG IN LIBPTHREAD: Missing required kernel support"
    b7b8:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b7bc:	b5 22 00 91	add	x21, x21, #8
    b7c0:	b4 06 00 f9	str	x20, [x21, #8]
    b7c4:	a8 1e 00 f9	str	x8, [x21, #56]
    b7c8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b7cc:	20 00 20 d4	brk	#0x1
__pthread_main_thread_postfork_init.cold.1:
    b7d0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b7d4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b7d8:	94 c6 13 91	add	x20, x20, #1265 ; literal pool for: "BUG IN LIBPTHREAD: failed to set thread_id"
    b7dc:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b7e0:	b5 22 00 91	add	x21, x21, #8
    b7e4:	b4 06 00 f9	str	x20, [x21, #8]
    b7e8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b7ec:	20 00 20 d4	brk	#0x1
__pthread_wqthread.cold.1:
    b7f0:	08 7c 40 93	sxtw	x8, w0
    b7f4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b7f8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b7fc:	94 4e 18 91	add	x20, x20, #1555 ; literal pool for: "BUG IN LIBPTHREAD: Missing priority"
    b800:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b804:	b5 22 00 91	add	x21, x21, #8
    b808:	b4 06 00 f9	str	x20, [x21, #8]
    b80c:	a8 1e 00 f9	str	x8, [x21, #56]
    b810:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b814:	20 00 20 d4	brk	#0x1
__pthread_workqueue_supported.cold.1:
    b818:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b81c:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b820:	94 36 0d 91	add	x20, x20, #845 ; literal pool for: "BUG IN LIBPTHREAD: libpthread has not been initialized"
    b824:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b828:	b5 22 00 91	add	x21, x21, #8
    b82c:	b4 06 00 f9	str	x20, [x21, #8]
    b830:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b834:	20 00 20 d4	brk	#0x1
__pthread_jit_write_protect_bulk_image_load_callback.cold.1:
    b838:	e8 03 00 aa	mov	x8, x0
    b83c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b840:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b844:	94 46 17 91	add	x20, x20, #1489 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Too many pthread jit write callbacks"
    b848:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b84c:	b5 22 00 91	add	x21, x21, #8
    b850:	b4 06 00 f9	str	x20, [x21, #8]
    b854:	a8 1e 00 f9	str	x8, [x21, #56]
    b858:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b85c:	20 00 20 d4	brk	#0x1
_pthread_cond_signal_thread_np.cold.1:
_pthread_cond_signal.cold.1:
_pthread_cond_broadcast.cold.1:
    b860:	e8 03 00 2a	mov	w8, w0
    b864:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b868:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b86c:	94 72 1c 91	add	x20, x20, #1820 ; literal pool for: "BUG IN LIBPTHREAD: impossible cond signature"
    b870:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b874:	b5 22 00 91	add	x21, x21, #8
    b878:	b4 06 00 f9	str	x20, [x21, #8]
    b87c:	a8 1e 00 f9	str	x8, [x21, #56]
    b880:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b884:	20 00 20 d4	brk	#0x1
_pthread_cond_signal_thread_np.cold.2:
_pthread_cond_signal.cold.2:
_pthread_cond_broadcast.cold.2:
    b888:	e8 03 00 2a	mov	w8, w0
    b88c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b890:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b894:	94 d6 1d 91	add	x20, x20, #1909 ; literal pool for: "BUG IN LIBPTHREAD: ulock_wake failure"
    b898:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b89c:	b5 22 00 91	add	x21, x21, #8
    b8a0:	b4 06 00 f9	str	x20, [x21, #8]
    b8a4:	a8 1e 00 f9	str	x8, [x21, #56]
    b8a8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b8ac:	20 00 20 d4	brk	#0x1
_pthread_cond_signal_thread_np.cold.3:
_pthread_cond_signal.cold.3:
_pthread_cond_broadcast.cold.3:
    b8b0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b8b4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b8b8:	94 26 1d 91	add	x20, x20, #1865 ; literal pool for: "BUG IN LIBPTHREAD: EALREADY from ulock_wake"
    b8bc:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b8c0:	b5 22 00 91	add	x21, x21, #8
    b8c4:	b4 06 00 f9	str	x20, [x21, #8]
    b8c8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b8cc:	20 00 20 d4	brk	#0x1
__pthread_mutex_corruption_abort:
    b8d0:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b8d4:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b8d8:	94 1e 21 91	add	x20, x20, #2119 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: pthread_mutex corruption: mutex owner changed in the middle of lock/unlock"
    b8dc:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b8e0:	b5 22 00 91	add	x21, x21, #8
    b8e4:	b4 06 00 f9	str	x20, [x21, #8]
    b8e8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b8ec:	20 00 20 d4	brk	#0x1
__pthread_qos_class_encode_workqueue.cold.1:
    b8f0:	08 7c 40 93	sxtw	x8, w0
    b8f4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b8f8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b8fc:	94 42 24 91	add	x20, x20, #2320 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Invalid priority"
    b900:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b904:	b5 22 00 91	add	x21, x21, #8
    b908:	b4 06 00 f9	str	x20, [x21, #8]
    b90c:	a8 1e 00 f9	str	x8, [x21, #56]
    b910:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b914:	20 00 20 d4	brk	#0x1
_pthread_time_constraint_max_parallelism.cold.1:
_pthread_qos_max_parallelism.cold.1:
    b918:	08 7c 40 93	sxtw	x8, w0
    b91c:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b920:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b924:	94 fa 24 91	add	x20, x20, #2366 ; literal pool for: "BUG IN LIBPTHREAD: qos_max_parallelism failed"
    b928:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b92c:	b5 22 00 91	add	x21, x21, #8
    b930:	b4 06 00 f9	str	x20, [x21, #8]
    b934:	a8 1e 00 f9	str	x8, [x21, #56]
    b938:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b93c:	20 00 20 d4	brk	#0x1
_pthread_introspection_setspecific_np.cold.1:
    b940:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b944:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b948:	94 aa 28 91	add	x20, x20, #2602 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Calling pthread_introspection_setspecific_np outside of a CREATE introspection hook"
    b94c:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b950:	b5 22 00 91	add	x21, x21, #8
    b954:	b4 06 00 f9	str	x20, [x21, #8]
    b958:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b95c:	20 00 20 d4	brk	#0x1
_pthread_introspection_getspecific_np.cold.1:
    b960:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b964:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b968:	94 6e 2a 91	add	x20, x20, #2715 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Calling pthread_introspection_getspecific_np outside of a DESTROY introspection hook"
    b96c:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b970:	b5 22 00 91	add	x21, x21, #8
    b974:	b4 06 00 f9	str	x20, [x21, #8]
    b978:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b97c:	20 00 20 d4	brk	#0x1
_pthread_self.cold.1:
    b980:	fd 7b bf a9	stp	x29, x30, [sp, #-16]!
    b984:	fd 03 00 91	mov	x29, sp
    b988:	02 00 00 b0	adrp	x2, 1 ; 0xc000
    b98c:	42 10 0e 91	add	x2, x2, #900 ; literal pool for: "pthread_t was corrupted"
    b990:	40 02 80 52	mov	w0, #18
    b994:	81 00 80 52	mov	w1, #4
    b998:	03 00 80 d2	mov	x3, #0
    b99c:	a3 00 00 94	bl	0xbc28 ; symbol stub for: _abort_with_reason
_pthread_dependency_wait_np.cold.1:
    b9a0:	08 7c 40 93	sxtw	x8, w0
    b9a4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b9a8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b9ac:	94 3e 31 91	add	x20, x20, #3151 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: __ulock_wait() failed"
    b9b0:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b9b4:	b5 22 00 91	add	x21, x21, #8
    b9b8:	b4 06 00 f9	str	x20, [x21, #8]
    b9bc:	a8 1e 00 f9	str	x8, [x21, #56]
    b9c0:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b9c4:	20 00 20 d4	brk	#0x1
_pthread_dependency_wait_np.cold.2:
    b9c8:	e8 03 00 2a	mov	w8, w0
    b9cc:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b9d0:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b9d4:	94 0a 32 91	add	x20, x20, #3202 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Corrupted pthread_dependency_t"
    b9d8:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    b9dc:	b5 22 00 91	add	x21, x21, #8
    b9e0:	b4 06 00 f9	str	x20, [x21, #8]
    b9e4:	a8 1e 00 f9	str	x8, [x21, #56]
    b9e8:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    b9ec:	20 00 20 d4	brk	#0x1
_pthread_dependency_wait_np.cold.3:
    b9f0:	08 00 40 b9	ldr	w8, [x0]
    b9f4:	f4 57 bf a9	stp	x20, x21, [sp, #-16]!
    b9f8:	14 00 00 b0	adrp	x20, 1 ; 0xc000
    b9fc:	94 4e 30 91	add	x20, x20, #3091 ; literal pool for: "BUG IN CLIENT OF LIBPTHREAD: Waiting on orphaned dependency"
    ba00:	55 00 00 b0	adrp	x21, 9 ; 0x14000
    ba04:	b5 22 00 91	add	x21, x21, #8
    ba08:	b4 06 00 f9	str	x20, [x21, #8]
    ba0c:	a8 1e 00 f9	str	x8, [x21, #56]
    ba10:	f4 57 c1 a8	ldp	x20, x21, [sp], #16
    ba14:	20 00 20 d4	brk	#0x1

SYMBOL TABLE:
0000000000001cdc l     F __TEXT,__text __pthread_strtoul
0000000000001d68 l     F __TEXT,__text .hidden __pthread_main_thread_init
0000000000001e4c l     F __TEXT,__text .hidden __pthread_bsdthread_init
0000000000001f4c l     F __TEXT,__text .hidden __pthread_set_main_qos
0000000000001f58 l     F __TEXT,__text .hidden __pthread_key_global_init
0000000000001fb0 l     F __TEXT,__text .hidden __pthread_mutex_global_init
00000000000022c0 l     F __TEXT,__text .hidden __pthread_mutex_lock_init_slow
0000000000002348 l     F __TEXT,__text __pthread_mutex_check_init_slow
0000000000002584 l     F __TEXT,__text .hidden __pthread_mutex_firstfit_lock_slow
0000000000002754 l     F __TEXT,__text __pthread_mutex_unlock_init_slow
00000000000027d4 l     F __TEXT,__text .hidden __pthread_mutex_firstfit_unlock_slow
0000000000002d3c l     F __TEXT,__text __pthread_cond_check_init_slow
000000000000382c l     F __TEXT,__text ___pthread_once_handler
0000000000003c0c l     F __TEXT,__text __pthread_wqthread_setup
0000000000003ea0 l     F __TEXT,__text .hidden __pthread_rwlock_lock_slow
0000000000004164 l     F __TEXT,__text __pthread_rwlock_check_init_slow
0000000000004414 l     F __TEXT,__text .hidden __pthread_markcancel_if_canceled
0000000000004674 l     F __TEXT,__text .hidden __pthread_mutex_droplock
000000000000489c l     F __TEXT,__text __pthread_cond_updateval
0000000000004a8c l     F __TEXT,__text __pthread_mutex_firstfit_lock_wait
0000000000004b30 l     F __TEXT,__text __pthread_mutex_firstfit_wake
0000000000004fd4 l     F __TEXT,__text __pthread_wqthread_exit
0000000000005078 l     F __TEXT,__text .hidden __pthread_setcancelstate_exit
00000000000050a4 l     F __TEXT,__text .hidden __pthread_tsd_cleanup
000000000000534c l     F __TEXT,__text __pthread_terminate_invoke
00000000000053a4 l     F __TEXT,__text __pthread_terminate
0000000000005e64 l     F __TEXT,__text __pthread_rwlock_lock_wait
0000000000005fa8 l     F __TEXT,__text .hidden __pthread_rwlock_unlock_slow
000000000000612c l     F __TEXT,__text __pthread_rwlock_unlock_drop
00000000000070c0 l     F __TEXT,__text __pthread_current_stack_address
00000000000071d8 l     F __TEXT,__text .hidden __pthread_joiner_prepost_wake
000000000000723c l     F __TEXT,__text __pthread_joiner_wake
0000000000007284 l     F __TEXT,__text .hidden __pthread_deallocate
00000000000077f0 l     F __TEXT,__text .hidden __pthread_cond_wait
0000000000007d6c l     F __TEXT,__text __pthread_exit
0000000000007fd4 l     F __TEXT,__text .hidden __pthread_globals_init
0000000000008380 l     F __TEXT,__text __pthread_threadid_slow
0000000000008924 l     F __TEXT,__text __pthread_jit_write_protect_freeze_config
0000000000008960 l     F __TEXT,__text __pthread_create
0000000000008ff0 l     F __TEXT,__text __pthread_introspection_thread_start
0000000000009004 l     F __TEXT,__text .hidden __pthread_main_thread_postfork_init
0000000000009110 l     F __TEXT,__text __pthread_wqthread_legacy_worker_wrap
0000000000009354 l     F __TEXT,__text .hidden _bzero
0000000000009358 l     F __TEXT,__text __pthread_introspection_hook_callout_thread_create
00000000000093bc l     F __TEXT,__text __pthread_introspection_hook_callout_thread_terminate
000000000000944c l     F __TEXT,__text __pthread_jit_write_protect_bulk_image_load_callback
000000000000958c l     F __TEXT,__text __pthread_introspection_hook_callout_thread_start
000000000000961c l     F __TEXT,__text __pthread_introspection_hook_callout_thread_destroy
0000000000009680 l     F __TEXT,__text _OUTLINED_FUNCTION_0
0000000000009680 l     F __TEXT,__text _OUTLINED_FUNCTION_0
0000000000009680 l     F __TEXT,__text _OUTLINED_FUNCTION_0
00000000000097c4 l     F __TEXT,__text .hidden __pthread_join
0000000000009be4 l     F __TEXT,__text __pthread_joiner_abort_wait
000000000000a0b4 l     F __TEXT,__text __pthread_ulock_cond_wait_complete
000000000000a118 l     F __TEXT,__text __pthread_ulock_cond_cleanup
000000000000a150 l     F __TEXT,__text __pthread_psynch_cond_cleanup
000000000000a198 l     F __TEXT,__text _mutex_seq_atomic_cmpxchgv_relaxed
000000000000a1b8 l     F __TEXT,__text _mutex_seq_atomic_cmpxchgv_acquire
000000000000a1d8 l     F __TEXT,__text _mutex_seq_atomic_cmpxchgv_release
000000000000a530 l     F __TEXT,__text .hidden __pthread_mutex_fairshare_lock_slow
000000000000a638 l     F __TEXT,__text __pthread_mutex_fairshare_lock_wait
000000000000a700 l     F __TEXT,__text .hidden __pthread_mutex_fairshare_unlock_slow
000000000000a824 l     F __TEXT,__text __pthread_mutex_fairshare_unlock_drop
000000000000a88c l     F __TEXT,__text .hidden __pthread_mutex_ulock_lock
000000000000a8d8 l     F __TEXT,__text __pthread_mutex_ulock_lock_slow
000000000000a9f8 l     F __TEXT,__text .hidden __pthread_mutex_ulock_unlock
000000000000aa2c l     F __TEXT,__text __pthread_mutex_ulock_unlock_slow
000000000000aae4 l     F __TEXT,__text __pthread_mutex_fairshare_unlock
000000000000ab78 l     F __TEXT,__text __pthread_mutex_fairshare_lock
000000000000b36c l     F __TEXT,__text .hidden __pthread_dependency_fulfill_slow
000000000000b4ec l     F __TEXT,__text .hidden __pthread_atomic_xchg_ptr
000000000000b4f4 l     F __TEXT,__text .hidden __pthread_atomic_xchg_uint32_relaxed
000000000000b4fc l     F __TEXT,__text ___pthread_invalid_workloopfunction
000000000000b51c l     F __TEXT,__text ___pthread_invalid_keventfunction
000000000000b53c l     F __TEXT,__text _pthread_mach_thread_np.cold.2
000000000000b53c l     F __TEXT,__text _pthread_get_stacksize_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_get_stackaddr_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_threadid_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_getname_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_setname_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_detach.cold.1
000000000000b53c l     F __TEXT,__text _pthread_kill.cold.1
000000000000b53c l     F __TEXT,__text _pthread_kill.cold.2
000000000000b53c l     F __TEXT,__text _pthread_kill.cold.3
000000000000b53c l     F __TEXT,__text ___pthread_workqueue_setkill.cold.1
000000000000b53c l     F __TEXT,__text _pthread_getschedparam.cold.1
000000000000b53c l     F __TEXT,__text _pthread_setschedparam.cold.1
000000000000b53c l     F __TEXT,__text _pthread_setschedparam.cold.2
000000000000b53c l     F __TEXT,__text _pthread_setschedparam.cold.3
000000000000b53c l     F __TEXT,__text _pthread_cancel.cold.1
000000000000b53c l     F __TEXT,__text _pthread_cancel.cold.2
000000000000b53c l     F __TEXT,__text _pthread_setcancelstate.cold.1
000000000000b53c l     F __TEXT,__text _pthread_setcanceltype.cold.1
000000000000b53c l     F __TEXT,__text _pthread_testcancel.cold.1
000000000000b53c l     F __TEXT,__text __pthread_exit_if_canceled.cold.1
000000000000b53c l     F __TEXT,__text __pthread_set_properties_self.cold.1
000000000000b53c l     F __TEXT,__text _pthread_set_qos_class_np.cold.1
000000000000b53c l     F __TEXT,__text _pthread_mach_thread_np.cold.1
000000000000b550 l     F __TEXT,__text _pthread_jit_write_protect_np.cold.1
000000000000b570 l     F __TEXT,__text _pthread_jit_write_with_callback_np.cold.1
000000000000b59c l     F __TEXT,__text _pthread_jit_write_with_callback_np.cold.2
000000000000b5c4 l     F __TEXT,__text _pthread_jit_write_freeze_callbacks_np.cold.1
000000000000b5e4 l     F __TEXT,__text _pthread_jit_write_freeze_callbacks_np.cold.2
000000000000b604 l     F __TEXT,__text __pthread_jit_write_protect_freeze_config.cold.1
000000000000b62c l     F __TEXT,__text __pthread_create.cold.1
000000000000b654 l     F __TEXT,__text __pthread_create.cold.2
000000000000b674 l     F __TEXT,__text __pthread_create.cold.3
000000000000b69c l     F __TEXT,__text _pthread_install_workgroup_functions_np.cold.1
000000000000b6c4 l     F __TEXT,__text _pthread_create_with_workgroup_np.cold.1
000000000000b6e4 l     F __TEXT,__text __pthread_joiner_wake.cold.1
000000000000b710 l     F __TEXT,__text ___pthread_init.cold.1
000000000000b730 l     F __TEXT,__text ___pthread_init.cold.2
000000000000b758 l     F __TEXT,__text ___pthread_init.cold.3
000000000000b780 l     F __TEXT,__text ___pthread_init.cold.4
000000000000b7a8 l     F __TEXT,__text __pthread_bsdthread_init.cold.1
000000000000b7d0 l     F __TEXT,__text __pthread_main_thread_postfork_init.cold.1
000000000000b7f0 l     F __TEXT,__text __pthread_wqthread.cold.1
000000000000b818 l     F __TEXT,__text __pthread_workqueue_supported.cold.1
000000000000b838 l     F __TEXT,__text __pthread_jit_write_protect_bulk_image_load_callback.cold.1
000000000000b860 l     F __TEXT,__text _pthread_cond_signal_thread_np.cold.1
000000000000b860 l     F __TEXT,__text _pthread_cond_signal.cold.1
000000000000b860 l     F __TEXT,__text _pthread_cond_broadcast.cold.1
000000000000b888 l     F __TEXT,__text _pthread_cond_signal_thread_np.cold.2
000000000000b888 l     F __TEXT,__text _pthread_cond_signal.cold.2
000000000000b888 l     F __TEXT,__text _pthread_cond_broadcast.cold.2
000000000000b8b0 l     F __TEXT,__text _pthread_cond_signal_thread_np.cold.3
000000000000b8b0 l     F __TEXT,__text _pthread_cond_signal.cold.3
000000000000b8b0 l     F __TEXT,__text _pthread_cond_broadcast.cold.3
000000000000b8d0 l     F __TEXT,__text .hidden __pthread_mutex_corruption_abort
000000000000b8f0 l     F __TEXT,__text __pthread_qos_class_encode_workqueue.cold.1
000000000000b918 l     F __TEXT,__text _pthread_time_constraint_max_parallelism.cold.1
000000000000b918 l     F __TEXT,__text _pthread_qos_max_parallelism.cold.1
000000000000b940 l     F __TEXT,__text _pthread_introspection_setspecific_np.cold.1
000000000000b960 l     F __TEXT,__text _pthread_introspection_getspecific_np.cold.1
000000000000b980 l     F __TEXT,__text _pthread_self.cold.1
000000000000b9a0 l     F __TEXT,__text _pthread_dependency_wait_np.cold.1
000000000000b9c8 l     F __TEXT,__text _pthread_dependency_wait_np.cold.2
000000000000b9f0 l     F __TEXT,__text _pthread_dependency_wait_np.cold.3
000000000000bd60 l     O __TEXT,__const .hidden ___system_pthreadVersionString
000000000000bd98 l     O __TEXT,__const .hidden ___system_pthreadVersionNumber
000000000000bdf8 l     O __TEXT,__const __pthread_attr_default
000000000000be4c l     O __TEXT,__const __pthread_qos_class_from_thread_qos.thread_qos_to_qos_class
0000000000014000 l     O __DATA,__data _pthread_yield_to_zero
0000000000014004 l     O __DATA,__data .hidden ___pthread_mutex_default_opt_policy
0000000000014008 l     O __DATA,__crash_info .hidden _gCRAnnotations
0000000000018000 l     O __DATA,__bss _pthread_get_stacksize_np.rlimit_stack
000000000001c000 l     O __DATA,__bss __pthread_jit_config
0000000000020000 l     O __DATA,__bss __pthread_jit_config_lock
0000000000020014 l     O __DATA,__bss _pthread_concurrency
0000000000020030 l     O __DATA,__bss __pthread_introspection_hook
0000000000020038 l     O __DATA,__bss __pthread_mutex_sig_fast
000000000002003c l     O __DATA,__bss __pthread_workqueue_override_start_direct_check_owner.kernel_supports_owner_check
0000000000020040 l     O __DATA,__bss ___pthread_key_legacy_behaviour
0000000000020041 l     O __DATA,__bss ___pthread_key_legacy_behaviour_log
0000000000020044 l     O __DATA,__common .hidden ___pthread_mutex_use_ulock
0000000000020045 l     O __DATA,__common .hidden ___pthread_mutex_ulock_adaptive_spin
0000000000024000 l     O __DATA_DIRTY,__data .hidden ___pthread_head
0000000000024010 l     O __DATA_DIRTY,__data _exitf
000000000002401c l     O __DATA_DIRTY,__data __pthread_count
0000000000024020 l     O __DATA_DIRTY,__data ___pthread_stack_hint
0000000000024028 l     O __DATA_DIRTY,__data ___libdispatch_workloopfunction
0000000000024030 l     O __DATA_DIRTY,__data ___libdispatch_keventfunction
0000000000024038 l     O __DATA_DIRTY,__data ___pthread_tsd_max
0000000000024044 l     O __DATA_DIRTY,__common .hidden __pthread_list_lock
0000000000024048 l     O __DATA_DIRTY,__common .hidden __main_thread_ptr
0000000000024050 l     O __DATA_DIRTY,__common .hidden __pthread_malloc
0000000000024058 l     O __DATA_DIRTY,__common .hidden __pthread_free
0000000000024060 l     O __DATA_DIRTY,__common .hidden __main_qos
0000000000024068 l     O __DATA_DIRTY,__common .hidden __pthread_ptr_munge_token
0000000000028008 l     O __DATA_DIRTY,__bss __pthread_workgroup_functions
0000000000028010 l     O __DATA_DIRTY,__bss _default_priority
0000000000028018 l     O __DATA_DIRTY,__bss ___pthread_supported_features
0000000000028020 l     O __DATA_DIRTY,__bss ___libdispatch_workerfunction
0000000000028028 l     O __DATA_DIRTY,__bss ___workq_newapi
0000000000028034 l     O __DATA_DIRTY,__bss ___pthread_tsd_lock
0000000000028038 l     O __DATA_DIRTY,__bss __pthread_keys
0000000000002944 g     F __TEXT,__text ____chkstk_darwin
0000000000024040 g     O __DATA_DIRTY,__common ___is_threaded
0000000000001874 g     F __TEXT,__text ___pthread_init
0000000000008f9c g     F __TEXT,__text ___pthread_late_init
0000000000008eb8 g     F __TEXT,__text ___pthread_workqueue_setkill
000000000000bdd8 g     O __TEXT,__const ___unix_conforming
000000000000b22c g     F __TEXT,__text __pthread_atfork_child
000000000000b2a4 g     F __TEXT,__text __pthread_atfork_child_handlers
0000000000006fd8 g     F __TEXT,__text __pthread_atfork_parent
0000000000007034 g     F __TEXT,__text __pthread_atfork_parent_handlers
0000000000006f6c g     F __TEXT,__text __pthread_atfork_prepare
0000000000006ed0 g     F __TEXT,__text __pthread_atfork_prepare_handlers
00000000000059f8 g     F __TEXT,__text __pthread_clear_qos_tsd
000000000000180c g     F __TEXT,__text __pthread_exit_if_canceled
000000000000b330 g     F __TEXT,__text __pthread_fork_child
000000000000b334 g     F __TEXT,__text __pthread_fork_child_postinit
0000000000007e38 g     F __TEXT,__text __pthread_fork_parent
0000000000007e24 g     F __TEXT,__text __pthread_fork_prepare
0000000000006f60 g     F __TEXT,__text __pthread_is_threaded
000000000000ab4c g     F __TEXT,__text __pthread_mutex_enable_legacy_mode
00000000000077b0 g     F __TEXT,__text __pthread_override_qos_class_end_direct
0000000000007650 g     F __TEXT,__text __pthread_override_qos_class_start_direct
000000000000acc4 g     F __TEXT,__text __pthread_qos_class_and_override_decode
000000000000abf8 g     F __TEXT,__text __pthread_qos_class_and_override_encode
0000000000004f54 g     F __TEXT,__text __pthread_qos_class_decode
0000000000003728 g     F __TEXT,__text __pthread_qos_class_encode
00000000000075e8 g     F __TEXT,__text __pthread_qos_class_encode_workqueue
00000000000061c4 g     F __TEXT,__text __pthread_qos_override_end_direct
0000000000007170 g     F __TEXT,__text __pthread_qos_override_start_direct
000000000000ada0 g     F __TEXT,__text __pthread_sched_pri_decode
000000000000ad90 g     F __TEXT,__text __pthread_sched_pri_encode
000000000000b1ec g     F __TEXT,__text __pthread_self
000000000000448c g     F __TEXT,__text __pthread_set_properties_self
0000000000007560 g     F __TEXT,__text __pthread_set_self
000000000000b124 g     F __TEXT,__text __pthread_setspecific_static
0000000000007690 g     F __TEXT,__text __pthread_start
000000000000bee8 g     O __TEXT,__const __pthread_tsd_shared_cache_first
000000000000beec g     O __TEXT,__const __pthread_tsd_shared_cache_last
0000000000006430 g     F __TEXT,__text __pthread_workloop_create
00000000000092ec g     F __TEXT,__text __pthread_workloop_destroy
0000000000009284 g     F __TEXT,__text __pthread_workqueue_add_cooperativethreads
0000000000003a0c g     F __TEXT,__text __pthread_workqueue_addthreads
00000000000092d0 g     F __TEXT,__text __pthread_workqueue_allow_send_signals
000000000000add0 g     F __TEXT,__text __pthread_workqueue_asynchronous_override_add
000000000000ae40 g     F __TEXT,__text __pthread_workqueue_asynchronous_override_reset_all_self
000000000000ae08 g     F __TEXT,__text __pthread_workqueue_asynchronous_override_reset_self
00000000000075b0 g     F __TEXT,__text __pthread_workqueue_init
00000000000091e4 g     F __TEXT,__text __pthread_workqueue_init_with_kevent
00000000000074b0 g     F __TEXT,__text __pthread_workqueue_init_with_workloop
0000000000004b90 g     F __TEXT,__text __pthread_workqueue_override_reset
0000000000004a54 g     F __TEXT,__text __pthread_workqueue_override_start_direct
0000000000005c60 g     F __TEXT,__text __pthread_workqueue_override_start_direct_check_owner
000000000000377c g     F __TEXT,__text __pthread_workqueue_set_event_manager_priority
0000000000004bc8 g     F __TEXT,__text __pthread_workqueue_should_narrow
0000000000003590 g     F __TEXT,__text __pthread_workqueue_supported
0000000000003a58 g     F __TEXT,__text __pthread_wqthread
000000000000903c g     F __TEXT,__text __pthread_yield_to_enqueuer_4dispatch
0000000000004860 g     F __TEXT,__text _cthread_yield
000000000000afa0 g     F __TEXT,__text _posix_spawnattr_get_qos_class_np
000000000000af68 g     F __TEXT,__text _posix_spawnattr_set_qos_class_np
0000000000002f90 g     F __TEXT,__text _pthread_atfork
00000000000056f0 g     F __TEXT,__text _pthread_attr_destroy
0000000000006c3c g     F __TEXT,__text _pthread_attr_get_qos_class_np
0000000000007ffc g     F __TEXT,__text _pthread_attr_getdetachstate
0000000000008210 g     F __TEXT,__text _pthread_attr_getguardsize
000000000000802c g     F __TEXT,__text _pthread_attr_getinheritsched
0000000000003508 g     F __TEXT,__text _pthread_attr_getschedparam
00000000000036f8 g     F __TEXT,__text _pthread_attr_getschedpolicy
000000000000805c g     F __TEXT,__text _pthread_attr_getscope
0000000000008104 g     F __TEXT,__text _pthread_attr_getstack
0000000000008088 g     F __TEXT,__text _pthread_attr_getstackaddr
0000000000005644 g     F __TEXT,__text _pthread_attr_getstacksize
0000000000003474 g     F __TEXT,__text _pthread_attr_init
0000000000005dd4 g     F __TEXT,__text _pthread_attr_set_qos_class_np
0000000000008258 g     F __TEXT,__text _pthread_attr_setcpupercent_np
00000000000034c4 g     F __TEXT,__text _pthread_attr_setdetachstate
00000000000081a0 g     F __TEXT,__text _pthread_attr_setguardsize
00000000000074ec g     F __TEXT,__text _pthread_attr_setinheritsched
0000000000006c04 g     F __TEXT,__text _pthread_attr_setschedparam
00000000000063cc g     F __TEXT,__text _pthread_attr_setschedpolicy
0000000000003494 g     F __TEXT,__text _pthread_attr_setscope
0000000000008148 g     F __TEXT,__text _pthread_attr_setstack
00000000000080b8 g     F __TEXT,__text _pthread_attr_setstackaddr
0000000000005680 g     F __TEXT,__text _pthread_attr_setstacksize
00000000000082c0 g     F __TEXT,__text _pthread_attr_setworkinterval_np
0000000000009690 g     F __TEXT,__text _pthread_cancel
000000000000b120 g     F __TEXT,__text _pthread_chdir_np
0000000000002a28 g     F __TEXT,__text _pthread_cond_broadcast
0000000000005a7c g     F __TEXT,__text _pthread_cond_destroy
00000000000055d4 g     F __TEXT,__text _pthread_cond_init
0000000000006830 g     F __TEXT,__text _pthread_cond_signal
0000000000009d2c g     F __TEXT,__text _pthread_cond_signal_thread_np
0000000000004994 g     F __TEXT,__text _pthread_cond_timedwait
0000000000009ba0 g     F __TEXT,__text _pthread_cond_timedwait$NOCANCEL
00000000000061fc g     F __TEXT,__text _pthread_cond_timedwait_relative_np
0000000000004610 g     F __TEXT,__text _pthread_cond_wait
0000000000009b90 g     F __TEXT,__text _pthread_cond_wait$NOCANCEL
0000000000009cac g     F __TEXT,__text _pthread_condattr_destroy
0000000000009cb8 g     F __TEXT,__text _pthread_condattr_getpshared
0000000000009c88 g     F __TEXT,__text _pthread_condattr_init
0000000000009cec g     F __TEXT,__text _pthread_condattr_setpshared
00000000000083f0 g     F __TEXT,__text _pthread_cpu_number_np
000000000000440c g     F __TEXT,__text _pthread_create
0000000000008e5c g     F __TEXT,__text _pthread_create_from_mach_thread
0000000000008e64 g     F __TEXT,__text _pthread_create_suspended_np
0000000000008e94 g     F __TEXT,__text _pthread_create_with_workgroup_np
00000000000090d4 g     F __TEXT,__text _pthread_current_stack_contains_np
000000000000b428 g     F __TEXT,__text _pthread_dependency_fulfill_np
000000000000b338 g     F __TEXT,__text _pthread_dependency_init_np
000000000000b444 g     F __TEXT,__text _pthread_dependency_wait_np
0000000000006dd4 g     F __TEXT,__text _pthread_detach
0000000000003468 g     F __TEXT,__text _pthread_equal
0000000000005008 g     F __TEXT,__text _pthread_exit
0000000000007520 g     F __TEXT,__text _pthread_fchdir_np
0000000000008324 g     F __TEXT,__text _pthread_from_mach_thread_np
00000000000065f8 g     F __TEXT,__text _pthread_get_qos_class_np
00000000000049a0 g     F __TEXT,__text _pthread_get_stackaddr_np
0000000000004bf8 g     F __TEXT,__text _pthread_get_stacksize_np
0000000000008f70 g     F __TEXT,__text _pthread_getconcurrency
00000000000062fc g     F __TEXT,__text _pthread_getname_np
0000000000005760 g     F __TEXT,__text _pthread_getschedparam
00000000000029b0 g     F __TEXT,__text _pthread_getspecific
0000000000008e6c g     F __TEXT,__text _pthread_install_workgroup_functions_np
000000000000b1f0 g     F __TEXT,__text _pthread_introspection_getspecific_np
0000000000009344 g     F __TEXT,__text _pthread_introspection_hook_install
000000000000b148 g     F __TEXT,__text _pthread_introspection_setspecific_np
0000000000006f60 g     F __TEXT,__text _pthread_is_threaded_np
00000000000088b8 g     F __TEXT,__text _pthread_jit_write_freeze_callbacks_np
0000000000008420 g     F __TEXT,__text _pthread_jit_write_protect_np
0000000000008624 g     F __TEXT,__text _pthread_jit_write_protect_supported_np
000000000000863c g     F __TEXT,__text _pthread_jit_write_with_callback_np
00000000000071a8 g     F __TEXT,__text _pthread_join
0000000000007de0 g     F __TEXT,__text _pthread_join$NOCANCEL
000000000000216c g     F __TEXT,__text _pthread_key_create
00000000000070d0 g     F __TEXT,__text _pthread_key_delete
00000000000020e8 g     F __TEXT,__text _pthread_key_init_np
0000000000007308 g     F __TEXT,__text _pthread_kill
000000000000bdd0 g     O __TEXT,__const _pthread_layout_offsets
0000000000003320 g     F __TEXT,__text _pthread_mach_thread_np
000000000000344c g     F __TEXT,__text _pthread_main_np
0000000000003558 g     F __TEXT,__text _pthread_main_thread_np
0000000000002ea4 g     F __TEXT,__text _pthread_mutex_destroy
000000000000a1f8 g     F __TEXT,__text _pthread_mutex_getprioceiling
0000000000003178 g     F __TEXT,__text _pthread_mutex_init
00000000000021ec g     F __TEXT,__text _pthread_mutex_lock
000000000000a298 g     F __TEXT,__text _pthread_mutex_setprioceiling
0000000000004d5c g     F __TEXT,__text _pthread_mutex_trylock
00000000000026b8 g     F __TEXT,__text _pthread_mutex_unlock
0000000000003564 g     F __TEXT,__text _pthread_mutexattr_destroy
000000000000a3c0 g     F __TEXT,__text _pthread_mutexattr_getpolicy_np
000000000000a35c g     F __TEXT,__text _pthread_mutexattr_getprioceiling
000000000000a38c g     F __TEXT,__text _pthread_mutexattr_getprotocol
000000000000a438 g     F __TEXT,__text _pthread_mutexattr_getpshared
000000000000a404 g     F __TEXT,__text _pthread_mutexattr_gettype
00000000000033e4 g     F __TEXT,__text _pthread_mutexattr_init
000000000000a4dc g     F __TEXT,__text _pthread_mutexattr_setpolicy_np
000000000000a46c g     F __TEXT,__text _pthread_mutexattr_setprioceiling
000000000000a4a0 g     F __TEXT,__text _pthread_mutexattr_setprotocol
0000000000007de8 g     F __TEXT,__text _pthread_mutexattr_setpshared
0000000000003414 g     F __TEXT,__text _pthread_mutexattr_settype
00000000000037b4 g     F __TEXT,__text _pthread_once
0000000000006ce8 g     F __TEXT,__text _pthread_override_qos_class_end_np
000000000000667c g     F __TEXT,__text _pthread_override_qos_class_start_np
000000000000adc0 g     F __TEXT,__text _pthread_prefer_alternate_amx_self
000000000000adc0 g     F __TEXT,__text _pthread_prefer_alternate_cluster_self
0000000000003898 g     F __TEXT,__text _pthread_qos_max_parallelism
0000000000006208 g     F __TEXT,__text _pthread_rwlock_destroy
0000000000004e0c g     F __TEXT,__text _pthread_rwlock_init
0000000000003e14 g     F __TEXT,__text _pthread_rwlock_rdlock
000000000000b070 g     F __TEXT,__text _pthread_rwlock_tryrdlock
0000000000005d2c g     F __TEXT,__text _pthread_rwlock_trywrlock
00000000000042bc g     F __TEXT,__text _pthread_rwlock_unlock
0000000000004384 g     F __TEXT,__text _pthread_rwlock_wrlock
0000000000007540 g     F __TEXT,__text _pthread_rwlockattr_destroy
000000000000b00c g     F __TEXT,__text _pthread_rwlockattr_getpshared
0000000000007524 g     F __TEXT,__text _pthread_rwlockattr_init
000000000000b03c g     F __TEXT,__text _pthread_rwlockattr_setpshared
00000000000032f0 g     F __TEXT,__text _pthread_self
0000000000008f60 g     F __TEXT,__text _pthread_self_is_exiting_np
0000000000006bc4 g     F __TEXT,__text _pthread_set_fixedpriority_self
0000000000007f84 g     F __TEXT,__text _pthread_set_qos_class_np
0000000000004434 g     F __TEXT,__text _pthread_set_qos_class_self_np
00000000000074a0 g     F __TEXT,__text _pthread_set_timeshare_self
0000000000007ef0 g     F __TEXT,__text _pthread_setcancelstate
0000000000006b54 g     F __TEXT,__text _pthread_setcanceltype
0000000000008f7c g     F __TEXT,__text _pthread_setconcurrency
0000000000004564 g     F __TEXT,__text _pthread_setname_np
0000000000005814 g     F __TEXT,__text _pthread_setschedparam
00000000000029bc g     F __TEXT,__text _pthread_setspecific
0000000000006bd4 g     F __TEXT,__text _pthread_sigmask
0000000000005c48 g     F __TEXT,__text _pthread_stack_frame_decode_np
0000000000004620 g     F __TEXT,__text _pthread_testcancel
0000000000006518 g     F __TEXT,__text _pthread_threadid_np
000000000000ae78 g     F __TEXT,__text _pthread_time_constraint_max_parallelism
000000000000921c g     F __TEXT,__text _pthread_workqueue_addthreads_np
0000000000007ea4 g     F __TEXT,__text _pthread_workqueue_setdispatch_np
00000000000091d0 g     F __TEXT,__text _pthread_workqueue_setdispatchoffset_np
00000000000035b0 g     F __TEXT,__text _pthread_workqueue_setup
0000000000004860 g     F __TEXT,__text _pthread_yield_np
00000000000028d0 g     F __TEXT,__text _qos_class_main
0000000000005bec g     F __TEXT,__text _qos_class_self
0000000000007550 g     F __TEXT,__text _sched_get_priority_max
0000000000007ee0 g     F __TEXT,__text _sched_get_priority_min
0000000000004860 g     F __TEXT,__text _sched_yield
0000000000007e4c g     F __TEXT,__text _sigwait
0000000000009bac g     F __TEXT,__text _sigwait$NOCANCEL
000000000000292c g     F __TEXT,__text _start_wqthread
0000000000002944 g     F __TEXT,__text _thread_chkstk_darwin
0000000000002938 g     F __TEXT,__text _thread_start
0000000000000000         *UND* ___bsdthread_create
0000000000000000         *UND* ___bsdthread_ctl
0000000000000000         *UND* ___bsdthread_register
0000000000000000         *UND* ___bsdthread_terminate
0000000000000000         *UND* ___disable_threadsignal
0000000000000000         *UND* ___exit
0000000000000000         *UND* ___gettimeofday
0000000000000000         *UND* ___kqueue_workloop_ctl
0000000000000000         *UND* ___os_once_reset
0000000000000000         *UND* ___proc_info
0000000000000000         *UND* ___psynch_cvbroad
0000000000000000         *UND* ___psynch_cvclrprepost
0000000000000000         *UND* ___psynch_cvsignal
0000000000000000         *UND* ___psynch_cvwait
0000000000000000         *UND* ___psynch_mutexdrop
0000000000000000         *UND* ___psynch_mutexwait
0000000000000000         *UND* ___psynch_rw_rdlock
0000000000000000         *UND* ___psynch_rw_unlock
0000000000000000         *UND* ___psynch_rw_wrlock
0000000000000000         *UND* ___pthread_canceled
0000000000000000         *UND* ___pthread_chdir
0000000000000000         *UND* ___pthread_fchdir
0000000000000000         *UND* ___pthread_kill
0000000000000000         *UND* ___pthread_markcancel
0000000000000000         *UND* ___pthread_sigmask
0000000000000000         *UND* ___semwait_signal_nocancel
0000000000000000         *UND* ___sigwait
0000000000000000         *UND* ___syscall_logger
0000000000000000         *UND* ___sysctl
0000000000000000         *UND* ___thread_selfid
0000000000000000         *UND* ___ulock_wait
0000000000000000         *UND* ___ulock_wait2
0000000000000000         *UND* ___ulock_wake
0000000000000000         *UND* ___workq_kernreturn
0000000000000000         *UND* ___workq_open
0000000000000000         *UND* __dyld_register_for_bulk_image_loads
0000000000000000         *UND* __os_alloc_once
0000000000000000         *UND* __os_alloc_once_table
0000000000000000         *UND* __os_once
0000000000000000         *UND* __os_semaphore_create
0000000000000000         *UND* __os_semaphore_dispose
0000000000000000         *UND* __os_xbs_chrooted
0000000000000000         *UND* __platform_bzero
0000000000000000         *UND* __platform_memmove
0000000000000000         *UND* __platform_strlcpy
0000000000000000         *UND* __platform_strlen
0000000000000000         *UND* __simple_asl_log
0000000000000000         *UND* __simple_getenv
0000000000000000         *UND* __thread_set_tsd_base
0000000000000000         *UND* _abort_with_reason
0000000000000000         *UND* _getpid
0000000000000000         *UND* _getrlimit
0000000000000000         *UND* _getsectiondata
0000000000000000         *UND* _host_info
0000000000000000         *UND* _mach_host_self
0000000000000000         *UND* _mach_port_construct
0000000000000000         *UND* _mach_port_deallocate
0000000000000000         *UND* _mach_port_mod_refs
0000000000000000         *UND* _mach_task_self_
0000000000000000         *UND* _mach_thread_self
0000000000000000         *UND* _mach_vm_allocate
0000000000000000         *UND* _mach_vm_deallocate
0000000000000000         *UND* _mach_vm_map
0000000000000000         *UND* _mach_vm_protect
0000000000000000         *UND* _mig_dealloc_reply_port
0000000000000000         *UND* _os_unfair_lock_lock_no_tsd
0000000000000000         *UND* _os_unfair_lock_lock_with_options
0000000000000000         *UND* _os_unfair_lock_unlock
0000000000000000         *UND* _os_unfair_lock_unlock_no_tsd
0000000000000000         *UND* _posix_spawnattr_get_qos_clamp_np
0000000000000000         *UND* _posix_spawnattr_set_qos_clamp_np
0000000000000000         *UND* _swtch_pri
0000000000000000         *UND* _thread_destruct_special_reply_port
0000000000000000         *UND* _thread_info
0000000000000000         *UND* _thread_policy
0000000000000000         *UND* _thread_switch
0000000000000000         *UND* _vm_page_mask
0000000000000000         *UND* _vm_page_size
