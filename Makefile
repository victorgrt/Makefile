# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vgoret <vgoret@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/14 13:54:05 by vgoret            #+#    #+#              #
#    Updated: 2022/12/08 14:51:20 by vgoret           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
# ! ARGUMENTS ! #

NAME	=	sorted_args
CCFLAGS	=	-Wall -Werror -Wextra
CC		=	gcc

################################################################################
# * SRC * #

SRC = sorter \
	main \

OBJ = $(addsuffix .o, $(SRC))

################################################################################
# ? RULES ? #

all: ${NAME} compiling saitama

${NAME} : ${OBJ}
	@${CC} ${OBJ} -o ${NAME}

%.o : %.c
	@${CC} ${CCFLAGS} -c $< -o $@

clean: deleting totoro
	@rm -f ${OBJ} 
 
fclean:	deletings chat
	@rm -f ${OBJ};
	@rm -f ${NAME};

re : fclean all

.PHONY : all clean fclean all re

################################################################################
# TODO	UTILS	TODO #

compiling:
	@${foreach value, $(NAME), echo "\\033[1;32m COMPILED INTO \033[32m\033[5m" ${value};}
	@tput sgr0;
	@${foreach value, $(SRC), echo "\\033[1;37m >> \\033[0;29m" ${value};}
	@echo "\n"

deleting : 
	@echo "\\033[1;34m\033[5m DELETED\\033[0;39m"
	@tput sgr0;
	@${foreach value, $(OBJ), echo "\\033[1;34m >> \\033[0;39m" ${value};}

deletings : 
	@echo "\\033[1;34m\033[5m DELETED\\033[0;39m"
	@tput sgr0;
	@${foreach value, $(OBJ), echo "\\033[1;34m >> \\033[0;39m" ${value};}
	@${foreach value, $(NAME), echo "\\033[1;34m >> \\033[0;39m" ${value};}

chat :
	@echo "\n ^~^  , \n('Y') ) \n/   \\/ \n(\\|||/)\n"

saitama :
	@echo " ⠀⠀⠀⠀⣠⣶⡾⠏⠉⠙⠳⢦⡀⠀⠀⠀⢠⠞⠉⠙⠲⡀⠀\n ⠀⠀⠀⣴⠿⠏⠀⠀⠀⠀⠀⠀⢳⡀⠀⡏⠀⠀⠀⠀⠀⢷ \n ⠀⠀⢠⣟⣋⡀⢀⣀⣀⡀⠀⣀⡀⣧⠀⢸⠀⠀⠀⠀⠀ ⡇ \n ⠀⠀⢸⣯⡭⠁⠸⣛⣟⠆⡴⣻⡲⣿⠀⣸   OK  ⡇ \n ⠀⠀⣟⣿⡭⠀⠀⠀⠀⠀⢱⠀⠀⣿⠀⢹⠀⠀⠀⠀⠀ ⡇ \n ⠀⠀⠙⢿⣯⠄⠀⠀⠀⢀⡀⠀⠀⡿⠀⠀⡇⠀⠀⠀⠀⡼ \n ⠀⠀⠀⠀⠹⣶⠆⠀⠀⠀⠀⠀⡴⠃⠀⠀⠘⠤⣄⣠⠞⠀ \n ⠀⠀⠀⠀⠀⢸⣷⡦⢤⡤⢤⣞⣁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ \n ⠀⠀⢀⣤⣴⣿⣏⠁⠀⠀⠸⣏⢯⣷⣖⣦⡀⠀⠀⠀⠀⠀⠀ \n ⢀⣾⣽⣿⣿⣿⣿⠛⢲⣶⣾⢉⡷⣿⣿⠵⣿⠀⠀⠀⠀⠀⠀ \n ⣼⣿⠍⠉⣿⡭⠉⠙⢺⣇⣼⡏⠀⠀⠀⣄⢸⠀⠀⠀⠀⠀⠀ \n ⣿⣿⣧⣀⣿………⣀⣰⣏⣘⣆⣀⠀⠀ \n"

totoro :
	@echo "               	_____\n               /     \\ \n               vvvvvvv  /|__/|\n                  I   /O,O   |\n                  I /_____   |      /|/|\n                 J|/^ ^ ^ \\  |    /00  |    _//|\n                  |^ ^ ^ ^ |W|   |/^^\\ |   /oo |\n                   \\m___m__|_|    \\m_m_|   \\mm_|"

