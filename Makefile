#export PATH	:=	/c/msys/bin:$(PATH)
export PATH := /c/MinGW32/bin/:/c/msys/bin:$(PATH)

VERSION = "1.0.0"

#---------------------------------------------------------------------------------
# options for code generation
#---------------------------------------------------------------------------------
CC=gcc
CFLAGS=-g -O2 -Wall -D__BUILD_DATE="\"`date +'%Y%m%d'`\"" -D__BUILD_VERSION="\"$(VERSION)\""

SOURCES=gfx2pce.c lodepng.c
OBJS=gfx2pce.o  lodepng.o
EXE=gfx2pce.exe
DEFINES =
LIBS =
#---------------------------------------------------------------------------------
all: $(EXE)

#---------------------------------------------------------------------------------
$(EXE) : $(OBJS)
	@echo make exe $(notdir $<)
	$(CC) $(CFLAGS) $(OBJS) -o $@

gfx2pce.o : gfx2pce.c
	@echo make obj $(notdir $<)
	$(CC) $(CFLAGS) -c $<

lodepng.o : lodepng.c
	@echo make obj $(notdir $<)
	$(CC) $(CFLAGS) -c $<
	
#---------------------------------------------------------------------------------
clean:
	rm -f *.o *.exe *.tds


