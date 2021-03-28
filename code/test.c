#include<stdio.h>


unsigned long first_one_bit(unsigned long word) {
	register unsigned long result;
	asm volatile("bsfq %[data],%[result]": [result] "=r"(result): [data]   "r"(word));
	return result;
}

unsigned long cpu() {
	register unsigned long result;

	asm volatile("cpuid"
	:
	:
	);
	return result;
}

unsigned long rdtsc(void) {
	unsigned long rax, rcx, rdx;

	asm volatile("rdtscp"
	: "=a" (rax), "=c" (rcx), "=d" (rdx)
	);
	return (rdx << 32) + rax;
}


int main() {
	unsigned long t0, t1;

	t0 = rdtsc();
	cpu();
	t1 = rdtsc();

	printf("%lu %lu %lu\n", t0, t1, t1 - t0);
}
