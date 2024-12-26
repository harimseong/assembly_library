%include "symbol.mac"
  global_ ft_list_sort
  align   16
  section .text

; void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
; merge sort
ft_list_sort:
  push  rbp
  mov   rbp, rsp

  pop   rbp
  ret
