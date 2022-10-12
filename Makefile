
all: hellolib.so

hellolib.so: hellolib.o
	$(CC) hellolib.o -shared -o hellolib.so

hellolib.o: hellolib.c
	$(CC) -c hellolib.c

clean:
	rm -rf *.o *.so
