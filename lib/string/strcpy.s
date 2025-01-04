%include "symbol.mac"
  section .text
  global_ ft_strcpy
  align 16

; char * ft_strcpy(char * dst, const char * src);
ft_strcpy:
  mov   rax, rdi

loop:
  mov   dl, byte [rsi]
  mov   byte [rdi], dl
  inc   rdi
  inc   rsi
  cmp   dl, 0
  jnz   loop

  ret

%include "elf_gnustack.mac"
