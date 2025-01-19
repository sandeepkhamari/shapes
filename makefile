CC = g++

target = myApp

SRC_DIR = src

INC_DIR = include\

# directory where .o files will be extracted to
OBJ_DIR = obj

SRC_FILES = $(shell find . -type f -name *.cpp)
OBJ_FILES = $(patsubst %.cpp, %.o, ${SRC_FILES})

all: $(target)

$(target): $(OBJ_FILES)
	#OBJ_FLS = $(wildcard obj/*.o)
	$(CC) $(wildcard obj/*.o) -o $(target) -I $(INC_DIR)
	#$(CC) ${OBJ_FLS} -o program -I $(INC_DIR)	

$(OBJ_FILES):%o: %cpp 
	mkdir -p $(OBJ_DIR)
	$(CC) -c $< -o $(OBJ_DIR)/$(@F) -I $(INC_DIR)
clean:
	#rm -rf program $(OBJ_DIR)
	#rm -rf $(OBJ_FILES) program
	rm -rf $(OBJ_DIR) $(target)
