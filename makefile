#
# makefile
#
# Based on Anthony's Editor January 93
#
# Public Domain 1991, 1993 by Anthony Howe.  No warranty.
#

CC      = cc
CFLAGS  = -O -Wall

LD      = cc
LDFLAGS =
LIBS    = -lcurses -ltermcap

CP      = cp
MV      = mv
RM      = rm

E       =
O       = .o

OBJ     = command$(O) data$(O) display$(O) gap$(O) key$(O) search$(O) buffer$(O) replace$(O) window$(O) main$(O)

atto$(E) : $(OBJ)
	$(LD) $(LDFLAGS) -o atto$(E) $(OBJ) $(LIBS)

command$(O): command.c header.h
	$(CC) $(CFLAGS) -c command.c

data$(O): data.c header.h
	$(CC) $(CFLAGS) -c data.c

display$(O): display.c header.h
	$(CC) $(CFLAGS) -c display.c

gap$(O): gap.c header.h
	$(CC) $(CFLAGS) -c gap.c

key$(O): key.c header.h
	$(CC) $(CFLAGS) -c key.c

search$(O): search.c header.h
	$(CC) $(CFLAGS) -c search.c

replace$(O): replace.c header.h
	$(CC) $(CFLAGS) -c replace.c

window$(O): window.c header.h
	$(CC) $(CFLAGS) -c window.c

buffer$(O): buffer.c header.h
	$(CC) $(CFLAGS) -c buffer.c

main$(O): main.c header.h
	$(CC) $(CFLAGS) -c main.c

clean:
	-$(RM) $(OBJ) atto$(E)

install:
	-$(MV) atto$(E) $(HOME)/$(HOSTNAME)/bin

