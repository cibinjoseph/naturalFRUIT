FC = ifort
flags = -g -traceback -warn all

all: testAsserts.out
	./testAsserts.out

naturalfruit.o:
	$(FC) $(flags) -c ../src/naturalfruit.f90

testAsserts.out: naturalfruit.o
	$(FC) $(flags) testAsserts.f90 naturalfruit.o -o testAsserts.out

clean:
	rm -f *.mod *.o *.out
