%include "symbol.mac"
%include "syscall.mac"
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

  unix_syscall 3
  jnc   exit

  push  rax
  call  get_errno_
  pop   rsi
  mov   [rax], esi
  mov   rax, -1
exit:
  pop   r11
  pop   rcx
  pop   rbp
  ret
