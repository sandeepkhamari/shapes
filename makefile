CC = g++

SRC_DIR = src

INC_DIR = include\

# directory where .o files will be extracted to
OBJ_DIR = obj

SRC_FILES = $(shell find . -type f -name *.cpp)
OBJ_FILES = $(patsubst %.cpp, %.o, ${SRC_FILES})

all: program

program: $(OBJ_FILES)
	$(CC) $(OBJ_FILES) -o program -I $(INC_DIR)	

$(OBJ_FILES):%o: %cpp 
	#mkdir -p $(OBJ_DIR)
	$(CC) -c $< -o $@ -I $(INC_DIR)
clean:
	#rm -rf program $(OBJ_DIR)
	#rm -rf src/shape/shape.o src/circle/circle.o src/triangle/triangle.o src/main.o
	rm -rf $(OBJ_FILES) program
