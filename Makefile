#INCLUDE= -I C:/Users/mfogleman/Downloads/glfw-2.7.8/include -I C:/Users/mfogleman/Downloads/glew-1.9.0/include -I C:/MinGW/include
#LIBRARY= -L C:/Users/mfogleman/Downloads/glfw-2.7.8/lib/win32 -L C:/Users/mfogleman/Downloads/glew-1.9.0/lib -L C:/MinGW/lib
INCLUDE= -I D:/opengl/glfw-legacy-master/glfw-legacy-master/include -I D:/opengl/openglLearn/dependencies/GLEW/include -I C:/MinGW/include
LIBRARY= -L D:/opengl/glfw-legacy-master/glfw-legacy-master/lib/win32 -L D:\opengl\glew-2.1.0-win32\glew-2.1.0\lib\Release\Win32 -L C:/MinGW/lib

all: main

run: all
	./main

clean:
	rm *.o

main: main.o modern.o
	gcc main.o modern.o -o main $(LIBRARY) -D GLEW_STATIC -lglew32s -lglfw -lopengl32 

main.o: main.c
	gcc $(INCLUDE) -c -o main.o main.c

modern.o: modern.c modern.h
	gcc $(INCLUDE) -c -o modern.o modern.c
