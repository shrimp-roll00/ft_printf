MAKEFLAGS += s

NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra

LIB = ar -rcs

INC = inc/printf.h
INC_DIR = -Iinc

SRC = src/ft_printf.c src/ft_printf_utils.c src/ft_printf_find_flags.c\
	src/ft_printf_handle_s.c src/ft_printf_handle_c.c src/ft_printf_handle_p.c\
	src/ft_printf_handle_i_d.c src/ft_printf_handle_u.c src/ft_printf_handle_xs.c\
	src/ft_printf_handle_n.c src/ft_printf_handle_f.c libft/ft_bzero.c\
	libft/ft_isdigit.c libft/ft_itoa.c libft/ft_itoa_base.c libft/ft_itoa_double.c\
	libft/ft_memcpy.c libft/ft_memset.c libft/ft_strchr.c libft/ft_strcmp.c\
	libft/ft_strdup.c libft/ft_strjoin.c libft/ft_strlcpy.c libft/ft_strlen.c
OBJ = $(SRC:%.c=%.o)

RM = rm -rf

all: $(NAME)

$(NAME): $(OBJ)
	$(LIB) $@ $?

bonus: $(OBJ)
	$(LIB) $(NAME) $?

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) $(INC_DIR) -c $< -o $@

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: clean fclean re all bonus