#ifndef LIBASM_LIST_H
#define LIBASM_LIST_H

typedef struct s_list {
  void*           data;
  struct s_list*  next;
} t_list;

void ft_list_push_front(t_list** head, void* data);
int ft_list_size(t_list* head);
void ft_list_sort(t_list** head, int cmp(void*, void*));
void ft_list_remove_if(t_list** head,
    void* ref,
    int (*cmp)(void*, void*),
    void (*free_fct)(void*));

void  ft_list_free(t_list* head, void (*free)(void*));

#endif
