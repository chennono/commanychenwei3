EXE = adj.exe
#OBJ = arp.o mac.o main.o adj.o app.o
#SRC = arp.c mac.c main.c adj.c app.c
OBJ = app.o arp.o mac.o adj.o tools.o test.o
SRC = app.c arp.c mac.c adj.c tools.c test.c

$(EXE) : $(OBJ)
	gcc -o $(EXE) $^

%.o:%.c
	gcc -c $< -o $@

.PHONY:clean
clean:
	rm -rf *.exe *.o
