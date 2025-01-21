CXX = g++
CXXFLAGS = -fPIC -shared -ldl -g -O0

all: patch.so

patch.so: patch.cc
	$(CXX) $(CXXFLAGS) -o patch.so patch.cc

clean:
	rm -f patch.so

