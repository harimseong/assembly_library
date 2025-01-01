#include <stdlib.h>

#include "list.h"

void      ft_list_swap(t_list* left, t_list* right);
t_list**  divide(t_list** head, t_list* end, size_t size, int (*cmp)(void*, void*));
t_list**  merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*));

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
}

t_list**  divide(t_list** head, t_list* end, size_t size, int (*cmp)(void*, void*))
{
  if (size <= 2) {
    if (size == 1) {
      return &(*head)->next;
    }
    t_list* node = *head;

    head = &(*head)->next;
    if (cmp(node->data, node->next->data) > 0) {
      ft_list_swap(node, node->next);
    }
    return &(*head)->next;
  }
  size_t   half_size = size >> 1;
  t_list** middle = head;

  for (size_t i = 0; i < half_size; ++i) {
    middle = &(*middle)->next;
  }
  middle = divide(head, *middle, half_size, cmp);
  divide(middle, end, size - half_size, cmp);
  return merge(head, middle, end, cmp);
}

t_list** merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*))
{
  while (1) {
    t_list* l = *left;
    t_list* r = *right;

    if (l == r || r == end) {
      break;
    }
    if (cmp(l->data, r->data) > 0) {
      *right = r->next;
      *left = r;
      r->next = l;
    }
    left = &(*left)->next;
  }
  while (*right != end) {
    right = &(*right)->next;
  }
  return right;
}

void  ft_list_swap(t_list* left, t_list* right)
{
  void* temp = left->data;
  left->data = right->data;
  right->data = temp;
}
