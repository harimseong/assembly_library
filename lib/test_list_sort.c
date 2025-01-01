#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "test.h"

#define TC_SIZE (2048)
#define NUM_RANGE (4096lu)

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

typedef int t_num;

void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
int cmp(void* l, void* r);

void test_list_sort(void)
{
  int is_fail = 0;

  for (size_t testcase = 0; testcase < TC_SIZE; ++testcase) {
    t_list*   head = 0;
    t_list**  ptr = &head;
    int arr_size = testcase;

    for (int i = 0; i < arr_size; ++i) {
      *ptr = malloc(sizeof(t_list));
      (*ptr)->data = (void*)(rand() % NUM_RANGE);
      ptr = &(*ptr)->next;
    }
    *ptr = 0;

    ptr = &head;
    while (*ptr != 0) {
      ptr = &(*ptr)->next;
    }

    ft_list_sort(&head, cmp);

    t_list* node = head;
    for (int i = 1; i < arr_size; ++i) {
      if (node->data > node->next->data) {
        printf("%ld > %ld\n", (long int)(node->data), (long int)(node->next->data));
        is_fail |= 1;
        break;
      }
      node = node->next;
    }
    if (is_fail) {
      while (head != 0) {
        printf("%ld ", (long int)head->data);
        head = head->next;
      }
      printf("\n");
      break;
    }
  }
  TEST_RESULT(is_fail);
}

int cmp(void* l, void* r)
{
  return l - r;
}
