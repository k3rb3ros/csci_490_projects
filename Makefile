###################################
# Makefile CSCI 490 project(s)    #
###################################
CC=g++
CFLAGS= -O0 -g -Wall -Wextra
LDFLAGS=
SOURCES=hello_world.cpp
OBJECTS=$(SOURCES:.cpp=.o)
BINARY=hello_world

all: $(BINARY) $(OBJECTS)
.cpp.o:
	$(CC) $(CFLAGS) -c $< -o $@

$(BINARY): $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $@

clean: 
	rm -rfv $(BINARY) $(OBJECTS)
