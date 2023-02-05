PROJECT_DIR=$(PWD)
OBJ_DIR=$(PROJECT_DIR)/__build


TARGET=ipc-app

CROSS_COMPILE=
CPP	=$(CROSS_COMPILE)g++
CC	=$(CROSS_COMPILE)gcc

CFLAGS = -g -ansi -pedantic -Wall -O2 -lm
LAFLAGSV =


CSRCS += $(wildcard ./source/*.c)
CSRCS += $(wildcard ./source/video/*.c)
CSRCS += $(wildcard ./source/audio/*.c)

OBJS  += $(patsubst %.c, $(OBJ_DIR)/%.o, $(CSRCS))

$(OBJ_DIR)/%.o: %.c
	@echo "---------- build objs ----------"
	@mkdir -p $(shell dirname $@)   
	@$(CC) -c $< -o $@ $(CFLAGS)  

$(OBJ_DIR)/$(TARGET): $(OBJS)
	@echo "---------- build target ----------"
	@$(CC) -o $(OBJ_DIR)/$(TARGET) $^ $(CFLAGS) 


.PHONY : all
all: $(OBJ_DIR)/$(TARGET) 

.PHONY : clean
clean:
	@echo "clean object project"
	@rm -rf $(OBJ_DIR)

.PHONY : create
create:
	@mkdir -p $(OBJ_DIR)