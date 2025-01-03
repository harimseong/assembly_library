%include "symbol.mac"
  section .text
  global_ ft_strdup
  extern_ malloc
  align 16

; char * strdup(const char * s);
ft_strdup:
  push  rbx
  push  r12
  mov   rbx, rdi

loop0:
  mov   bl, [rdi]
  inc   rdi
  cmp   bl, 0
  jnz   loop0

  mov   r12, rdi
  sub   rdi, rbx
  call  malloc
  cmp   rax, 0
  je    ret

  mov   rdi, rax
  xor   rsi, rsi

loop1:
  mov   sil, [rbx]
  mov   [rdi], sil
  inc   rbx
  inc   rdi
  cmp   r12, rbx
  jne   loop1

  mov   byte [rdi], 0

ret:
  pop   r12
  pop   rbx
  ret
