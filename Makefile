CC=gcc
TARGET=coverityt
CFLAGS=-std=gnu99 -Wall
OBJS=test.o

all: $(TARGET)

.PHONY: all

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET)

test: all
	./$(TARGET)

clean:
	rm -f $(OBJS) $(TARGET)

.PHONY: clean
