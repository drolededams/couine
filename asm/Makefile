# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dgameiro <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/05/12 15:32:27 by dgameiro          #+#    #+#              #
#    Updated: 2018/11/06 16:15:21 by dgameiro         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all, clean, fclean, re

SRC_COLLEEN = Colleen.s
SRC_GRACE = Grace.s
SRC_SULLY = Sully.s

OBJ_COLLEEN = $(SRC_COLLEEN:.s=.o)
OBJ_GRACE = $(SRC_GRACE:.s=.o)
OBJ_SULLY = $(SRC_SULLY:.s=.o)

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

GRACE_KID = Grace_kid.s
SULLY_KID = Sully_*

NASM = nasm
NFLAGS = -f macho64

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(OBJ_COLLEEN)
	$(CC) $(CFLAGS) $^ -o $@

$(GRACE): $(OBJ_GRACE)
	$(CC) $(CFLAGS) $^ -o $@

$(SULLY): $(OBJ_SULLY)
	$(CC) $(CFLAGS) $^ -o $@

%.o: %.s
	$(NASM) $(NFLAGS) $<

clean: 
	@rm -fv $(OBJ_COLLEEN)
	@rm -fv $(OBJ_GRACE)
	@rm -fv $(OBJ_SULLY)
	@rm -fv $(GRACE_KID)
	@rm -fv $(SULLY_KID)

fclean : clean
	@rm -fv $(COLLEEN)
	@rm -fv $(GRACE)
	@rm -fv $(SULLY)

re : fclean all

coffee :
	@printf "                       (\n                        )     (\n                 ___...(-------)-....___\n             .-\"\"       )    (          \"\"-.\n       .-\'\`\`\'|-._             )         _.-|\n      /  .--.|   \`\"\"---...........---\"\"\`   |\n     /  /    |                             |\n     |  |    |                             |\n      \\  \\   |                             |\n       \`\\ \`\\ |                             |\n         \`\\ \`|                             |\n         _/ /\\                             /\n        (__/  \\                           /\n     _..---\"\"\` \\                         /\`\"\"---.._\n  .-\'           \\                       /          \'-.\n :               \`-.__             __.-\'              :\n :                  ) \"\"---...---\"\" (                 :\n  \'._               \`\"--...___...--\"\`              _.\'\n    \\\"\"--..__                              __..--\"\"/\n     \'._     \"\"\"----.....______.....----\"\"\"     _.\'\n        \`\"\"--..,,_____            _____,,..--\"\"\`\n                      \`\"\"\"----\"\"\"\`\n"
