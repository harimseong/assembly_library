#include <sys/time.h>

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "test.h"
#include "list.h"

#define TC_SIZE (1 << 23)
#define NUM_RANGE (TC_SIZE << 1)

typedef int t_num;

void ft_list_sort(t_list** head, int (*cmp)(void*, void*));
void merge_sort_list(t_list**head, int (*cmp)(void*, void*));
int cmp(void* l, void* r);

void test_list_sort(void)
{
  int is_fail = 0;

  for (size_t testcase = 1; testcase < TC_SIZE; testcase <<= 1) {
    struct timeval start;
    struct timeval end;
    double  asm_time;
    double  c_time;
    t_list*   asm_head = 0;
    t_list*   c_head = 0;
    t_list**  asm_ptr = &asm_head;
    t_list**  c_ptr = &c_head;
    int arr_size = testcase;

    for (int i = 0; i < arr_size; ++i) {
      void* data = (void*)((size_t)rand() % NUM_RANGE);
      *asm_ptr = malloc(sizeof(t_list));
      (*asm_ptr)->data = data;
      asm_ptr = &(*asm_ptr)->next;
      *c_ptr = malloc(sizeof(t_list));
      (*c_ptr)->data = data;
      c_ptr = &(*c_ptr)->next;
    }
    *asm_ptr = 0;
    *c_ptr = 0;

    size_t start_us = start.tv_sec * 1000000 + start.tv_usec;
    size_t end_us = end.tv_sec * 1000000 + end.tv_usec;

    gettimeofday(&start, 0);
    merge_sort_list(&c_head, cmp);
    gettimeofday(&end, 0);

    start_us = start.tv_sec * 1000000 + start.tv_usec;
    end_us = end.tv_sec * 1000000 + end.tv_usec;
    c_time = (end_us - start_us) / 1000.0;

    gettimeofday(&start, 0);
    ft_list_sort(&asm_head, cmp);
    gettimeofday(&end, 0);

    start_us = start.tv_sec * 1000000 + start.tv_usec;
    end_us = end.tv_sec * 1000000 + end.tv_usec;
    asm_time = (end_us - start_us) / 1000.0;

    printf("%zu element: %f ms(ASM), %f ms(C), %f%%\n",
        testcase, asm_time, c_time, asm_time / c_time * 100);
    t_list* node = asm_head;
    for (int i = 1; i < arr_size; ++i) {
      if (node->data > node->next->data) {
        printf("%ld > %ld\n", (long int)(node->data), (long int)(node->next->data));
        is_fail |= 1;
        break;
      }
      node = node->next;
    }
    if (is_fail) {
      while (asm_head != 0) {
        printf("%ld ", (long int)asm_head->data);
        asm_head = asm_head->next;
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
