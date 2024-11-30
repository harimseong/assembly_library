%include "set_symbol.mac"
  set_symbol ft_strcmp

  section .text
  global symbol_
  align 16

; int strcmp(const char * s1, const char * s2);
symbol_:
  push  rbp
  mov   rbp, rsp
  xor   edx, edx
  xor   ecx, ecx

loop:
  mov   dl, [rdi]
  mov   cl, [rsi]
  inc   rdi
  inc   rsi
  cmp   dl, 0
  setz  al

  cmp   cl, 0
  setz  r8b
  or    al, r8b

  cmp   dl, cl
  setne r8b
  or    al, r8b

  cmp   al, 0
  je    loop

  xor   eax, eax
  sub   edx, ecx
  mov   eax, edx

  pop   rbp
  ret
