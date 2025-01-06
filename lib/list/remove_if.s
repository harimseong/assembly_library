%include "symbol.mac"
  section .text
  global  ft_list_remove_if
  extern  free
  align   16
 
; void ft_list_remove_if(
; t_list** head,
; void* data_ref,
; int (*cmp)(void*, void*),
; void (*free_fct)(void*));
ft_list_remove_if:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 40
  mov   [rsp + 32], r15
  mov   [rsp + 24], r14
  mov   [rsp + 16], r13
  mov   [rsp + 8], r12
  mov   [rsp], rbx

  mov   rbx, rdi
  mov   r12, rsi
  mov   r13, rdx
  mov   r14, rcx
; assert(addr!=0)
loop0:
  mov   r15, [rbx] ; r15 = *head
  cmp   r15, 0     ; r15 == 0
  je    ret

  mov   rdi, [r15]
  mov   rsi, r12
  call  r13 ; cmp(r15->data, data_ref)

  cmp   eax, 0
  je    loop0_remove

  lea   rbx, [r15 + 8] ; head = &r15->next
  jmp   loop0

loop0_remove:
; if (cmp() == 0) {
  mov   rdi, [r15]
  call  r14 ; free_fct(r15->data)

  mov   rdi, r15 ; rdi = r15
  mov   rax, [r15 + 8]
  mov   [rbx], rax ; *head = r15->next
  call_extern  free ; free(rdi)
  jmp   loop0
;}

ret:
  mov   r15, [rsp + 32]
  mov   r14, [rsp + 24]
  mov   r13, [rsp + 16]
  mov   r12, [rsp + 8]
  mov   rbx, [rsp]

  mov   rsp, rbp
  pop   rbp
  ret

; |  A   |      | data |   B  |      | data |   C  |
; | HEAD | ...  |  A   |  A+8 | ...  |  B   |  B+8 | ...

%include "format.mac"
