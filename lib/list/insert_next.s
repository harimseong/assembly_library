%include "symbol.mac"
  global_ ft_list_insert_next
  align   16
  section .text

; void ft_list_insert_next(t_list* node, t_list* new);
ft_list_insert_next:
  push  rbp
  mov   rbp, rsp

  test  rdi, 0
  je    ret
  test  rsi, 0
  je    ret

  mov   qword [rsi + 8], [rdi + 8] ; new->next = node->next
  mov   qword [rdi + 8], rsi ; node->next = new

  pop   rbp
ret:
  ret
