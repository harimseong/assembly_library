NAME		= libasm.a


CC			= clang
CFLAGS	= --target=x86_64-macos-darwin-macho
AS			= nasm
ASFLAGS = -f macho64
LD			= ld
LDFLAGS = -ld_classic -lSystem \
					-syslibroot /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk
AR			= ar
ARFLAGS = -r

SRC			= ft_strlen.s
OBJ			= $(SRC:%.s=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(AR) $(ARFLAGS) $@ $^

$(OBJ): %.o: %.s
	$(AS) $(ASFLAGS) $<

test: $(NAME)
	$(CC) $(CFLAGS) -c main.c
	$(LD) $(LDFLAGS) main.o $(NAME)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean
	$(MAKE) all
