typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

void  ft_list_free(t_list* head, void (*free)(void*));
void  do_nothing(void* data);
