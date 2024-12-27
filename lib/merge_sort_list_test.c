#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#define ARR_SIZE (1024)
#define TC_SIZE (1024)
#define NUM_RANGE (4096lu)

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

typedef int t_num;

void merge_sort_list(t_list** head, int (*cmp)(void*, void*));
int cmp(void* l, void* r);

int main(int argc, char** argv)
{
  int is_fail = 0;

  if (argc > 1) {
    unsigned long int seed = *(unsigned long int*)argv[1];
    printf("seed=%lu\n", seed);
    srand(seed);
  }
  for (size_t testcase = 0; testcase < TC_SIZE; ++testcase) {
    t_list*   head = 0;
    t_list**  ptr = &head;
    //t_num     array[ARR_SIZE] = {2, 7, 6, 3, 1, 4, 5, 8};
    int arr_size = testcase;

    for (int i = 0; i < arr_size; ++i) {
      *ptr = malloc(sizeof(t_list));
      (*ptr)->data = (void*)(rand() % NUM_RANGE);
  //  (*ptr)->data = (void*)(long int)array[i];
      ptr = &(*ptr)->next;
    }
    *ptr = 0;

    ptr = &head;
    while (*ptr != 0) {
//    printf("ptr=%p, *ptr=%p, *ptr->next=%p, *ptr->data=%ld\n", 
//        ptr, *ptr, (*ptr)->next, (long int)(*ptr)->data);
      ptr = &(*ptr)->next;
    }

    merge_sort_list(&head, cmp);

//  printf("%ld ", (long int)head->data);
    for (int i = 1; i < arr_size; ++i) {
//    printf("%ld ", (long int)head->next->data);
      if (head->data > head->next->data) {
        is_fail |= 1;
        printf("FAIL\n");
      }
      head = head->next;
    }
  }
  return is_fail;
}

int cmp(void* l, void* r)
{
  return l - r;
}
