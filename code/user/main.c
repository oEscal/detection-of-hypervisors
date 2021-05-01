#include <stdio.h>
#include "../assembly_instructions.h"


const int COUNTER = 100;

int main(int argc, char **argv) {
	int number_times = 1000000;
	unsigned long t0, t1, t2;

	if (argc == 2) {
      number_times = atoi(argv[1]);
   }

	for (int n = 0; n < number_times; n++) {
		RDTSC_ASSEMBLY(t0)

		for(int i = 0; i < COUNTER; i++) {
			UNROLL_THOUSAND(XOR_ASSEMBLY())
		}

		RDTSC_ASSEMBLY(t1)

		for (int i = 0; i < COUNTER; i++)
			CPUID_ASSEMBLY()

		RDTSC_ASSEMBLY(t2)

		printf("%lu %lu\n", t1 - t0, t2 - t1);
	}
}
