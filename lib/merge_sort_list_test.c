#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define SIZE (8)

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

typedef int t_num;

void merge_sort_list(t_list** head, int (*cmp)(void*, void*));
int cmp(void* l, void* r);

int main(int argc, char** argv)
{
  t_list*   head = 0;
  t_list**  ptr = &head;
  t_num     array[SIZE] = {8, 7, 6, 5, 4, 3, 2, 1};

  if (argc > 1) {
    srand(atoi(argv[1]));
  }
  for (int i = 0; i < SIZE; ++i) {
    *ptr = malloc(sizeof(t_list));
//  (*ptr)->data = (void*)(rand() % 128lu);
    (*ptr)->data = (void*)(long int)array[i];
    ptr = &(*ptr)->next;
  }
  *ptr = 0;

  ptr = &head;
  while (*ptr != 0) {
    printf("ptr=%p, *ptr=%p, *ptr->next=%p, *ptr->data=%ld\n", 
        ptr, *ptr, (*ptr)->next, (long int)(*ptr)->data);
    ptr = &(*ptr)->next;
  }

  merge_sort_list(&head, cmp);

  int is_fail = 0;

  printf("%ld ", (long int)head->data);
  for (int i = 1; i < SIZE; ++i) {
    printf("%ld ", (long int)head->next->data);
    if (head->data > head->next->data) {
      is_fail = 1;
    }
    head = head->next;
  }
  if (is_fail) {
    printf("FAIL\n");
  } else {
    printf("SUCCESS\n");
  }
}

int cmp(void* l, void* r)
{
  return l - r;
}
