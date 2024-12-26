#include <stdlib.h>

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

void  ft_swap(void** left, void** right);
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
  divide(head, node, size, cmp);
}

void  divide(t_list** head, t_list* end, size_t size, int (*cmp)(void*, void*))
{
  if (size <= 2) {
    t_list* node = *head;

    if (size == 2 && cmp(node->data, node->next->data) > 0) {

      ft_swap(&node->data, &node->next->data);
    }
    return;
  }
  size_t   half_size = size >> 1;
  t_list** middle = head;

  for (size_t i = 0; i < half_size; ++i) {
    middle = &(*middle)->next;
  }
  divide(head, *middle, half_size, cmp);
  divide(middle, end, size - half_size, cmp);
  merge(head, middle, end, cmp);
}

void  merge(t_list** left, t_list** right, t_list* end, int (*cmp)(void*, void*))
{
  t_list* left_end = *right;

  while (1) {
    t_list* l = *left;
    t_list* r = *right;

    if (l == 0 || r == 0 || l->next == left_end || r->next == end) {
      break;
    }
    if (cmp(l->data, r->data) > 0) {
      *right = r->next;
      *left = r;
      r->next = l;
    }
    left = &(*left)->next;
  }
}

void  ft_swap(void** left, void** right)
{
  void* temp = *left;
  *left = *right;
  *right = temp;
}
