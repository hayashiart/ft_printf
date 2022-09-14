NAME = libftprintf.a

SRC = ft_putchar.c \
	ft_putnbr.c \
	ft_putnbr_hexa.c \
	ft_putnbr_hexa_up.c \
	ft_putstr.c \
	ft_fonctions1.c \
	ft_fonctions2.c \
	ft_printf.c	
	
OBJ = $(SRC:.c=.o)

CC = clang

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

%.o:%.c
	$(CC) $(CFLAGS) -I ./libft -c $< -o $@

$(NAME): libft/libft.a $(OBJ)
	ar rcs  $(NAME) $(OBJ)

libft/libft.a:
	make -C libft/
	
clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

