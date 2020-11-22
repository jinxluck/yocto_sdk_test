CFLAGS = -Wall -g -D_GNU_SOURCE

TARGET = helloworldmmj

all: $(TARGET)

helloworldmmj: $(TARGET).c
	$(CC) $(CFLAGS) ${LDFLAGS} -o $(TARGET) $(TARGET).c

install: helloworldmmj
	install -d ${D}/helloworldmmj

.PHONY: install
.PHONY: clean
clean:
	rm -f *.o $(TARGET)
