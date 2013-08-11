CC=gcc
OBJECTS=main.o
OUTPUT=main

default: $(OUTPUT)

%.o: %.c $(HEADERS)
	$(CC) -c $< -o $@

main: $(OBJECTS)
	$(CC) -o main $(OBJECTS)

clean:
	-rm -f $(OBJECTS) $(OUTPUT)