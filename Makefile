CC = gcc
CFLAGS = -Wall -g
LIBRARY = libcalculator.a
OBJ = calculator.o main.o

all: $(LIBRARY) calculator

$(LIBRARY): calculator.o
    ar rcs $@ $^

calculator: main.o $(LIBRARY)
    $(CC) $(CFLAGS) -o $@ $^

calculator.o: calculator.c calculator.h
    $(CC) $(CFLAGS) -c calculator.c

main.o: main.c calculator.h
    $(CC) $(CFLAGS) -c main.c

clean:
    rm -f *.o calculator $(LIBRARY)
