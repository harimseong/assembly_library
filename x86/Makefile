AS		:=	nasm
ASFLAGS	:=	-f elf64 #-g

CC		:=	gcc
CFLAGS	:=	-no-pie

SRC		:=	hello_ld.asm\
			hello_gcc.asm\
			hola_gcc.asm\
			division_test_gcc.asm\
			fib_gcc.asm

OBJ		:=	$(SRC:%.asm=%.o)

%_ld: %_ld.o
	ld $^

%_gcc: %_gcc.o
	$(CC) $(CFLAGS) $^

$(OBJ): %.o: %.asm
	$(AS) $(ASFLAGS) $^

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) a.out

re: fclean
	$(MAKE)
