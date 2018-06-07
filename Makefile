# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yzungula <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/18 14:35:44 by yzungula          #+#    #+#              #
#    Updated: 2018/06/05 11:02:04 by yzungula         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
COMPILER = gcc
FLAGS = -Wall -Wextra -Werror -I $(HEADER)
SOURCES = ./*.c
OBJECTS = ./*.o
HEADER = ./libft.h

$(NAME):
	$(COMPILER) $(FLAGS) -c $(SOURCES)
	ar rc $(NAME) $(OBJECTS)
	ranlib $(NAME)

all: $(NAME)

clean: 
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
