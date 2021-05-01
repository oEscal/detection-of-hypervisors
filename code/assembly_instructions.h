typedef void (*assembly_instruction_function)(void); 


#define XOR_ASSEMBLY() {asm volatile("xor %%rax,%%rbx\n\txor %%rbx,%%rcx\n\txor %%rcx,%%rdx\n\txor %%rdx,%%rdx" : : : "rax", "rbx", "rcx", "rdx");}
#define CPUID_ASSEMBLY() {asm volatile("movl $0, %%eax\n\tcpuid" : : :"rax", "rbx", "rcx", "rdx");}
#define RDTSC_ASSEMBLY(x) {unsigned long rax, rcx, rdx; asm volatile("rdtscp": "=a"(rax), "=c"(rcx), "=d"(rdx)); x = (rdx << 32) + rax;}

#define UNROLL_TEN(x) {x}{x}{x}{x}{x}{x}{x}{x}{x}{x}
#define UNROLL_HUNDRED(x) UNROLL_TEN(UNROLL_TEN(x))
#define UNROLL_THOUSAND(x) UNROLL_TEN(UNROLL_HUNDRED(x))

unsigned long first_one_bit(unsigned long word) {
	register unsigned long result;
	asm volatile("bsfq %[data],%[result]": [result] "=r"(result): [data]   "r"(word));
	return result;
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
