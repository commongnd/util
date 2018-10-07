TARGET = helloworld
LIBS = -lm
CC = gcc
SRC_DIR = src
INC_DIR = inc
OBJ_DIR = obj
CFLAGS = -g -Wall -I$(INC_DIR)

.PHONY: default all clean

default: $(TARGET)
all: default

SOURCES = $(wildcard $(SRC_DIR)/*.c)
OBJECTS = $(SOURCES:$(SRC_DIR)/%.c=$(OBJ_DIR)/%.o)
INCLUDES = $(wildcard $(INC_DIR)/*.h)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

.PRECIOUS: $(TARGET) $(OBJECTS)

$(TARGET): $(OBJECTS)
	$(CC) $(OBJECTS) -Wall $(LIBS) -o $@

clean:
	-rm -f $(OBJECTS)
	-rm -f $(TARGET)
