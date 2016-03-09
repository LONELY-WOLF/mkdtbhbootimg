CC=gcc
CFLAGS=-Wall
LDFLAGS=-lcrypto -lfdt

OBJECTS=mkbootimg.o
SOURCE=mkbootimg.c

mkbootimg: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o mkbootimg $(LDFLAGS)

all:mkbootimg

.PHONY: clean
clean:
	rm -f *~ *.o mkbootimg
