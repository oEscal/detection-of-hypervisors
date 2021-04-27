#include <stdio.h>
#include "../assembly_instructions.h"


int main() {
	unsigned long t0, t1;

	t0 = rdtsc_assembly();
	// cpuid();
	xor_assembly();
	t1 = rdtsc_assembly();

	printf("%lu %lu %lu\n", t0, t1, t1 - t0);
}
