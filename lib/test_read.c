#include <unistd.h>

typedef struct s_pipe_fd
{
  int read;
  int write;
} t_pipe_fd;

void test_read(void)
{
  int  fd_set[2];

  pipe(fd_set);

  t_pipe_fd*  pipe_fd = (t_pipe_fd*)&fd_set;
  write(pipe_fd->write, )
}
