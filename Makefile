# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jhorta-c <jhorta-c@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/10 13:28:10 by jhorta-c          #+#    #+#              #
#    Updated: 2023/11/13 18:04:36 by jhorta-c         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
SOURCES = \
	ft_memset.c \
	ft_bzero.c \
	ft_memcpy.c \
	ft_isalpha.c \
	ft_isdigit.c \
	ft_isalnum.c \
	ft_isascii.c \
	ft_isprint.c \
	ft_memmove.c \
	ft_strlen.c \
	ft_strlcpy.c \
	ft_strlcat.c \
	ft_toupper.c \
	ft_tolower.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_split.c \
	ft_strchr.c \
	ft_strrchr.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_atoi.c \
	ft_calloc.c \
	ft_strdup.c \
	ft_substr.c \
	ft_strjoin.c \
	ft_strtrim.c \
	ft_itoa.c \
	ft_putchar_fd.c \
	ft_putstr_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_strmapi.c \
	ft_striteri.c \
	
BSOURCES = \
	ft_lstnew.c \
	ft_lstadd_front.c \
	ft_lstsize.c \
	ft_lstlast.c \
	ft_lstadd_back.c \
	ft_lstdelone.c \
	ft_lstclear.c \
	ft_lstiter.c \
	ft_lstmap.c \

OBJECTS = $(SOURCES:.c=.o)

BOBJECTS = $(BSOURCES:.c=.o)


CC = cc

CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJECTS)
	ar rcs $(NAME) $(OBJECTS)

bonus: $(OBJECTS) $(BOBJECTS)
	ar rcs $(NAME) $(OBJECTS) $(BOBJECTS)

clean:
	rm  -f $(OBJECTS) $(BOBJECTS)
	
fclean: clean
	rm -f $(NAME)

re: fclean all