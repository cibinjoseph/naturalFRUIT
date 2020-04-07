FC = ifort
flags = -g -traceback

all: checkAll.out
	./checkAll.out

naturalfruit.o:
	$(FC) $(flags) -c ../src/naturalfruit.f90

checkAll.out: naturalfruit.o
	$(FC) $(flags) checkAll.f90 naturalfruit.o -o checkAll.out

clean:
	rm -f *.mod *.o *.out
