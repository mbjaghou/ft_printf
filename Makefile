# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbjaghou <mbjaghou@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/30 03:29:34 by mbjaghou          #+#    #+#              #
#    Updated: 2021/12/05 11:54:27 by mbjaghou         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc
FLAGS = -Wall -Wextra -Werror

SRC =   ft_printf.c\
		ft_hexa.c\
		ft_pointer.c\
		ft_putchar.c\
		ft_putnbr_unsigned.c\
		ft_putnbr.c\
		ft_putstr.c\

OBJE = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJE)
	ar rcs $(NAME) $(OBJE)

%.o:%.c %.h
	$(CC) $(FLAGS) -o $@ -c $<

clean :
	rm -rf $(OBJE)

fclean : clean
	rm -rf $(NAME)

re : fclean all
