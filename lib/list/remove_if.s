%include "symbol.mac"
  global_ ft_list_remove_if
  align   16
 
; void ft_list_remove_if(
; t_list** head,
; void* data_ref,
; int (*cmp)(void*, void*),
; void (*free_fct)(void*));
ft_list_remove_if:
  push  rbp
  mov   rbp, rsp

  pop   rbp
  ret
