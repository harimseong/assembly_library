%include "symbol.mac"
  global_ ft_list_push_front
  extern_ ft_create_elem
  align   16
  section .text

; void ft_list_push_front(t_list** head, void* data);
ft_list_push_front:
  push  rbp
  mov   rbp, rsp

  push  rbx

  cmp   rdi, 0
  je    ret

  mov   rbx, rdi
  mov   rdi, rsi

  mov   rdi, rsi
  call  ft_create_elem
  cmp   rax, 0
  jmp   ret

  mov   rdi, [rbx] ; old head
  mov   [rbx], rax ; new head
  mov   [rax + 8], rdi ; new head -> next = old head 

ret:
  pop   rbx
  pop   rbp
  ret
