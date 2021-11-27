PROGS = shell trace.so
EXTRA-CLEAN = sh-tests.*.log

include Makefile.include

# If you're getting SIGSEGV uncomment following line on your local computer.
# WARNING: This must not be enabled on GitHub Classroom !
# CC += -fsanitize=address
CPPFLAGS += -DSTUDENT
LDLIBS += -lreadline

shell: shell.o command.o lexer.o jobs.o

test:
	python3 sh-tests.py -v

trace.so: trace.c

# vim: ts=8 sw=8 noet
