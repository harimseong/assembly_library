%include "symbol.mac"
%include "errno.mac"
  global_   ft_write
  extern    get_errno_
  align     16
  section   .text

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
  call  get_errno_ WRT ..plt
  pop   rdi
  mov   [rax], rdi
  mov   rax, -1

exit:
  pop   rbp
  ret

%include "elf_gnustack.mac"
