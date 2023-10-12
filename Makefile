VER=0.0.1
LIB=libhello.so

all: $(LIB)

$(LIB): hellolib.o
	$(CC) $< $(LDFLAGS) -shared -o $(LIB).$(VER)

%.o: %.c
	$(CC) -c $<

clean:
	rm -rf *.o *.so
