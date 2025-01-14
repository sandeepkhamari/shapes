#all: src\shape\shape.cpp src\circle\circle.cpp src\triangle\triangle.cpp src\main.cpp
#	g++ -I .\src\shape\ -I .\src\circle\ -I .\src\triangle\ -I .\src\  src\shape\shape.cpp src\circle\circle.cpp src\triangle\triangle.cpp src\main.cpp -o main

SRC_DIR = src

INC_DIR = include

OBJ_DIR = obj

CFLAG = -Wall -g -O2

CXX = g++

SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)

OBJ_FILES = $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRC_FILES))

all: program

program: $(OBJ_FILES)
	$(CXX) -o program $(OBJ_FILES)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	mkdir -p $(OBJ_DIR)
	$(CXX) -I$(INC_DIR) -c $< -o $@

clean: 
	rm -f main.exe	