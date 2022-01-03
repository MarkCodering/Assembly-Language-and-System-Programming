	.file	"7.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "P: %d\0"
.LC1:
	.ascii "N: %d\0"
	.text
	.p2align 4,,15
	.globl	ZeroCount
	.def	ZeroCount;	.scl	2;	.type	32;	.endef
	.seh_proc	ZeroCount
ZeroCount:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$40, %rsp
	.seh_stackalloc	40
	.seh_endprologue
	movl	%edx, %ebp
	movl	(%r8), %edx
	movq	%r9, %rdi
	movq	%rcx, %rbx
	leaq	.LC0(%rip), %rcx
	movq	%r8, %rsi
	call	printf
	movl	(%rdi), %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	testl	%ebp, %ebp
	jle	.L7
	leal	-1(%rbp), %eax
	movq	%rbx, %rcx
	leaq	4(%rbx,%rax,4), %rdx
	xorl	%eax, %eax
	jmp	.L6
	.p2align 4,,10
.L10:
	addl	$1, %eax
.L4:
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	je	.L1
.L6:
	movl	(%rcx), %r8d
	testl	%r8d, %r8d
	je	.L10
	jle	.L5
	addl	$1, (%rsi)
	addq	$4, %rcx
	cmpq	%rdx, %rcx
	jne	.L6
.L1:
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.p2align 4,,10
.L5:
	addl	$1, (%rdi)
	jmp	.L4
	.p2align 4,,10
.L7:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC3:
	.ascii "Zero = %d, Positive = %d, Negative = %d\12\0"
	.section	.text.startup,"x"
	.p2align 4,,15
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$88, %rsp
	.seh_stackalloc	88
	.seh_endprologue
	call	__main
	leaq	48(%rsp), %rcx
	movl	$7, %edx
	movdqa	.LC2(%rip), %xmm0
	leaq	44(%rsp), %r9
	movl	$0, 44(%rsp)
	movabsq	$21474835875, %rax
	leaq	40(%rsp), %r8
	movaps	%xmm0, 48(%rsp)
	movq	%rax, 64(%rsp)
	movl	$0, 72(%rsp)
	call	ZeroCount
	movl	44(%rsp), %r9d
	leaq	.LC3(%rip), %rcx
	movl	40(%rsp), %r8d
	movl	%eax, %edx
	call	printf
	xorl	%eax, %eax
	addq	$88, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC2:
	.long	7602
	.long	848
	.long	-2120
	.long	0
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	printf;	.scl	2;	.type	32;	.endef
