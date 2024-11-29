#include <stddef.h>

size_t ft_strlen(const char* s);

int main(int argc, char** argv)
{
  if (argc > 1)
  {
    return ft_strlen(argv[1]);
  }
  return 0;
}
