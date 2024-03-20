all=matlabShell.exe

MATLABROOT=C:/Progra~1/MATLAB/R2023b

CFLAGS:=-O3 -I$(MATLABROOT)/extern/include

LIB=$(MATLABROOT)/extern/lib/win64/microsoft/libeng.lib

CC=clang.exe

matlabShell.exe: matlabShell.o $(LIB)
	$(CC) -o $@ $^
#	strip $@

clean:
	$(RM) matlabShell.exe matlabShell.o
