
all:
	echo "For running tests use Makefile inside test/"

docum: ford_input.md
	rm -rf docs/src
	ford -p ford_input ford_input.md
