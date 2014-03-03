# Branden Ghena

NAME=senseye_client

CC=gcc
CFLAGS=-O2 -Wall -g


OPENCV_INC=/usr/local/include/opencv
OPENCV_LIBS=-lopencv_core -lopencv_highgui -lopencv_imgproc

SENSEYE_DEFS_INC=../../uclinux/senseye_serv/

INC=-I$(OPENCV_INC) -I$(SENSEYE_DEFS_INC)
SRC=$(NAME).c
BIN=$(NAME)

LIBS=$(OPENCV_LIBS)

all:	$(NAME)

$(NAME):	$(SRC)
	$(CC) $(CFLAGS) $(INC) $(SRC) $(LIBS) -o $(BIN)

clean:
	rm -f $(BIN)
