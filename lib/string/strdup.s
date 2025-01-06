%include "symbol.mac"
  section .text
  global  ft_strdup
  extern  malloc
  align   16

; char * strdup(const char * s);
ft_strdup:
  push  rbp
  push  rbx
  push  r12
  mov   rbp, rsp
  mov   rbx, rdi

loop0:
  mov   al, [rdi]
  inc   rdi
  cmp   al, 0
  jnz   loop0

  mov   r12, rdi
  sub   rdi, rbx
  call_extern  malloc
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

ret:
  pop   r12
  pop   rbx
  pop   rbp
  ret

%include "format.mac"
