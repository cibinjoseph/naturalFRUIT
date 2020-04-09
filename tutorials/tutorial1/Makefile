FC = gfortran
naturalfruitFile = ../../src/naturalfruit.f90

all:
	make calculator_testrunner

naturalfruit.o:
	$(FC) -c $(naturalfruitFile)

calculator.o: calculator.f90
	$(FC) -c calculator.f90

calculator_test.o: calculator_test.f90
	$(FC) -c calculator_test.f90

calculator_testrunner: calculator_testrunner.f90 calculator.o naturalfruit.o calculator_test.o
	$(FC) calculator_testrunner.f90 *.o -o calculator_testrunner

clean:
	rm -f *.mod *.o calculator_testrunner
