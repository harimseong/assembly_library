%include "symbol.mac"
  global_ ft_list_sort
  extern_ ft_list_swap
  align   16
  section .text

; void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
; merge sort
ft_list_sort:
  push  rbp
  mov   rbp, rsp

  cmp   rdi, 0
  je    ret

  mov   rax, [rdi]
  xor   rcx, rcx
loop0:
  cmp   rax, 0
  je    loop0_end

  inc   rdx
  mov   rax, [rax + 8]
loop0_end:

  mov   rcx, rsi
  xor   rsi, rsi
  call  divide

ret:
  pop   rbp
  ret

; t_list** divide(t_list** left, t_list* end, size_t size, int (*cmp)(void*, void*));
divide:
; rbx, r12, r13, r14, r15
  cmp   rdx, 2
  je    divide1
  ja    divide2
  mov   rax, [rdi]
  lea   rax, [rax + 8]
  ret

divide1:
  push  rbx

  mov   rdx, rdi
  mov   rbx, [rdx]     ; rbx = *left
  lea   rbx, [rbx + 8] ; rbx = &rbx->next
  mov   rsi, [rbx]     ; rsi = *rbx
  mov   rsi, [rsi]     ; rsi = rsi->data
  mov   rdi, [rdx]     ; rdi = *rbx
  mov   rdi, [rdi]     ; rdi = rdi->data
  call  rcx

  cmp   eax, 0
  jle   divide1_end

  mov   rdi, [rdx]     ; rdi = *rdx
  mov   rsi, [rbx]     ; rsi = *rbx
  call  ft_list_swap

divide1_end:
  mov   rax, [rbx]     ; rax = *rbx
  lea   rax, [rax + 8] ; rax = &rax->next
  pop   rbx
  ret

divide2:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 24
  mov   [rsp], rbx
  mov   [rsp + 8], r12
  mov   [rsp + 16], r13
  mov   rbx, rdi
  mov   r12, rsi



;
divide_ret:
  mov   rbx, [rsp]
  mov   r12, [rsp + 8]
  mov   r13, [rsp + 16]
  mov   rsp, rbp
  pop   rbp
  ret


; t_list** merge(t_list** left, t_list* right, t_list* end, int (*cmp)(void*, void*));
merge:
