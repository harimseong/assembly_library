#include <sys/syscall.h>

#include <unistd.h>

int main(void)
{
  char b = 'a';
  ssize_t ret = write(1, &b, 0); 
  return ret;
}
