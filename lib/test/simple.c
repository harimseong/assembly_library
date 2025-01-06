#include <stdlib.h>

int main(int argc, char** argv)
{
  int* a = malloc(4);
  *a = 42;
  return *a;
}
