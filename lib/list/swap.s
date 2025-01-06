%include "symbol.mac"
  section .text
  global  ft_list_swap
  align   16

; void ft_list_swap(t_list* left, t_list* right);
ft_list_swap:
  mov   rax, [rdi] ; left->data
  mov   rdx, [rsi]
  mov   [rdi], rdx
  mov   [rsi], rax
  ret

%include "elf_gnustack.mac"
