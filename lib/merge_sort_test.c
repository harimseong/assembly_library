#include <stdio.h>
#include <stdlib.h>

#define SIZE (65536)

typedef int t_num;

void merge_sort(t_num* array, size_t array_size);

int main(int argc, char** argv)
{
  t_num array[SIZE] = {0, };

  if (argc > 1) {
    srand(atoi(argv[1]));
  }
  for (int i = 0; i < SIZE; ++i) {
    array[i] = rand() % 128;
  }
  merge_sort(array, SIZE);

  for (int i = 1; i < SIZE; ++i) {
    if (array[i - 1] > array[i]) {
      printf("FAIL\n");
      return 1;
    }
  }
  printf("SUCCESS\n");
}
