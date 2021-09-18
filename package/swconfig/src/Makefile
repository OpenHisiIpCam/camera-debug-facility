LIBS=-lnl-3 -lnl-genl-3
PREFIX=/usr
all: swconfig

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

swconfig: cli.o swlib.o
	$(CC) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f *~ *.o swconfig

install: all
	install -D swconfig $(DESTDIR)$(PREFIX)/bin/swconfig
