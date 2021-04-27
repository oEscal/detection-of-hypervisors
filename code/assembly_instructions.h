typedef void (*assembly_instruction_function)(void); 

unsigned long first_one_bit(unsigned long word) {
	register unsigned long result;
	asm volatile("bsfq %[data],%[result]": [result] "=r"(result): [data]   "r"(word));
	return result;
}

static unsigned long rdtsc_assembly(void) {
	unsigned long rax, rcx, rdx;

	asm volatile("rdtscp": "=a"(rax), "=c"(rcx), "=d"(rdx));
	return (rdx << 32) + rax;
}

static void cpuid_assembly(void) {
	int eax, ebx, ecx, edx;

	asm volatile("movl $0, %%eax\n\tcpuid": "=a"(eax), "=b"(ebx), "=c"(ecx), "=d"(edx));
}

static void rtc_assembly(void) {
	int addr = 0x70;
	int reg = 0;
	int val;

	asm volatile("outb %b[reg],%w[addr]" : : [reg] "a" (reg), [addr] "d" (addr) : "cc");
	asm volatile("inb %w[addr],%b[val]" : [val] "=&a" (val) : [addr] "d" (addr+1) : "cc");
}

static void sgdt_lgdt_assembly(void) {
  static long mem_data[2];

  asm volatile("sgdt %0" : "=m" (mem_data[0]));
  asm volatile("lgdt %0" : : "m" (mem_data[0])); // falha em ring 3 (mas deve dar em ring 0)
}

static void xor_assembly(void) {
	// https://www.aldeid.com/wiki/X86-assembly/Instructions/xor
	
	int var1 = 0x18;
	int var2 = 0x7575;
	int result;

	asm volatile("movl %[var1], %[result]\n\txor %[var2], %[result]"
		: [result] "=r"(result)
		: [var1] "r" (var1), [var2] "r" (var2));
	
	// printf("%p\n", result);
}
