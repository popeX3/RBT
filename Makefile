CC = gcc
IDIR = -I inc
SRC = src
ODIR = obj
CFLAGS = -O3
OBJ = $(patsubst $(SRC)/%.c,$(ODIR)/%.o,$(wildcard $(SRC)/*.c))

$(ODIR)/%.o : $(SRC)/%.c
	@mkdir -p $(@D)
	$(CC) -c -o $@ $< $(IDIR) $(CFLAGS)

rbt: $(OBJ)
	$(CC) -o RBT $(OBJ) 

.PHONY: clean

clean:
	rm $(ODIR)/%.o
