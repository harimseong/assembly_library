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

#define MAX_CASE (5)

static struct testcase
{
  char*   string;
} cases[MAX_CASE] = {
  "",
  " ",
  "                 ",
  "1\n2",
  "abc",
};
static size_t n_case;

int main(int argc, char** argv)
{
  n_case = sizeof(cases) / sizeof(cases[0]);
  test_strlen();
  test_strcpy();
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
