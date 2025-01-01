#include <sys/errno.h>

#include <limits.h>
#include <stdio.h>
#include <string.h>
#include <strings.h>
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

void  test_strlen(void);
void  test_strcpy(void);
void  test_strcmp(void);
void  test_strdup(void);
void  test_read_normal(void);
void  test_read_error(void);
void  test_write_normal(void);
void  test_write_error(void);
void  test_atoi_base(void);
void  test_list(void);
void  test_list_sort(void);

typedef struct testcase {
  char* string;
}       t_testcase;

extern char*              g_long_string;
extern size_t             g_long_string_len;
extern unsigned long int  g_random_num;
extern size_t             g_ncases;
extern t_testcase         g_cases[];
