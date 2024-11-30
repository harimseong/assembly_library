%include "symbol.mac"
  section .text
  global_ read
  align 16

read:
  push  rbp
  mov   rbp, rsp



  pop   rbp
  ret
