  section .text
  global _ft_strlen
  align 16

; size_t ft_strlen(const char* s);
_ft_strlen:
  ; new base pointer
  push  rbp
  mov   rbp, rsp

  ; copy rdi.
  mov   rax, rdi
  dec   rax

loop:
  inc   rax
  ; load 1 byte from the pointer.
  mov   sil, byte [rax]

  ; compare the byte with 0 and increment pointer.
  ; if it is not 0, loop again.
  cmp   sil, 0
  jnz   loop

  sub   rax, rdi

  pop rbp
  ret
