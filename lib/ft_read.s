%include "symbol.mac"
%include "syscall.mac"
  global_ ft_read
  extern  ___error
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
  call  ___error
  pop   rsi
  mov   [rax], esi
  mov   rax, -1
exit:
  pop   r11
  pop   rcx
  pop   rbp
  ret
