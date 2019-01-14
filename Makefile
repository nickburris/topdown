# Compiler and flags
CC = g++
CFLAGS = -g -Wall

# Includes and link libraries
INCLUDES = -IC:\mingw_lib\include\SDL2
LFLAGS = -LC:\mingw_lib\lib
LIBS = -lmingw32 -lSDL2main -lSDL2

# Source files
SRCS = tdmain.cc
OBJS = $(SRCS:.cc=.o)

# Main target name
MAIN = tdgame

# Default make the game
all: $(MAIN)

# Game compilation
$(MAIN): $(OBJS)
	$(CC) $(CFLAGS) $(INCLUDES) -o out/$(MAIN) $(OBJS) $(LFLAGS) $(LIBS)

# Suffix replacement rule for building .o from .cc
.cc.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

# Make clean
clean:
	$(RM) out/$(MAIN) *.o *~