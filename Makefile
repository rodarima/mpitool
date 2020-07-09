MPICC?=mpicc
MPITOOL=./mpitool

include mpi.mk

CFLAGS+=$(MPI_CFLAGS)
LDFLAGS+=$(MPI_LDFLAGS)
LDLIBS+=$(MPI_LDLIBS)

all: hello
