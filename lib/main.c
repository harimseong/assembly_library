#include <stdio.h>
#include <string.h>

#include "libasm.h"

#define TEST_RESULT(is_fail) \
{\
  if (is_fail) {\
    printf("%s FAIL\n", __func__);\
  } else {\
    printf("%s SUCCESS\n", __func__);\
  }\
}\

void test_strlen(void);
void test_strcpy(void);
void test_strcmp(void);

static struct testcase
{
  char*   string;
} cases[] = {
  "",
  " ",
  "                 ",
  "1\n2",
  "abc",
  "lorem ipsum",
  "lorem\0ipsum",
  "\0abc",
  "a\0bc",
};

static size_t n_case;

int main(int argc, char** argv)
{
  n_case = sizeof(cases) / sizeof(cases[0]);
  test_strlen();
  test_strcpy();
  test_strcmp();
  return 0;
}

void test_strlen(void)
{
  int is_fail = 0;

  for (int i = 0; i < n_case; ++i) {
    char* string = cases[i].string;

    if (strlen(string) == ft_strlen(string)) {
      continue;
    }
    is_fail = 1;
    break;
  }
  TEST_RESULT(is_fail);
}

void test_strcpy(void)
{
  char buffer1[1024];
  char buffer2[1024];
  int is_fail = 0;

  for (int i = 0; i < n_case; ++i) {
    const char* string = cases[i].string;

    strcpy(buffer1, string);
    ft_strcpy(buffer2, string);
    if (strcmp(buffer1, buffer2) == 0) {
      continue;
    }
    is_fail = 1;
    break;
  }
  TEST_RESULT(is_fail);
}

void test_strcmp(void)
{
  int is_fail = 0;

  for (int i = 0; i < n_case; ++i) {
    for (int j = 0; j < n_case; ++j) {
      char* s0 = cases[i].string;
      char* s1 = cases[j].string;

      if (strcmp(s0, s1) == ft_strcmp(s0, s1)) {
        continue;
      }
      is_fail = 1;
      break;
    }
  }
  TEST_RESULT(is_fail);
}
