# For Intel we prefer mpiicc rather than mpicc
ifdef I_MPI_ROOT
 mpicc:=mpiicc
else
 mpicc:=mpicc
endif

# Fill the compiler and linker for mpitool
MPI_COMPILER=$(mpicc)
MPI_LINKER=$(MPI_COMPILER)
MPITOOL=../mpitool # mpitool ideally should be in your $PATH

include ../mpitool.mk

# Add -ltampi BEFORE -lmpi
ifdef USE_TAMPI
LDFLAGS+=-L$(TAMPI_HOME)/lib
CFLAGS+=-I$(TAMPI_HOME)/include
LDLIBS+=-l:libtampi.a -lstdc++ -ldl
endif

CFLAGS+=$(MPI_INCLUDE)
LDFLAGS+=$(MPI_LDFLAGS)
LDLIBS+=$(MPI_LDLIBS)

all: hello

clean:
	rm -f hello
