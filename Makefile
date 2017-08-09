# Makefile example for compiling cuda and linking cuda to cpp:

SOURCELOC = 

UTILITYLOC =

NEWMOD =

PROGRAM = test

INCDIR= .
#
# Define the C compile flags
CCFLAGS = -g -m64 -I ./header -std=c++11
CC = g++



# Define all object files

OBJECTS = \
	Cell.o\
	DateTime.o\
	Schedular.o\
	Grid.o\
	MBB.o\
	PreProcess.o\
	QueryResult.o\
	SamplePoint.o\
	Trajectory.o\
	main.o



# Define Task Function Program


all: test


# Define what Modtools is


test: $(OBJECTS)
	gcc -m64 -c -g p_mmap.c -o p_mmap.o
	$(CC) $(CCFLAGS) -o test  p_mmap.o $(OBJECTS)

# Modtools_Object codes


.cpp.o:

	$(CC) $(CCFLAGS) -c $<


clean:
	rm -rf *.o
#  end

