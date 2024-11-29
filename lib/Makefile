NAME		= libasm.a
TESTNAME= tester

CC			= clang
CFLAGS	= --target=x86_64-macos-darwin-macho -g
AS			= nasm
ASFLAGS = -f macho64
LD			= ld
LDFLAGS = -ld_classic -pie -lSystem \
					-syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
AR			= ar
ARFLAGS = -r

SRC			= ft_strlen.s \
					ft_strcpy.s \
					ft_strcmp.s
OBJ			= $(SRC:%.s=%.o)

TESTSRC = main.c
TESTOBJ = $(TESTSRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(OBJ): %.o: %.s
	$(AS) $(ASFLAGS) $<

tester: $(NAME) $(TESTOBJ)
	$(LD) $(LDFLAGS) $(NAME) $(TESTOBJ) -o $(TESTNAME)
	objdump --disassemble --disassembler-options=intel -t $(TESTNAME) > $(TESTNAME).s

$(TESTOBJ): %.o: %.c
	$(CC) $(CFLAGS) -c $<


clean:
	$(RM) $(OBJ) $(TESTOBJ)

fclean: clean
	$(RM) $(NAME) $(TESTNAME)

re: fclean
	$(MAKE) all
