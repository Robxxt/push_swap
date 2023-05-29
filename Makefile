# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rdragan <rdragan@student.42heilbronn.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/26 16:16:46 by rdragan           #+#    #+#              #
#    Updated: 2023/05/28 13:22:20 by rdragan          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME		:=	push_swap
LIBFT		:=	lib/libft
SRC			:=	$(wildcard src/*.c)
SRC			+=	$(wildcard src/*/*.c)
SRC			+=	$(wildcard tests/*.c)
SRC			+=	$(wildcard instructions/*.c)
OBJ			:=	$(SRC:.c=.o)
LINKED_LIST	:=	lib/linked_list
CFLAGS		:=	-Wall -Wextra -Werror

all: build_linked_list build_libft $(OBJ)
	@cc $(CFLAGS) $(LIBFT)/libft.a $(LINKED_LIST)/linked_list.a $(OBJ) -o $(NAME)

debug: fclean build_linked_list build_libft $(OBJ)
	@cc $(CFLAGS) -g $(LIBFT)/libft.a $(LINKED_LIST)/linked_list.a $(OBJ) -o $(NAME)_debug

build_libft: $(LIBFT)
	@make -C $(LIBFT)

build_linked_list: $(LINKED_LIST)
	@make -C $(LINKED_LIST)

clean:
	@rm -f $(OBJ) main.o
	@make -C $(LIBFT) clean
	@make -C $(LINKED_LIST) clean

fclean: clean
	@rm -f $(NAME)
	@make -C $(LIBFT) fclean
	@make -C $(LINKED_LIST) fclean
	@rm -Rf *.dSYM
	@rm -f $(NAME)_debug

re: fclean all

.PHONY: all, build_libft, build_linked_list, clean, fclean, test