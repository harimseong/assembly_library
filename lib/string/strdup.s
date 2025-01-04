%include "symbol.mac"
  global_ ft_strdup
  extern_ malloc
  align   16
  section .text

; char * strdup(const char * s);
ft_strdup:
  push  rbx
  push  r12
  mov   rbx, rdi

loop0:
  mov   al, [rdi]
  inc   rdi
  cmp   al, 0
  jnz   loop0

  mov   r12, rdi
  sub   rdi, rbx
  call_extern_ malloc
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
  ret

%include "elf_gnustack.mac"
