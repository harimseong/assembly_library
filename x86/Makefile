AS		:=	nasm
ASFLAGS	:=	-f elf64 -g

CC		:=	gcc
CFLAGS	:=	-no-pie

SRC		:=	hello.asm\
			hello_gcc.asm\
			hola_gcc.asm

OBJ		:=	$(SRC:%.asm=%.o)

hello: hello.o
	ld $@.o

%_gcc: %_gcc.o
	$(CC) $(CFLAGS) $^

$(OBJ): %.o: %.asm
	$(AS) $(ASFLAGS) $^

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) a.out
