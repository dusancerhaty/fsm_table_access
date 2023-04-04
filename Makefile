IDIR=.
CC=g++
CFLAGS=-I$(IDIR)

ODIR=obj

LIBS=-lpthread

_OBJ = main.o ya_getopt.o
OBJ = $(patsubst %,$(ODIR)/%,$(_OBJ))

$(ODIR)/%.o: %.cpp
	$(CC) -c -o $@ $< $(CFLAGS)

main: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS) $(LIBS)

.PHONY: clean

clean:
	rm -f $(ODIR)/*.o

