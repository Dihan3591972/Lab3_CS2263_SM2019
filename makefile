# compile with gcc, change this to clang if you prefer
COMPILER = gcc

# The C flags to pass to gcc
C_FLAGS = -Wall -Wextra

# prepend the command with '@' so that Make does not print the command before running it 
help:
	@printf "available command:\n"
	@printf "	make help               (this command)\n"
	@printf "	make LinkedList         (to build your C program)\n"
	@printf "	make test               (to run every test case)\n"


# TODO: add targets to compile LinkedList.c
LinkedList: LinkedList.o
	$(COMPILER) $(C_FLAGS) -o LinkedList LinkedList.o 

LinkedList.o: LinkedList.c
	$(COMPILER) $(C_FLAGS) -c LinkedList.c

# TODO: add a target for each . input file in the Data directory to run the c ompiled LinkedList program with the tests in ./Data
test1: LinkedList
	./LinkedList < Data/test1.input > test1.result

test2: LinkedList
	./LinkedList < Data/test2.input > test2.result

test3: LinkedList
	./LinkedList < Data/test3.input > test3.result

# TODO: add a target that can run all the tests above.
test: test1 test2 test3
