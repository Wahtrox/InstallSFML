##
## Makefile for Install in /home/malik_r/SFML/Projects/TestProject
## 
## Made by Romain Malik
## Login   <malik_r@epitech.net>
## 
## Started on  Wed Feb 11 16:18:05 2015 Romain Malik
## Last update Wed Feb 11 17:05:06 2015 Romain Malik
##

NAME		= sfml-app

RM		= rm -f

SRCS		= main.cpp

OBJS		= $(SRCS:.cpp=.o)

LIBFOLDER	= $(CURDIR)/lib

INCLUDEFOLDER	= $(CURDIR)/include

$(NAME):
		g++ -c $(SRCS) -I$(INCLUDEFOLDER)
		g++ $(OBJS) -o $(NAME) -L$(LIBFOLDER) -lsfml-graphics -lsfml-window -lsfml-system

all:	$(NAME)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean all
