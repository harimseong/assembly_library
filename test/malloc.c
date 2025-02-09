#include <stdlib.h>

typedef struct s_list {
  void* data;
  struct s_list* next;
} t_list;

void list_push_front(t_list** head, void* data)
{
  t_list* new = malloc(sizeof(t_list));
  t_list* old = *head;

  *head = new;
  new->next = old;
  new->data = data;
}
