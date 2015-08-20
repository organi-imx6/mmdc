# list of platforms which did not want this test case
EXCLUDE_LIST:=

CC :=$(CROSS_COMPILE)gcc
LD :=$(CROSS_COMPILE)gcc
LINK ?=$(CROSS_COMPILE)gcc
STRIP ?=$(CROSS_COMPILE)strip

OBJ = mmdc.o

TARGET = mmdc

CFLAGS+= -Os -c

LDFLAGS+= -lstdc++

all : $(TARGET)

$(TARGET): $(OBJ)
	$(LINK) -o $(TARGET) $(OBJ) $(LDFLAGS)

$(OBJ): mmdc.c mmdc.h
	$(CC) $(CFLAGS) mmdc.c -o $@

.PHONY: clean
clean :
	rm -f $(OBJ) $(TARGET)

