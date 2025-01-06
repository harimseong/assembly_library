%include "symbol.mac"
  section .text
  global  ft_swap
  align   16

; void ft_swap(void** left, void** right);
ft_swap:
  mov   rdx, [rdi]
  mov   rcx, [rsi]
  mov   [rdi], rcx
  mov   [rsi], rdx
  ret

%include "elf_gnustack.mac"
