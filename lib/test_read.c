#include <sys/syscall.h>

#include <unistd.h>

int main(void)
{
  char b;
  read(0, &b, 1); 
  return 0;
}
