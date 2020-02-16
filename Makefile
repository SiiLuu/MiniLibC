##
## EPITECH PROJECT, 2020
## ASM_minilibc_2019
## File description:
## Makefile
##

SRCS = src/strlen.asm		\
	   src/strchr.asm		\
	   src/memset.asm		\
	   src/memcpy.asm		\
	   src/strcmp.asm		\
	   src/strncmp.asm		\
	   src/rindex.asm		\
	   src/memmove.asm		\
	   src/strcasecmp.asm	\
	   src/strcspn.asm		\
	   src/strpbrk.asm		\
	   src/strstr.asm

NAME = libasm.so

OBJS = $(SRCS:.asm=.o)

all: $(NAME)

%.o: %.asm
	nasm -f elf64 $<

$(NAME): $(OBJS)
	ld -fPIC -shared -o $(NAME) $(OBJS)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re:	fclean all