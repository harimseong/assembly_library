%include "set_symbol.mac"
  set_symbol ft_strcpy

  section .text
  global symbol_
  align 16

; char * ft_strcpy(char * dst, const char * src);
symbol_:
  push  rbp
  mov   rbp, rsp
  mov   rax, rdi

loop:
  mov   dl, byte [rsi]
  mov   byte [rdi], dl
  inc   rdi
  inc   rsi
  cmp   dl, 0
  jnz   loop

  pop   rbp
  ret
