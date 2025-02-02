CXX = g++
CXXFLAGS = -D_JUDGE_ -D_GLIBCXX_DEBUG -O0 -Wall -Wextra -Werror -Wno-sign-compare -std=c++11


program: program.o Hospital.o Doctor.o Pacient.o Visita.o Data.o
	$(LINK.cc) -o $@ $^
	
program.o: program.cpp Hospital.hpp Doctor.hpp Pacient.hpp Visita.hpp Data.hpp BST.hpp PriorityQueue.hpp

Hospital.o: Hospital.cpp Hospital.hpp Doctor.hpp Pacient.hpp Visita.hpp BST.hpp PriorityQueue.hpp

Doctor.o: Doctor.cpp Doctor.hpp Visita.hpp

Pacient.o: Pacient.cpp Pacient.hpp

Visita.o: Visita.cpp Visita.hpp Data.hpp Pacient.hpp

Data.o: Data.cpp Data.hpp


.PHONY: clean
clean:
	rm -vf program.o Hospital.o Doctor.o Pacient.o Visita.o Data.o BST.o PriorityQueue.o program
