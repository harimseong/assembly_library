%include "symbol.mac"
  section .text
  global_ read
  align 16

; ssize_t read(int fd, void* buf, size_t nbyte);
read:
  push  rbp
  push  rcx
  push  r11
  mov   rbp, rsp

  mov   rax, 3
  syscall

  pop   r11
  pop   rcx
  pop   rbp
  ret
