CXX = g++
# -rdynamic
# 它将指示连接器把所有符号（而不仅仅只是程序已使用到的外部符号）
# 都添加到动态符号表（即.dynsym表）里，
# 以便让 dlopen() （这一系列函数使用.dynsym表内符号）这样的函数使用。

CXXFLAGS = -rdynamic -ldl -g -O0

all: main.out
	./main.out

main: main.cc app.cc hot_fix.cc
	$(CXX) $(CXXFLAGS) -o main.out main.cc app.cc hot_fix.cc

clean:
	rm -f main.out

