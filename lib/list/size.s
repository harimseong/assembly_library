%include "symbol.mac"
  global_ ft_list_size
  align   16
  section .text

; int ft_list_size(t_list* head);
ft_list_size:
  push  rbp
  mov   rbp, rsp

  xor   rax, rax
ft_list_size_loop:
  cmp   rdi, 0
  je    ft_list_size_ret

  mov   rdi, [rdi + 8] ; head = head->next
  inc   rax
  jmp   ft_list_size_loop

ft_list_size_ret:
  pop   rbp
  ret
