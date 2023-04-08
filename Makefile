NAME = main

CFLAGS = -Wall -Wextra

CC = gcc

#SRC=$(wildcard *.c*.h)
SRC= test.c llhttp.h llhttp.o

all: $(NAME)

$(NAME): $(SRC)
	$(CC) $(CFLAGS) $^ -o $@

.PHONY = all