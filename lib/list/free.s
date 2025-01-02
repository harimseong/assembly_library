%include "symbol.mac"
  global_ ft_list_free
  extern_ free
  align   16
  section .text

; void ft_list_free(t_list* head, void (*free)(void*));
ft_list_free:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 16
  mov   [rsp], rbx
  mov   [rsp + 8], r12

  mov   rbx, rdi
  mov   r12, rsi

loop:
  cmp   rbx, 0
  je    ret

  mov   rdi, [rbx]
  call  r12

  mov   rdi, rbx
  mov   rbx, [rbx + 8]
  call  free

  jmp   loop
ret:
  mov   rbx, [rsp]
  mov   r12, [rsp + 8]
  mov   rsp, rbp

  pop   rbp
  ret
