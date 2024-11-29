  section .text
  global ft_strlen
  align 16

ft_strlen:
  // new base pointer
  push rbp
  mov  rbp, rsp



  pop rbp
  ret
