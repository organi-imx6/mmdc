
CXX ?= $(CROSS_COMPILE)g++
STRIP ?= $(CROSS_COMPILE)strip

OBJ = mmdc.o
TARGET = mmdc

all : $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) -o $(TARGET) $(OBJ) $(LDFLAGS)

$(OBJ): mmdc.c mmdc.h
	$(CXX) $(CXXFLAGS) -c mmdc.c -o $@

.PHONY: clean
clean :
	rm -f $(OBJ) $(TARGET)

