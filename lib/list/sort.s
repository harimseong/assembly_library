%include "symbol.mac"
  section .text
  global  ft_list_sort
  extern  ft_list_swap
  align   16

; void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
; merge sort
ft_list_sort:
  push  rbp
  mov   rbp, rsp

  cmp   rdi, 0
  je    ret

  mov   rax, [rdi]
  xor   rdx, rdx
loop0:
  cmp   rax, 0
  je    loop0_end

  inc   rdx
  mov   rax, [rax + 8]
  jmp   loop0
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
  push  r12

  mov   r12, rdi
  mov   rbx, [r12]     ; rbx = *left
  lea   rbx, [rbx + 8] ; rbx = &rbx->next
  mov   rsi, [rbx]     ; rsi = *rbx
  mov   rsi, [rsi]     ; rsi = rsi->data
  mov   rdi, [r12]     ; rdi = *left
  mov   rdi, [rdi]     ; rdi = rdi->data
  call  rcx

  cmp   eax, 0
  jle   divide1_ret

  mov   rdi, [r12]     ; rdi = *rdx
  mov   rsi, [rbx]     ; rsi = *rbx
  call  ft_list_swap
divide1_ret:
  mov   rax, [rbx]     ; rax = *rbx
  lea   rax, [rax + 8] ; rax = &rax->next
  pop   r12
  pop   rbx
  ret
divide2:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 40
  mov   [rsp], rdi
  mov   [rsp + 8], rsi
  mov   [rsp + 16], rdx
  mov   [rsp + 24], rcx

  mov   rsi, [rdi]      ; rsi = *left
  xor   rax, rax
  shr   rdx, 1
divide2_loop:
  cmp   rax, rdx
  je    divide2_loop_end

  mov   rsi, [rsi + 8]  ; rsi = rsi->next
  inc   rax
  jmp   divide2_loop
divide2_loop_end:
  sub   [rsp + 16], rax ; size -= rax
  mov   rdi, [rsp]
  mov   rdx, rax
  call  divide

  mov   [rsp + 32], rax
  mov   rsi, [rsp + 8]
  mov   rdx, [rsp + 16]
  mov   rcx, [rsp + 24]
  mov   rdi, rax
  call  divide

  mov   rdi, [rsp]
  mov   rsi, [rsp + 32]
  mov   rdx, [rsp + 8]
  mov   rcx, [rsp + 24]
  call  merge

  mov   rsp, rbp
  pop   rbp
  ret

; t_list** merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*));
merge:
  push  rbp
  mov   rbp, rsp

  sub   rsp, 32
  mov   [rsp], rbx
  mov   [rsp + 8], r12
  mov   [rsp + 16], r13
  mov   [rsp + 24], r14

  mov   rbx, rdi
  mov   r12, rsi
  mov   r13, rdx
  mov   r14, rcx
merge_loop:
  mov   r8, [rbx] ; l = *left
  mov   r9, [r12] ; r = *right

  cmp   r8, r9
  je    merge_loop2
  cmp   r9, rdx
  je    merge_loop2 ; l == r || r == end

  mov   rdi, [r8] ; rdi = l->data
  mov   rsi, [r9] ; rsi = r->data
  call  r14

  cmp   rax, 0
  jle   merge_loop1

  mov   rax, [r9 + 8]
  mov   [r12], rax     ; *right = r->next
  mov   [r9 + 8], r8   ; r->next = l
  mov   [rbx], r9      ; *left = r
merge_loop1:
  mov   rbx, [rbx]
  lea   rbx, [rbx + 8] ; left = &(*left)->next
  jmp   merge_loop
merge_loop2:
  cmp   [r12], r13     ; *right != end
  je    merge_ret

  mov   r12, [r12]
  lea   r12, [r12 + 8] ; right = &(*right)->next
  jmp   merge_loop2
merge_ret:
  mov   rax, r12
  mov   rbx, [rsp]
  mov   r12, [rsp + 8]
  mov   r13, [rsp + 16]
  mov   r14, [rsp + 24]

  mov   rsp, rbp
  pop   rbp
  ret

%include "format.mac"
