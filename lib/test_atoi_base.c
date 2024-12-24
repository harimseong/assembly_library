#include <sys/time.h>

#include <stdlib.h>

#include "test.h"

#define CASE_LEN (50000)
#define MAX_BASE_LEN (20)
#define MAX_STR_LEN (100)

typedef struct atoi_testcase {
  char  str[MAX_STR_LEN + 1];
  char  base[MAX_BASE_LEN + 1];
  int   num;
} t_atoi_testcase;


void  test_atoi_base_whitespace(void);
void  test_atoi_base_random(void);
void  test_atoi_base_sign(void);
void  generate_testcase(t_atoi_testcase* tc, const size_t tclen);
int   ft_atoi_base_ref(char* str, char* base);


void test_atoi_base(void)
{
  test_atoi_base_whitespace();
  test_atoi_base_sign();
  test_atoi_base_random();
}

void test_atoi_base_random(void)
{
  t_atoi_testcase tests[CASE_LEN] = {{0},};
  const size_t    tests_len = CASE_LEN;
  unsigned char   is_fail = 0;

  generate_testcase(tests, tests_len);
  for (size_t i = 0; i < tests_len; ++i) {
    char* base = tests[i].base;
    char* str = tests[i].str;
    int   num = tests[i].num;
    int   ret0 = ft_atoi_base(str, base);
    int   ret1 = ft_atoi_base_ref(str, base);

    if (ret0 != num || ret0 != num) {
      printf("base=%s\nstr=%s\nnum=\t%d\nret0=\t%d\nret1=\t%d\n\n",
          base, str, num, ret0, ret1);
      is_fail = 1;
    }
  }
  TEST_RESULT(is_fail);
}

void  generate_testcase(t_atoi_testcase* tests, const size_t tests_len)
{
  size_t     max_str_len = MAX_STR_LEN;
  size_t     max_base_len = MAX_BASE_LEN;
  {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    srandom(tv.tv_sec);
  }
  for (size_t i = 0; i < tests_len; ++i) {
    int num = 0;
    unsigned char table[128] = {0,};
    int base_len = max_base_len == 2 ? 2 : (random() % (max_base_len - 2)) + 2;
    int str_len = max_str_len == 1 ? 1 : (random() % (max_str_len - 1)) + 1;

    for (int j = 0; j < base_len; ++j) {
      char c;
      while ((c = (random() % 94) + 33) == '+' || c == '-' || table[(int)c] != 0) {
      }
      ++table[(int)c];
      tests[i].base[j] = c;
    }
    tests[i].base[base_len] = 0;
    for (int j = 1; j < str_len; ++j) {
      int idx = random() % base_len;
      tests[i].str[j] = tests[i].base[idx];
      num = idx + num * base_len;
    }
    tests[i].str[str_len] = 0;

    int sign = random() & 1;
    tests[i].str[0] = sign ? '-' : '+';
    tests[i].num = sign ? -num : num;
  }
}

void  test_atoi_base_whitespace(void)
{
  t_atoi_testcase tests[] = {
    {"", "", 0}, // empty & blank test
    {"", "01", 0},
    {" ", "01", 0},
    {"                        ", "01", 0},
    {"", " ", 0},
    {"", "                    ", 0},
    {"\0""1", "01", 0}, // basic test
    {"1", "\0""01", 0},
    {"1", "1", 0},
    {"1", "01", 1},
    {"1", "10", 0},
    {"1", "10", 0},
    {"a", "10", 0},
    {"1", "a0", 0},
    {"1", "aa", 0},
    {"aa", "ab", 0},
    {"bb", "ab", 3},
    {"b\0b", "ab", 1}, // white spaces test
    {"bb", "ab\t", 0},
    {"bb", "ab\n", 0},
    {"bb", "ab\v", 0},
    {"bb", "ab\f", 0},
    {"bb", "ab\r", 0},
    {"bb", "a b", 0},
    {"b b", "ab", 1},
    {" bb", "ab", 3},
    {"bb ", "ab", 3},
  };
  const size_t    len = sizeof(tests) / sizeof(tests[0]);
  unsigned char   is_fail = 0;

  for (size_t i = 0; i < len; ++i) {
    char* base = tests[i].base;
    char* str = tests[i].str;
    int   num = tests[i].num;
    int   ret0 = ft_atoi_base(str, base);
    int   ret1 = ft_atoi_base_ref(str, base);

    if (ret0 != num || ret0 != num) {
      printf("base=\t%s\nstr=\t%s\nnum=\t%d\nret0=\t%d\nret1=\t%d\n\n",
          base, str, num, ret0, ret1);
      is_fail = 1;
    }
  }
  TEST_RESULT(is_fail);
}

void  test_atoi_base_sign(void)
{
  t_atoi_testcase tests[] = {
    {"+", "", 0},
    {"+", "01", 0},
    {"0+", "01", 0},
    {"+0", "01", 0},
    {"1+", "01", 1},
    {"+1", "01", 1},
    {"1-", "01", 1},
    {" +1", "01", 1},
    {" + 1", "01", 0},
    {" +-1", "01", -1},
    {" --1", "01", 1},
    {" ---1", "01", -1},
    {" ----1", "01", 1},
    {" +---1", "01", -1},
    {" ++--1", "01", 1},
    {" +++-1", "01", -1},
    {" ++++1", "01", 1},
    {" ++++a", "01", 0},
    {" ++++1+2", "01", 1},
    {" ++\0++1+2", "01", 0},
    {" -1", "0+1", 0},
    {" +1", "0-1", 0},
    {"+-", "-+", 0},
    {"+", "+", 0},
    {"-", "-", 0},
  };
  const size_t    len = sizeof(tests) / sizeof(tests[0]);
  unsigned char   is_fail = 0;

  for (size_t i = 0; i < len; ++i) {
    char* base = tests[i].base;
    char* str = tests[i].str;
    int   num = tests[i].num;
    int   ret0 = ft_atoi_base(str, base);
    int   ret1 = ft_atoi_base_ref(str, base);

    if (ret0 != num || ret0 != num) {
      printf("base=\t%s\nstr=\t%s\nnum=\t%d\nret0=\t%d\nret1=\t%d\n\n",
          base, str, num, ret0, ret1);
      is_fail = 1;
    }
  }
  TEST_RESULT(is_fail);
}
