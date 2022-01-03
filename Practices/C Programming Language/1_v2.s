	.file	"1_v2.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Value=%08X, Count=%d\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	call	__main
	movl	$760392405, %edx
	xorl	%r8d, %r8d
	movl	$31, %eax
	.p2align 4,,10
.L3:
	movl	%edx, %ecx
	shrl	%edx
	andl	$1, %ecx
	cmpl	$1, %ecx
	sbbl	$-1, %r8d
	subl	$1, %eax
	jne	.L3
	leaq	.LC0(%rip), %rcx
	movl	$1520784810, %edx
	call	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.text
	.p2align 4,,15
	.globl	Count1Bits
	.def	Count1Bits;	.scl	2;	.type	32;	.endef
	.seh_proc	Count1Bits
Count1Bits:
	.seh_endprologue
	movl	$32, %edx
	xorl	%eax, %eax
	.p2align 4,,10
.L10:
	movl	%ecx, %r8d
	shrl	%ecx
	andl	$1, %r8d
	cmpl	$1, %r8d
	sbbl	$-1, %eax
	subl	$1, %edx
	jne	.L10
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
