#include <mpi.h>
#include <stdio.h>

int main()
{
	MPI_Init(NULL, NULL);

	printf("hello world\n");

	MPI_Finalize();
}
