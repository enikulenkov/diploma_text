all: clean build

CC=gcc
CFLAGS=-g -Wall -Werror
EXE=bin/Debug/Dislin_first_task

build: bin/Debug/Dislin_first_task
	
$(EXE): obj/Debug/main.o
	mkdir -p bin/Debug
	$(CC) -o $@ $^ -lGL -lX11 -lm /usr/lib/dislin/lib/dislin-10.3.a

obj/Debug/main.o: main.c
	mkdir -p obj/Debug
	$(CC) $(CFLAGS) -c -I/usr/lib/dislin -o $@ $^

run: build
	./$(EXE)

clean:
	rm -f *.pdf
	rm -f obj/Debug/main.o
	rm -f bin/Debug/Dislin_first_task
