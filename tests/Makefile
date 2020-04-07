FC = ifort

all: checkAll.out
	./checkAll.out

naturalfruit.o:
	$(FC) -c ../src/naturalfruit.f90

checkAll.out: naturalfruit.o
	$(FC) checkAll.f90 naturalfruit.o -o checkAll.out

clean:
	rm -f *.mod *.o *.out
