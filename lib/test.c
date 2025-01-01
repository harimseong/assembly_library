#include <stdlib.h>

#include "test.h"

char* g_long_string;
size_t g_long_string_len = 0;
unsigned long int g_random_num = 0x3547982347823948;
size_t g_ncases;

t_testcase g_cases[] = {
  {""},
  {" "},
  {"                 "},
  {"1\n2"},
  {"abc"},
  {"lorem ipsum"},
  {"lorem\0ipsum"},
  {"\0abc"},
  {"a\0bc"},
  {"\0\0\0\0"},
  {"\0\0a\0\0b\0\0c"},
  {"\0\0\0\0abc"},
  {(char*)&g_random_num},
  {NULL}
};

int main(int argc, char** argv)
{
  if (argc > 1) {
    unsigned long int seed = *(unsigned long int*)argv[1];
    printf("seed=%lu\n", seed);
    srand(seed);
  }
  g_long_string = malloc(g_long_string_len + 2);

  memset(g_long_string, 'a', g_long_string_len + 2);
  g_long_string[g_long_string_len + 1] = 0;

  g_ncases = sizeof(g_cases) / sizeof(g_cases[0]);
  g_cases[g_ncases - 1] = (struct testcase){g_long_string};

  test_strlen();
  test_strcpy();
  test_strcmp();
  test_strdup();
  test_read_normal();
  test_read_error();
  test_write_normal();
  test_write_error();
  test_atoi_base();
  test_list();
  test_list_sort();
  return 0;
}

