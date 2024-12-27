#include <stdlib.h>

#include <stdio.h>
#include <stdint.h>

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

void  ft_list_swap(t_list* left, t_list* right);
void  divide(t_list** head, t_list* end, size_t size, int (*cmp)(void*, void*));
void  merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*));

void  merge_sort_list(t_list** head, int (*cmp)(void*, void*))
{
  t_list* node;
  size_t  size = 0;

  node = *head;
  while (node != 0) {
    node = node->next;
    ++size;
  }
  if (size <= 1) {
    return;
  }
  divide(head, 0, size, cmp);
  {
    t_list* node = *head;

    while (node != 0) {
      printf("%lu ", (uintptr_t)node->data);
      node = node->next;
    }
    printf("\n");
  }
}

void  divide(t_list** head, t_list* end, size_t size, int (*cmp)(void*, void*))
{
  printf("divide size=%zu\n", size);
  {
    t_list* node = *head;

    while (node != end) {
      printf("%lu ", (uintptr_t)node->data);
      node = node->next;
    }
    printf("\n");
  }

  if (size <= 2) {
    t_list* node = *head;

    if (size == 2 && cmp(node->data, node->next->data) > 0) {
      ft_list_swap(node, node->next);
    }
    goto ret;
  }
  size_t   half_size = size >> 1;
  t_list** middle = head;

  for (size_t i = 0; i < half_size; ++i) {
    middle = &(*middle)->next;
  }
  printf("\t1: size=%zu, head=%ld, middle=%ld\n", size, (long int)(*head)->data, (long int)(*middle)->data);
  divide(head, *middle, half_size, cmp);
  printf("\t2: size=%zu, head=%ld, middle=%ld\n", size, (long int)(*head)->data, (long int)(*middle)->data);
  divide(middle, end, size - half_size, cmp);
  printf("\t3: size=%zu, head=%ld, middle=%ld\n", size, (long int)(*head)->data, (long int)(*middle)->data);
  merge(head, middle, end, cmp);

ret:
  printf("divide end\n");
  {
    t_list* node = *head;

    while (node != end) {
      printf("%lu ", (uintptr_t)node->data);
      node = node->next;
    }
    printf("\n");
  }
}

void  merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*))
{
  while (1) {
    t_list* l = *left;
    t_list* r = *right;

    if (l == r || r == end) {
      break;
    }
    if (r != end && cmp(l->data, r->data) > 0) {
      *right = r->next;
      *left = r;
      r->next = l;
    }
    left = &(*left)->next;
  }
}

void  ft_list_swap(t_list* left, t_list* right)
{
  void* temp = left->data;
  left->data = right->data;
  right->data = temp;
}
