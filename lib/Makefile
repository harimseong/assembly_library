NAME    = libasm.a
UNAME   = $(shell uname)
TESTNAME= tester_$(UNAME)

# for tester compile
CC      = clang
CFLAGS  = -Wall -Werror -Wextra -Iinclude -fPIE -O3 #-g

AS      = nasm
ASFLAGS = -Wall -d$(UNAME)=1 -Imacro #-L${PWD}

LD      = ld
LDFLAGS =

AR      = ar
ARFLAGS = -rs


SRC      = string/strlen.s \
           string/strcpy.s \
           string/strcmp.s \
           string/strdup.s \
           util/atoi_base.s \
           util/swap.s \
           syscall/read.s \
           syscall/write.s \
           list/create_elem.s \
           list/push_front.s \
           list/insert_next.s \
           list/delink.s \
           list/size.s \
           list/sort.s \
           list/remove_if.s \
           list/swap.s \
           list/free.s

OBJ      = $(SRC:%.s=%.o)

ifeq ($(UNAME), Darwin)
CFLAGS  += --target=x86_64-macos-darwin-macho
ASFLAGS += -f macho64
LDFLAGS += -lSystem \
          -syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
else
CFLAGS  += --target=x86_64-linux-gnu-elf64
ASFLAGS += -f elf64
LDFLAGS += -dynamic-linker /lib64/ld-linux-x86-64.so.2 \
           /lib/x86_64-linux-gnu/Scrt1.o \
           -L/usr/lib/x86_64-linux-gnu -lc
endif

TESTSRC = test/test.c \
          test/test_str.c \
          test/test_syscall.c \
          test/test_atoi_base.c \
          test/atoi_base_ref.c \
					test/test_list.c \
					test/test_list_sort.c \
					test/merge_sort_list.c
		

TESTOBJ = $(TESTSRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR)	$(ARFLAGS) $@ $^

$(OBJ): %.o: %.s
	$(AS)	$(ASFLAGS) $<

bonus: all

test: $(TESTNAME)
	./test/test.sh

test_leak: $(TESTNAME)
	./test/test.sh leak

$(TESTNAME): $(NAME) $(TESTOBJ)
	$(CC)	$(CFLAGS) $(TESTOBJ) $(NAME) -o $(TESTNAME)
	objdump --disassemble -t -s $(TESTNAME) > $(TESTNAME).dump

$(TESTOBJ): %.o: %.c
	$(CC)	$(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJ) $(TESTOBJ)

fclean: clean
	$(RM) $(NAME) $(TESTNAME)

re: fclean
	$(MAKE) all

.PHONY: all clean fclean re bonus test test_leak
