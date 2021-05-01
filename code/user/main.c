#include <stdio.h>
#include "../assembly_instructions.h"


const int counter = 100;
const int NUMBER_TIMES = 1000000;

int main() {
	unsigned long t0, t1, t2;

	for (int n = 0; n < NUMBER_TIMES; n++) {
		RDTSC_ASSEMBLY(t0)

		for(int i = 0; i < counter; i++) {
			UNROLL_THOUSAND(XOR_ASSEMBLY())
		}

		RDTSC_ASSEMBLY(t1)

		for (int i = 0; i < counter; i++) {
			CPUID_ASSEMBLY()
		}

		RDTSC_ASSEMBLY(t2)

		printf("%lu %lu\n", t1 - t0, t2 - t1);
	}
}
