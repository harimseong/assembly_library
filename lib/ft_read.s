%include "symbol.mac"
%include "errno.mac"
  global_ ft_read
  extern  get_errno_
  align 16
  section .text

; ssize_t read(int fd, void* buf, size_t nbyte);
ft_read:
  push  rbp
  push  rcx
  push  r11
  mov   rbp, rsp

%ifdef Linux
  mov   eax, 0
  syscall
  cmp   rax, 0
  jge   exit

  push  rax
  call  get_errno_
  pop   rdi
  neg   rdi
  mov   [rax], rdi
  mov   rax, -1

%elifdef Darwin
  mov   eax, 3
  syscall
  jnc   exit

  push  rax
  call  get_errno_
  pop   rdi
  mov   [rax], edi
  mov   rax, -1
%else
  %error "environment not supported"
%endif
exit:
  pop   r11
  pop   rcx
  pop   rbp
  ret
