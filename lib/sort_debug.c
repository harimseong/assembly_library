#include <sys/time.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "list.h"

#define TC_SIZE (1 << 24)
#define NUM_RANGE (TC_SIZE << 1)

typedef int t_num;

void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
int cmp(void* l, void* r);

int main(int argc, char** argv)
{
  int is_fail = 0;

  if (argc > 1) {
    unsigned long int seed = *(unsigned long int*)argv[1];
    printf("seed=%lu\n", seed);
    srand(seed);
  }
  for (size_t testcase = 8; testcase < TC_SIZE; testcase <<= 1) {
    struct timeval start;
    struct timeval end;
    t_list*   head = 0;
    t_list**  ptr = &head;
    int arr_size = testcase;

    for (int i = 0; i < arr_size; ++i) {
      *ptr = malloc(sizeof(t_list));
      (*ptr)->data = (void*)((size_t)rand() % NUM_RANGE);
      ptr = &(*ptr)->next;
    }
    *ptr = 0;

    ptr = &head;
    while (*ptr != 0) {
      ptr = &(*ptr)->next;
    }

    gettimeofday(&start, 0);
    ft_list_sort(&head, cmp);
    gettimeofday(&end, 0);

    size_t start_us = start.tv_sec * 1000000 + start.tv_usec;
    size_t end_us = end.tv_sec * 1000000 + end.tv_usec;
    printf("%zu element time taken = %f ms\n", testcase, (double)(end_us - start_us) / 1000);
    for (int i = 1; i < arr_size; ++i) {
      if (head->data > head->next->data) {
        is_fail |= 1;
        printf("FAIL\n");
        break;
      }
      head = head->next;
    }
    if (is_fail != 0) {
      break;
    }
  }
  return is_fail;
}

int cmp(void* l, void* r)
{
  return l - r;
}
