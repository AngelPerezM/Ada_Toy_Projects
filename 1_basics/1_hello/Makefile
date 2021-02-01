ROOT_DIR :=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
BIN_DIR = $(ROOT_DIR)/bin
OBJ_DIR = $(ROOT_DIR)/bin

OBJECT =hello.o
SOURCE =hello.adb
TARGET =hello

CC =gcc
GNATLINK =gnatlink
GNATBIND =gnatbind
CFLAGS =-Wall -Wextra

.PHONY: all
all: directories $(BIN_DIR)/$(TARGET)

$(BIN_DIR)/$(TARGET):
	gnatmake -D $(BIN_DIR) $(SOURCE) -o $@

directories: ; mkdir -p $(BIN_DIR) $(OBJ_DIR)

.PHONY:check
check: ; $(BIN_DIR)/$(TARGET)

.PHONY: clean
clean: ; rm -r -f $(BIN_DIR)
