
tester:	file format mach-o 64-bit x86-64

SYMBOL TABLE:
0000000100002000 l     O __DATA,__data _cases
0000000100002028 l     O __DATA,__bss _n_case
0000000000000000      d  *UND* 
0000000000000000      d  *UND* /Users/hseong/assembly_practice/lib/
0000000000000000      d  *UND* main.c
000000006749bc90      d  *UND* /Users/hseong/assembly_practice/lib/main.o
0000000100000d10      d  *UND* 
0000000100000d10      d  *UND* _main
0000000000000040      d  *UND* 
0000000100000d10      d  *UND* 
0000000100000d50      d  *UND* 
0000000100000d50      d  *UND* _test_strlen
00000000000000c0      d  *UND* 
0000000100000d50      d  *UND* 
0000000100000e10      d  *UND* 
0000000100000e10      d  *UND* _test_strcpy
000000000000012c      d  *UND* 
0000000100000e10      d  *UND* 
0000000100002000      d  *UND* _cases
0000000100002028      d  *UND* _n_case
0000000000000000      d  *UND* 
0000000100000000 g     F __TEXT,__text __mh_execute_header
0000000100000cf0 g     F __TEXT,__text _ft_strcpy
0000000100000cd0 g     F __TEXT,__text _ft_strlen
0000000100000d10 g     F __TEXT,__text _main
0000000100000e10 g     F __TEXT,__text _test_strcpy
0000000100000d50 g     F __TEXT,__text _test_strlen
0000000000000000         *UND* ___stack_chk_fail
0000000000000000         *UND* ___stack_chk_guard
0000000000000000         *UND* ___strcpy_chk
0000000000000000         *UND* _printf
0000000000000000         *UND* _strcmp
0000000000000000         *UND* _strlen

Disassembly of section __TEXT,__text:

0000000100000cd0 <_ft_strlen>:
100000cd0: 55                          	push	rbp
100000cd1: 48 89 e5                    	mov	rbp, rsp
100000cd4: 48 89 f8                    	mov	rax, rdi
100000cd7: 48 ff c8                    	dec	rax
100000cda: 48 ff c0                    	inc	rax
100000cdd: 40 8a 30                    	mov	sil, byte ptr [rax]
100000ce0: 40 80 fe 00                 	cmp	sil, 0
100000ce4: 75 f4                       	jne	0x100000cda <_ft_strlen+0xa>
100000ce6: 48 29 f8                    	sub	rax, rdi
100000ce9: 5d                          	pop	rbp
100000cea: c3                          	ret
100000ceb: 90                          	nop
100000cec: 90                          	nop
100000ced: 90                          	nop
100000cee: 90                          	nop
100000cef: 90                          	nop

0000000100000cf0 <_ft_strcpy>:
100000cf0: 55                          	push	rbp
100000cf1: 48 89 e5                    	mov	rbp, rsp
100000cf4: 48 89 f8                    	mov	rax, rdi
100000cf7: 8a 16                       	mov	dl, byte ptr [rsi]
100000cf9: 88 17                       	mov	byte ptr [rdi], dl
100000cfb: 48 ff c7                    	inc	rdi
100000cfe: 48 ff c6                    	inc	rsi
100000d01: 80 fa 00                    	cmp	dl, 0
100000d04: 75 f1                       	jne	0x100000cf7 <_ft_strcpy+0x7>
100000d06: 5d                          	pop	rbp
100000d07: c3                          	ret
100000d08: 90                          	nop
100000d09: 90                          	nop
100000d0a: 90                          	nop
100000d0b: 90                          	nop
100000d0c: 90                          	nop
100000d0d: 90                          	nop
100000d0e: 90                          	nop
100000d0f: 90                          	nop

0000000100000d10 <_main>:
100000d10: 55                          	push	rbp
100000d11: 48 89 e5                    	mov	rbp, rsp
100000d14: 48 83 ec 10                 	sub	rsp, 16
100000d18: c7 45 fc 00 00 00 00        	mov	dword ptr [rbp - 4], 0
100000d1f: 89 7d f8                    	mov	dword ptr [rbp - 8], edi
100000d22: 48 89 75 f0                 	mov	qword ptr [rbp - 16], rsi
100000d26: 48 c7 05 f7 12 00 00 05 00 00 00    	mov	qword ptr [rip + 4855], 5 ## 0x100002028 <_n_case>
100000d31: e8 1a 00 00 00              	call	0x100000d50 <_test_strlen>
100000d36: e8 d5 00 00 00              	call	0x100000e10 <_test_strcpy>
100000d3b: 31 c0                       	xor	eax, eax
100000d3d: 48 83 c4 10                 	add	rsp, 16
100000d41: 5d                          	pop	rbp
100000d42: c3                          	ret
100000d43: 66 66 66 66 2e 0f 1f 84 00 00 00 00 00      	nop	word ptr cs:[rax + rax]

0000000100000d50 <_test_strlen>:
100000d50: 55                          	push	rbp
100000d51: 48 89 e5                    	mov	rbp, rsp
100000d54: 48 83 ec 20                 	sub	rsp, 32
100000d58: c7 45 fc 00 00 00 00        	mov	dword ptr [rbp - 4], 0
100000d5f: c7 45 f8 00 00 00 00        	mov	dword ptr [rbp - 8], 0
100000d66: 48 63 45 f8                 	movsxd	rax, dword ptr [rbp - 8]
100000d6a: 48 3b 05 b7 12 00 00        	cmp	rax, qword ptr [rip + 4791] ## 0x100002028 <_n_case>
100000d71: 0f 83 58 00 00 00           	jae	0x100000dcf <_test_strlen+0x7f>
100000d77: 48 63 4d f8                 	movsxd	rcx, dword ptr [rbp - 8]
100000d7b: 48 8d 05 7e 12 00 00        	lea	rax, [rip + 4734]       ## 0x100002000 <_cases>
100000d82: 48 8b 04 c8                 	mov	rax, qword ptr [rax + 8*rcx]
100000d86: 48 89 45 f0                 	mov	qword ptr [rbp - 16], rax
100000d8a: 48 8b 7d f0                 	mov	rdi, qword ptr [rbp - 16]
100000d8e: e8 c1 01 00 00              	call	0x100000f54 <_strlen+0x100000f54>
100000d93: 48 89 45 e8                 	mov	qword ptr [rbp - 24], rax
100000d97: 48 8b 7d f0                 	mov	rdi, qword ptr [rbp - 16]
100000d9b: e8 30 ff ff ff              	call	0x100000cd0 <_ft_strlen>
100000da0: 48 89 c1                    	mov	rcx, rax
100000da3: 48 8b 45 e8                 	mov	rax, qword ptr [rbp - 24]
100000da7: 48 39 c8                    	cmp	rax, rcx
100000daa: 0f 85 05 00 00 00           	jne	0x100000db5 <_test_strlen+0x65>
100000db0: e9 0c 00 00 00              	jmp	0x100000dc1 <_test_strlen+0x71>
100000db5: c7 45 fc 01 00 00 00        	mov	dword ptr [rbp - 4], 1
100000dbc: e9 0e 00 00 00              	jmp	0x100000dcf <_test_strlen+0x7f>
100000dc1: 8b 45 f8                    	mov	eax, dword ptr [rbp - 8]
100000dc4: 83 c0 01                    	add	eax, 1
100000dc7: 89 45 f8                    	mov	dword ptr [rbp - 8], eax
100000dca: e9 97 ff ff ff              	jmp	0x100000d66 <_test_strlen+0x16>
100000dcf: 83 7d fc 00                 	cmp	dword ptr [rbp - 4], 0
100000dd3: 0f 84 1a 00 00 00           	je	0x100000df3 <_test_strlen+0xa3>
100000dd9: 48 8d 3d 7a 01 00 00        	lea	rdi, [rip + 378]        ## 0x100000f5a <_strlen+0x100000f5a>
100000de0: 48 8d 35 7c 01 00 00        	lea	rsi, [rip + 380]        ## 0x100000f63 <_strlen+0x100000f63>
100000de7: b0 00                       	mov	al, 0
100000de9: e8 5a 01 00 00              	call	0x100000f48 <_strlen+0x100000f48>
100000dee: e9 15 00 00 00              	jmp	0x100000e08 <_test_strlen+0xb8>
100000df3: 48 8d 3d 75 01 00 00        	lea	rdi, [rip + 373]        ## 0x100000f6f <_strlen+0x100000f6f>
100000dfa: 48 8d 35 62 01 00 00        	lea	rsi, [rip + 354]        ## 0x100000f63 <_strlen+0x100000f63>
100000e01: b0 00                       	mov	al, 0
100000e03: e8 40 01 00 00              	call	0x100000f48 <_strlen+0x100000f48>
100000e08: 48 83 c4 20                 	add	rsp, 32
100000e0c: 5d                          	pop	rbp
100000e0d: c3                          	ret
100000e0e: 66 90                       	nop

0000000100000e10 <_test_strcpy>:
100000e10: 55                          	push	rbp
100000e11: 48 89 e5                    	mov	rbp, rsp
100000e14: 48 81 ec 20 08 00 00        	sub	rsp, 2080
100000e1b: 48 8b 05 e6 01 00 00        	mov	rax, qword ptr [rip + 486] ## 0x100001008 <_strlen+0x100001008>
100000e22: 48 8b 00                    	mov	rax, qword ptr [rax]
100000e25: 48 89 45 f8                 	mov	qword ptr [rbp - 8], rax
100000e29: c7 85 ec f7 ff ff 00 00 00 00       	mov	dword ptr [rbp - 2068], 0
100000e33: c7 85 e8 f7 ff ff 00 00 00 00       	mov	dword ptr [rbp - 2072], 0
100000e3d: 48 63 85 e8 f7 ff ff        	movsxd	rax, dword ptr [rbp - 2072]
100000e44: 48 3b 05 dd 11 00 00        	cmp	rax, qword ptr [rip + 4573] ## 0x100002028 <_n_case>
100000e4b: 0f 83 88 00 00 00           	jae	0x100000ed9 <_test_strcpy+0xc9>
100000e51: 48 63 8d e8 f7 ff ff        	movsxd	rcx, dword ptr [rbp - 2072]
100000e58: 48 8d 05 a1 11 00 00        	lea	rax, [rip + 4513]       ## 0x100002000 <_cases>
100000e5f: 48 8b 04 c8                 	mov	rax, qword ptr [rax + 8*rcx]
100000e63: 48 89 85 e0 f7 ff ff        	mov	qword ptr [rbp - 2080], rax
100000e6a: 48 8d bd f0 fb ff ff        	lea	rdi, [rbp - 1040]
100000e71: 48 8b b5 e0 f7 ff ff        	mov	rsi, qword ptr [rbp - 2080]
100000e78: ba 00 04 00 00              	mov	edx, 1024
100000e7d: e8 c0 00 00 00              	call	0x100000f42 <_strlen+0x100000f42>
100000e82: 48 8d bd f0 f7 ff ff        	lea	rdi, [rbp - 2064]
100000e89: 48 8b b5 e0 f7 ff ff        	mov	rsi, qword ptr [rbp - 2080]
100000e90: e8 5b fe ff ff              	call	0x100000cf0 <_ft_strcpy>
100000e95: 48 8d bd f0 fb ff ff        	lea	rdi, [rbp - 1040]
100000e9c: 48 8d b5 f0 f7 ff ff        	lea	rsi, [rbp - 2064]
100000ea3: e8 a6 00 00 00              	call	0x100000f4e <_strlen+0x100000f4e>
100000ea8: 83 f8 00                    	cmp	eax, 0
100000eab: 0f 85 05 00 00 00           	jne	0x100000eb6 <_test_strcpy+0xa6>
100000eb1: e9 0f 00 00 00              	jmp	0x100000ec5 <_test_strcpy+0xb5>
100000eb6: c7 85 ec f7 ff ff 01 00 00 00       	mov	dword ptr [rbp - 2068], 1
100000ec0: e9 14 00 00 00              	jmp	0x100000ed9 <_test_strcpy+0xc9>
100000ec5: 8b 85 e8 f7 ff ff           	mov	eax, dword ptr [rbp - 2072]
100000ecb: 83 c0 01                    	add	eax, 1
100000ece: 89 85 e8 f7 ff ff           	mov	dword ptr [rbp - 2072], eax
100000ed4: e9 64 ff ff ff              	jmp	0x100000e3d <_test_strcpy+0x2d>
100000ed9: 83 bd ec f7 ff ff 00        	cmp	dword ptr [rbp - 2068], 0
100000ee0: 0f 84 1a 00 00 00           	je	0x100000f00 <_test_strcpy+0xf0>
100000ee6: 48 8d 3d 6d 00 00 00        	lea	rdi, [rip + 109]        ## 0x100000f5a <_strlen+0x100000f5a>
100000eed: 48 8d 35 87 00 00 00        	lea	rsi, [rip + 135]        ## 0x100000f7b <_strlen+0x100000f7b>
100000ef4: b0 00                       	mov	al, 0
100000ef6: e8 4d 00 00 00              	call	0x100000f48 <_strlen+0x100000f48>
100000efb: e9 15 00 00 00              	jmp	0x100000f15 <_test_strcpy+0x105>
100000f00: 48 8d 3d 68 00 00 00        	lea	rdi, [rip + 104]        ## 0x100000f6f <_strlen+0x100000f6f>
100000f07: 48 8d 35 6d 00 00 00        	lea	rsi, [rip + 109]        ## 0x100000f7b <_strlen+0x100000f7b>
100000f0e: b0 00                       	mov	al, 0
100000f10: e8 33 00 00 00              	call	0x100000f48 <_strlen+0x100000f48>
100000f15: 48 8b 05 ec 00 00 00        	mov	rax, qword ptr [rip + 236] ## 0x100001008 <_strlen+0x100001008>
100000f1c: 48 8b 00                    	mov	rax, qword ptr [rax]
100000f1f: 48 8b 4d f8                 	mov	rcx, qword ptr [rbp - 8]
100000f23: 48 39 c8                    	cmp	rax, rcx
100000f26: 0f 85 09 00 00 00           	jne	0x100000f35 <_test_strcpy+0x125>
100000f2c: 48 81 c4 20 08 00 00        	add	rsp, 2080
100000f33: 5d                          	pop	rbp
100000f34: c3                          	ret
100000f35: e8 02 00 00 00              	call	0x100000f3c <_strlen+0x100000f3c>
100000f3a: 0f 0b                       	ud2

Disassembly of section __TEXT,__stubs:

0000000100000f3c <__stubs>:
100000f3c: ff 25 be 00 00 00           	jmp	qword ptr [rip + 190]   ## 0x100001000 <_strlen+0x100001000>
100000f42: ff 25 c8 00 00 00           	jmp	qword ptr [rip + 200]   ## 0x100001010 <_strlen+0x100001010>
100000f48: ff 25 ca 00 00 00           	jmp	qword ptr [rip + 202]   ## 0x100001018 <_strlen+0x100001018>
100000f4e: ff 25 cc 00 00 00           	jmp	qword ptr [rip + 204]   ## 0x100001020 <_strlen+0x100001020>
100000f54: ff 25 ce 00 00 00           	jmp	qword ptr [rip + 206]   ## 0x100001028 <_strlen+0x100001028>
