#include <stdio.h>
#include <string.h>
#include <stdlib.h>

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
void test_strdup(void);

unsigned long int num = 0x3547982347823948;

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
  "\0\0\0\0",
  "\0\0a\0\0b\0\0c",
  "\0\0\0\0abc",
  (char*)&num
};

static size_t n_case;

int main(int argc, char** argv)
{
  n_case = sizeof(cases) / sizeof(cases[0]);
  test_strlen();
  test_strcpy();
  test_strcmp();
  test_strdup();
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

void test_strdup(void)
{
  int is_fail = 0;

  for (int i = 0; i < n_case; ++i) {
    char* string = cases[i].string;
    char* p0 = strdup(string);
    char* p1 = ft_strdup(string);
    int result = strcmp(p0, p1) == 0 && ft_strcmp(p0, p1) == 0;

    free(p0);
    free(p1);
    if (result) {
      continue;
    }
    is_fail = 1;
    break;
  }
  TEST_RESULT(is_fail);
}
