VER=0.0.1

all: hellolib.so

hellolib.so: hellolib.o
	$(CC) hellolib.o $(LDFLAGS) -shared -o libhellolib.so.$(VER)
	

hellolib.o: hellolib.c
	$(CC) -c hellolib.c

clean:
	rm -rf *.o *.so
