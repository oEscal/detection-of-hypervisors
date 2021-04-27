	.file	"test.c"
# GNU C17 (GCC) version 10.2.0 (x86_64-pc-linux-gnu)
#	compiled by GNU C version 10.2.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.1, isl version isl-0.21-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed:  test.c -mtune=generic -march=x86-64 -O2 -fverbose-asm
# options enabled:  -fPIC -fPIE -faggressive-loop-optimizations
# -falign-functions -falign-jumps -falign-labels -falign-loops
# -fallocation-dce -fasynchronous-unwind-tables -fauto-inc-dec
# -fbranch-count-reg -fcaller-saves -fcode-hoisting
# -fcombine-stack-adjustments -fcompare-elim -fcprop-registers
# -fcrossjumping -fcse-follow-jumps -fdefer-pop
# -fdelete-null-pointer-checks -fdevirtualize -fdevirtualize-speculatively
# -fdwarf2-cfi-asm -fearly-inlining -feliminate-unused-debug-symbols
# -feliminate-unused-debug-types -fexpensive-optimizations
# -fforward-propagate -ffp-int-builtin-inexact -ffunction-cse -fgcse
# -fgcse-lm -fgnu-unique -fguess-branch-probability -fhoist-adjacent-loads
# -fident -fif-conversion -fif-conversion2 -findirect-inlining -finline
# -finline-atomics -finline-functions -finline-functions-called-once
# -finline-small-functions -fipa-bit-cp -fipa-cp -fipa-icf
# -fipa-icf-functions -fipa-icf-variables -fipa-profile -fipa-pure-const
# -fipa-ra -fipa-reference -fipa-reference-addressable -fipa-sra
# -fipa-stack-alignment -fipa-vrp -fira-hoist-pressure
# -fira-share-save-slots -fira-share-spill-slots
# -fisolate-erroneous-paths-dereference -fivopts -fkeep-static-consts
# -fleading-underscore -flifetime-dse -flra-remat -fmath-errno
# -fmerge-constants -fmerge-debug-strings -fmove-loop-invariants
# -fomit-frame-pointer -foptimize-sibling-calls -foptimize-strlen
# -fpartial-inlining -fpeephole -fpeephole2 -fplt -fprefetch-loop-arrays
# -free -freg-struct-return -freorder-blocks -freorder-blocks-and-partition
# -freorder-functions -frerun-cse-after-loop
# -fsched-critical-path-heuristic -fsched-dep-count-heuristic
# -fsched-group-heuristic -fsched-interblock -fsched-last-insn-heuristic
# -fsched-rank-heuristic -fsched-spec -fsched-spec-insn-heuristic
# -fsched-stalled-insns-dep -fschedule-fusion -fschedule-insns2
# -fsemantic-interposition -fshow-column -fshrink-wrap
# -fshrink-wrap-separate -fsigned-zeros -fsplit-ivs-in-unroller
# -fsplit-wide-types -fssa-backprop -fssa-phiopt -fstack-protector-strong
# -fstdarg-opt -fstore-merging -fstrict-aliasing
# -fstrict-volatile-bitfields -fsync-libcalls -fthread-jumps
# -ftoplevel-reorder -ftrapping-math -ftree-bit-ccp -ftree-builtin-call-dce
# -ftree-ccp -ftree-ch -ftree-coalesce-vars -ftree-copy-prop -ftree-cselim
# -ftree-dce -ftree-dominator-opts -ftree-dse -ftree-forwprop -ftree-fre
# -ftree-loop-distribute-patterns -ftree-loop-if-convert -ftree-loop-im
# -ftree-loop-ivcanon -ftree-loop-optimize -ftree-parallelize-loops=
# -ftree-phiprop -ftree-pre -ftree-pta -ftree-reassoc -ftree-scev-cprop
# -ftree-sink -ftree-slsr -ftree-sra -ftree-switch-conversion
# -ftree-tail-merge -ftree-ter -ftree-vrp -funit-at-a-time -funwind-tables
# -fverbose-asm -fzero-initialized-in-bss -m128bit-long-double -m64 -m80387
# -malign-stringops -mavx256-split-unaligned-load
# -mavx256-split-unaligned-store -mfancy-math-387 -mfp-ret-in-387 -mfxsr
# -mglibc -mieee-fp -mlong-double-80 -mmmx -mno-sse4 -mpush-args -mred-zone
# -msse -msse2 -mstv -mtls-direct-seg-refs -mvzeroupper

	.text
	.p2align 4
	.globl	first_one_bit
	.type	first_one_bit, @function
first_one_bit:
.LFB11:
	.cfi_startproc
# test.c:6: 	asm volatile("bsfq %[data],%[result]": [result] "=r"(result): [data]   "r"(word));
#APP
# 6 "test.c" 1
	bsfq %rdi,%rax	# tmp86, result
# 0 "" 2
# test.c:8: }
#NO_APP
	ret	
	.cfi_endproc
.LFE11:
	.size	first_one_bit, .-first_one_bit
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%p\n"
	.text
	.p2align 4
	.globl	xor_assembly
	.type	xor_assembly, @function
xor_assembly:
.LFB12:
	.cfi_startproc
# test.c:17: 	asm volatile("movl %[var1], %[result]\n\txor %[var2], %[result]"
	movl	$24, %esi	#, tmp84
	movl	$30069, %edx	#, tmp85
#APP
# 17 "test.c" 1
	movl %esi, %esi	# tmp84, result
	xor %edx, %esi	# tmp85, result
# 0 "" 2
# test.c:22: 	printf("%p\n", result);
#NO_APP
	leaq	.LC0(%rip), %rdi	#,
	xorl	%eax, %eax	#
	jmp	printf@PLT	#
	.cfi_endproc
.LFE12:
	.size	xor_assembly, .-xor_assembly
	.p2align 4
	.globl	cpu
	.type	cpu, @function
cpu:
.LFB13:
	.cfi_startproc
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# test.c:28: 	asm volatile("movl $0, %%eax\n\tcpuid" 
#APP
# 28 "test.c" 1
	movl $0, %eax
	cpuid
# 0 "" 2
# test.c:31: }
#NO_APP
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE13:
	.size	cpu, .-cpu
	.p2align 4
	.globl	rdtsc
	.type	rdtsc, @function
rdtsc:
.LFB14:
	.cfi_startproc
# test.c:36: 	asm volatile("rdtscp"
#APP
# 36 "test.c" 1
	rdtscp	
# 0 "" 2
# test.c:39: 	return (rdx << 32) + rax;
#NO_APP
	salq	$32, %rdx	#, tmp91
# test.c:39: 	return (rdx << 32) + rax;
	addq	%rdx, %rax	# tmp91, tmp90
# test.c:40: }
	ret	
	.cfi_endproc
.LFE14:
	.size	rdtsc, .-rdtsc
	.section	.rodata.str1.1
.LC1:
	.string	"%lu %lu %lu\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB15:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# test.c:36: 	asm volatile("rdtscp"
#APP
# 36 "test.c" 1
	rdtscp	
# 0 "" 2
# test.c:39: 	return (rdx << 32) + rax;
#NO_APP
	salq	$32, %rdx	#, tmp97
# test.c:39: 	return (rdx << 32) + rax;
	leaq	(%rdx,%rax), %rbp	#, _14
# test.c:47: 	xor_assembly();
	call	xor_assembly	#
# test.c:36: 	asm volatile("rdtscp"
#APP
# 36 "test.c" 1
	rdtscp	
# 0 "" 2
# test.c:39: 	return (rdx << 32) + rax;
#NO_APP
	salq	$32, %rdx	#, tmp101
# test.c:50: 	printf("%lu %lu %lu\n", t0, t1, t1 - t0);
	movq	%rbp, %rsi	# _14,
	leaq	.LC1(%rip), %rdi	#,
# test.c:39: 	return (rdx << 32) + rax;
	addq	%rax, %rdx	# rax, _9
# test.c:50: 	printf("%lu %lu %lu\n", t0, t1, t1 - t0);
	xorl	%eax, %eax	#
	movq	%rdx, %rcx	# _9, tmp102
	subq	%rbp, %rcx	# _14, tmp102
	call	printf@PLT	#
# test.c:51: }
	xorl	%eax, %eax	#
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE15:
	.size	main, .-main
	.ident	"GCC: (GNU) 10.2.0"
	.section	.note.GNU-stack,"",@progbits
