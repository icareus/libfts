# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abarbaro <abarbaro@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 15:42:41 by abarbaro          #+#    #+#              #
#    Updated: 2015/05/27 05:57:16 by abarbaro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY:			all, clean, fclean, re

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
				~/.brew/bin/brew install nasm

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

re: 			fclean all
