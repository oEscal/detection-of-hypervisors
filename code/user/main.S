	.file	"main.c"
	.text
	.globl	first_one_bit
	.type	first_one_bit, @function
first_one_bit:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	.cfi_offset 3, -24
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
#APP
# 14 "../assembly_instructions.h" 1
	bsfq %rax,%rax
# 0 "" 2
#NO_APP
	movq	%rax, %rbx
	movq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	first_one_bit, .-first_one_bit
	.type	rtc_assembly, @function
rtc_assembly:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$112, -12(%rbp)
	movl	$0, -8(%rbp)
	movl	-8(%rbp), %eax
	movl	-12(%rbp), %edx
#APP
# 23 "../assembly_instructions.h" 1
	outb %al,%dx
# 0 "" 2
#NO_APP
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %edx
#APP
# 24 "../assembly_instructions.h" 1
	inb %dx,%al
# 0 "" 2
#NO_APP
	movl	%eax, -4(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	rtc_assembly, .-rtc_assembly
	.type	sgdt_lgdt_assembly, @function
sgdt_lgdt_assembly:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
#APP
# 30 "../assembly_instructions.h" 1
	sgdt mem_data.0(%rip)
# 0 "" 2
# 31 "../assembly_instructions.h" 1
	lgdt mem_data.0(%rip)
# 0 "" 2
#NO_APP
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	sgdt_lgdt_assembly, .-sgdt_lgdt_assembly
	.globl	counter
	.section	.rodata
	.align 4
	.type	counter, @object
	.size	counter, 4
counter:
	.long	2
.LC0:
	.string	"%lu %lu\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$120, %rsp
	.cfi_offset 3, -24
#APP
# 10 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
	movq	%rax, -112(%rbp)
	movq	%rcx, -104(%rbp)
	movq	%rdx, -96(%rbp)
	movq	-96(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -88(%rbp)
	movl	$0, -120(%rbp)
	jmp	.L6
.L7:
#APP
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
# 13 "main.c" 1
	xor %rax,%rbx
	xor %rbx,%rcx
	xor %rcx,%rdx
	xor %rdx,%rdx
# 0 "" 2
#NO_APP
	addl	$1, -120(%rbp)
.L6:
	movl	$2, %eax
	cmpl	%eax, -120(%rbp)
	jl	.L7
#APP
# 16 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
	movq	%rax, -80(%rbp)
	movq	%rcx, -72(%rbp)
	movq	%rdx, -64(%rbp)
	movq	-64(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -56(%rbp)
	movl	$0, -116(%rbp)
	jmp	.L8
.L9:
#APP
# 19 "main.c" 1
	movl $0, %eax
	cpuid
# 0 "" 2
#NO_APP
	addl	$1, -116(%rbp)
.L8:
	movl	$2, %eax
	cmpl	%eax, -116(%rbp)
	jl	.L9
#APP
# 22 "main.c" 1
	rdtscp
# 0 "" 2
#NO_APP
	movq	%rax, -48(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rax
	salq	$32, %rax
	movq	%rax, %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	subq	-56(%rbp), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	subq	-88(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	main, .-main
	.local	mem_data.0
	.comm	mem_data.0,16,16
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
