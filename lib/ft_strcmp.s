  section .text
  global _ft_strcmp
  align 16

; int strcmp(const char * s1, const char * s2);
_ft_strcmp:
  push  rbp
  mov   rbp, rsp

loop:
  mov   dl, [rdi]
  mov   cl, [rsi]
  inc   rdi
  inc   rsi
  cmp   dl, 0
  setz  al
  cmp   cl, 0
  setz  al
  cmp   dl, cl
  jnz   loop

  xor   rax, rax
  sub   dl, cl
  mov   al, dl

  pop   rbp
  ret
