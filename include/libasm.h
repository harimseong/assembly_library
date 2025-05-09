#ifndef LIBASM_H
#define LIBASM_H

#include <unistd.h>
#include <stddef.h>

size_t  ft_strlen(const char * s);
char *  ft_strcpy(char * dst, const char * src);
int     ft_strcmp(const char * s1, const char * s2);
char*   ft_strdup(const char * s);

ssize_t ft_read(int fd, void * buf, size_t nbyte);
ssize_t ft_write(int fd, const void * buf, size_t nbyte);

int     ft_atoi_base(char* str, char* base);

#endif
