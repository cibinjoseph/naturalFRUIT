
all:
	echo "For running tests use Makefile inside test/"

docum: ford_input.md
	make cleandocum
	ford -p ford_input ford_input.md

cleandocum:
	rm -rf docs/src
