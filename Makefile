CFLAGS=-std=c11 -g -static

kcc: kcc.c

test: kcc
	./test.sh

clean:
	rm -f kcc *.o *~ tmp*

fmt:
	clang-format -style=google -i kcc.c

.PHONY: test clean fmt
