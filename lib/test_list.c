#include "test.h"
#include "list.h"

void ft_list_push_front(t_list** head, void* data);
int ft_list_size(t_list* head);
void ft_list_sort(t_list** head, int cmp(void*, void*));
void ft_list_remove_if(t_list** head,
    void* ref,
    int (*cmp)(void*, void*),
    void (*free_fct)(void*));

void  test_list_push_front();
void  test_list_size();
void  test_list_sort_boundary();
void  test_list_remove_if();

void test_list(void)
{
  test_list_push_front();
  test_list_size();
  test_list_sort_boundary();
  test_list_remove_if();
}

void  test_list_push_front()
{
  int is_fail = 0;
  unsigned long int arr[5] = {0, 1, 2, 3, 4};
  int size = sizeof(arr) / sizeof(arr[0]);

  t_list* head = 0;
  for (int i = 0; i < size; ++i) {
    if (ft_list_size(head) != i) {
      is_fail = 1;
      break;
    }
    ft_list_push_front(&head, (void*)arr[i]);
    t_list* node = head;
    for (int j = 0; j <= i; ++j) {
      if (node->data != (void*)arr[j]) {
        is_fail = 1;
        break;
      }
      node = node->next;
    }
    if (node != 0) {
      is_fail = 1;
      break;
    }
  }
  if (ft_list_size(head) != size) {
    is_fail = 1;
  }
  TEST_RESULT(is_fail);
}

void  test_list_size()
{
  int is_fail = 0;

  TEST_RESULT(is_fail);
}

void  test_list_sort_boundary()
{
  int is_fail = 0;

  TEST_RESULT(is_fail);
}

void  test_list_remove_if()
{
  int is_fail = 0;

  TEST_RESULT(is_fail);
}
