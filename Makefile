SRCS_NAME =	ft_itoa.c \
			ft_print_p.c \
			ft_printf.c \
			ft_utils_unsigned_int.c \
			ft_utils.c \
			ft_print_type.c \
			ft_print_hexa.c

SRCS_PATH =	srcs
SRCS =		$(addprefix $(SRCS_PATH)/, $(SRCS_NAME))
CC =		clang
NAME =		libftprintf.a
INC_NAME =	ft_printf.h
INC_PATH =	includes
INC =		$(addprefix $(INC_PATH)/, $(INC_NAME))
RM =		rm -rf
OBJ =		$(SRCS:.c=.o)
CFLAG =		-Wall -Wextra -Werror

all :		 $(NAME)

%.o : %.c
			$(CC) $(CFLAG) -c $< -o $@

$(NAME) : 	$(OBJ) $(INC)
			ar rcs $@ $(OBJ)

clean :
			$(RM) $(OBJ)

fclean :	clean
			$(RM) $(NAME)

re : 		fclean all

.PHONY : 	all clean fclean re
