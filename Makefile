CC=gcc
INC_PATH = -I/usr/include
CFLAGS=-Wall -Wextra -g -O2 $(INC_PATH)
SOURCES= llhttp.c llhttp.o llhttp.h test.c
OBJECTS=$(patsubst %.c, %.o, $(SOURCES))
EXECUTABLE=bin/to

all:    build $(EXECUTABLE)

$(EXECUTABLE): $(SOURCES)
	$(CC) $(CFLAGS) $(SOURCES) -o $@

build:
	@mkdir -p bin

clean:
	rm -rf $(EXECUTABLE) $(OBJECTS) bin
	find . -name "*~" -exec rm {} \;
	find . -name "*.o" -exec rm {} \;