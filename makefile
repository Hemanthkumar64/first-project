CC = gcc
CFLAGS = -Wall -Wextra -std=c11 -D_POSIX_C_SOURCE=200809L

OBJ = main.o comment_removel.o macro_handler.o file_inclusion.o

mypreprossor: $(OBJ)
	gcc $(OBJ) -o mypreprossor

main.o: main.c preprossor.h
	gcc $(CFLAGS) -c main.c

comment_removel.o: comment_removel.c preprossor.h
	gcc $(CFLAGS) -c comment_removel.c

macro_handler.o: macro_handler.c preprossor.h
	gcc $(CFLAGS) -c macro_handler.c

file_inclusion.o: file_inclusion.c preprossor.h
	gcc $(CFLAGS) -c file_inclusion.c

clean:
	rm -f *.o mypreprocessor
