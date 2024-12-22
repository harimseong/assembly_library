%include "symbol.mac"
%include "syscall.mac"
  global_ ft_read
  extern  ___error
  extern _printf
  align 16
  section .text

; ssize_t read(int fd, void* buf, size_t nbyte);
ft_read:
  push  rbp
  push  rcx
  push  r11
  mov   rbp, rsp

  unix_syscall 3
  cmp   rax, 0
  jz    exit

  push  rax
  call  ___error
  pop   rsi
  mov   [rax], esi

  mov   rcx, [rax]
  mov   rdx, rsi
  mov   rsi, rax
  lea   rdi, [rel str]
  call  _printf

  mov   rax, -1

exit:
  pop   r11
  pop   rcx
  pop   rbp
  ret

  section .data
str: db "addr=%p, value(esi)=%d, value([rax])=%d", 10, 0
