%include "symbol.mac"
%include "errno.mac"
  section .text
  global    ft_write
  extern    get_errno
  align     16

; ssize_t write(int fd, void* buf, size_t nbyte);
ft_write:
  push  rbp
  mov   rbp, rsp

%ifdef Linux
  mov   rax, 1
  syscall
  cmp   rax, 0
  jge   exit
  neg   rax
%elifdef Darwin
  mov   rax, 0x2000004
  syscall
  jnc   exit
%else
  %error "environment not supported"
%endif

  push  rax
  call_extern  get_errno
  pop   rdi
  mov   [rax], rdi
  mov   rax, -1

exit:
  pop   rbp
  ret

%include "format.mac"
