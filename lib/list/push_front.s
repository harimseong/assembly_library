%include "symbol.mac"
  section .text
  global  ft_list_push_front
  extern  ft_create_elem
  align   16

; void ft_list_push_front(t_list** head, void* data);
ft_list_push_front:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 16
  mov   [rsp], rbx

  cmp   rdi, 0
  je    ret

  mov   rbx, rdi
  mov   rdi, rsi

  mov   rdi, rsi
  call  ft_create_elem
  cmp   rax, 0
  je    ret

  mov   rdi, [rbx] ; old head
  mov   [rbx], rax ; new head
  mov   [rax + 8], rdi ; new head -> next = old head 

ret:
  mov   rbx, [rsp]
  add   rsp, 16
  pop   rbp
  ret

%include "format.mac"
