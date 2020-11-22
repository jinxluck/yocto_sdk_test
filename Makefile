CFLAGS = -g

TARGET = helloworld

all: $(TARGET)

helloworld: $(TARGET).c
	${CC} $(CFLAGS) -O $(TARGET) $(TARGET).c

.PHONY: clean
clean:
	rm -f *.o $(TARGET)
