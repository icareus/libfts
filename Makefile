# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 15:42:41 by abarbaro          #+#    #+#              #
#    Updated: 2015/07/03 20:17:59 by abarbaro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY:			all, clean, fclean, re

PKG =			~/.brew/bin/brew

CC =			~/.brew/bin/nasm

CFLAG =			-f macho64

NAME =			libfts.a

SRC_PATH =		./src/

OBJ_PATH =		./obj/

INC_PATH =		./inc/

SRC_NAME =		$(shell ls $(SRC_PATH) | grep "\.s")

OBJ_NAME =		$(SRC_NAME:.s=.o)

INC_NAME =		libfts.h

SRC =			$(addprefix $(SRC_PATH),$(SRC_NAME))

OBJ =			$(addprefix $(OBJ_PATH),$(OBJ_NAME))

INC =			$(addprefix $(INC_PATH),$(INC_NAME))

all:			$(CC) $(NAME)

$(NAME):		$(OBJ)
				@ar -rcs $@ $^
				@echo "$@ created"

$(CC):
				$(PKG) update
				$(PKG) install nasm

$(OBJ_PATH)%.o:	$(SRC_PATH)%.s
				@mkdir -p $(OBJ_PATH)
				@$(CC) $(CFLAG) -I$(INC_PATH)  $< -o $@

clean:
				@rm -rf $(OBJ_PATH)
				@echo "clean done"
fclean:			
				@rm -f $(OBJ)
				@rm -f $(NAME)
				@echo "fclean done"
				@rm -f test.out

re: 			fclean all

test:			$(NAME)
				gcc -Wall -Wextra -Werror test.c -I$(INC_PATH) -L. -lfts\
				-o test.out
				./test.out "Lorem ipsum"
				./test.out "1orem ipsum"
