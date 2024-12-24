#include <sys/time.h>

#include <stdlib.h>

#include "test.h"

#define TC_LEN (32)
#define MAX_BASE_LEN (4)
#define MAX_STR_LEN (50)

typedef struct atoi_testcase {
  char  str[MAX_STR_LEN];
  char  base[MAX_BASE_LEN];
  int   num;
} t_atoi_testcase;


void  generate_testcase(void);
int   ft_atoi_base_ref(char* str, char* base);

static t_atoi_testcase g_tc[TC_LEN];
static size_t     g_tclen = TC_LEN;
static size_t     g_max_str_len = MAX_STR_LEN;
static size_t     g_max_base_len = MAX_BASE_LEN;

void test_atoi_base()
{
  unsigned char is_fail = 0;

  generate_testcase();
  for (int i = 0; i < g_tclen; ++i) {
    char* base = g_tc[i].base;
    char* str = g_tc[i].str;
    int   num = g_tc[i].num;
    int   ret = ft_atoi_base(str, base) != num;
    printf("base=%s\nstr=%s\nnum=%d\nret=%d\n\n", base, str, num, ret);
    if (ret != num) {
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
    for (int j = 0; j < g_max_base_len; ++j) {
      char c;
      while ((c = (random() % 94) + 34) == '+' && c == '-') {
        continue;
      }
      g_tc[i].base[j] = c;
    }
    for (int j = g_max_str_len - 1; j >= 0; --j) {
      int idx = random() % g_max_base_len;
      g_tc[i].str[j] = g_tc[i].base[idx];
      num = idx + num * g_max_base_len;
    }
    g_tc[i].num = num;
  }
}
