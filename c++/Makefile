# For Intel we prefer mpiicxx rather than mpicxx
ifdef I_MPI_ROOT
 mpicxx:=mpiicxx
else
 mpicxx:=mpicxx
endif

# Fill the compiler and linker for mpitool
MPI_COMPILER=$(mpicxx)
MPI_LINKER=$(MPI_COMPILER)
MPITOOL=../mpitool # mpitool ideally should be in your $PATH

include ../mpitool.mk

# Add -ltampi BEFORE -lmpi
ifdef USE_TAMPI
LDFLAGS+=-L$(TAMPI_HOME)/lib
CXXFLAGS+=-I$(TAMPI_HOME)/include
LDLIBS+=-l:libtampi.a -lstdc++ -ldl
endif

CXXFLAGS+=$(MPI_INCLUDE)
LDFLAGS+=$(MPI_LDFLAGS)
LDLIBS+=$(MPI_LDLIBS)

all: hello

clean:
	rm -f hello
