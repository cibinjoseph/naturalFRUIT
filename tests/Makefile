# Makefile for running tests

ifndef $(FC)
	FC = gfortran
endif

ifeq ($(FC), gfortran)
	flags = -fbacktrace -Wall
endif

ifeq ($(FC), ifort) 
	flags = -traceback -warn all
endif

# -------------------------------------------------

all: testAsserts.out
	./testAsserts.out

naturalfruit.o:
	$(FC) $(flags) -c ../src/naturalfruit.f90

testAsserts.out: naturalfruit.o
	$(FC) $(flags) testAsserts.f90 naturalfruit.o -o testAsserts.out

clean:
	rm -f *.mod *.o *.out
