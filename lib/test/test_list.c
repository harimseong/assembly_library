#include <string.h>
#include <stdlib.h>

#include "test.h"
#include "libasm_list.h"

typedef struct s_data {
  char* str;
  int* arr;
} t_data;

void ft_list_push_front(t_list** head, void* data);
int ft_list_size(t_list* head);
void ft_list_sort(t_list** head, int cmp(void*, void*));
void ft_list_remove_if(t_list** head,
    void* ref,
    int (*cmp)(void*, void*),
    void (*free_fct)(void*));

void  test_list_push_front_and_size();
void  test_list_sort_boundary();
void  test_list_remove_if();
void  do_nothing(void* data) {(void)data;};

extern int cmp(void*, void*);

int   cmp_data(void* l, void* r);
t_data* alloc_data(char* str, int* arr);
void    free_data(void* data);

void test_list(void)
{
  test_list_push_front_and_size();
  test_list_sort_boundary();
  test_list_remove_if();
}

void  test_list_push_front_and_size()
{
  int is_fail = 0;
  unsigned long int arr[5] = {0, 1, 2, 3, 4};
  int size = sizeof(arr) / sizeof(arr[0]);

  t_list* head = 0;
  for (int i = 0; i < size; ++i) {
    int size;
    if ((size = ft_list_size(head)) != i) {
      is_fail = 1;
      break;
    }
    printf("i: size=%d, ", size);
    ft_list_push_front(&head, (void*)arr[i]);
    t_list* node = head;
    for (int j = i; j >= 0; --j) {
      printf("%ld ", (long int)node->data);
      if (node->data != (void*)arr[j]) {
        is_fail = 1;
        break;
      }
      node = node->next;
    }
    printf("\n");
    if (node != 0) {
      is_fail = 1;
      break;
    }
  }
  if (ft_list_size(head) != size) {
    is_fail = 1;
  }
  ft_list_free(head, do_nothing);
  TEST_RESULT(is_fail);
}

void  test_list_sort_boundary()
{
  int is_fail = 0;

  t_list* head = 0;
  ft_list_sort(&head, cmp);

  t_list  node1 = {(void*)42, 0};
  t_list  node2 = {(void*)24, 0};

  node1.next = &node2;
  head = &node1;
//ft_list_sort(&head, 0); intended segfault
  TEST_RESULT(is_fail);
}

void  test_list_remove_if()
{
  int is_fail = 0;
  int num = 42;
  t_data ref = (t_data){
    .str = "hello",
    .arr = &num
  };
  char* strs[10] = {
    "hello", "bbb", "ccc", "ddd",
    "eee", "hello", "ggg", "hhh",
    "iii", "jjj",
  };
  int   nums[10] = {0, 42, 2, 3, 4, 42, 6, 7, 8, 42};
  char* strs_after[6] = {
    "ccc", "ddd", "eee",
    "ggg", "hhh", "iii", 
  };
  int   nums_after[6] = {2, 3, 4, 6, 7, 8};

  t_list* head = 0;

  printf("before:\n");
  for (int i = 0; i < 10; ++i) {
    t_data* data = alloc_data(strs[i], nums + i);
    ft_list_push_front(&head, data);
    printf("data->str=%s, *data->arr=%d\n", data->str, *data->arr);
  }
  printf("\n");
  ft_list_remove_if(&head, &ref, cmp_data, free_data);

  t_list* node = head;
  printf("after:\n");
  for (int i = 5; i >= 0; --i) {
    t_data* data = node->data;
    printf("data->str=%s, *data->arr=%d\n", data->str, *data->arr);
    if (strcmp(data->str, strs_after[i]) != 0 ||
        *data->arr != nums_after[i]) {
      is_fail = 1;
      break;
    }
    node = node->next;
  }
  ft_list_free(head, free_data);
  printf("\n");
//ft_list_remove_if(0, &ref, cmp_data, free_data);
  TEST_RESULT(is_fail);
}

void free_data(void* data)
{
  t_data* d = data;

  free(d->str);
  free(d->arr);
  free(d);
}

t_data* alloc_data(char* str, int* arr)
{
  t_data*  data;
  char* new_str;
  int* new_arr;

  data = malloc(sizeof(t_data));
  if (data == 0) {
    return 0;
  }
  new_str = strdup(str);
  new_arr = malloc(sizeof(int));
  *new_arr = *arr;
  data->str = new_str;
  data->arr = new_arr;
  return data;
}

int   cmp_data(void* l, void* r)
{
  t_data* l_data = l;
  t_data* r_data = r;

  if (strcmp(l_data->str, r_data->str) == 0) {
    return 0;
  }
  if (*l_data->arr == *r_data->arr) {
    return 0;
  }
  return 1;
}
