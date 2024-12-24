#include <sys/time.h>

#include <stdlib.h>

#include "test.h"

#define TC_LEN (65536)
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
void  generate_testcase(void);
int   ft_atoi_base_ref(char* str, char* base);

static t_atoi_testcase g_tc[TC_LEN] = {0,};
static size_t     g_tclen = TC_LEN;
static size_t     g_max_str_len = MAX_STR_LEN;
static size_t     g_max_base_len = MAX_BASE_LEN;

void test_atoi_base(void)
{
  test_atoi_base_whitespace();
  test_atoi_base_sign();
  test_atoi_base_random();
}

void test_atoi_base_random(void)
{
  unsigned char is_fail = 0;

  generate_testcase();
  for (int i = 0; i < g_tclen; ++i) {
    char* base = g_tc[i].base;
    char* str = g_tc[i].str;
    int   num = g_tc[i].num;
    int   ret0 = ft_atoi_base(str, base);
    int   ret1 = ft_atoi_base_ref(str, base);

    if (ret0 != num) {
      printf("base=%s\nstr=%s\nnum=\t%d\nret0=\t%d\nret1=\t%d\n\n",
          base, str, num, ret0, ret1);
      is_fail = 1;
    }
  }
  TEST_RESULT(is_fail);
}

void  generate_testcase(void)
{
  {
    struct timeval tv;
    gettimeofday(&tv, NULL);
    srandom(tv.tv_sec);
  }
  for (int i = 0; i < g_tclen; ++i) {
    int num = 0;
    unsigned char table[128] = {0,};
    int base_len = g_max_base_len == 2 ? 2 : (random() % (g_max_base_len - 2)) + 2;
    int str_len = g_max_str_len == 1 ? 1 : (random() % (g_max_str_len - 1)) + 1;

    for (int j = 0; j < base_len; ++j) {
      char c;
      while ((c = (random() % 94) + 33) == '+' || c == '-' || table[c] != 0) {
      }
      ++table[c];
      g_tc[i].base[j] = c;
    }
    g_tc[i].base[base_len] = 0;
    for (int j = 1; j < str_len; ++j) {
      int idx = random() % base_len;
      g_tc[i].str[j] = g_tc[i].base[idx];
      num = idx + num * base_len;
    }
    g_tc[i].str[str_len] = 0;

    int sign = random() & 1;
    g_tc[i].str[0] = sign ? '-' : '+';
    g_tc[i].num = sign ? -num : num;
  }
}

void  test_atoi_base_whitespace(void)
{
}

void  test_atoi_base_sign(void)
{
}
