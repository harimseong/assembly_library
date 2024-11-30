%include "symbol.mac"
  section .text
  global_ ft_strdup
  extern_ malloc
  align 16

; char * strdup(const char * s);
ft_strdup:
  push  rbp
  push  r12
  push  r13
  mov   rbp, rsp
  mov   r12, rdi

loop0:
  mov   bl, [rdi]
  inc   rdi
  cmp   bl, 0
  jnz   loop0

  mov   r13, rdi
  sub   rdi, r12
  call  malloc
  mov   rdi, rax
  xor   rsi, rsi

loop1:
  mov   sil, [r12]
  mov   [rdi], sil
  inc   r12
  inc   rdi
  cmp   r13, r12
  jne   loop1

  mov   byte [rdi], 0

  pop   r13
  pop   r12
  pop   rbp
  ret
