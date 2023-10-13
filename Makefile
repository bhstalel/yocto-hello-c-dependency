MAJOR=1
VER=$(MAJOR).0
LIB=libhello.so

all: $(LIB)

$(LIB): hellolib.o
	$(CC) $< -Wl,-soname,$(LIB).$(MAJOR) -fPIC $(LDFLAGS) -shared -o $(LIB).$(VER)

%.o: %.c
	$(CC) -c $<

clean:
	rm -rf *.o *.so
