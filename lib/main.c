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

void test_strlen(void);
void test_strcpy(void);
void test_strcmp(void);
void test_strdup(void);
void test_read_normal(void);
void test_read_error(void);
void test_write_normal(void);
void test_write_error(void);

char* g_long_string;
size_t g_long_string_len = 0;
unsigned long int g_random_num = 0x3547982347823948;

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
  (char*)&g_random_num,
  NULL
};

static size_t n_case;

int main(int argc, char** argv)
{
  g_long_string = malloc(g_long_string_len + 2);

  memset(g_long_string, 'a', g_long_string_len + 2);
  g_long_string[g_long_string_len + 1] = 0;

  n_case = sizeof(cases) / sizeof(cases[0]);
  cases[n_case - 1] = (struct testcase){g_long_string};

  test_strlen();
  test_strcpy();
  test_strcmp();
  test_strdup();
  test_read_normal();
  test_read_error();
  test_write_normal();
  test_write_error();
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

    if (string == g_long_string) {
      continue;
    }
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

void test_read_normal(void)
{
  int   is_fail;
  int   fd_set[2];
  char  buffer0[1024];
  char  buffer1[1024];

  if (pipe(fd_set) < 0) {
    printf("pipe() fail\n");
    return;
  }

  struct s_pipe_fd
  {
    int read;
    int write;
  } * pipe_fd = (void*)&fd_set;

  for (int i = 0; i < n_case; ++i) {
    char*   string = cases[i].string;

    if (string == g_long_string) {
      continue;
    }
    size_t  len = strlen(string);
    ssize_t ret0;
    ssize_t ret1;
    int errno0;
    int errno1;

    bzero(buffer0, sizeof(buffer0) / (sizeof(buffer0[0])));
    bzero(buffer1, sizeof(buffer1) / (sizeof(buffer1[0])));

    errno = 0;
    write(pipe_fd->write, string, len);
    ret0 = read(pipe_fd->read, buffer0, len);
    errno0 = errno;

    errno = 0;
    write(pipe_fd->write, string, len);
    ret1 = ft_read(pipe_fd->read, buffer1, len);
    errno1 = errno;

    if (strcmp(buffer0, buffer1) == 0 && errno0 == errno1 && ret0 == ret1) {
      continue;
    }
    printf("%d: ", i + 1);
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
    break;
  }
  close(pipe_fd->write);
  close(pipe_fd->read);
  TEST_RESULT(is_fail);
}

void test_read_error(void)
{
  int   is_fail;
  int   fd_case[] = {
    -1, -1024, 0xFFFFFFFF, 0x3FFFFFFF, 0xFFFFFF
  };
  int   case_len = sizeof(fd_case) / sizeof(fd_case[0]);
  char  buffer[8] = {0, };

  for (int i = 0; i < case_len; ++i) {
    int     errno0;
    int     errno1;
    ssize_t ret0;
    ssize_t ret1;

    errno = 0;
    ret0 = read(fd_case[i], buffer, 7);
    errno0 = errno;

    errno = 0;
    ret1 = ft_read(fd_case[i], buffer, 7);
    errno1 = errno;

    if (errno0 == errno1 && ret0 == ret1) {
      continue;
    }
    printf("%d: ", i + 1);
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
    break;
  }
  int     errno0;
  int     errno1;
  ssize_t ret0;
  ssize_t ret1;

  errno = 0;
  ret0 = read(0, buffer, -1);
  errno0 = errno;

  errno = 0;
  ret1 = ft_read(0, buffer, -1);
  errno1 = errno;

  if (errno0 != errno1 || ret0 != ret1) {
    printf("a: ");
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
  }

  errno = 0;
  ret0 = read(0, buffer, 0x100000001);
  errno0 = errno;

  errno = 0;
  ret1 = ft_read(0, buffer, 0x100000001);
  errno1 = errno;

  if (errno0 != errno1 || ret0 != ret1) {
    printf("b: ");
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
  }
  TEST_RESULT(is_fail);
}

void test_write_normal(void)
{
  int   is_fail;
  int   fd_set[2];
  char  buffer0[1024];
  char  buffer1[1024];

  if (pipe(fd_set) < 0) {
    printf("pipe() fail\n");
    return;
  }

  struct s_pipe_fd
  {
    int read;
    int write;
  } * pipe_fd = (void*)&fd_set;

  for (int i = 0; i < n_case; ++i) {
    char*   string = cases[i].string;

    if (string == g_long_string) {
      continue;
    }
    size_t  len = strlen(string);
    ssize_t ret0;
    ssize_t ret1;
    int errno0;
    int errno1;

    bzero(buffer0, sizeof(buffer0) / (sizeof(buffer0[0])));
    bzero(buffer1, sizeof(buffer1) / (sizeof(buffer1[0])));

    errno = 0;
    ret0 = write(pipe_fd->write, string, len);
    errno0 = errno;
    read(pipe_fd->read, buffer0, len);

    errno = 0;
    ret1 = ft_write(pipe_fd->write, string, len);
    errno1 = errno;
    read(pipe_fd->read, buffer1, len);

    if (strcmp(buffer0, buffer1) == 0 && errno0 == errno1 && ret0 == ret1) {
      continue;
    }
    printf("%d: ", i + 1);
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
    break;
  }
  close(pipe_fd->write);
  close(pipe_fd->read);
  TEST_RESULT(is_fail);
}

void test_write_error(void)
{
  int   is_fail;
  int   fd_case[] = {
    -1, -1024, 0xFFFFFFFF, 0x3FFFFFFF, 0xFFFFFF
  };
  int   case_len = sizeof(fd_case) / sizeof(fd_case[0]);
  char  buffer[8] = {0, };

  for (int i = 0; i < case_len; ++i) {
    int     errno0;
    int     errno1;
    ssize_t ret0;
    ssize_t ret1;

    errno = 0;
    ret0 = write(fd_case[i], buffer, 7);
    errno0 = errno;

    errno = 0;
    ret1 = ft_write(fd_case[i], buffer, 7);
    errno1 = errno;

    if (errno0 == errno1 && ret0 == ret1) {
      continue;
    }
    printf("%d: ", i + 1);
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
    break;
  }
  int     errno0;
  int     errno1;
  ssize_t ret0;
  ssize_t ret1;

  errno = 0;
  ret0 = write(0, buffer, -1);
  errno0 = errno;

  errno = 0;
  ret1 = ft_write(0, buffer, -1);
  errno1 = errno;

  if (errno0 != errno1 || ret0 != ret1) {
    printf("a: ");
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
  }

  errno = 0;
  ret0 = write(0, buffer, 0x100000001);
  errno0 = errno;

  errno = 0;
  ret1 = ft_write(0, buffer, 0x100000001);
  errno1 = errno;

  if (errno0 != errno1 || ret0 != ret1) {
    printf("b: ");
    printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
    is_fail = 1;
  }
  TEST_RESULT(is_fail);
}
