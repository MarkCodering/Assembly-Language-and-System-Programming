	.file	"1.c"
	.text
	.p2align 4,,15
	.globl	Count1Bits
	.def	Count1Bits;	.scl	2;	.type	32;	.endef
	.seh_proc	Count1Bits
Count1Bits:
	subq	$104, %rsp
	.seh_stackalloc	104
	movaps	%xmm6, 64(%rsp)
	.seh_savexmm	%xmm6, 64
	movaps	%xmm7, 80(%rsp)
	.seh_savexmm	%xmm7, 80
	.seh_endprologue
	movl	$2, %r8d
	leaq	32(%rsp), %rdx
	call	itoa
	movdqa	.LC0(%rip), %xmm1
	pxor	%xmm4, %xmm4
	movdqa	%xmm4, %xmm3
	movdqa	.LC1(%rip), %xmm5
	movdqa	%xmm1, %xmm2
	pcmpeqb	48(%rsp), %xmm1
	pcmpeqb	32(%rsp), %xmm2
	pand	%xmm5, %xmm1
	pcmpgtb	%xmm1, %xmm4
	pand	%xmm5, %xmm2
	pcmpgtb	%xmm2, %xmm3
	movdqa	%xmm2, %xmm0
	punpcklbw	%xmm3, %xmm0
	punpckhbw	%xmm3, %xmm2
	pxor	%xmm3, %xmm3
	movdqa	%xmm3, %xmm6
	pcmpgtw	%xmm0, %xmm6
	movdqa	%xmm0, %xmm7
	punpcklwd	%xmm6, %xmm7
	punpckhwd	%xmm6, %xmm0
	movdqa	%xmm3, %xmm6
	paddd	%xmm7, %xmm0
	pcmpgtw	%xmm2, %xmm6
	movdqa	%xmm2, %xmm7
	punpcklwd	%xmm6, %xmm7
	paddd	%xmm7, %xmm0
	punpckhwd	%xmm6, %xmm2
	movaps	80(%rsp), %xmm7
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	punpckhbw	%xmm4, %xmm1
	movaps	64(%rsp), %xmm6
	punpcklbw	%xmm4, %xmm2
	movdqa	%xmm3, %xmm4
	pcmpgtw	%xmm1, %xmm3
	movdqa	%xmm2, %xmm5
	pcmpgtw	%xmm2, %xmm4
	punpcklwd	%xmm4, %xmm5
	paddd	%xmm5, %xmm0
	punpckhwd	%xmm4, %xmm2
	paddd	%xmm2, %xmm0
	movdqa	%xmm1, %xmm2
	punpckhwd	%xmm3, %xmm1
	punpcklwd	%xmm3, %xmm2
	paddd	%xmm2, %xmm0
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$8, %xmm1
	paddd	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	psrldq	$4, %xmm1
	paddd	%xmm1, %xmm0
	movd	%xmm0, %eax
	addq	$104, %rsp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
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
	movl	$1520784810, %ecx
	call	Count1Bits
	movl	$1520784810, %edx
	leaq	.LC2(%rip), %rcx
	movl	%eax, %r8d
	call	printf
	xorl	%eax, %eax
	addq	$40, %rsp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
.LC0:
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.byte	49
	.align 16
.LC1:
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	itoa;	.scl	2;	.type	32;	.endef
	.def	printf;	.scl	2;	.type	32;	.endef
