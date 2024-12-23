%include "symbol.mac"
  global_   ft_atoi_base
  extern_   ft_strlen
  align     16
  section   .text

; int ft_atoi_base(char* str, char* base);
ft_atoi_base:
  push  rbp
  push  rbx
  mov   rbp, rsp

  sub   rsp, 24
  mov   [rsp + 8], rsi
  mov   [rsp], rdi

  mov   rdi, rsi
  call  verify_base
  cmp   rax, 1
  jbe   error
  mov   rbx, rax

  mov   rdi, rsp
  call  decide_sign
  mov   [rsp + 16], al

  mov   rdi, [rsp]
  mov   rsi, [rsp + 8]
  mov   rdx, rbx
  call  calc_sum

  cmp   [rsp + 16], 0
  je    ret
  neg   rax
  jmp   ret
error:
  xor   eax, eax
ret:
; relase stack frame
  mov   rsp, rbp
  pop   rbx
  pop   rbp
  ret

; size_t verify_base(char* base);
; return the length of base or 0 for invalid base
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

; unsigned char decide_sign(char** strptr);
decide_sign:
  push  rbx

  mov   rbx, rdi ; [rsp] = baseptr
  mov   rdx, [rdi] ; rdx = *baseptr

  dec   rdx
decide_sign_loop0:
  inc   rdx
  mov   dil, [rdx]
  call  is_space
  cmp   al, 0
  jne   decide_sign_loop0

  xor   rax, rax

  dec   rdx
decide_sign_loop1:
  inc   rdx
  mov   dil, [rdx]
  cmp   dil, 45 ; '-'
  sete  sil
  add   rax, sil

  cmp   dil, 43 ; '+'
  sete  cl
  or    sil, cl
  cmp   sil, 1
  je    decide_sign_loop1

decide_sign_exit:
  and   al, 1
  mov   [rbx], rdx
  pop   rbx
  ret

; size_t calc_sum(char* str, char* base, size_t base_len);
calc_sum:
  push  rbp
  push  rbx
  push  r12
  mov   rbp, rsp

  sub   rsp, 32
  mov   [rsp], rdi
  mov   [rsp + 8], rsi

calc_sum_loop:
  mov   dil, [rcx]
  mov   rsi, [rdx]
  call  is_base

calc_sum_ret:
  mov   rsp, rbp
  pop   r12
  pop   rbx
  pop   rbp
  ret

; unsigned char is_base(char c, char* base);
is_base:
  mov   dl, [rdi]
is_base_ret:
  ret
