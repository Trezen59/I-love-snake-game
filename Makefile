CC= gcc
TARGET= snake_game
ALL_TARGET= $(TARGET) tags
CLIBS= -lncurses -lpthread
FLAGS= -g

all: clean game
	ctags -R *

game:
	$(CC) $(FLAGS) $(TARGET).c -o $(TARGET) $(CLIBS)

clean:
	rm -rf $(ALL_TARGET)
