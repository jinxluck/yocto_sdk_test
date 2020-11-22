CFLAGS = -Wall -g -D_GNU_SOURCE

TARGET = helloworldmmj

all: $(TARGET)

helloworldmmj: $(TARGET).c
	$(CC) $(CFLAGS) ${LDFLAGS} -o $(TARGET) $(TARGET).c

prefix=/usr/bin

install: helloworldmmj
	install -m 0777 helloworldmmj $(prefix)

.PHONY: install
.PHONY: clean
clean:
	rm -f *.o $(TARGET)
