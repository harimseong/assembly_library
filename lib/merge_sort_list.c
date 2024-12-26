#include <stdlib.h>

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

void  ft_swap(void* left, void* right);
int   ft_list_size(t_list* head);
void  divide(t_list** head, int size, int (*cmp)(void*, void*));
void  merge(t_list** right, t_list** left, int (*cmp)(void*, void*));

void  merge_sort_list(t_list** head, int (*cmp)(void*, void*))
{
  t_list* node;
  int     size = ft_list_size(*head);

  divide(head, size, cmp);
}

void  divide(t_list** head, int size, int (*cmp)(void*, void*))
{
  if (size <= 2) {
    if (size == 2) {
      t_list* node = *head;

      ft_swap(&node->data, &node->next->data);
    }
    return;
  }
  int     half_size = size >> 1;
  t_list** middle = head;

  while (half_size > 0) {
    middle = &(*middle)->next;
    --half_size;
  }
  divide(head, half_size, cmp);
  divide(middle, size - half_size, cmp);
  merge(head, middle, cmp);
}

void  merge(t_list** right, t_list** left, int (*cmp)(void*, void*))
{
  t_list* right_end = *left;

  while (right != right_end && left != 0) {
    if (cmp(left->data, right->data) > 0) {

      right = right->next;
    } else {
      left = left->next;
    }
  }
}

int ft_list_size(t_list* head)
{
  int size = 0;

  while (head != NULL) {
    head = head->next;
    ++size;
  }
  return size;
}
