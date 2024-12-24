NAME		= libasm.a
UNAME		= $(shell uname)
TESTNAME= tester_$(UNAME)

# for tester compile
CC			= clang
CFLAGS	= -g

AS			= nasm
ASFLAGS = -d$(UNAME)=1

LD			= ld
LDFLAGS =

AR			= ar
ARFLAGS = -r


SRC			= ft_strlen.s \
					ft_strcpy.s \
					ft_strcmp.s \
					ft_strdup.s \
					ft_read.s \
					ft_write.s \
					ft_atoi_base.s

OBJ			= $(SRC:%.s=%.o)

ifeq ($(UNAME), Darwin)
CFLAGS	+= --target=x86_64-macos-darwin-macho
ASFLAGS += -f macho64
LDFLAGS += -ld_classic -lSystem \
					-syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
else
CFLAGS	+= --target=x86_64-linux-gnu-elf64
ASFLAGS += -f elf64
LDFLAGS += -dynamic-linker /lib64/ld-linux-x86-64.so.2 \
					 /lib/x86_64-linux-gnu/Scrt1.o \
					 -L/usr/lib/x86_64-linux-gnu -lc
endif

TESTSRC = test.c \
					test_str.c \
					test_syscall.c \
					test_atoi_base.c
TESTOBJ = $(TESTSRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(OBJ): %.o: %.s
	$(AS) $(ASFLAGS) $<

bonus: all

tester: $(NAME) $(TESTOBJ)
	$(LD) $(LDFLAGS) $(TESTOBJ) $(NAME) -o $(TESTNAME)
	objdump --disassemble --disassembler-options=intel -t -s $(TESTNAME) > $(TESTNAME).s

$(TESTOBJ): %.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) $(OBJ2) $(TESTOBJ)

fclean: clean
	$(RM) $(NAME) $(TESTNAME)

re: fclean
	$(MAKE) all

.PHONY: all clean fclean re bonus
