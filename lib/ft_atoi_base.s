%include "symbol.mac"
  global_   ft_atoi_base
  align     16
  section   .text

; int ft_atoi_base(char* str, char* base);
ft_atoi_base:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 16
  mov   [rsp + 8], rsi
  mov   [rsp], rdi

  mov   rdi, rsi
  call  verify_base
  cmp   rax, 1
  jbe   error

  mov   rdi, rsp
  mov   rsi, [rsp + 8]
  call  decide_sign
  cmp   al, 0
  je    error

; relase stack frame
error:
  xor   eax, eax
ret:
  mov   rsp, rbp
  pop   rbp
  ret

; size_t verify_base(char* base);
; return length of base or 0 for invalid base
verify_base:
  push  rbp
  push  rbx
  mov   rbp, rsp
  mov   rdx, rdi ; rdx = base
  xor   rbx, rbx ; rbx = 0 (length)

  sub   rsp, 1024 ; init count table
  xor   rax, rax
  mov   rcx, 128
  lea   rdi, [rsp]
  rep   stosq
; rep: while (rcx-- != 0)
; stosq: [rdi] = rax, rdi += 8
  
verify_base_loop:
  mov   dil, [rdx] ; dil = *base, null check
  cmp   dil, 0
  je    verify_base_ret

  call  is_space ; check space
  cmp   al, 0
  setne sil

  mov   rax, [rsp + dil] ; check count
  cmp   rax, 0
  setne cl

  or    sil, cl ; jump if base is invalid
  cmp   sil, 0
  jne   verify_base_false

  inc   qword [rsp + dil] ; increment
  inc   rdx
  inc   rbx
  jmp   verify_base_loop

verify_base_false:
  xor   rbx, rbx
verify_base_ret:
  mov   rax, rbx
  mov   rsp, rbp
  pop   rbx
  pop   rbp
  ret

; unsigned char is_space(char c);
is_space:
  cmp   dil, 9
  setge al
  cmp   dil, 13
  setle sil
  or    al, sil
  cmp   dil, 32
  sete  sil
  or    al, sil
  ret

; optimized is_delim
is_delim:
  xor   al, al
  cmp   dil, 32
  ja    is_forbidden_ret

  movabs  rax, 0x100003e01
  bt    rax, dil ;bit test: carry = bit rax[dil]
  setc  al
is_delim_ret:
  ret

; char decide_sign(char** strptr, char* base);
decide_sign:
  mov   rcx, rdi   ; rcx = baseptr
  mov   rdx, [rdi] ; rdx = *baseptr

  dec   rdx
decide_sign_loop0:
  inc   rdx
  mov   dil, [rdx]
  call  is_space
  cmp   al, 0
  jne   decide_sign_loop0

  dec   rdx
decide_sign_loop1:
  inc   rdx
  mov   dil, [rdx]
  cmp   dil, 0
  sete  sil

  cmp   dil, 45 ; '-'

decide_sign_exit:
  mov   [rdi], rdx
  ret

; unsigned char is_base(char c, char* base);
is_base:
  mov   dl, [rdi]
is_base_ret:
  ret
