%include "symbol.mac"
  section .text
  global  ft_create_elem
  extern  malloc
  align   16

; t_list* ft_create_elem(void* data);
ft_create_elem:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 16
  mov   [rsp], rbx

  mov   rbx, rdi
  mov   rdi, 16
  call_extern  malloc
  cmp   rax, 0
  je    ret

  mov   [rax], rbx
  mov   qword [rax + 8], 0

ret:
  mov   rbx, [rsp]
  add   rsp, 16
  pop   rbp
  ret

%include "format.mac"
