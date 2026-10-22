CXX = g++
CXXFLAGS = -Wall -Wextra
TARGET = app.exe
OBJECTS = main.o Calculator.o

.PHONY: all debug clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) -o $(TARGET)

main.o: main.cpp Calculator.h
	$(CXX) $(CXXFLAGS) -c main.cpp -o main.o

Calculator.o: Calculator.cpp Calculator.h
	$(CXX) $(CXXFLAGS) -c Calculator.cpp -o Calculator.o

debug: CXXFLAGS += -g
debug: clean $(TARGET)

clean:
	rm -f $(TARGET) $(OBJECTS)
