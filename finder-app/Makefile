
# Compiler and linker options
CC := $(CROSS_COMPILE)gcc
LD := $(CROSS_COMPILE)gcc
CFLAGS := -Wall -Wextra -std=c99
LDFLAGS :=

# Source files and object files
SRC := writer.c
OBJ := $(SRC:.c=.o)

# Output executable
EXEC := writer

.PHONY: all clean

# Default target: build the writer application
#all: 
#	$(EXEC)

# Rule to build the executable
$(EXEC): $(OBJ)
	$(LD) $(LDFLAGS) $^ -o $@

# Rule to compile C source files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean target: remove all .o files and the executable
clean:
	$(RM) $(OBJ) $(EXEC)
