
tester_Linux:     file format elf64-x86-64

SYMBOL TABLE:
0000000000000000 l    df *ABS*	0000000000000000              Scrt1.o
000000000000037c l     O .note.ABI-tag	0000000000000020              __abi_tag
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000010b0 l     F .text	0000000000000000              deregister_tm_clones
00000000000010e0 l     F .text	0000000000000000              register_tm_clones
0000000000001120 l     F .text	0000000000000000              __do_global_dtors_aux
0000000000004098 l     O .bss	0000000000000001              completed.0
0000000000003df0 l     O .fini_array	0000000000000000              __do_global_dtors_aux_fini_array_entry
0000000000001160 l     F .text	0000000000000000              frame_dummy
0000000000003de8 l     O .init_array	0000000000000000              __frame_dummy_init_array_entry
0000000000000000 l    df *ABS*	0000000000000000              main.c
00000000000040a0 l     O .bss	0000000000000008              n_case
0000000000004050 l     O .data	0000000000000048              cases
0000000000000000 l    df *ABS*	0000000000000000              ft_strlen.s
000000000000147a l       .text	0000000000000000              loop
0000000000000000 l    df *ABS*	0000000000000000              ft_strcpy.s
0000000000001497 l       .text	0000000000000000              loop
0000000000000000 l    df *ABS*	0000000000000000              ft_strcmp.s
00000000000014b8 l       .text	0000000000000000              loop
0000000000000000 l    df *ABS*	0000000000000000              crtstuff.c
00000000000021b0 l     O .eh_frame	0000000000000000              __FRAME_END__
0000000000000000 l    df *ABS*	0000000000000000              
0000000000003df8 l     O .dynamic	0000000000000000              _DYNAMIC
000000000000207c l       .eh_frame_hdr	0000000000000000              __GNU_EH_FRAME_HDR
0000000000004000 l     O .got.plt	0000000000000000              _GLOBAL_OFFSET_TABLE_
00000000000011b0 g     F .text	00000000000000be              test_strlen
0000000000000000       F *UND*	0000000000000000              __libc_start_main@GLIBC_2.34
0000000000001490 g       .text	0000000000000000              ft_strcpy
0000000000000000  w      *UND*	0000000000000000              _ITM_deregisterTMCloneTable
0000000000004040  w      .data	0000000000000000              data_start
0000000000000000       F *UND*	0000000000000000              strcpy@GLIBC_2.2.5
0000000000001470 g       .text	0000000000000000              ft_strlen
0000000000004098 g       .data	0000000000000000              _edata
00000000000014e8 g     F .fini	0000000000000000              .hidden _fini
0000000000000000       F *UND*	0000000000000000              strlen@GLIBC_2.2.5
0000000000000000       F *UND*	0000000000000000              printf@GLIBC_2.2.5
0000000000004040 g       .data	0000000000000000              __data_start
0000000000000000       F *UND*	0000000000000000              strcmp@GLIBC_2.2.5
0000000000001270 g     F .text	00000000000000fb              test_strcpy
0000000000000000  w      *UND*	0000000000000000              __gmon_start__
0000000000004048 g     O .data	0000000000000000              .hidden __dso_handle
0000000000002000 g     O .rodata	0000000000000004              _IO_stdin_used
0000000000001370 g     F .text	0000000000000100              test_strcmp
00000000000040a8 g       .bss	0000000000000000              _end
0000000000001080 g     F .text	0000000000000026              _start
0000000000004098 g       .bss	0000000000000000              __bss_start
0000000000001170 g     F .text	0000000000000038              main
00000000000014b0 g       .text	0000000000000000              ft_strcmp
0000000000004098 g     O .data	0000000000000000              .hidden __TMC_END__
0000000000000000  w      *UND*	0000000000000000              _ITM_registerTMCloneTable
0000000000000000  w    F *UND*	0000000000000000              __cxa_finalize@GLIBC_2.2.5
0000000000001000 g     F .init	0000000000000000              .hidden _init



Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8b 05 d9 2f 00 00 	mov    rax,QWORD PTR [rip+0x2fd9]        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   rax,rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   rax
    1016:	48 83 c4 08          	add    rsp,0x8
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <strcpy@plt-0x10>:
    1020:	ff 35 e2 2f 00 00    	push   QWORD PTR [rip+0x2fe2]        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmp    QWORD PTR [rip+0x2fe4]        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001030 <strcpy@plt>:
    1030:	ff 25 e2 2f 00 00    	jmp    QWORD PTR [rip+0x2fe2]        # 4018 <strcpy@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <strlen@plt>:
    1040:	ff 25 da 2f 00 00    	jmp    QWORD PTR [rip+0x2fda]        # 4020 <strlen@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <printf@plt>:
    1050:	ff 25 d2 2f 00 00    	jmp    QWORD PTR [rip+0x2fd2]        # 4028 <printf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <strcmp@plt>:
    1060:	ff 25 ca 2f 00 00    	jmp    QWORD PTR [rip+0x2fca]        # 4030 <strcmp@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001070 <__cxa_finalize@plt>:
    1070:	ff 25 82 2f 00 00    	jmp    QWORD PTR [rip+0x2f82]        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1076:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    ebp,ebp
    1086:	49 89 d1             	mov    r9,rdx
    1089:	5e                   	pop    rsi
    108a:	48 89 e2             	mov    rdx,rsp
    108d:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
    1091:	50                   	push   rax
    1092:	54                   	push   rsp
    1093:	45 31 c0             	xor    r8d,r8d
    1096:	31 c9                	xor    ecx,ecx
    1098:	48 8d 3d d1 00 00 00 	lea    rdi,[rip+0xd1]        # 1170 <main>
    109f:	ff 15 33 2f 00 00    	call   QWORD PTR [rip+0x2f33]        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10a5:	f4                   	hlt    
    10a6:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    10ad:	00 00 00 

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d e1 2f 00 00 	lea    rdi,[rip+0x2fe1]        # 4098 <__TMC_END__>
    10b7:	48 8d 05 da 2f 00 00 	lea    rax,[rip+0x2fda]        # 4098 <__TMC_END__>
    10be:	48 39 f8             	cmp    rax,rdi
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 16 2f 00 00 	mov    rax,QWORD PTR [rip+0x2f16]        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10ca:	48 85 c0             	test   rax,rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    rax
    10d1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d b1 2f 00 00 	lea    rdi,[rip+0x2fb1]        # 4098 <__TMC_END__>
    10e7:	48 8d 35 aa 2f 00 00 	lea    rsi,[rip+0x2faa]        # 4098 <__TMC_END__>
    10ee:	48 29 fe             	sub    rsi,rdi
    10f1:	48 89 f0             	mov    rax,rsi
    10f4:	48 c1 ee 3f          	shr    rsi,0x3f
    10f8:	48 c1 f8 03          	sar    rax,0x3
    10fc:	48 01 c6             	add    rsi,rax
    10ff:	48 d1 fe             	sar    rsi,1
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 2e 00 00 	mov    rax,QWORD PTR [rip+0x2ee5]        # 3ff0 <_ITM_registerTMCloneTable@Base>
    110b:	48 85 c0             	test   rax,rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    rax
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 6d 2f 00 00 00 	cmp    BYTE PTR [rip+0x2f6d],0x0        # 4098 <__TMC_END__>
    112b:	75 2b                	jne    1158 <__do_global_dtors_aux+0x38>
    112d:	55                   	push   rbp
    112e:	48 83 3d c2 2e 00 00 	cmp    QWORD PTR [rip+0x2ec2],0x0        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    rbp,rsp
    1139:	74 0c                	je     1147 <__do_global_dtors_aux+0x27>
    113b:	48 8b 3d 06 2f 00 00 	mov    rdi,QWORD PTR [rip+0x2f06]        # 4048 <__dso_handle>
    1142:	e8 29 ff ff ff       	call   1070 <__cxa_finalize@plt>
    1147:	e8 64 ff ff ff       	call   10b0 <deregister_tm_clones>
    114c:	c6 05 45 2f 00 00 01 	mov    BYTE PTR [rip+0x2f45],0x1        # 4098 <__TMC_END__>
    1153:	5d                   	pop    rbp
    1154:	c3                   	ret    
    1155:	0f 1f 00             	nop    DWORD PTR [rax]
    1158:	c3                   	ret    
    1159:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001160 <frame_dummy>:
    1160:	f3 0f 1e fa          	endbr64 
    1164:	e9 77 ff ff ff       	jmp    10e0 <register_tm_clones>
    1169:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000001170 <main>:
    1170:	55                   	push   rbp
    1171:	48 89 e5             	mov    rbp,rsp
    1174:	48 83 ec 10          	sub    rsp,0x10
    1178:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    117f:	89 7d f8             	mov    DWORD PTR [rbp-0x8],edi
    1182:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
    1186:	48 c7 05 0f 2f 00 00 	mov    QWORD PTR [rip+0x2f0f],0x9        # 40a0 <n_case>
    118d:	09 00 00 00 
    1191:	e8 1a 00 00 00       	call   11b0 <test_strlen>
    1196:	e8 d5 00 00 00       	call   1270 <test_strcpy>
    119b:	e8 d0 01 00 00       	call   1370 <test_strcmp>
    11a0:	31 c0                	xor    eax,eax
    11a2:	48 83 c4 10          	add    rsp,0x10
    11a6:	5d                   	pop    rbp
    11a7:	c3                   	ret    
    11a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    11af:	00 

00000000000011b0 <test_strlen>:
    11b0:	55                   	push   rbp
    11b1:	48 89 e5             	mov    rbp,rsp
    11b4:	48 83 ec 20          	sub    rsp,0x20
    11b8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    11bf:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    11c6:	48 63 45 f8          	movsxd rax,DWORD PTR [rbp-0x8]
    11ca:	48 3b 05 cf 2e 00 00 	cmp    rax,QWORD PTR [rip+0x2ecf]        # 40a0 <n_case>
    11d1:	0f 83 58 00 00 00    	jae    122f <test_strlen+0x7f>
    11d7:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
    11db:	48 8d 05 6e 2e 00 00 	lea    rax,[rip+0x2e6e]        # 4050 <cases>
    11e2:	48 8b 04 c8          	mov    rax,QWORD PTR [rax+rcx*8]
    11e6:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
    11ea:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
    11ee:	e8 4d fe ff ff       	call   1040 <strlen@plt>
    11f3:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    11f7:	48 8b 7d f0          	mov    rdi,QWORD PTR [rbp-0x10]
    11fb:	e8 70 02 00 00       	call   1470 <ft_strlen>
    1200:	48 89 c1             	mov    rcx,rax
    1203:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
    1207:	48 39 c8             	cmp    rax,rcx
    120a:	0f 85 05 00 00 00    	jne    1215 <test_strlen+0x65>
    1210:	e9 0c 00 00 00       	jmp    1221 <test_strlen+0x71>
    1215:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
    121c:	e9 0e 00 00 00       	jmp    122f <test_strlen+0x7f>
    1221:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1224:	83 c0 01             	add    eax,0x1
    1227:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    122a:	e9 97 ff ff ff       	jmp    11c6 <test_strlen+0x16>
    122f:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
    1233:	0f 84 1a 00 00 00    	je     1253 <test_strlen+0xa3>
    1239:	48 8d 3d c4 0d 00 00 	lea    rdi,[rip+0xdc4]        # 2004 <_IO_stdin_used+0x4>
    1240:	48 8d 35 c6 0d 00 00 	lea    rsi,[rip+0xdc6]        # 200d <_IO_stdin_used+0xd>
    1247:	b0 00                	mov    al,0x0
    1249:	e8 02 fe ff ff       	call   1050 <printf@plt>
    124e:	e9 15 00 00 00       	jmp    1268 <test_strlen+0xb8>
    1253:	48 8d 3d bf 0d 00 00 	lea    rdi,[rip+0xdbf]        # 2019 <_IO_stdin_used+0x19>
    125a:	48 8d 35 ac 0d 00 00 	lea    rsi,[rip+0xdac]        # 200d <_IO_stdin_used+0xd>
    1261:	b0 00                	mov    al,0x0
    1263:	e8 e8 fd ff ff       	call   1050 <printf@plt>
    1268:	48 83 c4 20          	add    rsp,0x20
    126c:	5d                   	pop    rbp
    126d:	c3                   	ret    
    126e:	66 90                	xchg   ax,ax

0000000000001270 <test_strcpy>:
    1270:	55                   	push   rbp
    1271:	48 89 e5             	mov    rbp,rsp
    1274:	48 81 ec 10 08 00 00 	sub    rsp,0x810
    127b:	c7 85 fc f7 ff ff 00 	mov    DWORD PTR [rbp-0x804],0x0
    1282:	00 00 00 
    1285:	c7 85 f8 f7 ff ff 00 	mov    DWORD PTR [rbp-0x808],0x0
    128c:	00 00 00 
    128f:	48 63 85 f8 f7 ff ff 	movsxd rax,DWORD PTR [rbp-0x808]
    1296:	48 3b 05 03 2e 00 00 	cmp    rax,QWORD PTR [rip+0x2e03]        # 40a0 <n_case>
    129d:	0f 83 83 00 00 00    	jae    1326 <test_strcpy+0xb6>
    12a3:	48 63 8d f8 f7 ff ff 	movsxd rcx,DWORD PTR [rbp-0x808]
    12aa:	48 8d 05 9f 2d 00 00 	lea    rax,[rip+0x2d9f]        # 4050 <cases>
    12b1:	48 8b 04 c8          	mov    rax,QWORD PTR [rax+rcx*8]
    12b5:	48 89 85 f0 f7 ff ff 	mov    QWORD PTR [rbp-0x810],rax
    12bc:	48 8d bd 00 fc ff ff 	lea    rdi,[rbp-0x400]
    12c3:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
    12ca:	e8 61 fd ff ff       	call   1030 <strcpy@plt>
    12cf:	48 8d bd 00 f8 ff ff 	lea    rdi,[rbp-0x800]
    12d6:	48 8b b5 f0 f7 ff ff 	mov    rsi,QWORD PTR [rbp-0x810]
    12dd:	e8 ae 01 00 00       	call   1490 <ft_strcpy>
    12e2:	48 8d bd 00 fc ff ff 	lea    rdi,[rbp-0x400]
    12e9:	48 8d b5 00 f8 ff ff 	lea    rsi,[rbp-0x800]
    12f0:	e8 6b fd ff ff       	call   1060 <strcmp@plt>
    12f5:	83 f8 00             	cmp    eax,0x0
    12f8:	0f 85 05 00 00 00    	jne    1303 <test_strcpy+0x93>
    12fe:	e9 0f 00 00 00       	jmp    1312 <test_strcpy+0xa2>
    1303:	c7 85 fc f7 ff ff 01 	mov    DWORD PTR [rbp-0x804],0x1
    130a:	00 00 00 
    130d:	e9 14 00 00 00       	jmp    1326 <test_strcpy+0xb6>
    1312:	8b 85 f8 f7 ff ff    	mov    eax,DWORD PTR [rbp-0x808]
    1318:	83 c0 01             	add    eax,0x1
    131b:	89 85 f8 f7 ff ff    	mov    DWORD PTR [rbp-0x808],eax
    1321:	e9 69 ff ff ff       	jmp    128f <test_strcpy+0x1f>
    1326:	83 bd fc f7 ff ff 00 	cmp    DWORD PTR [rbp-0x804],0x0
    132d:	0f 84 1a 00 00 00    	je     134d <test_strcpy+0xdd>
    1333:	48 8d 3d ca 0c 00 00 	lea    rdi,[rip+0xcca]        # 2004 <_IO_stdin_used+0x4>
    133a:	48 8d 35 e4 0c 00 00 	lea    rsi,[rip+0xce4]        # 2025 <_IO_stdin_used+0x25>
    1341:	b0 00                	mov    al,0x0
    1343:	e8 08 fd ff ff       	call   1050 <printf@plt>
    1348:	e9 15 00 00 00       	jmp    1362 <test_strcpy+0xf2>
    134d:	48 8d 3d c5 0c 00 00 	lea    rdi,[rip+0xcc5]        # 2019 <_IO_stdin_used+0x19>
    1354:	48 8d 35 ca 0c 00 00 	lea    rsi,[rip+0xcca]        # 2025 <_IO_stdin_used+0x25>
    135b:	b0 00                	mov    al,0x0
    135d:	e8 ee fc ff ff       	call   1050 <printf@plt>
    1362:	48 81 c4 10 08 00 00 	add    rsp,0x810
    1369:	5d                   	pop    rbp
    136a:	c3                   	ret    
    136b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001370 <test_strcmp>:
    1370:	55                   	push   rbp
    1371:	48 89 e5             	mov    rbp,rsp
    1374:	48 83 ec 30          	sub    rsp,0x30
    1378:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
    137f:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [rbp-0x8],0x0
    1386:	48 63 45 f8          	movsxd rax,DWORD PTR [rbp-0x8]
    138a:	48 3b 05 0f 2d 00 00 	cmp    rax,QWORD PTR [rip+0x2d0f]        # 40a0 <n_case>
    1391:	0f 83 9a 00 00 00    	jae    1431 <test_strcmp+0xc1>
    1397:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
    139e:	48 63 45 f4          	movsxd rax,DWORD PTR [rbp-0xc]
    13a2:	48 3b 05 f7 2c 00 00 	cmp    rax,QWORD PTR [rip+0x2cf7]        # 40a0 <n_case>
    13a9:	0f 83 6f 00 00 00    	jae    141e <test_strcmp+0xae>
    13af:	48 63 4d f8          	movsxd rcx,DWORD PTR [rbp-0x8]
    13b3:	48 8d 05 96 2c 00 00 	lea    rax,[rip+0x2c96]        # 4050 <cases>
    13ba:	48 8b 04 c8          	mov    rax,QWORD PTR [rax+rcx*8]
    13be:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
    13c2:	48 63 4d f4          	movsxd rcx,DWORD PTR [rbp-0xc]
    13c6:	48 8d 05 83 2c 00 00 	lea    rax,[rip+0x2c83]        # 4050 <cases>
    13cd:	48 8b 04 c8          	mov    rax,QWORD PTR [rax+rcx*8]
    13d1:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
    13d5:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
    13d9:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
    13dd:	e8 7e fc ff ff       	call   1060 <strcmp@plt>
    13e2:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
    13e5:	48 8b 7d e8          	mov    rdi,QWORD PTR [rbp-0x18]
    13e9:	48 8b 75 e0          	mov    rsi,QWORD PTR [rbp-0x20]
    13ed:	e8 be 00 00 00       	call   14b0 <ft_strcmp>
    13f2:	89 c1                	mov    ecx,eax
    13f4:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
    13f7:	39 c8                	cmp    eax,ecx
    13f9:	0f 85 05 00 00 00    	jne    1404 <test_strcmp+0x94>
    13ff:	e9 0c 00 00 00       	jmp    1410 <test_strcmp+0xa0>
    1404:	c7 45 fc 01 00 00 00 	mov    DWORD PTR [rbp-0x4],0x1
    140b:	e9 0e 00 00 00       	jmp    141e <test_strcmp+0xae>
    1410:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
    1413:	83 c0 01             	add    eax,0x1
    1416:	89 45 f4             	mov    DWORD PTR [rbp-0xc],eax
    1419:	e9 80 ff ff ff       	jmp    139e <test_strcmp+0x2e>
    141e:	e9 00 00 00 00       	jmp    1423 <test_strcmp+0xb3>
    1423:	8b 45 f8             	mov    eax,DWORD PTR [rbp-0x8]
    1426:	83 c0 01             	add    eax,0x1
    1429:	89 45 f8             	mov    DWORD PTR [rbp-0x8],eax
    142c:	e9 55 ff ff ff       	jmp    1386 <test_strcmp+0x16>
    1431:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
    1435:	0f 84 1a 00 00 00    	je     1455 <test_strcmp+0xe5>
    143b:	48 8d 3d c2 0b 00 00 	lea    rdi,[rip+0xbc2]        # 2004 <_IO_stdin_used+0x4>
    1442:	48 8d 35 e8 0b 00 00 	lea    rsi,[rip+0xbe8]        # 2031 <_IO_stdin_used+0x31>
    1449:	b0 00                	mov    al,0x0
    144b:	e8 00 fc ff ff       	call   1050 <printf@plt>
    1450:	e9 15 00 00 00       	jmp    146a <test_strcmp+0xfa>
    1455:	48 8d 3d bd 0b 00 00 	lea    rdi,[rip+0xbbd]        # 2019 <_IO_stdin_used+0x19>
    145c:	48 8d 35 ce 0b 00 00 	lea    rsi,[rip+0xbce]        # 2031 <_IO_stdin_used+0x31>
    1463:	b0 00                	mov    al,0x0
    1465:	e8 e6 fb ff ff       	call   1050 <printf@plt>
    146a:	48 83 c4 30          	add    rsp,0x30
    146e:	5d                   	pop    rbp
    146f:	c3                   	ret    

0000000000001470 <ft_strlen>:
    1470:	55                   	push   rbp
    1471:	48 89 e5             	mov    rbp,rsp
    1474:	48 89 f8             	mov    rax,rdi
    1477:	48 ff c8             	dec    rax

000000000000147a <loop>:
    147a:	48 ff c0             	inc    rax
    147d:	40 8a 30             	mov    sil,BYTE PTR [rax]
    1480:	40 80 fe 00          	cmp    sil,0x0
    1484:	75 f4                	jne    147a <loop>
    1486:	48 29 f8             	sub    rax,rdi
    1489:	5d                   	pop    rbp
    148a:	c3                   	ret    
    148b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000001490 <ft_strcpy>:
    1490:	55                   	push   rbp
    1491:	48 89 e5             	mov    rbp,rsp
    1494:	48 89 f8             	mov    rax,rdi

0000000000001497 <loop>:
    1497:	8a 16                	mov    dl,BYTE PTR [rsi]
    1499:	88 17                	mov    BYTE PTR [rdi],dl
    149b:	48 ff c7             	inc    rdi
    149e:	48 ff c6             	inc    rsi
    14a1:	80 fa 00             	cmp    dl,0x0
    14a4:	75 f1                	jne    1497 <loop>
    14a6:	5d                   	pop    rbp
    14a7:	c3                   	ret    
    14a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    14af:	00 

00000000000014b0 <ft_strcmp>:
    14b0:	55                   	push   rbp
    14b1:	48 89 e5             	mov    rbp,rsp
    14b4:	31 d2                	xor    edx,edx
    14b6:	31 c9                	xor    ecx,ecx

00000000000014b8 <loop>:
    14b8:	8a 17                	mov    dl,BYTE PTR [rdi]
    14ba:	8a 0e                	mov    cl,BYTE PTR [rsi]
    14bc:	48 ff c7             	inc    rdi
    14bf:	48 ff c6             	inc    rsi
    14c2:	80 fa 00             	cmp    dl,0x0
    14c5:	0f 94 c0             	sete   al
    14c8:	80 f9 00             	cmp    cl,0x0
    14cb:	41 0f 94 c0          	sete   r8b
    14cf:	44 08 c0             	or     al,r8b
    14d2:	38 ca                	cmp    dl,cl
    14d4:	41 0f 95 c0          	setne  r8b
    14d8:	44 08 c0             	or     al,r8b
    14db:	3c 00                	cmp    al,0x0
    14dd:	74 d9                	je     14b8 <loop>
    14df:	31 c0                	xor    eax,eax
    14e1:	29 ca                	sub    edx,ecx
    14e3:	89 d0                	mov    eax,edx
    14e5:	5d                   	pop    rbp
    14e6:	c3                   	ret    

Disassembly of section .fini:

00000000000014e8 <_fini>:
    14e8:	f3 0f 1e fa          	endbr64 
    14ec:	48 83 ec 08          	sub    rsp,0x8
    14f0:	48 83 c4 08          	add    rsp,0x8
    14f4:	c3                   	ret    
