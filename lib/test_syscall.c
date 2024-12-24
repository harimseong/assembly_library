#include "test.h"

void test_read_normal(void)
{
  int   is_fail = 0;
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

  for (size_t i = 0; i < g_ncases; ++i) {
    char*   string = g_cases[i].string;

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
    printf("%lu: ", i + 1);
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

#ifdef __MACH__ // check for nbyte > INT_MAX
  errno = 0;
  ret0 = read(0, buffer, 0x100000001);
  errno0 = errno;

  errno = 0;
  ret1 = ft_read(0, buffer, 0x100000001);
  errno1 = errno;

  printf("b: ");
  printf("%s(%d) != %s(%d) | return value %zd %zd\n", strerror(errno0), errno0, strerror(errno1), errno1, ret0, ret1);
  if (errno0 != errno1 || ret0 != ret1) {
    is_fail = 1;
  }
#endif
  TEST_RESULT(is_fail);
}

void test_write_normal(void)
{
  int   is_fail = 0;
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

  for (size_t i = 0; i < g_ncases; ++i) {
    char*   string = g_cases[i].string;

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
    printf("%ld: ", i + 1);
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

#ifdef __MACH__
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
#endif
  TEST_RESULT(is_fail);
}
