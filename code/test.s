	.file	"test.c"
	.text
	.p2align 4
	.globl	cpu
	.type	cpu, @function
cpu:
.LFB11:
	.cfi_startproc
#APP
# 7 "test.c" 1
	cpuid
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE11:
	.size	cpu, .-cpu
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%lu\n"
	.text
	.p2align 4
	.globl	rdtsc
	.type	rdtsc, @function
rdtsc:
.LFB12:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
#APP
# 17 "test.c" 1
	rdtscp
# 0 "" 2
#NO_APP
	leaq	.LC0(%rip), %rdi
	movq	%rdx, %r12
	movq	%rcx, %rsi
	movq	%rax, %r13
	xorl	%eax, %eax
	call	printf@PLT
	movq	%r12, %rsi
	leaq	.LC0(%rip), %rdi
	xorl	%eax, %eax
	call	printf@PLT
	movq	%r13, %rsi
	xorl	%eax, %eax
	salq	$32, %r12
	leaq	.LC0(%rip), %rdi
	call	printf@PLT
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	leaq	(%r12,%r13), %rax
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	rdtsc, .-rdtsc
	.section	.rodata.str1.1
.LC1:
	.string	"%lu %lu %lu\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB13:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	xorl	%eax, %eax
	call	rdtsc
	movq	%rax, %rbp
#APP
# 7 "test.c" 1
	cpuid
# 0 "" 2
#NO_APP
	xorl	%eax, %eax
	call	rdtsc
	movq	%rbp, %rsi
	leaq	.LC1(%rip), %rdi
	movq	%rax, %rcx
	movq	%rax, %rdx
	xorl	%eax, %eax
	subq	%rbp, %rcx
	call	printf@PLT
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
