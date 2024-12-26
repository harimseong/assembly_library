%include "symbol.mac"
  global_ ft_list_sort
  align   16
  section .text

; void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
; merge sort
ft_list_sort:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 24
  mov   [rsp + 16], rdi
  mov   [rsp + 8], r12
  mov   [rsp], rbx

  mov   rbx, 2


  mov   r12, [rsp + 8]
  mov   rbx, [rsp]
  mov   rsp, rbp
  pop   rbp
  ret
