%include "symbol.mac"
%include "errno.mac"
  global_   ft_read
  extern    get_errno_
  align     16
  section   .text

; ssize_t read(int fd, void* buf, size_t nbyte);
ft_read:
  push  rbp
  mov   rbp, rsp

%ifdef Linux
  mov   rax, 0
  syscall
  cmp   rax, 0
  jge   exit
  neg   rax
%elifdef Darwin
  mov   rax, 0x2000003
  syscall
  jnc   exit
%else
  %error "environment not supported"
%endif

  push  rax
  call  get_errno_
  pop   rdi
  mov   [rax], rdi
  mov   rax, -1

exit:
  pop   rbp
  ret
