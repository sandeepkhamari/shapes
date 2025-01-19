CC = g++

SRC_DIR = src

INC_DIR = include\

# directory where .o files will be extracted to
OBJ_DIR = obj
#VPATH = src:src/shape/ src/circle/ src/triangle/

# SRC_FILES = $(wildcard $(SRC_DIR)/*.c)
SRC_FILES = $(shell find . -type f -name *.cpp)
#SRC_FILES1= $(shell find . -type f -name *.cpp)
#SRC_FILES = $(shell find . -type f -name *.cpp -printf "%f ")
#OBJ_FILES = $(patsubst $(SRC_DIR)/%.cpp, $(OBJ_DIR)/%.o, $(SRC_FILES))
#OBJ_FILES=$(patsubst %.cpp, ${OBJ_DIR}/%.o, ${SRC_FILES})

OBJ_FILES = $(patsubst %.cpp, %.o, ${SRC_FILES})

#OBJ_FILES1 = $(patsubst %.o, $(OBJ_DIR)/%.o, $(OBJ_FILES))
#OBJ_FILES1 = $(patsubst %.cpp, %.o, ${SRC_FILES1})
#OBJ_FILES= $(SRC_FILES:.cpp=.o)

all: program
#program: $(OBJ_FILES)
#	$(CC) -o program $(OBJ_FILES) -I $(INC_DIR)
#program: $(OBJ_FILES)
program: $(OBJ_FILES)
	$(CC) $(OBJ_FILES) -o program -I $(INC_DIR)	
	#$(CC) -o program $(OBJ_FILES1) -I $(INC_DIR)

# -p means ignore parent directory if extant
#$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
#$(OBJ_DIR)/%.o: %.cpp
#$(OBJ_FILES): $(SRC_FILES)
#$(OBJ_FILES1): $(SRC_FILES1)
#$(OBJ_FILES1): $(SRC_FILES1)/%.cpp
#$(OBJ_FILES1): %.o: $(SRC_FILES1)
$(OBJ_FILES):%o: %cpp 
	#mkdir -p $(OBJ_DIR)
	$(CC) -c $< -o $@ -I $(INC_DIR)
clean:
	#rm -rf program $(OBJ_DIR)
	rm -rf src/shape/shape.o src/circle/circle.o src/triangle/triangle.o src/main.o
