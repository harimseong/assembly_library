%include "symbol.mac"
  global_ ft_swap
  align   16
  section .text

; void ft_swap(void** left, void** right);
ft_swap:
  mov   rdx, [rdi]
  mov   rcx, [rsi]
  mov   [rdi], rcx
  mov   [rsi], rdx
  ret

%include "elf_gnustack.mac"
