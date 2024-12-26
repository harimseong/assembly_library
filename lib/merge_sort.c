#include <string.h>
#include <stdlib.h>

#include <stdio.h>

typedef int t_num;

void  divide(t_num* result, t_num* array, size_t array_size);
void  merge(t_num* result, t_num* left, t_num* right, t_num* right_end);

void  merge_sort(t_num* array, size_t array_size)
{
  t_num* result = malloc(array_size);

  divide(result, array, array_size);
  memmove(array, result, array_size * sizeof(t_num));
  free(result);
}

void  divide(t_num* result, t_num* array, size_t array_size)
{
  if (array_size <= 2) {
    if (array_size == 1) {
      result[0] = array[0];
      return;
    }
    if (array_size == 2 && array[0] > array[1]) {
      result[0] = array[1];
      result[1] = array[0];
    } else {
      result[0] = array[0];
      result[1] = array[1];
    }
    return;
  }
  size_t half_size = array_size >> 1;
  divide(result, array, half_size);
  divide(result + half_size, array + half_size, half_size + (array_size & 1));
  memmove(array, result, array_size * sizeof(t_num));
  merge(result, array, array + half_size, array + array_size);
}

void  merge(t_num* result, t_num* left, t_num* right, t_num* right_end)
{
  t_num*  left_end = right;

  while (left != left_end && right != right_end) {
    if (*left > *right) {
      *result = *right++;
    } else {
      *result = *left++;
    }
    ++result;
  }
  while (left != left_end) {
    *result++ = *left++;
  }
  while (right != right_end) {
    *result++ = *right++;
  }
}
