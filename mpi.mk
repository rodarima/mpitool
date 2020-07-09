MPITOOL?=./mpitool
MPICC?=mpicc

MPI_CFLAGS:=$(shell $(MPITOOL) --compile $(MPICC) ^-I)
$(if $(MPI_CFLAGS),,$(error $(MPITOOL) failed))

MPI_LDFLAGS:=$(shell $(MPITOOL) --link $(MPICC) ^-L)
$(if $(MPI_LDFLAGS),,$(error $(MPITOOL) failed))

MPI_LDLIBS:=$(shell $(MPITOOL) --link $(MPICC) ^-l)
$(if $(MPI_LDLIBS),,$(error $(MPITOOL) failed))
