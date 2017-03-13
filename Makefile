#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: orizhiy <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/30 12:25:39 by orizhiy           #+#    #+#              #
#    Updated: 2016/12/06 15:54:44 by orizhiy          ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

G = gcc

FLAG = -Wall -Wextra -Werror

SRC = 	ft_strstr.c \
		ft_strdel.c \
		ft_lstadd.c \
		ft_strmap.c \
		ft_strlen.c \
		ft_count_words.c \
		ft_memccpy.c \
		ft_putchar_fd.c \
		ft_strchr.c \
		ft_isspace.c \
		ft_memmove.c \
		ft_tolower.c \
		ft_strequ.c \
		ft_isalnum.c \
		ft_max_int.c \
		ft_strdup.c \
		ft_len_int.c \
		ft_strtrim.c \
		ft_isalpha.c \
		ft_memset.c \
		ft_putendl.c \
		ft_memalloc.c \
		ft_strncmp.c \
		ft_strnequ.c \
		ft_striter.c \
		ft_memchr.c \
		ft_lstdelone.c \
		ft_memcpy.c \
		ft_bzero.c \
		ft_isdigit.c \
		ft_strsub.c \
		ft_memdel.c \
		ft_memcmp.c \
		ft_strjoin.c \
		ft_strcmp.c \
		ft_strcpy.c \
		ft_int_min.c \
		ft_lstnew.c \
		ft_putnbr.c \
		ft_strncat.c \
		ft_isascii.c \
		ft_len_char.c \
		ft_itoa.c \
		ft_lstmap.c \
		ft_putstr.c \
		ft_strlcat.c \
		ft_putnbr_fd.c \
		ft_strsplit.c \
		ft_lstiter.c \
		ft_strcat.c \
		ft_putendl_fd.c \
		ft_memcpy_rev.c \
		ft_lstdel.c \
		ft_striteri.c \
		ft_strnew.c \
		ft_isprint.c \
		ft_strclr.c \
		ft_strnstr.c \
		ft_atoi.c \
		ft_strncpy.c \
		ft_putchar.c \
		ft_toupper.c \
		ft_putstr_fd.c \
		ft_strrchr.c \
		ft_strmapi.c

HDR = libft.h

OBJ = $(SRC:.c=.o)

DEL = rm -f

all: $(NAME)

$(NAME) : $(OBJ)
		ar -cru $(NAME) $(OBJ)
		ranlib $(NAME)
		@echo Libft is ALIVE!!!

%.o: %.c libft.h
		$(G) $(CFLAGS) -c -o $@ $<

clean:
		$(DEL) $(OBJ)
		@echo OBJ is DEAD!!!

fclean: clean
		$(DEL) $(NAME)
		@echo LIBFT is DESTROYED!!!

re: all
		@echo ALL DAMM FPS is DESTROYED!!!

norm:
		norminette $(SRC) $(HDR) | grep -B 1 "Error"

rmsh:
		rm *~
		rm \#*
		rm *.out