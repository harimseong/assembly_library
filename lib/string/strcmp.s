%include "symbol.mac"
  section .text
  global_ ft_strcmp
  align 16

; int strcmp(const char * s1, const char * s2);
ft_strcmp:
  xor   eax, eax

loop:
  mov   dl, [rdi]
  cmp   dl, [rsi]
  jne   diff
  inc   rdi
  inc   rsi
  cmp   dl, 0
  jne   loop
  ret

diff:
  mov   eax, 1
  jg    positive
  neg   eax
positive:
  ret

%include "elf_gnustack.mac"
