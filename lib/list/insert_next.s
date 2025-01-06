%include "symbol.mac"
  section .text
  global  ft_list_insert_next
  align   16

; void ft_list_insert_next(t_list* node, t_list* new);
ft_list_insert_next:
  test  rdi, 0
  je    ret
  test  rsi, 0
  je    ret

  mov   rax, [rdi + 8] ; new->next = node->next
  mov   [rsi + 8], rax
  mov   [rdi + 8], rsi ; node->next = new
ret:
  ret

%include "elf_gnustack.mac"
