%include "symbol.mac"
  section .text
  global    ft_atoi_base
  align     16

; int ft_atoi_base(char* str, char* base);
ft_atoi_base:
  push  rbp
  push  rbx
  mov   rbp, rsp

  sub   rsp, 32
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

  cmp   byte [rsp + 16], 0
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
;____________________________________________________________ 


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
  movzx rdi, byte [rdx] ; dil = *base, null check
  cmp   dil, 0
  je    verify_base_ret

  call  is_space ; check space
  cmp   al, 0
  sete  al

  mov   rsi, [rsp + 8*rdi] ; check count
  cmp   rsi, 0
  sete  cl
  and   al, cl 

  cmp   dil, 45
  setne cl
  and   al, cl

  cmp   dil, 43
  setne cl
  and   al, cl

  cmp   al, 0
  je    verify_base_false ; if base is invalid

  inc   qword [rsp + 8*rdi] ; increment
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
;____________________________________________________________ 


; unsigned char is_space(char c);
is_space:
  cmp   dil, 9
  setge al
  cmp   dil, 13
  setle sil
  and   al, sil
  cmp   dil, 32
  sete  sil
  or    al, sil
  ret

;optimized is_delim
; is_delim:
; xor   al, al
; cmp   dil, 32
; ja    is_delim_ret

; mov   rax, 0x100003e01
; movzx rdi, dil
; bt    rax, rdi ;bit test: carry = bit rax[dil]
; setc  al
;is_delim_ret:
; ret
;____________________________________________________________ 


; unsigned char decide_sign(char** strptr);
decide_sign:
  push  rbx

  mov   rbx, rdi ; [rsp] = strptr
  mov   rdx, [rdi] ; rdx = *strptr

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
  movzx rsi, sil
  add   rax, rsi

  cmp   dil, 43 ; '+'
  sete  cl
  or    cl, sil
  cmp   cl, 1
  je    decide_sign_loop1

decide_sign_exit:
  and   al, 1
  mov   [rbx], rdx
  pop   rbx
  ret
;____________________________________________________________ 


; size_t calc_sum(char* str, char* base, size_t base_len);
calc_sum:
  push  rbp
  push  rbx
  push  r12
  push  r13
  push  r14
  mov   rbp, rsp

  mov   rbx, rdi
  mov   r12, rsi
  mov   r13, rdx
  xor   r14, r14 ; r14 = 0 (sum)

calc_sum_loop:
  mov   dil, [rbx]
  cmp   dil, 0
  je    calc_sum_ret

  mov   rsi, r12
  call  get_base_idx
  cmp   rax, r13
  je    calc_sum_ret

  imul  r14, r13
  add   r14, rax
  inc   rbx;
  jmp   calc_sum_loop

calc_sum_ret:
  mov   rax, r14
  mov   rsp, rbp
  pop   r14
  pop   r13
  pop   r12
  pop   rbx
  pop   rbp
  ret
;____________________________________________________________ 


; size_t get_base_idx(char c, char* base);
get_base_idx:
  mov   rax, rsi
get_base_idx_loop:
  mov   dl, [rax]
  cmp   dl, 0
  je    get_base_idx_ret
  inc   rax
  cmp   dl, dil
  jne   get_base_idx_loop
  dec   rax
get_base_idx_ret:
  sub   rax, rsi
  ret

%include "format.mac"
