#include <stdio.h>

int main(void)
{
int addr = 0x70;
int reg = 0;
int val;

asm volatile("outb %b[reg],%w[addr]" : : [reg] "r" (reg), [addr] "d" (addr) : "cc");
asm volatile("inb %w[addr],%b[val]" : [val] "=&r" (val) : [addr] "d" (addr+1) : "cc");
printf("%d\n",val);
} 
