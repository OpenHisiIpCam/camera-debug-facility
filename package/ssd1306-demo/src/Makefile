CFLAGS += -std=gnu99

all: oled_demo

oled_demo: oled_demo.o oled.o
	$(CC) $(LDFLAGS) -o $@ $^

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	rm -rf oled_demo oled*.o
