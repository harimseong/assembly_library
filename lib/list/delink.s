%include "symbol.mac"
  section .text
  global    ft_list_delink
  align     16

; void ft_list_delink(t_list** head, t_list* node);
ft_list_delink:
  push  rbp
  mov   rbp, rsp

loop0:
  cmp   [rdi], rsi ; *head == node
  je    loop0_end

  mov   rdi, [rdi] ; head = &(*head)->next
  add   rdi, 8
  jmp   loop0
loop0_end:
  mov   rax, [rdx + 8]
  mov   [rdi], rax ; *head = (*head)->next
ret:
  pop   rbp
  ret

%include "elf_gnustack.mac"
