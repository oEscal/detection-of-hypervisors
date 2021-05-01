#define XOR_ASSEMBLY() {asm volatile("xor %%rax,%%rbx\n\txor %%rbx,%%rcx\n\txor %%rcx,%%rdx\n\txor %%rdx,%%rdx" : : : "rax", "rbx", "rcx", "rdx");}
#define CPUID_ASSEMBLY() {asm volatile("movl $0, %%eax\n\tcpuid" : : :"rax", "rbx", "rcx", "rdx", "eax");}
#define RTC_ASSEMBLY() {int addr = 0x70, reg = 0, val; asm volatile("outb %b[reg],%w[addr]" : : [reg] "a" (reg), [addr] "d" (addr) : "cc"); asm volatile("inb %w[addr],%b[val]" : [val] "=&a" (val) : [addr] "d" (addr+1) : "cc");}
#define SGDT_LGDT_ASSEMBLY() {static long mem_data[2]; asm volatile("sgdt %0" : "=m" (mem_data[0])); asm volatile("lgdt %0" : : "m" (mem_data[0]));}
#define RDTSC_ASSEMBLY(x) {unsigned long rax, rcx, rdx; asm volatile("rdtscp": "=a"(rax), "=c"(rcx), "=d"(rdx)); x = (rdx << 32) + rax;}

#define UNROLL_TEN(x) {x}{x}{x}{x}{x}{x}{x}{x}{x}{x}
#define UNROLL_HUNDRED(x) UNROLL_TEN(UNROLL_TEN(x))
#define UNROLL_THOUSAND(x) UNROLL_TEN(UNROLL_HUNDRED(x))
