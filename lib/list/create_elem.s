%include "symbol.mac"
  global_ ft_create_elem
  extern_ malloc
  align   16
  section .text

; t_list* ft_create_elem(void* data);
ft_create_elem:
  push  rbp
  push  rbx
  mov   rbp, rsp

  mov   rbx, rdi
  mov   rdi, 16
  call  malloc
  cmp   rax, 0
  je    ret

  mov   [rax], rbx
  mov   qword [rax + 8], 0

ret:
  pop   rbx
  pop   rbp
  ret
