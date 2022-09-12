	.text
	.file	"bint64.ll"
	.globl	mclb_add1                       # -- Begin function mclb_add1
	.p2align	4, 0x90
	.type	mclb_add1,@function
mclb_add1:                              # @mclb_add1
# %bb.0:
	movq	(%rdx), %rcx
	xorl	%eax, %eax
	addq	(%rsi), %rcx
	setb	%al
	movq	%rcx, (%rdi)
	retq
.Lfunc_end0:
	.size	mclb_add1, .Lfunc_end0-mclb_add1
                                        # -- End function
	.globl	mclb_sub1                       # -- Begin function mclb_sub1
	.p2align	4, 0x90
	.type	mclb_sub1,@function
mclb_sub1:                              # @mclb_sub1
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	sbbq	%rax, %rax
	movq	%rcx, (%rdi)
	andl	$1, %eax
	retq
.Lfunc_end1:
	.size	mclb_sub1, .Lfunc_end1-mclb_sub1
                                        # -- End function
	.globl	mclb_addNF1                     # -- Begin function mclb_addNF1
	.p2align	4, 0x90
	.type	mclb_addNF1,@function
mclb_addNF1:                            # @mclb_addNF1
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, (%rdi)
	retq
.Lfunc_end2:
	.size	mclb_addNF1, .Lfunc_end2-mclb_addNF1
                                        # -- End function
	.globl	mclb_subNF1                     # -- Begin function mclb_subNF1
	.p2align	4, 0x90
	.type	mclb_subNF1,@function
mclb_subNF1:                            # @mclb_subNF1
# %bb.0:
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, (%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end3:
	.size	mclb_subNF1, .Lfunc_end3-mclb_subNF1
                                        # -- End function
	.globl	mclb_add2                       # -- Begin function mclb_add2
	.p2align	4, 0x90
	.type	mclb_add2,@function
mclb_add2:                              # @mclb_add2
# %bb.0:
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rdx
	adcq	8(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	retq
.Lfunc_end4:
	.size	mclb_add2, .Lfunc_end4-mclb_add2
                                        # -- End function
	.globl	mclb_sub2                       # -- Begin function mclb_sub2
	.p2align	4, 0x90
	.type	mclb_sub2,@function
mclb_sub2:                              # @mclb_sub2
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rsi
	sbbq	8(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%rcx, (%rdi)
	movq	%rsi, 8(%rdi)
	andl	$1, %eax
	retq
.Lfunc_end5:
	.size	mclb_sub2, .Lfunc_end5-mclb_sub2
                                        # -- End function
	.globl	mclb_addNF2                     # -- Begin function mclb_addNF2
	.p2align	4, 0x90
	.type	mclb_addNF2,@function
mclb_addNF2:                            # @mclb_addNF2
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	retq
.Lfunc_end6:
	.size	mclb_addNF2, .Lfunc_end6-mclb_addNF2
                                        # -- End function
	.globl	mclb_subNF2                     # -- Begin function mclb_subNF2
	.p2align	4, 0x90
	.type	mclb_subNF2,@function
mclb_subNF2:                            # @mclb_subNF2
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rcx, (%rdi)
	movq	%rax, 8(%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end7:
	.size	mclb_subNF2, .Lfunc_end7-mclb_subNF2
                                        # -- End function
	.globl	mclb_add3                       # -- Begin function mclb_add3
	.p2align	4, 0x90
	.type	mclb_add3,@function
mclb_add3:                              # @mclb_add3
# %bb.0:
	movq	16(%rdx), %r8
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rdx
	adcq	8(%rsi), %rdx
	adcq	16(%rsi), %r8
	setb	%al
	movzbl	%al, %eax
	movq	%rcx, (%rdi)
	movq	%rdx, 8(%rdi)
	movq	%r8, 16(%rdi)
	retq
.Lfunc_end8:
	.size	mclb_add3, .Lfunc_end8-mclb_add3
                                        # -- End function
	.globl	mclb_sub3                       # -- Begin function mclb_sub3
	.p2align	4, 0x90
	.type	mclb_sub3,@function
mclb_sub3:                              # @mclb_sub3
# %bb.0:
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rsi
	sbbq	16(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rsi, 16(%rdi)
	andl	$1, %eax
	retq
.Lfunc_end9:
	.size	mclb_sub3, .Lfunc_end9-mclb_sub3
                                        # -- End function
	.globl	mclb_addNF3                     # -- Begin function mclb_addNF3
	.p2align	4, 0x90
	.type	mclb_addNF3,@function
mclb_addNF3:                            # @mclb_addNF3
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rdx
	adcq	16(%rsi), %rdx
	movq	%rax, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	retq
.Lfunc_end10:
	.size	mclb_addNF3, .Lfunc_end10-mclb_addNF3
                                        # -- End function
	.globl	mclb_subNF3                     # -- Begin function mclb_subNF3
	.p2align	4, 0x90
	.type	mclb_subNF3,@function
mclb_subNF3:                            # @mclb_subNF3
# %bb.0:
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rax, 16(%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end11:
	.size	mclb_subNF3, .Lfunc_end11-mclb_subNF3
                                        # -- End function
	.globl	mclb_add4                       # -- Begin function mclb_add4
	.p2align	4, 0x90
	.type	mclb_add4,@function
mclb_add4:                              # @mclb_add4
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rdx, 24(%rdi)
	retq
.Lfunc_end12:
	.size	mclb_add4, .Lfunc_end12-mclb_add4
                                        # -- End function
	.globl	mclb_sub4                       # -- Begin function mclb_sub4
	.p2align	4, 0x90
	.type	mclb_sub4,@function
mclb_sub4:                              # @mclb_sub4
# %bb.0:
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	24(%rsi), %rsi
	sbbq	24(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rsi, 24(%rdi)
	andl	$1, %eax
	retq
.Lfunc_end13:
	.size	mclb_sub4, .Lfunc_end13-mclb_sub4
                                        # -- End function
	.globl	mclb_addNF4                     # -- Begin function mclb_addNF4
	.p2align	4, 0x90
	.type	mclb_addNF4,@function
mclb_addNF4:                            # @mclb_addNF4
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rdx, 24(%rdi)
	retq
.Lfunc_end14:
	.size	mclb_addNF4, .Lfunc_end14-mclb_addNF4
                                        # -- End function
	.globl	mclb_subNF4                     # -- Begin function mclb_subNF4
	.p2align	4, 0x90
	.type	mclb_subNF4,@function
mclb_subNF4:                            # @mclb_subNF4
# %bb.0:
	movq	24(%rsi), %rax
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rsi
	sbbq	16(%rdx), %rsi
	sbbq	24(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rsi, 16(%rdi)
	movq	%rax, 24(%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end15:
	.size	mclb_subNF4, .Lfunc_end15-mclb_subNF4
                                        # -- End function
	.globl	mclb_add5                       # -- Begin function mclb_add5
	.p2align	4, 0x90
	.type	mclb_add5,@function
mclb_add5:                              # @mclb_add5
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	32(%rdx), %rdx
	adcq	32(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rdx, 32(%rdi)
	retq
.Lfunc_end16:
	.size	mclb_add5, .Lfunc_end16-mclb_add5
                                        # -- End function
	.globl	mclb_sub5                       # -- Begin function mclb_sub5
	.p2align	4, 0x90
	.type	mclb_sub5,@function
mclb_sub5:                              # @mclb_sub5
# %bb.0:
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	32(%rsi), %rsi
	sbbq	32(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rsi, 32(%rdi)
	andl	$1, %eax
	retq
.Lfunc_end17:
	.size	mclb_sub5, .Lfunc_end17-mclb_sub5
                                        # -- End function
	.globl	mclb_addNF5                     # -- Begin function mclb_addNF5
	.p2align	4, 0x90
	.type	mclb_addNF5,@function
mclb_addNF5:                            # @mclb_addNF5
# %bb.0:
	movq	32(%rdx), %r8
	movq	(%rdx), %r9
	addq	(%rsi), %r9
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	adcq	32(%rsi), %r8
	movq	%r9, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%r8, 32(%rdi)
	retq
.Lfunc_end18:
	.size	mclb_addNF5, .Lfunc_end18-mclb_addNF5
                                        # -- End function
	.globl	mclb_subNF5                     # -- Begin function mclb_subNF5
	.p2align	4, 0x90
	.type	mclb_subNF5,@function
mclb_subNF5:                            # @mclb_subNF5
# %bb.0:
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rax, 32(%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end19:
	.size	mclb_subNF5, .Lfunc_end19-mclb_subNF5
                                        # -- End function
	.globl	mclb_add6                       # -- Begin function mclb_add6
	.p2align	4, 0x90
	.type	mclb_add6,@function
mclb_add6:                              # @mclb_add6
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rdx, 40(%rdi)
	retq
.Lfunc_end20:
	.size	mclb_add6, .Lfunc_end20-mclb_add6
                                        # -- End function
	.globl	mclb_sub6                       # -- Begin function mclb_sub6
	.p2align	4, 0x90
	.type	mclb_sub6,@function
mclb_sub6:                              # @mclb_sub6
# %bb.0:
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	40(%rsi), %rsi
	sbbq	40(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rsi, 40(%rdi)
	andl	$1, %eax
	retq
.Lfunc_end21:
	.size	mclb_sub6, .Lfunc_end21-mclb_sub6
                                        # -- End function
	.globl	mclb_addNF6                     # -- Begin function mclb_addNF6
	.p2align	4, 0x90
	.type	mclb_addNF6,@function
mclb_addNF6:                            # @mclb_addNF6
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rdx, 40(%rdi)
	retq
.Lfunc_end22:
	.size	mclb_addNF6, .Lfunc_end22-mclb_addNF6
                                        # -- End function
	.globl	mclb_subNF6                     # -- Begin function mclb_subNF6
	.p2align	4, 0x90
	.type	mclb_subNF6,@function
mclb_subNF6:                            # @mclb_subNF6
# %bb.0:
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rax, 40(%rdi)
	shrq	$63, %rax
	retq
.Lfunc_end23:
	.size	mclb_subNF6, .Lfunc_end23-mclb_subNF6
                                        # -- End function
	.globl	mclb_add7                       # -- Begin function mclb_add7
	.p2align	4, 0x90
	.type	mclb_add7,@function
mclb_add7:                              # @mclb_add7
# %bb.0:
	pushq	%rbx
	movq	48(%rdx), %r8
	movq	(%rdx), %r9
	addq	(%rsi), %r9
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	32(%rdx), %rbx
	adcq	32(%rsi), %rbx
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	adcq	48(%rsi), %r8
	setb	%al
	movzbl	%al, %eax
	movq	%r9, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rbx, 32(%rdi)
	movq	%rdx, 40(%rdi)
	movq	%r8, 48(%rdi)
	popq	%rbx
	retq
.Lfunc_end24:
	.size	mclb_add7, .Lfunc_end24-mclb_add7
                                        # -- End function
	.globl	mclb_sub7                       # -- Begin function mclb_sub7
	.p2align	4, 0x90
	.type	mclb_sub7,@function
mclb_sub7:                              # @mclb_sub7
# %bb.0:
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %rsi
	sbbq	48(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rsi, 48(%rdi)
	andl	$1, %eax
	popq	%rbx
	retq
.Lfunc_end25:
	.size	mclb_sub7, .Lfunc_end25-mclb_sub7
                                        # -- End function
	.globl	mclb_addNF7                     # -- Begin function mclb_addNF7
	.p2align	4, 0x90
	.type	mclb_addNF7,@function
mclb_addNF7:                            # @mclb_addNF7
# %bb.0:
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	48(%rdx), %rdx
	adcq	48(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rdx, 48(%rdi)
	retq
.Lfunc_end26:
	.size	mclb_addNF7, .Lfunc_end26-mclb_addNF7
                                        # -- End function
	.globl	mclb_subNF7                     # -- Begin function mclb_subNF7
	.p2align	4, 0x90
	.type	mclb_subNF7,@function
mclb_subNF7:                            # @mclb_subNF7
# %bb.0:
	pushq	%rbx
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rax, 48(%rdi)
	shrq	$63, %rax
	popq	%rbx
	retq
.Lfunc_end27:
	.size	mclb_subNF7, .Lfunc_end27-mclb_subNF7
                                        # -- End function
	.globl	mclb_add8                       # -- Begin function mclb_add8
	.p2align	4, 0x90
	.type	mclb_add8,@function
mclb_add8:                              # @mclb_add8
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rcx, 48(%rdi)
	movq	%rdx, 56(%rdi)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end28:
	.size	mclb_add8, .Lfunc_end28-mclb_add8
                                        # -- End function
	.globl	mclb_sub8                       # -- Begin function mclb_sub8
	.p2align	4, 0x90
	.type	mclb_sub8,@function
mclb_sub8:                              # @mclb_sub8
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	56(%rsi), %rsi
	sbbq	56(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rcx, 48(%rdi)
	movq	%rsi, 56(%rdi)
	andl	$1, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end29:
	.size	mclb_sub8, .Lfunc_end29-mclb_sub8
                                        # -- End function
	.globl	mclb_addNF8                     # -- Begin function mclb_addNF8
	.p2align	4, 0x90
	.type	mclb_addNF8,@function
mclb_addNF8:                            # @mclb_addNF8
# %bb.0:
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	48(%rdx), %rbx
	adcq	48(%rsi), %rbx
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%rdx, 56(%rdi)
	popq	%rbx
	retq
.Lfunc_end30:
	.size	mclb_addNF8, .Lfunc_end30-mclb_addNF8
                                        # -- End function
	.globl	mclb_subNF8                     # -- Begin function mclb_subNF8
	.p2align	4, 0x90
	.type	mclb_subNF8,@function
mclb_subNF8:                            # @mclb_subNF8
# %bb.0:
	pushq	%rbx
	movq	56(%rsi), %rax
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %rsi
	sbbq	48(%rdx), %rsi
	sbbq	56(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rsi, 48(%rdi)
	movq	%rax, 56(%rdi)
	shrq	$63, %rax
	popq	%rbx
	retq
.Lfunc_end31:
	.size	mclb_subNF8, .Lfunc_end31-mclb_subNF8
                                        # -- End function
	.globl	mclb_add9                       # -- Begin function mclb_add9
	.p2align	4, 0x90
	.type	mclb_add9,@function
mclb_add9:                              # @mclb_add9
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	56(%rdx), %rbx
	adcq	56(%rsi), %rbx
	movq	64(%rdx), %rdx
	adcq	64(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%rcx, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rdx, 64(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end32:
	.size	mclb_add9, .Lfunc_end32-mclb_add9
                                        # -- End function
	.globl	mclb_sub9                       # -- Begin function mclb_sub9
	.p2align	4, 0x90
	.type	mclb_sub9,@function
mclb_sub9:                              # @mclb_sub9
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	56(%rsi), %rbx
	sbbq	56(%rdx), %rbx
	movq	64(%rsi), %rsi
	sbbq	64(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%rcx, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rsi, 64(%rdi)
	andl	$1, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end33:
	.size	mclb_sub9, .Lfunc_end33-mclb_sub9
                                        # -- End function
	.globl	mclb_addNF9                     # -- Begin function mclb_addNF9
	.p2align	4, 0x90
	.type	mclb_addNF9,@function
mclb_addNF9:                            # @mclb_addNF9
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	64(%rdx), %r8
	movq	(%rdx), %r9
	addq	(%rsi), %r9
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	adcq	64(%rsi), %r8
	movq	%r9, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, 56(%rdi)
	movq	%r8, 64(%rdi)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end34:
	.size	mclb_addNF9, .Lfunc_end34-mclb_addNF9
                                        # -- End function
	.globl	mclb_subNF9                     # -- Begin function mclb_subNF9
	.p2align	4, 0x90
	.type	mclb_subNF9,@function
mclb_subNF9:                            # @mclb_subNF9
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	56(%rsi), %rbx
	sbbq	56(%rdx), %rbx
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%rcx, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rax, 64(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end35:
	.size	mclb_subNF9, .Lfunc_end35-mclb_subNF9
                                        # -- End function
	.globl	mclb_add10                      # -- Begin function mclb_add10
	.p2align	4, 0x90
	.type	mclb_add10,@function
mclb_add10:                             # @mclb_add10
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %rbx
	adcq	56(%rsi), %rbx
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rdx, 72(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end36:
	.size	mclb_add10, .Lfunc_end36-mclb_add10
                                        # -- End function
	.globl	mclb_sub10                      # -- Begin function mclb_sub10
	.p2align	4, 0x90
	.type	mclb_sub10,@function
mclb_sub10:                             # @mclb_sub10
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %rbx
	sbbq	56(%rdx), %rbx
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rsi
	sbbq	72(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rsi, 72(%rdi)
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end37:
	.size	mclb_sub10, .Lfunc_end37-mclb_sub10
                                        # -- End function
	.globl	mclb_addNF10                    # -- Begin function mclb_addNF10
	.p2align	4, 0x90
	.type	mclb_addNF10,@function
mclb_addNF10:                           # @mclb_addNF10
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %rbx
	adcq	48(%rsi), %rbx
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%rax, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rdx, 72(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end38:
	.size	mclb_addNF10, .Lfunc_end38-mclb_addNF10
                                        # -- End function
	.globl	mclb_subNF10                    # -- Begin function mclb_subNF10
	.p2align	4, 0x90
	.type	mclb_subNF10,@function
mclb_subNF10:                           # @mclb_subNF10
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %rbx
	sbbq	56(%rdx), %rbx
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rax, 72(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end39:
	.size	mclb_subNF10, .Lfunc_end39-mclb_subNF10
                                        # -- End function
	.globl	mclb_add11                      # -- Begin function mclb_add11
	.p2align	4, 0x90
	.type	mclb_add11,@function
mclb_add11:                             # @mclb_add11
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	80(%rdx), %r8
	movq	(%rdx), %r9
	addq	(%rsi), %r9
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	64(%rdx), %rbx
	adcq	64(%rsi), %rbx
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	adcq	80(%rsi), %r8
	setb	%al
	movzbl	%al, %eax
	movq	%r9, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%rcx, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rdx, 72(%rdi)
	movq	%r8, 80(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end40:
	.size	mclb_add11, .Lfunc_end40-mclb_add11
                                        # -- End function
	.globl	mclb_sub11                      # -- Begin function mclb_sub11
	.p2align	4, 0x90
	.type	mclb_sub11,@function
mclb_sub11:                             # @mclb_sub11
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rsi
	sbbq	80(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rsi, 80(%rdi)
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end41:
	.size	mclb_sub11, .Lfunc_end41-mclb_sub11
                                        # -- End function
	.globl	mclb_addNF11                    # -- Begin function mclb_addNF11
	.p2align	4, 0x90
	.type	mclb_addNF11,@function
mclb_addNF11:                           # @mclb_addNF11
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rdx
	adcq	80(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rax, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rdx, 80(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end42:
	.size	mclb_addNF11, .Lfunc_end42-mclb_addNF11
                                        # -- End function
	.globl	mclb_subNF11                    # -- Begin function mclb_subNF11
	.p2align	4, 0x90
	.type	mclb_subNF11,@function
mclb_subNF11:                           # @mclb_subNF11
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rax, 80(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end43:
	.size	mclb_subNF11, .Lfunc_end43-mclb_subNF11
                                        # -- End function
	.globl	mclb_add12                      # -- Begin function mclb_add12
	.p2align	4, 0x90
	.type	mclb_add12,@function
mclb_add12:                             # @mclb_add12
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	setb	%al
	movzbl	%al, %eax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rdx, 88(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	mclb_add12, .Lfunc_end44-mclb_add12
                                        # -- End function
	.globl	mclb_sub12                      # -- Begin function mclb_sub12
	.p2align	4, 0x90
	.type	mclb_sub12,@function
mclb_sub12:                             # @mclb_sub12
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %r8
	xorl	%eax, %eax
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %rsi
	sbbq	88(%rdx), %rsi
	sbbq	%rax, %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rsi, 88(%rdi)
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end45:
	.size	mclb_sub12, .Lfunc_end45-mclb_sub12
                                        # -- End function
	.globl	mclb_addNF12                    # -- Begin function mclb_addNF12
	.p2align	4, 0x90
	.type	mclb_addNF12,@function
mclb_addNF12:                           # @mclb_addNF12
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %r8
	addq	(%rsi), %r8
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rax, 80(%rdi)
	movq	%rdx, 88(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end46:
	.size	mclb_addNF12, .Lfunc_end46-mclb_addNF12
                                        # -- End function
	.globl	mclb_subNF12                    # -- Begin function mclb_subNF12
	.p2align	4, 0x90
	.type	mclb_subNF12,@function
mclb_subNF12:                           # @mclb_subNF12
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %r8
	subq	(%rdx), %r8
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rsi
	sbbq	80(%rdx), %rsi
	sbbq	88(%rdx), %rax
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rsi, 80(%rdi)
	movq	%rax, 88(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end47:
	.size	mclb_subNF12, .Lfunc_end47-mclb_subNF12
                                        # -- End function
	.globl	mclb_add13                      # -- Begin function mclb_add13
	.p2align	4, 0x90
	.type	mclb_add13,@function
mclb_add13:                             # @mclb_add13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	96(%rdx), %rdx
	adcq	96(%rsi), %rdx
	setb	%cl
	movzbl	%cl, %esi
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rax, 88(%rdi)
	movq	%rdx, 96(%rdi)
	movq	%rsi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end48:
	.size	mclb_add13, .Lfunc_end48-mclb_add13
                                        # -- End function
	.globl	mclb_sub13                      # -- Begin function mclb_sub13
	.p2align	4, 0x90
	.type	mclb_sub13,@function
mclb_sub13:                             # @mclb_sub13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	xorl	%r8d, %r8d
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	96(%rsi), %rsi
	sbbq	96(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rax, 88(%rdi)
	movq	%rsi, 96(%rdi)
	sbbq	%r8, %r8
	andl	$1, %r8d
	movq	%r8, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	mclb_sub13, .Lfunc_end49-mclb_sub13
                                        # -- End function
	.globl	mclb_addNF13                    # -- Begin function mclb_addNF13
	.p2align	4, 0x90
	.type	mclb_addNF13,@function
mclb_addNF13:                           # @mclb_addNF13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	96(%rdx), %r8
	movq	(%rdx), %r9
	addq	(%rsi), %r9
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	64(%rdx), %rbx
	adcq	64(%rsi), %rbx
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	adcq	96(%rsi), %r8
	movq	%r9, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%rcx, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rax, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movq	%r8, 96(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end50:
	.size	mclb_addNF13, .Lfunc_end50-mclb_addNF13
                                        # -- End function
	.globl	mclb_subNF13                    # -- Begin function mclb_subNF13
	.p2align	4, 0x90
	.type	mclb_subNF13,@function
mclb_subNF13:                           # @mclb_subNF13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r8
	sbbq	64(%rdx), %r8
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %rcx
	sbbq	88(%rdx), %rcx
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rcx, 88(%rdi)
	movq	%rax, 96(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	mclb_subNF13, .Lfunc_end51-mclb_subNF13
                                        # -- End function
	.globl	mclb_add14                      # -- Begin function mclb_add14
	.p2align	4, 0x90
	.type	mclb_add14,@function
mclb_add14:                             # @mclb_add14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rcx, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rdx, 104(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	mclb_add14, .Lfunc_end52-mclb_add14
                                        # -- End function
	.globl	mclb_sub14                      # -- Begin function mclb_sub14
	.p2align	4, 0x90
	.type	mclb_sub14,@function
mclb_sub14:                             # @mclb_sub14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	80(%rsi), %rax
	movq	(%rsi), %rcx
	xorl	%r9d, %r9d
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %r10
	sbbq	8(%rdx), %r10
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r8
	sbbq	56(%rdx), %r8
	movq	64(%rsi), %rbx
	sbbq	64(%rdx), %rbx
	movq	72(%rsi), %rbp
	sbbq	72(%rdx), %rbp
	sbbq	80(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	104(%rsi), %rcx
	movq	96(%rsi), %rsi
	sbbq	96(%rdx), %rsi
	sbbq	104(%rdx), %rcx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r8, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	%rax, 88(%rdi)
	movq	%rsi, 96(%rdi)
	movq	%rcx, 104(%rdi)
	sbbq	%r9, %r9
	andl	$1, %r9d
	movq	%r9, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end53:
	.size	mclb_sub14, .Lfunc_end53-mclb_sub14
                                        # -- End function
	.globl	mclb_addNF14                    # -- Begin function mclb_addNF14
	.p2align	4, 0x90
	.type	mclb_addNF14,@function
mclb_addNF14:                           # @mclb_addNF14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rcx, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rdx, 104(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	mclb_addNF14, .Lfunc_end54-mclb_addNF14
                                        # -- End function
	.globl	mclb_subNF14                    # -- Begin function mclb_subNF14
	.p2align	4, 0x90
	.type	mclb_subNF14,@function
mclb_subNF14:                           # @mclb_subNF14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r8
	sbbq	88(%rdx), %r8
	movq	96(%rsi), %rcx
	sbbq	96(%rdx), %rcx
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r8, 88(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rax, 104(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end55:
	.size	mclb_subNF14, .Lfunc_end55-mclb_subNF14
                                        # -- End function
	.globl	mclb_add15                      # -- Begin function mclb_add15
	.p2align	4, 0x90
	.type	mclb_add15,@function
mclb_add15:                             # @mclb_add15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r9
	adcq	56(%rsi), %r9
	movq	64(%rdx), %rbx
	adcq	64(%rsi), %rbx
	movq	72(%rdx), %r8
	adcq	72(%rsi), %r8
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	adcq	88(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	112(%rdx), %rcx
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	adcq	112(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%r10, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r9, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rdx, 104(%rdi)
	movq	%rcx, 112(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	mclb_add15, .Lfunc_end56-mclb_add15
                                        # -- End function
	.globl	mclb_sub15                      # -- Begin function mclb_sub15
	.p2align	4, 0x90
	.type	mclb_sub15,@function
mclb_sub15:                             # @mclb_sub15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	xorl	%r10d, %r10d
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r8
	sbbq	88(%rdx), %r8
	movq	96(%rsi), %rcx
	sbbq	96(%rdx), %rcx
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	112(%rsi), %rsi
	sbbq	112(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r8, 88(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rax, 104(%rdi)
	movq	%rsi, 112(%rdi)
	sbbq	%r10, %r10
	andl	$1, %r10d
	movq	%r10, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	mclb_sub15, .Lfunc_end57-mclb_sub15
                                        # -- End function
	.globl	mclb_addNF15                    # -- Begin function mclb_addNF15
	.p2align	4, 0x90
	.type	mclb_addNF15,@function
mclb_addNF15:                           # @mclb_addNF15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r9
	adcq	64(%rsi), %r9
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r8
	adcq	80(%rsi), %r8
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %rcx
	adcq	96(%rsi), %rcx
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	112(%rdx), %rdx
	adcq	112(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r8, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rax, 104(%rdi)
	movq	%rdx, 112(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	mclb_addNF15, .Lfunc_end58-mclb_addNF15
                                        # -- End function
	.globl	mclb_subNF15                    # -- Begin function mclb_subNF15
	.p2align	4, 0x90
	.type	mclb_subNF15,@function
mclb_subNF15:                           # @mclb_subNF15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r10
	sbbq	64(%rdx), %r10
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r9
	sbbq	88(%rdx), %r9
	movq	96(%rsi), %r8
	sbbq	96(%rdx), %r8
	movq	104(%rsi), %rcx
	sbbq	104(%rdx), %rcx
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r9, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rax, 112(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	mclb_subNF15, .Lfunc_end59-mclb_subNF15
                                        # -- End function
	.globl	mclb_add16                      # -- Begin function mclb_add16
	.p2align	4, 0x90
	.type	mclb_add16,@function
mclb_add16:                             # @mclb_add16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r8
	adcq	96(%rsi), %r8
	movq	104(%rdx), %rcx
	adcq	104(%rsi), %rcx
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	120(%rdx), %rdx
	adcq	120(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r9, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rax, 112(%rdi)
	movq	%rdx, 120(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	mclb_add16, .Lfunc_end60-mclb_add16
                                        # -- End function
	.globl	mclb_sub16                      # -- Begin function mclb_sub16
	.p2align	4, 0x90
	.type	mclb_sub16,@function
mclb_sub16:                             # @mclb_sub16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	xorl	%r11d, %r11d
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r10
	sbbq	64(%rdx), %r10
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r9
	sbbq	88(%rdx), %r9
	movq	96(%rsi), %r8
	sbbq	96(%rdx), %r8
	movq	104(%rsi), %rcx
	sbbq	104(%rdx), %rcx
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	120(%rsi), %rsi
	sbbq	120(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r9, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rax, 112(%rdi)
	movq	%rsi, 120(%rdi)
	sbbq	%r11, %r11
	andl	$1, %r11d
	movq	%r11, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	mclb_sub16, .Lfunc_end61-mclb_sub16
                                        # -- End function
	.globl	mclb_addNF16                    # -- Begin function mclb_addNF16
	.p2align	4, 0x90
	.type	mclb_addNF16,@function
mclb_addNF16:                           # @mclb_addNF16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r8
	adcq	96(%rsi), %r8
	movq	104(%rdx), %rcx
	adcq	104(%rsi), %rcx
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	120(%rdx), %rdx
	adcq	120(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r9, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rax, 112(%rdi)
	movq	%rdx, 120(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	mclb_addNF16, .Lfunc_end62-mclb_addNF16
                                        # -- End function
	.globl	mclb_subNF16                    # -- Begin function mclb_subNF16
	.p2align	4, 0x90
	.type	mclb_subNF16,@function
mclb_subNF16:                           # @mclb_subNF16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r10
	sbbq	56(%rdx), %r10
	movq	64(%rsi), %rbx
	sbbq	64(%rdx), %rbx
	movq	72(%rsi), %rbp
	sbbq	72(%rdx), %rbp
	movq	80(%rsi), %r9
	sbbq	80(%rdx), %r9
	sbbq	88(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %r8
	sbbq	96(%rdx), %r8
	movq	104(%rsi), %rcx
	sbbq	104(%rdx), %rcx
	movq	120(%rsi), %rax
	movq	112(%rsi), %rsi
	sbbq	112(%rdx), %rsi
	sbbq	120(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r10, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	%r9, 80(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	%r8, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movq	%rsi, 112(%rdi)
	movq	%rax, 120(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	mclb_subNF16, .Lfunc_end63-mclb_subNF16
                                        # -- End function
	.globl	mclb_add17                      # -- Begin function mclb_add17
	.p2align	4, 0x90
	.type	mclb_add17,@function
mclb_add17:                             # @mclb_add17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r11
	adcq	64(%rsi), %r11
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r10
	adcq	80(%rsi), %r10
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r9
	adcq	96(%rsi), %r9
	movq	104(%rdx), %r8
	adcq	104(%rsi), %r8
	movq	112(%rdx), %rcx
	adcq	112(%rsi), %rcx
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	128(%rdx), %rdx
	adcq	128(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r11, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r10, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r9, 96(%rdi)
	movq	%r8, 104(%rdi)
	movq	%rcx, 112(%rdi)
	movq	%rax, 120(%rdi)
	movq	%rdx, 128(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	mclb_add17, .Lfunc_end64-mclb_add17
                                        # -- End function
	.globl	mclb_sub17                      # -- Begin function mclb_sub17
	.p2align	4, 0x90
	.type	mclb_sub17,@function
mclb_sub17:                             # @mclb_sub17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	xorl	%r14d, %r14d
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r10
	sbbq	88(%rdx), %r10
	movq	96(%rsi), %r9
	sbbq	96(%rdx), %r9
	movq	104(%rsi), %r8
	sbbq	104(%rdx), %r8
	movq	112(%rsi), %rcx
	sbbq	112(%rdx), %rcx
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	128(%rsi), %rsi
	sbbq	128(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r11, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r10, 88(%rdi)
	movq	%r9, 96(%rdi)
	movq	%r8, 104(%rdi)
	movq	%rcx, 112(%rdi)
	movq	%rax, 120(%rdi)
	movq	%rsi, 128(%rdi)
	sbbq	%r14, %r14
	andl	$1, %r14d
	movq	%r14, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end65:
	.size	mclb_sub17, .Lfunc_end65-mclb_sub17
                                        # -- End function
	.globl	mclb_addNF17                    # -- Begin function mclb_addNF17
	.p2align	4, 0x90
	.type	mclb_addNF17,@function
mclb_addNF17:                           # @mclb_addNF17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r11
	adcq	56(%rsi), %r11
	movq	64(%rdx), %rbx
	adcq	64(%rsi), %rbx
	movq	72(%rdx), %r10
	adcq	72(%rsi), %r10
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	adcq	88(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %r9
	adcq	96(%rsi), %r9
	movq	104(%rdx), %r8
	adcq	104(%rsi), %r8
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	128(%rdx), %rcx
	movq	120(%rdx), %rdx
	adcq	120(%rsi), %rdx
	adcq	128(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r11, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%r10, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%r9, 96(%rdi)
	movq	%r8, 104(%rdi)
	movq	%rax, 112(%rdi)
	movq	%rdx, 120(%rdi)
	movq	%rcx, 128(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	mclb_addNF17, .Lfunc_end66-mclb_addNF17
                                        # -- End function
	.globl	mclb_subNF17                    # -- Begin function mclb_subNF17
	.p2align	4, 0x90
	.type	mclb_subNF17,@function
mclb_subNF17:                           # @mclb_subNF17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r14
	sbbq	64(%rdx), %r14
	movq	72(%rsi), %rbx
	sbbq	72(%rdx), %rbx
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r11
	sbbq	88(%rdx), %r11
	movq	96(%rsi), %r10
	sbbq	96(%rdx), %r10
	movq	104(%rsi), %r9
	sbbq	104(%rdx), %r9
	movq	112(%rsi), %r8
	sbbq	112(%rdx), %r8
	movq	120(%rsi), %rcx
	sbbq	120(%rdx), %rcx
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r14, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r11, 88(%rdi)
	movq	%r10, 96(%rdi)
	movq	%r9, 104(%rdi)
	movq	%r8, 112(%rdi)
	movq	%rcx, 120(%rdi)
	movq	%rax, 128(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end67:
	.size	mclb_subNF17, .Lfunc_end67-mclb_subNF17
                                        # -- End function
	.globl	mclb_add18                      # -- Begin function mclb_add18
	.p2align	4, 0x90
	.type	mclb_add18,@function
mclb_add18:                             # @mclb_add18
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r11
	adcq	80(%rsi), %r11
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r10
	adcq	96(%rsi), %r10
	movq	104(%rdx), %r9
	adcq	104(%rsi), %r9
	movq	112(%rdx), %r8
	adcq	112(%rsi), %r8
	movq	120(%rdx), %rcx
	adcq	120(%rsi), %rcx
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	136(%rdx), %rdx
	adcq	136(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r14, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r11, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r10, 96(%rdi)
	movq	%r9, 104(%rdi)
	movq	%r8, 112(%rdi)
	movq	%rcx, 120(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rdx, 136(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end68:
	.size	mclb_add18, .Lfunc_end68-mclb_add18
                                        # -- End function
	.globl	mclb_sub18                      # -- Begin function mclb_sub18
	.p2align	4, 0x90
	.type	mclb_sub18,@function
mclb_sub18:                             # @mclb_sub18
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	80(%rsi), %rax
	movq	(%rsi), %rcx
	xorl	%r15d, %r15d
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %rbx
	sbbq	64(%rdx), %rbx
	movq	72(%rsi), %rbp
	sbbq	72(%rdx), %rbp
	sbbq	80(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %r11
	sbbq	88(%rdx), %r11
	movq	96(%rsi), %r10
	sbbq	96(%rdx), %r10
	movq	104(%rsi), %r9
	sbbq	104(%rdx), %r9
	movq	112(%rsi), %r8
	sbbq	112(%rdx), %r8
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	136(%rsi), %rcx
	movq	128(%rsi), %rsi
	sbbq	128(%rdx), %rsi
	sbbq	136(%rdx), %rcx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r14, 56(%rdi)
	movq	%rbx, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	%r11, 88(%rdi)
	movq	%r10, 96(%rdi)
	movq	%r9, 104(%rdi)
	movq	%r8, 112(%rdi)
	movq	%rax, 120(%rdi)
	movq	%rsi, 128(%rdi)
	movq	%rcx, 136(%rdi)
	sbbq	%r15, %r15
	andl	$1, %r15d
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end69:
	.size	mclb_sub18, .Lfunc_end69-mclb_sub18
                                        # -- End function
	.globl	mclb_addNF18                    # -- Begin function mclb_addNF18
	.p2align	4, 0x90
	.type	mclb_addNF18,@function
mclb_addNF18:                           # @mclb_addNF18
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %r11
	adcq	80(%rsi), %r11
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r10
	adcq	96(%rsi), %r10
	movq	104(%rdx), %r9
	adcq	104(%rsi), %r9
	movq	112(%rdx), %r8
	adcq	112(%rsi), %r8
	movq	120(%rdx), %rcx
	adcq	120(%rsi), %rcx
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	136(%rdx), %rdx
	adcq	136(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r14, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%r11, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r10, 96(%rdi)
	movq	%r9, 104(%rdi)
	movq	%r8, 112(%rdi)
	movq	%rcx, 120(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rdx, 136(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end70:
	.size	mclb_addNF18, .Lfunc_end70-mclb_addNF18
                                        # -- End function
	.globl	mclb_subNF18                    # -- Begin function mclb_subNF18
	.p2align	4, 0x90
	.type	mclb_subNF18,@function
mclb_subNF18:                           # @mclb_subNF18
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %rbx
	sbbq	88(%rdx), %rbx
	movq	96(%rsi), %r11
	sbbq	96(%rdx), %r11
	movq	104(%rsi), %r10
	sbbq	104(%rdx), %r10
	movq	112(%rsi), %r9
	sbbq	112(%rdx), %r9
	movq	120(%rsi), %r8
	sbbq	120(%rdx), %r8
	movq	128(%rsi), %rcx
	sbbq	128(%rdx), %rcx
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r15, 64(%rdi)
	movq	%r14, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rbx, 88(%rdi)
	movq	%r11, 96(%rdi)
	movq	%r10, 104(%rdi)
	movq	%r9, 112(%rdi)
	movq	%r8, 120(%rdi)
	movq	%rcx, 128(%rdi)
	movq	%rax, 136(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end71:
	.size	mclb_subNF18, .Lfunc_end71-mclb_subNF18
                                        # -- End function
	.globl	mclb_add19                      # -- Begin function mclb_add19
	.p2align	4, 0x90
	.type	mclb_add19,@function
mclb_add19:                             # @mclb_add19
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r15
	adcq	56(%rsi), %r15
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %rbx
	adcq	72(%rsi), %rbx
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	adcq	88(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %r11
	adcq	96(%rsi), %r11
	movq	104(%rdx), %r10
	adcq	104(%rsi), %r10
	movq	112(%rdx), %r9
	adcq	112(%rsi), %r9
	movq	120(%rdx), %r8
	adcq	120(%rsi), %r8
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	144(%rdx), %rcx
	movq	136(%rdx), %rdx
	adcq	136(%rsi), %rdx
	adcq	144(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r15, 56(%rdi)
	movq	%r14, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%r11, 96(%rdi)
	movq	%r10, 104(%rdi)
	movq	%r9, 112(%rdi)
	movq	%r8, 120(%rdi)
	movq	%rax, 128(%rdi)
	movq	%rdx, 136(%rdi)
	movq	%rcx, 144(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end72:
	.size	mclb_add19, .Lfunc_end72-mclb_add19
                                        # -- End function
	.globl	mclb_sub19                      # -- Begin function mclb_sub19
	.p2align	4, 0x90
	.type	mclb_sub19,@function
mclb_sub19:                             # @mclb_sub19
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	xorl	%r12d, %r12d
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %rbx
	sbbq	88(%rdx), %rbx
	movq	96(%rsi), %r11
	sbbq	96(%rdx), %r11
	movq	104(%rsi), %r10
	sbbq	104(%rdx), %r10
	movq	112(%rsi), %r9
	sbbq	112(%rdx), %r9
	movq	120(%rsi), %r8
	sbbq	120(%rdx), %r8
	movq	128(%rsi), %rcx
	sbbq	128(%rdx), %rcx
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	144(%rsi), %rsi
	sbbq	144(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r15, 64(%rdi)
	movq	%r14, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%rbx, 88(%rdi)
	movq	%r11, 96(%rdi)
	movq	%r10, 104(%rdi)
	movq	%r9, 112(%rdi)
	movq	%r8, 120(%rdi)
	movq	%rcx, 128(%rdi)
	movq	%rax, 136(%rdi)
	movq	%rsi, 144(%rdi)
	sbbq	%r12, %r12
	andl	$1, %r12d
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end73:
	.size	mclb_sub19, .Lfunc_end73-mclb_sub19
                                        # -- End function
	.globl	mclb_addNF19                    # -- Begin function mclb_addNF19
	.p2align	4, 0x90
	.type	mclb_addNF19,@function
mclb_addNF19:                           # @mclb_addNF19
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r15
	adcq	64(%rsi), %r15
	movq	72(%rdx), %r14
	adcq	72(%rsi), %r14
	movq	80(%rdx), %rbx
	adcq	80(%rsi), %rbx
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r11
	adcq	96(%rsi), %r11
	movq	104(%rdx), %r10
	adcq	104(%rsi), %r10
	movq	112(%rdx), %r9
	adcq	112(%rsi), %r9
	movq	120(%rdx), %r8
	adcq	120(%rsi), %r8
	movq	128(%rdx), %rcx
	adcq	128(%rsi), %rcx
	movq	136(%rdx), %rax
	adcq	136(%rsi), %rax
	movq	144(%rdx), %rdx
	adcq	144(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r15, 64(%rdi)
	movq	%r14, 72(%rdi)
	movq	%rbx, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r11, 96(%rdi)
	movq	%r10, 104(%rdi)
	movq	%r9, 112(%rdi)
	movq	%r8, 120(%rdi)
	movq	%rcx, 128(%rdi)
	movq	%rax, 136(%rdi)
	movq	%rdx, 144(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end74:
	.size	mclb_addNF19, .Lfunc_end74-mclb_addNF19
                                        # -- End function
	.globl	mclb_subNF19                    # -- Begin function mclb_subNF19
	.p2align	4, 0x90
	.type	mclb_subNF19,@function
mclb_subNF19:                           # @mclb_subNF19
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r12
	sbbq	64(%rdx), %r12
	movq	72(%rsi), %r15
	sbbq	72(%rdx), %r15
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r14
	sbbq	88(%rdx), %r14
	movq	96(%rsi), %rbx
	sbbq	96(%rdx), %rbx
	movq	104(%rsi), %r11
	sbbq	104(%rdx), %r11
	movq	112(%rsi), %r10
	sbbq	112(%rdx), %r10
	movq	120(%rsi), %r9
	sbbq	120(%rdx), %r9
	movq	128(%rsi), %r8
	sbbq	128(%rdx), %r8
	movq	136(%rsi), %rcx
	sbbq	136(%rdx), %rcx
	movq	144(%rsi), %rax
	sbbq	144(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%r15, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r14, 88(%rdi)
	movq	%rbx, 96(%rdi)
	movq	%r11, 104(%rdi)
	movq	%r10, 112(%rdi)
	movq	%r9, 120(%rdi)
	movq	%r8, 128(%rdi)
	movq	%rcx, 136(%rdi)
	movq	%rax, 144(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end75:
	.size	mclb_subNF19, .Lfunc_end75-mclb_subNF19
                                        # -- End function
	.globl	mclb_add20                      # -- Begin function mclb_add20
	.p2align	4, 0x90
	.type	mclb_add20,@function
mclb_add20:                             # @mclb_add20
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %rbx
	adcq	96(%rsi), %rbx
	movq	104(%rdx), %r11
	adcq	104(%rsi), %r11
	movq	112(%rdx), %r10
	adcq	112(%rsi), %r10
	movq	120(%rdx), %r9
	adcq	120(%rsi), %r9
	movq	128(%rdx), %r8
	adcq	128(%rsi), %r8
	movq	136(%rdx), %rcx
	adcq	136(%rsi), %rcx
	movq	144(%rdx), %rax
	adcq	144(%rsi), %rax
	movq	152(%rdx), %rdx
	adcq	152(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%r15, 72(%rdi)
	movq	%r14, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%rbx, 96(%rdi)
	movq	%r11, 104(%rdi)
	movq	%r10, 112(%rdi)
	movq	%r9, 120(%rdi)
	movq	%r8, 128(%rdi)
	movq	%rcx, 136(%rdi)
	movq	%rax, 144(%rdi)
	movq	%rdx, 152(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end76:
	.size	mclb_add20, .Lfunc_end76-mclb_add20
                                        # -- End function
	.globl	mclb_sub20                      # -- Begin function mclb_sub20
	.p2align	4, 0x90
	.type	mclb_sub20,@function
mclb_sub20:                             # @mclb_sub20
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r12
	sbbq	64(%rdx), %r12
	movq	72(%rsi), %r15
	sbbq	72(%rdx), %r15
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r14
	sbbq	88(%rdx), %r14
	movq	96(%rsi), %rbx
	sbbq	96(%rdx), %rbx
	movq	104(%rsi), %r11
	sbbq	104(%rdx), %r11
	movq	112(%rsi), %r10
	sbbq	112(%rdx), %r10
	movq	120(%rsi), %r9
	sbbq	120(%rdx), %r9
	movq	128(%rsi), %r8
	sbbq	128(%rdx), %r8
	movq	136(%rsi), %rcx
	sbbq	136(%rdx), %rcx
	movq	144(%rsi), %rax
	sbbq	144(%rdx), %rax
	movq	152(%rsi), %rsi
	sbbq	152(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%r15, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r14, 88(%rdi)
	movq	%rbx, 96(%rdi)
	movq	%r11, 104(%rdi)
	movq	%r10, 112(%rdi)
	movq	%r9, 120(%rdi)
	movq	%r8, 128(%rdi)
	movq	%rcx, 136(%rdi)
	movq	%rax, 144(%rdi)
	movq	%rsi, 152(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end77:
	.size	mclb_sub20, .Lfunc_end77-mclb_sub20
                                        # -- End function
	.globl	mclb_addNF20                    # -- Begin function mclb_addNF20
	.p2align	4, 0x90
	.type	mclb_addNF20,@function
mclb_addNF20:                           # @mclb_addNF20
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %rbx
	adcq	96(%rsi), %rbx
	movq	104(%rdx), %r11
	adcq	104(%rsi), %r11
	movq	112(%rdx), %r10
	adcq	112(%rsi), %r10
	movq	120(%rdx), %r9
	adcq	120(%rsi), %r9
	movq	128(%rdx), %r8
	adcq	128(%rsi), %r8
	movq	136(%rdx), %rcx
	adcq	136(%rsi), %rcx
	movq	144(%rdx), %rax
	adcq	144(%rsi), %rax
	movq	152(%rdx), %rdx
	adcq	152(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%r15, 72(%rdi)
	movq	%r14, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%rbx, 96(%rdi)
	movq	%r11, 104(%rdi)
	movq	%r10, 112(%rdi)
	movq	%r9, 120(%rdi)
	movq	%r8, 128(%rdi)
	movq	%rcx, 136(%rdi)
	movq	%rax, 144(%rdi)
	movq	%rdx, 152(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	mclb_addNF20, .Lfunc_end78-mclb_addNF20
                                        # -- End function
	.globl	mclb_subNF20                    # -- Begin function mclb_subNF20
	.p2align	4, 0x90
	.type	mclb_subNF20,@function
mclb_subNF20:                           # @mclb_subNF20
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %rbp
	sbbq	72(%rdx), %rbp
	movq	80(%rsi), %r14
	sbbq	80(%rdx), %r14
	sbbq	88(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rbx
	sbbq	96(%rdx), %rbx
	movq	104(%rsi), %r11
	sbbq	104(%rdx), %r11
	movq	112(%rsi), %r10
	sbbq	112(%rdx), %r10
	movq	120(%rsi), %r9
	sbbq	120(%rdx), %r9
	movq	128(%rsi), %r8
	sbbq	128(%rdx), %r8
	movq	136(%rsi), %rcx
	sbbq	136(%rdx), %rcx
	movq	152(%rsi), %rax
	movq	144(%rsi), %rsi
	sbbq	144(%rdx), %rsi
	sbbq	152(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r12, 56(%rdi)
	movq	%r15, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	%r14, 80(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	%rbx, 96(%rdi)
	movq	%r11, 104(%rdi)
	movq	%r10, 112(%rdi)
	movq	%r9, 120(%rdi)
	movq	%r8, 128(%rdi)
	movq	%rcx, 136(%rdi)
	movq	%rsi, 144(%rdi)
	movq	%rax, 152(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end79:
	.size	mclb_subNF20, .Lfunc_end79-mclb_subNF20
                                        # -- End function
	.globl	mclb_add21                      # -- Begin function mclb_add21
	.p2align	4, 0x90
	.type	mclb_add21,@function
mclb_add21:                             # @mclb_add21
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %r13
	adcq	64(%rsi), %r13
	movq	72(%rdx), %r12
	adcq	72(%rsi), %r12
	movq	80(%rdx), %r15
	adcq	80(%rsi), %r15
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r14
	adcq	96(%rsi), %r14
	movq	104(%rdx), %rbx
	adcq	104(%rsi), %rbx
	movq	112(%rdx), %r11
	adcq	112(%rsi), %r11
	movq	120(%rdx), %r10
	adcq	120(%rsi), %r10
	movq	128(%rdx), %r9
	adcq	128(%rsi), %r9
	movq	136(%rdx), %r8
	adcq	136(%rsi), %r8
	movq	144(%rdx), %rcx
	adcq	144(%rsi), %rcx
	movq	152(%rdx), %rax
	adcq	152(%rsi), %rax
	movq	160(%rdx), %rdx
	adcq	160(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	%r13, 64(%rdi)
	movq	%r12, 72(%rdi)
	movq	%r15, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r14, 96(%rdi)
	movq	%rbx, 104(%rdi)
	movq	%r11, 112(%rdi)
	movq	%r10, 120(%rdi)
	movq	%r9, 128(%rdi)
	movq	%r8, 136(%rdi)
	movq	%rcx, 144(%rdi)
	movq	%rax, 152(%rdi)
	movq	%rdx, 160(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end80:
	.size	mclb_add21, .Lfunc_end80-mclb_add21
                                        # -- End function
	.globl	mclb_sub21                      # -- Begin function mclb_sub21
	.p2align	4, 0x90
	.type	mclb_sub21,@function
mclb_sub21:                             # @mclb_sub21
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %r13
	sbbq	64(%rdx), %r13
	movq	72(%rsi), %r12
	sbbq	72(%rdx), %r12
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r15
	sbbq	88(%rdx), %r15
	movq	96(%rsi), %r14
	sbbq	96(%rdx), %r14
	movq	104(%rsi), %rbx
	sbbq	104(%rdx), %rbx
	movq	112(%rsi), %r11
	sbbq	112(%rdx), %r11
	movq	120(%rsi), %r10
	sbbq	120(%rdx), %r10
	movq	128(%rsi), %r9
	sbbq	128(%rdx), %r9
	movq	136(%rsi), %r8
	sbbq	136(%rdx), %r8
	movq	144(%rsi), %rcx
	sbbq	144(%rdx), %rcx
	movq	152(%rsi), %rax
	sbbq	152(%rdx), %rax
	movq	160(%rsi), %rsi
	sbbq	160(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	%r13, 64(%rdi)
	movq	%r12, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r15, 88(%rdi)
	movq	%r14, 96(%rdi)
	movq	%rbx, 104(%rdi)
	movq	%r11, 112(%rdi)
	movq	%r10, 120(%rdi)
	movq	%r9, 128(%rdi)
	movq	%r8, 136(%rdi)
	movq	%rcx, 144(%rdi)
	movq	%rax, 152(%rdi)
	movq	%rsi, 160(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end81:
	.size	mclb_sub21, .Lfunc_end81-mclb_sub21
                                        # -- End function
	.globl	mclb_addNF21                    # -- Begin function mclb_addNF21
	.p2align	4, 0x90
	.type	mclb_addNF21,@function
mclb_addNF21:                           # @mclb_addNF21
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	adcq	88(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %r14
	adcq	96(%rsi), %r14
	movq	104(%rdx), %rbx
	adcq	104(%rsi), %rbx
	movq	112(%rdx), %r11
	adcq	112(%rsi), %r11
	movq	120(%rdx), %r10
	adcq	120(%rsi), %r10
	movq	128(%rdx), %r9
	adcq	128(%rsi), %r9
	movq	136(%rdx), %r8
	adcq	136(%rsi), %r8
	movq	144(%rdx), %rax
	adcq	144(%rsi), %rax
	movq	160(%rdx), %rcx
	movq	152(%rdx), %rdx
	adcq	152(%rsi), %rdx
	adcq	160(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	%r13, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%r15, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%r14, 96(%rdi)
	movq	%rbx, 104(%rdi)
	movq	%r11, 112(%rdi)
	movq	%r10, 120(%rdi)
	movq	%r9, 128(%rdi)
	movq	%r8, 136(%rdi)
	movq	%rax, 144(%rdi)
	movq	%rdx, 152(%rdi)
	movq	%rcx, 160(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end82:
	.size	mclb_addNF21, .Lfunc_end82-mclb_addNF21
                                        # -- End function
	.globl	mclb_subNF21                    # -- Begin function mclb_subNF21
	.p2align	4, 0x90
	.type	mclb_subNF21,@function
mclb_subNF21:                           # @mclb_subNF21
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %r13
	sbbq	72(%rdx), %r13
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r12
	sbbq	88(%rdx), %r12
	movq	96(%rsi), %r15
	sbbq	96(%rdx), %r15
	movq	104(%rsi), %r14
	sbbq	104(%rdx), %r14
	movq	112(%rsi), %rbx
	sbbq	112(%rdx), %rbx
	movq	120(%rsi), %r11
	sbbq	120(%rdx), %r11
	movq	128(%rsi), %r10
	sbbq	128(%rdx), %r10
	movq	136(%rsi), %r9
	sbbq	136(%rdx), %r9
	movq	144(%rsi), %r8
	sbbq	144(%rdx), %r8
	movq	152(%rsi), %rcx
	sbbq	152(%rdx), %rcx
	movq	160(%rsi), %rax
	sbbq	160(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	%r13, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r12, 88(%rdi)
	movq	%r15, 96(%rdi)
	movq	%r14, 104(%rdi)
	movq	%rbx, 112(%rdi)
	movq	%r11, 120(%rdi)
	movq	%r10, 128(%rdi)
	movq	%r9, 136(%rdi)
	movq	%r8, 144(%rdi)
	movq	%rcx, 152(%rdi)
	movq	%rax, 160(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end83:
	.size	mclb_subNF21, .Lfunc_end83-mclb_subNF21
                                        # -- End function
	.globl	mclb_add22                      # -- Begin function mclb_add22
	.p2align	4, 0x90
	.type	mclb_add22,@function
mclb_add22:                             # @mclb_add22
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %r13
	adcq	72(%rsi), %r13
	movq	80(%rdx), %r12
	adcq	80(%rsi), %r12
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r15
	adcq	96(%rsi), %r15
	movq	104(%rdx), %r14
	adcq	104(%rsi), %r14
	movq	112(%rdx), %rbx
	adcq	112(%rsi), %rbx
	movq	120(%rdx), %r11
	adcq	120(%rsi), %r11
	movq	128(%rdx), %r10
	adcq	128(%rsi), %r10
	movq	136(%rdx), %r9
	adcq	136(%rsi), %r9
	movq	144(%rdx), %r8
	adcq	144(%rsi), %r8
	movq	152(%rdx), %rcx
	adcq	152(%rsi), %rcx
	movq	160(%rdx), %rax
	adcq	160(%rsi), %rax
	movq	168(%rdx), %rdx
	adcq	168(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	%r13, 72(%rdi)
	movq	%r12, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r15, 96(%rdi)
	movq	%r14, 104(%rdi)
	movq	%rbx, 112(%rdi)
	movq	%r11, 120(%rdi)
	movq	%r10, 128(%rdi)
	movq	%r9, 136(%rdi)
	movq	%r8, 144(%rdi)
	movq	%rcx, 152(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rdx, 168(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end84:
	.size	mclb_add22, .Lfunc_end84-mclb_add22
                                        # -- End function
	.globl	mclb_sub22                      # -- Begin function mclb_sub22
	.p2align	4, 0x90
	.type	mclb_sub22,@function
mclb_sub22:                             # @mclb_sub22
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	80(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %r13
	sbbq	64(%rdx), %r13
	movq	72(%rsi), %rbp
	sbbq	72(%rdx), %rbp
	sbbq	80(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %r12
	sbbq	88(%rdx), %r12
	movq	96(%rsi), %r15
	sbbq	96(%rdx), %r15
	movq	104(%rsi), %r14
	sbbq	104(%rdx), %r14
	movq	112(%rsi), %rbx
	sbbq	112(%rdx), %rbx
	movq	120(%rsi), %r11
	sbbq	120(%rdx), %r11
	movq	128(%rsi), %r10
	sbbq	128(%rdx), %r10
	movq	136(%rsi), %r9
	sbbq	136(%rdx), %r9
	movq	144(%rsi), %r8
	sbbq	144(%rdx), %r8
	movq	152(%rsi), %rax
	sbbq	152(%rdx), %rax
	movq	168(%rsi), %rcx
	movq	160(%rsi), %rsi
	sbbq	160(%rdx), %rsi
	sbbq	168(%rdx), %rcx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	%r13, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	%r12, 88(%rdi)
	movq	%r15, 96(%rdi)
	movq	%r14, 104(%rdi)
	movq	%rbx, 112(%rdi)
	movq	%r11, 120(%rdi)
	movq	%r10, 128(%rdi)
	movq	%r9, 136(%rdi)
	movq	%r8, 144(%rdi)
	movq	%rax, 152(%rdi)
	movq	%rsi, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end85:
	.size	mclb_sub22, .Lfunc_end85-mclb_sub22
                                        # -- End function
	.globl	mclb_addNF22                    # -- Begin function mclb_addNF22
	.p2align	4, 0x90
	.type	mclb_addNF22,@function
mclb_addNF22:                           # @mclb_addNF22
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %r13
	adcq	72(%rsi), %r13
	movq	80(%rdx), %r12
	adcq	80(%rsi), %r12
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r15
	adcq	96(%rsi), %r15
	movq	104(%rdx), %r14
	adcq	104(%rsi), %r14
	movq	112(%rdx), %rbx
	adcq	112(%rsi), %rbx
	movq	120(%rdx), %r11
	adcq	120(%rsi), %r11
	movq	128(%rdx), %r10
	adcq	128(%rsi), %r10
	movq	136(%rdx), %r9
	adcq	136(%rsi), %r9
	movq	144(%rdx), %r8
	adcq	144(%rsi), %r8
	movq	152(%rdx), %rcx
	adcq	152(%rsi), %rcx
	movq	160(%rdx), %rax
	adcq	160(%rsi), %rax
	movq	168(%rdx), %rdx
	adcq	168(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	%r13, 72(%rdi)
	movq	%r12, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r15, 96(%rdi)
	movq	%r14, 104(%rdi)
	movq	%rbx, 112(%rdi)
	movq	%r11, 120(%rdi)
	movq	%r10, 128(%rdi)
	movq	%r9, 136(%rdi)
	movq	%r8, 144(%rdi)
	movq	%rcx, 152(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rdx, 168(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end86:
	.size	mclb_addNF22, .Lfunc_end86-mclb_addNF22
                                        # -- End function
	.globl	mclb_subNF22                    # -- Begin function mclb_subNF22
	.p2align	4, 0x90
	.type	mclb_subNF22,@function
mclb_subNF22:                           # @mclb_subNF22
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r13
	sbbq	88(%rdx), %r13
	movq	96(%rsi), %r12
	sbbq	96(%rdx), %r12
	movq	104(%rsi), %r15
	sbbq	104(%rdx), %r15
	movq	112(%rsi), %r14
	sbbq	112(%rdx), %r14
	movq	120(%rsi), %rbx
	sbbq	120(%rdx), %rbx
	movq	128(%rsi), %r11
	sbbq	128(%rdx), %r11
	movq	136(%rsi), %r10
	sbbq	136(%rdx), %r10
	movq	144(%rsi), %r9
	sbbq	144(%rdx), %r9
	movq	152(%rsi), %r8
	sbbq	152(%rdx), %r8
	movq	160(%rsi), %rcx
	sbbq	160(%rdx), %rcx
	movq	168(%rsi), %rax
	sbbq	168(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r13, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r15, 104(%rdi)
	movq	%r14, 112(%rdi)
	movq	%rbx, 120(%rdi)
	movq	%r11, 128(%rdi)
	movq	%r10, 136(%rdi)
	movq	%r9, 144(%rdi)
	movq	%r8, 152(%rdi)
	movq	%rcx, 160(%rdi)
	movq	%rax, 168(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end87:
	.size	mclb_subNF22, .Lfunc_end87-mclb_subNF22
                                        # -- End function
	.globl	mclb_add23                      # -- Begin function mclb_add23
	.p2align	4, 0x90
	.type	mclb_add23,@function
mclb_add23:                             # @mclb_add23
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %r13
	adcq	72(%rsi), %r13
	movq	80(%rdx), %rbp
	adcq	80(%rsi), %rbp
	adcq	88(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %r12
	adcq	96(%rsi), %r12
	movq	104(%rdx), %r15
	adcq	104(%rsi), %r15
	movq	112(%rdx), %r14
	adcq	112(%rsi), %r14
	movq	120(%rdx), %rbx
	adcq	120(%rsi), %rbx
	movq	128(%rdx), %r11
	adcq	128(%rsi), %r11
	movq	136(%rdx), %r10
	adcq	136(%rsi), %r10
	movq	144(%rdx), %r9
	adcq	144(%rsi), %r9
	movq	152(%rdx), %r8
	adcq	152(%rsi), %r8
	movq	160(%rdx), %rax
	adcq	160(%rsi), %rax
	movq	176(%rdx), %rcx
	movq	168(%rdx), %rdx
	adcq	168(%rsi), %rdx
	adcq	176(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	%r13, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r15, 104(%rdi)
	movq	%r14, 112(%rdi)
	movq	%rbx, 120(%rdi)
	movq	%r11, 128(%rdi)
	movq	%r10, 136(%rdi)
	movq	%r9, 144(%rdi)
	movq	%r8, 152(%rdi)
	movq	%rax, 160(%rdi)
	movq	%rdx, 168(%rdi)
	movq	%rcx, 176(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end88:
	.size	mclb_add23, .Lfunc_end88-mclb_add23
                                        # -- End function
	.globl	mclb_sub23                      # -- Begin function mclb_sub23
	.p2align	4, 0x90
	.type	mclb_sub23,@function
mclb_sub23:                             # @mclb_sub23
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	movq	88(%rsi), %r13
	sbbq	88(%rdx), %r13
	movq	96(%rsi), %r12
	sbbq	96(%rdx), %r12
	movq	104(%rsi), %r15
	sbbq	104(%rdx), %r15
	movq	112(%rsi), %r14
	sbbq	112(%rdx), %r14
	movq	120(%rsi), %rbx
	sbbq	120(%rdx), %rbx
	movq	128(%rsi), %r11
	sbbq	128(%rdx), %r11
	movq	136(%rsi), %r10
	sbbq	136(%rdx), %r10
	movq	144(%rsi), %r9
	sbbq	144(%rdx), %r9
	movq	152(%rsi), %r8
	sbbq	152(%rdx), %r8
	movq	160(%rsi), %rcx
	sbbq	160(%rdx), %rcx
	movq	168(%rsi), %rax
	sbbq	168(%rdx), %rax
	movq	176(%rsi), %rsi
	sbbq	176(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r13, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r15, 104(%rdi)
	movq	%r14, 112(%rdi)
	movq	%rbx, 120(%rdi)
	movq	%r11, 128(%rdi)
	movq	%r10, 136(%rdi)
	movq	%r9, 144(%rdi)
	movq	%r8, 152(%rdi)
	movq	%rcx, 160(%rdi)
	movq	%rax, 168(%rdi)
	movq	%rsi, 176(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end89:
	.size	mclb_sub23, .Lfunc_end89-mclb_sub23
                                        # -- End function
	.globl	mclb_addNF23                    # -- Begin function mclb_addNF23
	.p2align	4, 0x90
	.type	mclb_addNF23,@function
mclb_addNF23:                           # @mclb_addNF23
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %r13
	adcq	80(%rsi), %r13
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r12
	adcq	96(%rsi), %r12
	movq	104(%rdx), %r15
	adcq	104(%rsi), %r15
	movq	112(%rdx), %r14
	adcq	112(%rsi), %r14
	movq	120(%rdx), %rbx
	adcq	120(%rsi), %rbx
	movq	128(%rdx), %r11
	adcq	128(%rsi), %r11
	movq	136(%rdx), %r10
	adcq	136(%rsi), %r10
	movq	144(%rdx), %r9
	adcq	144(%rsi), %r9
	movq	152(%rdx), %r8
	adcq	152(%rsi), %r8
	movq	160(%rdx), %rcx
	adcq	160(%rsi), %rcx
	movq	168(%rdx), %rax
	adcq	168(%rsi), %rax
	movq	176(%rdx), %rdx
	adcq	176(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	%r13, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r15, 104(%rdi)
	movq	%r14, 112(%rdi)
	movq	%rbx, 120(%rdi)
	movq	%r11, 128(%rdi)
	movq	%r10, 136(%rdi)
	movq	%r9, 144(%rdi)
	movq	%r8, 152(%rdi)
	movq	%rcx, 160(%rdi)
	movq	%rax, 168(%rdi)
	movq	%rdx, 176(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end90:
	.size	mclb_addNF23, .Lfunc_end90-mclb_addNF23
                                        # -- End function
	.globl	mclb_subNF23                    # -- Begin function mclb_subNF23
	.p2align	4, 0x90
	.type	mclb_subNF23,@function
mclb_subNF23:                           # @mclb_subNF23
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rbp
	sbbq	88(%rdx), %rbp
	movq	96(%rsi), %r13
	sbbq	96(%rdx), %r13
	movq	104(%rsi), %r12
	sbbq	104(%rdx), %r12
	movq	112(%rsi), %r15
	sbbq	112(%rdx), %r15
	movq	120(%rsi), %r14
	sbbq	120(%rdx), %r14
	movq	128(%rsi), %rbx
	sbbq	128(%rdx), %rbx
	movq	136(%rsi), %r11
	sbbq	136(%rdx), %r11
	movq	144(%rsi), %r10
	sbbq	144(%rdx), %r10
	movq	152(%rsi), %r9
	sbbq	152(%rdx), %r9
	movq	160(%rsi), %r8
	sbbq	160(%rdx), %r8
	movq	168(%rsi), %rcx
	sbbq	168(%rdx), %rcx
	movq	176(%rsi), %rax
	sbbq	176(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%r12, 104(%rdi)
	movq	%r15, 112(%rdi)
	movq	%r14, 120(%rdi)
	movq	%rbx, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%r9, 152(%rdi)
	movq	%r8, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movq	%rax, 176(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end91:
	.size	mclb_subNF23, .Lfunc_end91-mclb_subNF23
                                        # -- End function
	.globl	mclb_add24                      # -- Begin function mclb_add24
	.p2align	4, 0x90
	.type	mclb_add24,@function
mclb_add24:                             # @mclb_add24
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r13
	adcq	96(%rsi), %r13
	movq	104(%rdx), %r12
	adcq	104(%rsi), %r12
	movq	112(%rdx), %r15
	adcq	112(%rsi), %r15
	movq	120(%rdx), %r14
	adcq	120(%rsi), %r14
	movq	128(%rdx), %rbx
	adcq	128(%rsi), %rbx
	movq	136(%rdx), %r11
	adcq	136(%rsi), %r11
	movq	144(%rdx), %r10
	adcq	144(%rsi), %r10
	movq	152(%rdx), %r9
	adcq	152(%rsi), %r9
	movq	160(%rdx), %r8
	adcq	160(%rsi), %r8
	movq	168(%rdx), %rcx
	adcq	168(%rsi), %rcx
	movq	176(%rdx), %rax
	adcq	176(%rsi), %rax
	movq	184(%rdx), %rdx
	adcq	184(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%r12, 104(%rdi)
	movq	%r15, 112(%rdi)
	movq	%r14, 120(%rdi)
	movq	%rbx, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%r9, 152(%rdi)
	movq	%r8, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movq	%rax, 176(%rdi)
	movq	%rdx, 184(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end92:
	.size	mclb_add24, .Lfunc_end92-mclb_add24
                                        # -- End function
	.globl	mclb_sub24                      # -- Begin function mclb_sub24
	.p2align	4, 0x90
	.type	mclb_sub24,@function
mclb_sub24:                             # @mclb_sub24
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rbp
	sbbq	88(%rdx), %rbp
	movq	96(%rsi), %r13
	sbbq	96(%rdx), %r13
	movq	104(%rsi), %r12
	sbbq	104(%rdx), %r12
	movq	112(%rsi), %r15
	sbbq	112(%rdx), %r15
	movq	120(%rsi), %r14
	sbbq	120(%rdx), %r14
	movq	128(%rsi), %rbx
	sbbq	128(%rdx), %rbx
	movq	136(%rsi), %r11
	sbbq	136(%rdx), %r11
	movq	144(%rsi), %r10
	sbbq	144(%rdx), %r10
	movq	152(%rsi), %r9
	sbbq	152(%rdx), %r9
	movq	160(%rsi), %r8
	sbbq	160(%rdx), %r8
	movq	168(%rsi), %rcx
	sbbq	168(%rdx), %rcx
	movq	176(%rsi), %rax
	sbbq	176(%rdx), %rax
	movq	184(%rsi), %rsi
	sbbq	184(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%r12, 104(%rdi)
	movq	%r15, 112(%rdi)
	movq	%r14, 120(%rdi)
	movq	%rbx, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%r9, 152(%rdi)
	movq	%r8, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movq	%rax, 176(%rdi)
	movq	%rsi, 184(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end93:
	.size	mclb_sub24, .Lfunc_end93-mclb_sub24
                                        # -- End function
	.globl	mclb_addNF24                    # -- Begin function mclb_addNF24
	.p2align	4, 0x90
	.type	mclb_addNF24,@function
mclb_addNF24:                           # @mclb_addNF24
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	96(%rdx), %r13
	adcq	96(%rsi), %r13
	movq	104(%rdx), %r12
	adcq	104(%rsi), %r12
	movq	112(%rdx), %r15
	adcq	112(%rsi), %r15
	movq	120(%rdx), %r14
	adcq	120(%rsi), %r14
	movq	128(%rdx), %rbx
	adcq	128(%rsi), %rbx
	movq	136(%rdx), %r11
	adcq	136(%rsi), %r11
	movq	144(%rdx), %r10
	adcq	144(%rsi), %r10
	movq	152(%rdx), %r9
	adcq	152(%rsi), %r9
	movq	160(%rdx), %r8
	adcq	160(%rsi), %r8
	movq	168(%rdx), %rcx
	adcq	168(%rsi), %rcx
	movq	176(%rdx), %rax
	adcq	176(%rsi), %rax
	movq	184(%rdx), %rdx
	adcq	184(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%r12, 104(%rdi)
	movq	%r15, 112(%rdi)
	movq	%r14, 120(%rdi)
	movq	%rbx, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%r9, 152(%rdi)
	movq	%r8, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movq	%rax, 176(%rdi)
	movq	%rdx, 184(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end94:
	.size	mclb_addNF24, .Lfunc_end94-mclb_addNF24
                                        # -- End function
	.globl	mclb_subNF24                    # -- Begin function mclb_subNF24
	.p2align	4, 0x90
	.type	mclb_subNF24,@function
mclb_subNF24:                           # @mclb_subNF24
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rcx
	sbbq	72(%rdx), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rbp
	sbbq	80(%rdx), %rbp
	sbbq	88(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %r13
	sbbq	96(%rdx), %r13
	movq	104(%rsi), %r12
	sbbq	104(%rdx), %r12
	movq	112(%rsi), %r15
	sbbq	112(%rdx), %r15
	movq	120(%rsi), %r14
	sbbq	120(%rdx), %r14
	movq	128(%rsi), %rbx
	sbbq	128(%rdx), %rbx
	movq	136(%rsi), %r11
	sbbq	136(%rdx), %r11
	movq	144(%rsi), %r10
	sbbq	144(%rdx), %r10
	movq	152(%rsi), %r9
	sbbq	152(%rdx), %r9
	movq	160(%rsi), %r8
	sbbq	160(%rdx), %r8
	movq	168(%rsi), %rcx
	sbbq	168(%rdx), %rcx
	movq	184(%rsi), %rax
	movq	176(%rsi), %rsi
	sbbq	176(%rdx), %rsi
	sbbq	184(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%r12, 104(%rdi)
	movq	%r15, 112(%rdi)
	movq	%r14, 120(%rdi)
	movq	%rbx, 128(%rdi)
	movq	%r11, 136(%rdi)
	movq	%r10, 144(%rdi)
	movq	%r9, 152(%rdi)
	movq	%r8, 160(%rdi)
	movq	%rcx, 168(%rdi)
	movq	%rsi, 176(%rdi)
	movq	%rax, 184(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end95:
	.size	mclb_subNF24, .Lfunc_end95-mclb_subNF24
                                        # -- End function
	.globl	mclb_add25                      # -- Begin function mclb_add25
	.p2align	4, 0x90
	.type	mclb_add25,@function
mclb_add25:                             # @mclb_add25
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rbp
	adcq	96(%rsi), %rbp
	movq	104(%rdx), %r13
	adcq	104(%rsi), %r13
	movq	112(%rdx), %r12
	adcq	112(%rsi), %r12
	movq	120(%rdx), %r15
	adcq	120(%rsi), %r15
	movq	128(%rdx), %r14
	adcq	128(%rsi), %r14
	movq	136(%rdx), %rbx
	adcq	136(%rsi), %rbx
	movq	144(%rdx), %r11
	adcq	144(%rsi), %r11
	movq	152(%rdx), %r10
	adcq	152(%rsi), %r10
	movq	160(%rdx), %r9
	adcq	160(%rsi), %r9
	movq	168(%rdx), %r8
	adcq	168(%rsi), %r8
	movq	176(%rdx), %rcx
	adcq	176(%rsi), %rcx
	movq	184(%rdx), %rax
	adcq	184(%rsi), %rax
	movq	192(%rdx), %rdx
	adcq	192(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%rbp, 96(%rdi)
	movq	%r13, 104(%rdi)
	movq	%r12, 112(%rdi)
	movq	%r15, 120(%rdi)
	movq	%r14, 128(%rdi)
	movq	%rbx, 136(%rdi)
	movq	%r11, 144(%rdi)
	movq	%r10, 152(%rdi)
	movq	%r9, 160(%rdi)
	movq	%r8, 168(%rdi)
	movq	%rcx, 176(%rdi)
	movq	%rax, 184(%rdi)
	movq	%rdx, 192(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end96:
	.size	mclb_add25, .Lfunc_end96-mclb_add25
                                        # -- End function
	.globl	mclb_sub25                      # -- Begin function mclb_sub25
	.p2align	4, 0x90
	.type	mclb_sub25,@function
mclb_sub25:                             # @mclb_sub25
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rbp
	sbbq	96(%rdx), %rbp
	movq	104(%rsi), %r13
	sbbq	104(%rdx), %r13
	movq	112(%rsi), %r12
	sbbq	112(%rdx), %r12
	movq	120(%rsi), %r15
	sbbq	120(%rdx), %r15
	movq	128(%rsi), %r14
	sbbq	128(%rdx), %r14
	movq	136(%rsi), %rbx
	sbbq	136(%rdx), %rbx
	movq	144(%rsi), %r11
	sbbq	144(%rdx), %r11
	movq	152(%rsi), %r10
	sbbq	152(%rdx), %r10
	movq	160(%rsi), %r9
	sbbq	160(%rdx), %r9
	movq	168(%rsi), %r8
	sbbq	168(%rdx), %r8
	movq	176(%rsi), %rcx
	sbbq	176(%rdx), %rcx
	movq	184(%rsi), %rax
	sbbq	184(%rdx), %rax
	movq	192(%rsi), %rsi
	sbbq	192(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	%rbp, 96(%rdi)
	movq	%r13, 104(%rdi)
	movq	%r12, 112(%rdi)
	movq	%r15, 120(%rdi)
	movq	%r14, 128(%rdi)
	movq	%rbx, 136(%rdi)
	movq	%r11, 144(%rdi)
	movq	%r10, 152(%rdi)
	movq	%r9, 160(%rdi)
	movq	%r8, 168(%rdi)
	movq	%rcx, 176(%rdi)
	movq	%rax, 184(%rdi)
	movq	%rsi, 192(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end97:
	.size	mclb_sub25, .Lfunc_end97-mclb_sub25
                                        # -- End function
	.globl	mclb_addNF25                    # -- Begin function mclb_addNF25
	.p2align	4, 0x90
	.type	mclb_addNF25,@function
mclb_addNF25:                           # @mclb_addNF25
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rcx
	adcq	72(%rsi), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rbp
	adcq	96(%rsi), %rbp
	movq	104(%rdx), %r13
	adcq	104(%rsi), %r13
	movq	112(%rdx), %r12
	adcq	112(%rsi), %r12
	movq	120(%rdx), %r15
	adcq	120(%rsi), %r15
	movq	128(%rdx), %r14
	adcq	128(%rsi), %r14
	movq	136(%rdx), %rbx
	adcq	136(%rsi), %rbx
	movq	144(%rdx), %r11
	adcq	144(%rsi), %r11
	movq	152(%rdx), %r10
	adcq	152(%rsi), %r10
	movq	160(%rdx), %r9
	adcq	160(%rsi), %r9
	movq	168(%rdx), %r8
	adcq	168(%rsi), %r8
	movq	176(%rdx), %rax
	adcq	176(%rsi), %rax
	movq	192(%rdx), %rcx
	movq	184(%rdx), %rdx
	adcq	184(%rsi), %rdx
	adcq	192(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	%rbp, 96(%rdi)
	movq	%r13, 104(%rdi)
	movq	%r12, 112(%rdi)
	movq	%r15, 120(%rdi)
	movq	%r14, 128(%rdi)
	movq	%rbx, 136(%rdi)
	movq	%r11, 144(%rdi)
	movq	%r10, 152(%rdi)
	movq	%r9, 160(%rdi)
	movq	%r8, 168(%rdi)
	movq	%rax, 176(%rdi)
	movq	%rdx, 184(%rdi)
	movq	%rcx, 192(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end98:
	.size	mclb_addNF25, .Lfunc_end98-mclb_addNF25
                                        # -- End function
	.globl	mclb_subNF25                    # -- Begin function mclb_subNF25
	.p2align	4, 0x90
	.type	mclb_subNF25,@function
mclb_subNF25:                           # @mclb_subNF25
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rbp
	sbbq	104(%rdx), %rbp
	movq	112(%rsi), %r13
	sbbq	112(%rdx), %r13
	movq	120(%rsi), %r12
	sbbq	120(%rdx), %r12
	movq	128(%rsi), %r15
	sbbq	128(%rdx), %r15
	movq	136(%rsi), %r14
	sbbq	136(%rdx), %r14
	movq	144(%rsi), %rbx
	sbbq	144(%rdx), %rbx
	movq	152(%rsi), %r11
	sbbq	152(%rdx), %r11
	movq	160(%rsi), %r10
	sbbq	160(%rdx), %r10
	movq	168(%rsi), %r9
	sbbq	168(%rdx), %r9
	movq	176(%rsi), %r8
	sbbq	176(%rdx), %r8
	movq	184(%rsi), %rcx
	sbbq	184(%rdx), %rcx
	movq	192(%rsi), %rax
	sbbq	192(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	%r13, 112(%rdi)
	movq	%r12, 120(%rdi)
	movq	%r15, 128(%rdi)
	movq	%r14, 136(%rdi)
	movq	%rbx, 144(%rdi)
	movq	%r11, 152(%rdi)
	movq	%r10, 160(%rdi)
	movq	%r9, 168(%rdi)
	movq	%r8, 176(%rdi)
	movq	%rcx, 184(%rdi)
	movq	%rax, 192(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end99:
	.size	mclb_subNF25, .Lfunc_end99-mclb_subNF25
                                        # -- End function
	.globl	mclb_add26                      # -- Begin function mclb_add26
	.p2align	4, 0x90
	.type	mclb_add26,@function
mclb_add26:                             # @mclb_add26
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rbp
	adcq	104(%rsi), %rbp
	movq	112(%rdx), %r13
	adcq	112(%rsi), %r13
	movq	120(%rdx), %r12
	adcq	120(%rsi), %r12
	movq	128(%rdx), %r15
	adcq	128(%rsi), %r15
	movq	136(%rdx), %r14
	adcq	136(%rsi), %r14
	movq	144(%rdx), %rbx
	adcq	144(%rsi), %rbx
	movq	152(%rdx), %r11
	adcq	152(%rsi), %r11
	movq	160(%rdx), %r10
	adcq	160(%rsi), %r10
	movq	168(%rdx), %r9
	adcq	168(%rsi), %r9
	movq	176(%rdx), %r8
	adcq	176(%rsi), %r8
	movq	184(%rdx), %rcx
	adcq	184(%rsi), %rcx
	movq	192(%rdx), %rax
	adcq	192(%rsi), %rax
	movq	200(%rdx), %rdx
	adcq	200(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	%r13, 112(%rdi)
	movq	%r12, 120(%rdi)
	movq	%r15, 128(%rdi)
	movq	%r14, 136(%rdi)
	movq	%rbx, 144(%rdi)
	movq	%r11, 152(%rdi)
	movq	%r10, 160(%rdi)
	movq	%r9, 168(%rdi)
	movq	%r8, 176(%rdi)
	movq	%rcx, 184(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rdx, 200(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end100:
	.size	mclb_add26, .Lfunc_end100-mclb_add26
                                        # -- End function
	.globl	mclb_sub26                      # -- Begin function mclb_sub26
	.p2align	4, 0x90
	.type	mclb_sub26,@function
mclb_sub26:                             # @mclb_sub26
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	80(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rcx
	sbbq	72(%rdx), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	sbbq	80(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rbp
	sbbq	104(%rdx), %rbp
	movq	112(%rsi), %r13
	sbbq	112(%rdx), %r13
	movq	120(%rsi), %r12
	sbbq	120(%rdx), %r12
	movq	128(%rsi), %r15
	sbbq	128(%rdx), %r15
	movq	136(%rsi), %r14
	sbbq	136(%rdx), %r14
	movq	144(%rsi), %rbx
	sbbq	144(%rdx), %rbx
	movq	152(%rsi), %r11
	sbbq	152(%rdx), %r11
	movq	160(%rsi), %r10
	sbbq	160(%rdx), %r10
	movq	168(%rsi), %r9
	sbbq	168(%rdx), %r9
	movq	176(%rsi), %r8
	sbbq	176(%rdx), %r8
	movq	184(%rsi), %rax
	sbbq	184(%rdx), %rax
	movq	200(%rsi), %rcx
	movq	192(%rsi), %rsi
	sbbq	192(%rdx), %rsi
	sbbq	200(%rdx), %rcx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	%r13, 112(%rdi)
	movq	%r12, 120(%rdi)
	movq	%r15, 128(%rdi)
	movq	%r14, 136(%rdi)
	movq	%rbx, 144(%rdi)
	movq	%r11, 152(%rdi)
	movq	%r10, 160(%rdi)
	movq	%r9, 168(%rdi)
	movq	%r8, 176(%rdi)
	movq	%rax, 184(%rdi)
	movq	%rsi, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end101:
	.size	mclb_sub26, .Lfunc_end101-mclb_sub26
                                        # -- End function
	.globl	mclb_addNF26                    # -- Begin function mclb_addNF26
	.p2align	4, 0x90
	.type	mclb_addNF26,@function
mclb_addNF26:                           # @mclb_addNF26
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rbp
	adcq	104(%rsi), %rbp
	movq	112(%rdx), %r13
	adcq	112(%rsi), %r13
	movq	120(%rdx), %r12
	adcq	120(%rsi), %r12
	movq	128(%rdx), %r15
	adcq	128(%rsi), %r15
	movq	136(%rdx), %r14
	adcq	136(%rsi), %r14
	movq	144(%rdx), %rbx
	adcq	144(%rsi), %rbx
	movq	152(%rdx), %r11
	adcq	152(%rsi), %r11
	movq	160(%rdx), %r10
	adcq	160(%rsi), %r10
	movq	168(%rdx), %r9
	adcq	168(%rsi), %r9
	movq	176(%rdx), %r8
	adcq	176(%rsi), %r8
	movq	184(%rdx), %rcx
	adcq	184(%rsi), %rcx
	movq	192(%rdx), %rax
	adcq	192(%rsi), %rax
	movq	200(%rdx), %rdx
	adcq	200(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	%r13, 112(%rdi)
	movq	%r12, 120(%rdi)
	movq	%r15, 128(%rdi)
	movq	%r14, 136(%rdi)
	movq	%rbx, 144(%rdi)
	movq	%r11, 152(%rdi)
	movq	%r10, 160(%rdi)
	movq	%r9, 168(%rdi)
	movq	%r8, 176(%rdi)
	movq	%rcx, 184(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rdx, 200(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end102:
	.size	mclb_addNF26, .Lfunc_end102-mclb_addNF26
                                        # -- End function
	.globl	mclb_subNF26                    # -- Begin function mclb_subNF26
	.p2align	4, 0x90
	.type	mclb_subNF26,@function
mclb_subNF26:                           # @mclb_subNF26
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rbp
	sbbq	112(%rdx), %rbp
	movq	120(%rsi), %r13
	sbbq	120(%rdx), %r13
	movq	128(%rsi), %r12
	sbbq	128(%rdx), %r12
	movq	136(%rsi), %r15
	sbbq	136(%rdx), %r15
	movq	144(%rsi), %r14
	sbbq	144(%rdx), %r14
	movq	152(%rsi), %rbx
	sbbq	152(%rdx), %rbx
	movq	160(%rsi), %r11
	sbbq	160(%rdx), %r11
	movq	168(%rsi), %r10
	sbbq	168(%rdx), %r10
	movq	176(%rsi), %r9
	sbbq	176(%rdx), %r9
	movq	184(%rsi), %r8
	sbbq	184(%rdx), %r8
	movq	192(%rsi), %rcx
	sbbq	192(%rdx), %rcx
	movq	200(%rsi), %rax
	sbbq	200(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	%rbp, 112(%rdi)
	movq	%r13, 120(%rdi)
	movq	%r12, 128(%rdi)
	movq	%r15, 136(%rdi)
	movq	%r14, 144(%rdi)
	movq	%rbx, 152(%rdi)
	movq	%r11, 160(%rdi)
	movq	%r10, 168(%rdi)
	movq	%r9, 176(%rdi)
	movq	%r8, 184(%rdi)
	movq	%rcx, 192(%rdi)
	movq	%rax, 200(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end103:
	.size	mclb_subNF26, .Lfunc_end103-mclb_subNF26
                                        # -- End function
	.globl	mclb_add27                      # -- Begin function mclb_add27
	.p2align	4, 0x90
	.type	mclb_add27,@function
mclb_add27:                             # @mclb_add27
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rcx
	adcq	72(%rsi), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rbp
	adcq	112(%rsi), %rbp
	movq	120(%rdx), %r13
	adcq	120(%rsi), %r13
	movq	128(%rdx), %r12
	adcq	128(%rsi), %r12
	movq	136(%rdx), %r15
	adcq	136(%rsi), %r15
	movq	144(%rdx), %r14
	adcq	144(%rsi), %r14
	movq	152(%rdx), %rbx
	adcq	152(%rsi), %rbx
	movq	160(%rdx), %r11
	adcq	160(%rsi), %r11
	movq	168(%rdx), %r10
	adcq	168(%rsi), %r10
	movq	176(%rdx), %r9
	adcq	176(%rsi), %r9
	movq	184(%rdx), %r8
	adcq	184(%rsi), %r8
	movq	192(%rdx), %rax
	adcq	192(%rsi), %rax
	movq	208(%rdx), %rcx
	movq	200(%rdx), %rdx
	adcq	200(%rsi), %rdx
	adcq	208(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	%rbp, 112(%rdi)
	movq	%r13, 120(%rdi)
	movq	%r12, 128(%rdi)
	movq	%r15, 136(%rdi)
	movq	%r14, 144(%rdi)
	movq	%rbx, 152(%rdi)
	movq	%r11, 160(%rdi)
	movq	%r10, 168(%rdi)
	movq	%r9, 176(%rdi)
	movq	%r8, 184(%rdi)
	movq	%rax, 192(%rdi)
	movq	%rdx, 200(%rdi)
	movq	%rcx, 208(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end104:
	.size	mclb_add27, .Lfunc_end104-mclb_add27
                                        # -- End function
	.globl	mclb_sub27                      # -- Begin function mclb_sub27
	.p2align	4, 0x90
	.type	mclb_sub27,@function
mclb_sub27:                             # @mclb_sub27
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rbp
	sbbq	112(%rdx), %rbp
	movq	120(%rsi), %r13
	sbbq	120(%rdx), %r13
	movq	128(%rsi), %r12
	sbbq	128(%rdx), %r12
	movq	136(%rsi), %r15
	sbbq	136(%rdx), %r15
	movq	144(%rsi), %r14
	sbbq	144(%rdx), %r14
	movq	152(%rsi), %rbx
	sbbq	152(%rdx), %rbx
	movq	160(%rsi), %r11
	sbbq	160(%rdx), %r11
	movq	168(%rsi), %r10
	sbbq	168(%rdx), %r10
	movq	176(%rsi), %r9
	sbbq	176(%rdx), %r9
	movq	184(%rsi), %r8
	sbbq	184(%rdx), %r8
	movq	192(%rsi), %rcx
	sbbq	192(%rdx), %rcx
	movq	200(%rsi), %rax
	sbbq	200(%rdx), %rax
	movq	208(%rsi), %rsi
	sbbq	208(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	%rbp, 112(%rdi)
	movq	%r13, 120(%rdi)
	movq	%r12, 128(%rdi)
	movq	%r15, 136(%rdi)
	movq	%r14, 144(%rdi)
	movq	%rbx, 152(%rdi)
	movq	%r11, 160(%rdi)
	movq	%r10, 168(%rdi)
	movq	%r9, 176(%rdi)
	movq	%r8, 184(%rdi)
	movq	%rcx, 192(%rdi)
	movq	%rax, 200(%rdi)
	movq	%rsi, 208(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end105:
	.size	mclb_sub27, .Lfunc_end105-mclb_sub27
                                        # -- End function
	.globl	mclb_addNF27                    # -- Begin function mclb_addNF27
	.p2align	4, 0x90
	.type	mclb_addNF27,@function
mclb_addNF27:                           # @mclb_addNF27
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rbp
	adcq	112(%rsi), %rbp
	movq	120(%rdx), %r13
	adcq	120(%rsi), %r13
	movq	128(%rdx), %r12
	adcq	128(%rsi), %r12
	movq	136(%rdx), %r15
	adcq	136(%rsi), %r15
	movq	144(%rdx), %r14
	adcq	144(%rsi), %r14
	movq	152(%rdx), %rbx
	adcq	152(%rsi), %rbx
	movq	160(%rdx), %r11
	adcq	160(%rsi), %r11
	movq	168(%rdx), %r10
	adcq	168(%rsi), %r10
	movq	176(%rdx), %r9
	adcq	176(%rsi), %r9
	movq	184(%rdx), %r8
	adcq	184(%rsi), %r8
	movq	192(%rdx), %rcx
	adcq	192(%rsi), %rcx
	movq	200(%rdx), %rax
	adcq	200(%rsi), %rax
	movq	208(%rdx), %rdx
	adcq	208(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	%rbp, 112(%rdi)
	movq	%r13, 120(%rdi)
	movq	%r12, 128(%rdi)
	movq	%r15, 136(%rdi)
	movq	%r14, 144(%rdi)
	movq	%rbx, 152(%rdi)
	movq	%r11, 160(%rdi)
	movq	%r10, 168(%rdi)
	movq	%r9, 176(%rdi)
	movq	%r8, 184(%rdi)
	movq	%rcx, 192(%rdi)
	movq	%rax, 200(%rdi)
	movq	%rdx, 208(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end106:
	.size	mclb_addNF27, .Lfunc_end106-mclb_addNF27
                                        # -- End function
	.globl	mclb_subNF27                    # -- Begin function mclb_subNF27
	.p2align	4, 0x90
	.type	mclb_subNF27,@function
mclb_subNF27:                           # @mclb_subNF27
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rbp
	sbbq	120(%rdx), %rbp
	movq	128(%rsi), %r13
	sbbq	128(%rdx), %r13
	movq	136(%rsi), %r12
	sbbq	136(%rdx), %r12
	movq	144(%rsi), %r15
	sbbq	144(%rdx), %r15
	movq	152(%rsi), %r14
	sbbq	152(%rdx), %r14
	movq	160(%rsi), %rbx
	sbbq	160(%rdx), %rbx
	movq	168(%rsi), %r11
	sbbq	168(%rdx), %r11
	movq	176(%rsi), %r10
	sbbq	176(%rdx), %r10
	movq	184(%rsi), %r9
	sbbq	184(%rdx), %r9
	movq	192(%rsi), %r8
	sbbq	192(%rdx), %r8
	movq	200(%rsi), %rcx
	sbbq	200(%rdx), %rcx
	movq	208(%rsi), %rax
	sbbq	208(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	%r13, 128(%rdi)
	movq	%r12, 136(%rdi)
	movq	%r15, 144(%rdi)
	movq	%r14, 152(%rdi)
	movq	%rbx, 160(%rdi)
	movq	%r11, 168(%rdi)
	movq	%r10, 176(%rdi)
	movq	%r9, 184(%rdi)
	movq	%r8, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movq	%rax, 208(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end107:
	.size	mclb_subNF27, .Lfunc_end107-mclb_subNF27
                                        # -- End function
	.globl	mclb_add28                      # -- Begin function mclb_add28
	.p2align	4, 0x90
	.type	mclb_add28,@function
mclb_add28:                             # @mclb_add28
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rbp
	adcq	120(%rsi), %rbp
	movq	128(%rdx), %r13
	adcq	128(%rsi), %r13
	movq	136(%rdx), %r12
	adcq	136(%rsi), %r12
	movq	144(%rdx), %r15
	adcq	144(%rsi), %r15
	movq	152(%rdx), %r14
	adcq	152(%rsi), %r14
	movq	160(%rdx), %rbx
	adcq	160(%rsi), %rbx
	movq	168(%rdx), %r11
	adcq	168(%rsi), %r11
	movq	176(%rdx), %r10
	adcq	176(%rsi), %r10
	movq	184(%rdx), %r9
	adcq	184(%rsi), %r9
	movq	192(%rdx), %r8
	adcq	192(%rsi), %r8
	movq	200(%rdx), %rcx
	adcq	200(%rsi), %rcx
	movq	208(%rdx), %rax
	adcq	208(%rsi), %rax
	movq	216(%rdx), %rdx
	adcq	216(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	%r13, 128(%rdi)
	movq	%r12, 136(%rdi)
	movq	%r15, 144(%rdi)
	movq	%r14, 152(%rdi)
	movq	%rbx, 160(%rdi)
	movq	%r11, 168(%rdi)
	movq	%r10, 176(%rdi)
	movq	%r9, 184(%rdi)
	movq	%r8, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movq	%rax, 208(%rdi)
	movq	%rdx, 216(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end108:
	.size	mclb_add28, .Lfunc_end108-mclb_add28
                                        # -- End function
	.globl	mclb_sub28                      # -- Begin function mclb_sub28
	.p2align	4, 0x90
	.type	mclb_sub28,@function
mclb_sub28:                             # @mclb_sub28
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rbp
	sbbq	120(%rdx), %rbp
	movq	128(%rsi), %r13
	sbbq	128(%rdx), %r13
	movq	136(%rsi), %r12
	sbbq	136(%rdx), %r12
	movq	144(%rsi), %r15
	sbbq	144(%rdx), %r15
	movq	152(%rsi), %r14
	sbbq	152(%rdx), %r14
	movq	160(%rsi), %rbx
	sbbq	160(%rdx), %rbx
	movq	168(%rsi), %r11
	sbbq	168(%rdx), %r11
	movq	176(%rsi), %r10
	sbbq	176(%rdx), %r10
	movq	184(%rsi), %r9
	sbbq	184(%rdx), %r9
	movq	192(%rsi), %r8
	sbbq	192(%rdx), %r8
	movq	200(%rsi), %rcx
	sbbq	200(%rdx), %rcx
	movq	208(%rsi), %rax
	sbbq	208(%rdx), %rax
	movq	216(%rsi), %rsi
	sbbq	216(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	%r13, 128(%rdi)
	movq	%r12, 136(%rdi)
	movq	%r15, 144(%rdi)
	movq	%r14, 152(%rdi)
	movq	%rbx, 160(%rdi)
	movq	%r11, 168(%rdi)
	movq	%r10, 176(%rdi)
	movq	%r9, 184(%rdi)
	movq	%r8, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movq	%rax, 208(%rdi)
	movq	%rsi, 216(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end109:
	.size	mclb_sub28, .Lfunc_end109-mclb_sub28
                                        # -- End function
	.globl	mclb_addNF28                    # -- Begin function mclb_addNF28
	.p2align	4, 0x90
	.type	mclb_addNF28,@function
mclb_addNF28:                           # @mclb_addNF28
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rbp
	adcq	120(%rsi), %rbp
	movq	128(%rdx), %r13
	adcq	128(%rsi), %r13
	movq	136(%rdx), %r12
	adcq	136(%rsi), %r12
	movq	144(%rdx), %r15
	adcq	144(%rsi), %r15
	movq	152(%rdx), %r14
	adcq	152(%rsi), %r14
	movq	160(%rdx), %rbx
	adcq	160(%rsi), %rbx
	movq	168(%rdx), %r11
	adcq	168(%rsi), %r11
	movq	176(%rdx), %r10
	adcq	176(%rsi), %r10
	movq	184(%rdx), %r9
	adcq	184(%rsi), %r9
	movq	192(%rdx), %r8
	adcq	192(%rsi), %r8
	movq	200(%rdx), %rcx
	adcq	200(%rsi), %rcx
	movq	208(%rdx), %rax
	adcq	208(%rsi), %rax
	movq	216(%rdx), %rdx
	adcq	216(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	%r13, 128(%rdi)
	movq	%r12, 136(%rdi)
	movq	%r15, 144(%rdi)
	movq	%r14, 152(%rdi)
	movq	%rbx, 160(%rdi)
	movq	%r11, 168(%rdi)
	movq	%r10, 176(%rdi)
	movq	%r9, 184(%rdi)
	movq	%r8, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movq	%rax, 208(%rdi)
	movq	%rdx, 216(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end110:
	.size	mclb_addNF28, .Lfunc_end110-mclb_addNF28
                                        # -- End function
	.globl	mclb_subNF28                    # -- Begin function mclb_subNF28
	.p2align	4, 0x90
	.type	mclb_subNF28,@function
mclb_subNF28:                           # @mclb_subNF28
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rcx
	sbbq	72(%rdx), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rcx
	sbbq	80(%rdx), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rbp
	sbbq	120(%rdx), %rbp
	movq	128(%rsi), %r13
	sbbq	128(%rdx), %r13
	movq	136(%rsi), %r12
	sbbq	136(%rdx), %r12
	movq	144(%rsi), %r15
	sbbq	144(%rdx), %r15
	movq	152(%rsi), %r14
	sbbq	152(%rdx), %r14
	movq	160(%rsi), %rbx
	sbbq	160(%rdx), %rbx
	movq	168(%rsi), %r11
	sbbq	168(%rdx), %r11
	movq	176(%rsi), %r10
	sbbq	176(%rdx), %r10
	movq	184(%rsi), %r9
	sbbq	184(%rdx), %r9
	movq	192(%rsi), %r8
	sbbq	192(%rdx), %r8
	movq	200(%rsi), %rcx
	sbbq	200(%rdx), %rcx
	movq	216(%rsi), %rax
	movq	208(%rsi), %rsi
	sbbq	208(%rdx), %rsi
	sbbq	216(%rdx), %rax
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	%r13, 128(%rdi)
	movq	%r12, 136(%rdi)
	movq	%r15, 144(%rdi)
	movq	%r14, 152(%rdi)
	movq	%rbx, 160(%rdi)
	movq	%r11, 168(%rdi)
	movq	%r10, 176(%rdi)
	movq	%r9, 184(%rdi)
	movq	%r8, 192(%rdi)
	movq	%rcx, 200(%rdi)
	movq	%rsi, 208(%rdi)
	movq	%rax, 216(%rdi)
	shrq	$63, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end111:
	.size	mclb_subNF28, .Lfunc_end111-mclb_subNF28
                                        # -- End function
	.globl	mclb_add29                      # -- Begin function mclb_add29
	.p2align	4, 0x90
	.type	mclb_add29,@function
mclb_add29:                             # @mclb_add29
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rbp
	adcq	128(%rsi), %rbp
	movq	136(%rdx), %r13
	adcq	136(%rsi), %r13
	movq	144(%rdx), %r12
	adcq	144(%rsi), %r12
	movq	152(%rdx), %r15
	adcq	152(%rsi), %r15
	movq	160(%rdx), %r14
	adcq	160(%rsi), %r14
	movq	168(%rdx), %rbx
	adcq	168(%rsi), %rbx
	movq	176(%rdx), %r11
	adcq	176(%rsi), %r11
	movq	184(%rdx), %r10
	adcq	184(%rsi), %r10
	movq	192(%rdx), %r9
	adcq	192(%rsi), %r9
	movq	200(%rdx), %r8
	adcq	200(%rsi), %r8
	movq	208(%rdx), %rcx
	adcq	208(%rsi), %rcx
	movq	216(%rdx), %rax
	adcq	216(%rsi), %rax
	movq	224(%rdx), %rdx
	adcq	224(%rsi), %rdx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	%rbp, 128(%rdi)
	movq	%r13, 136(%rdi)
	movq	%r12, 144(%rdi)
	movq	%r15, 152(%rdi)
	movq	%r14, 160(%rdi)
	movq	%rbx, 168(%rdi)
	movq	%r11, 176(%rdi)
	movq	%r10, 184(%rdi)
	movq	%r9, 192(%rdi)
	movq	%r8, 200(%rdi)
	movq	%rcx, 208(%rdi)
	movq	%rax, 216(%rdi)
	movq	%rdx, 224(%rdi)
	setb	%al
	movzbl	%al, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end112:
	.size	mclb_add29, .Lfunc_end112-mclb_add29
                                        # -- End function
	.globl	mclb_sub29                      # -- Begin function mclb_sub29
	.p2align	4, 0x90
	.type	mclb_sub29,@function
mclb_sub29:                             # @mclb_sub29
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rbp
	sbbq	128(%rdx), %rbp
	movq	136(%rsi), %r13
	sbbq	136(%rdx), %r13
	movq	144(%rsi), %r12
	sbbq	144(%rdx), %r12
	movq	152(%rsi), %r15
	sbbq	152(%rdx), %r15
	movq	160(%rsi), %r14
	sbbq	160(%rdx), %r14
	movq	168(%rsi), %rbx
	sbbq	168(%rdx), %rbx
	movq	176(%rsi), %r11
	sbbq	176(%rdx), %r11
	movq	184(%rsi), %r10
	sbbq	184(%rdx), %r10
	movq	192(%rsi), %r9
	sbbq	192(%rdx), %r9
	movq	200(%rsi), %r8
	sbbq	200(%rdx), %r8
	movq	208(%rsi), %rcx
	sbbq	208(%rdx), %rcx
	movq	216(%rsi), %rax
	sbbq	216(%rdx), %rax
	movq	224(%rsi), %rsi
	sbbq	224(%rdx), %rsi
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	%rbp, 128(%rdi)
	movq	%r13, 136(%rdi)
	movq	%r12, 144(%rdi)
	movq	%r15, 152(%rdi)
	movq	%r14, 160(%rdi)
	movq	%rbx, 168(%rdi)
	movq	%r11, 176(%rdi)
	movq	%r10, 184(%rdi)
	movq	%r9, 192(%rdi)
	movq	%r8, 200(%rdi)
	movq	%rcx, 208(%rdi)
	movq	%rax, 216(%rdi)
	movq	%rsi, 224(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end113:
	.size	mclb_sub29, .Lfunc_end113-mclb_sub29
                                        # -- End function
	.globl	mclb_addNF29                    # -- Begin function mclb_addNF29
	.p2align	4, 0x90
	.type	mclb_addNF29,@function
mclb_addNF29:                           # @mclb_addNF29
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rcx
	adcq	72(%rsi), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	adcq	88(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rbp
	adcq	128(%rsi), %rbp
	movq	136(%rdx), %r13
	adcq	136(%rsi), %r13
	movq	144(%rdx), %r12
	adcq	144(%rsi), %r12
	movq	152(%rdx), %r15
	adcq	152(%rsi), %r15
	movq	160(%rdx), %r14
	adcq	160(%rsi), %r14
	movq	168(%rdx), %rbx
	adcq	168(%rsi), %rbx
	movq	176(%rdx), %r11
	adcq	176(%rsi), %r11
	movq	184(%rdx), %r10
	adcq	184(%rsi), %r10
	movq	192(%rdx), %r9
	adcq	192(%rsi), %r9
	movq	200(%rdx), %r8
	adcq	200(%rsi), %r8
	movq	208(%rdx), %rax
	adcq	208(%rsi), %rax
	movq	224(%rdx), %rcx
	movq	216(%rdx), %rdx
	adcq	216(%rsi), %rdx
	adcq	224(%rsi), %rcx
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	%rbp, 128(%rdi)
	movq	%r13, 136(%rdi)
	movq	%r12, 144(%rdi)
	movq	%r15, 152(%rdi)
	movq	%r14, 160(%rdi)
	movq	%rbx, 168(%rdi)
	movq	%r11, 176(%rdi)
	movq	%r10, 184(%rdi)
	movq	%r9, 192(%rdi)
	movq	%r8, 200(%rdi)
	movq	%rax, 208(%rdi)
	movq	%rdx, 216(%rdi)
	movq	%rcx, 224(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end114:
	.size	mclb_addNF29, .Lfunc_end114-mclb_addNF29
                                        # -- End function
	.globl	mclb_subNF29                    # -- Begin function mclb_subNF29
	.p2align	4, 0x90
	.type	mclb_subNF29,@function
mclb_subNF29:                           # @mclb_subNF29
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rbp
	sbbq	136(%rdx), %rbp
	movq	144(%rsi), %r13
	sbbq	144(%rdx), %r13
	movq	152(%rsi), %r12
	sbbq	152(%rdx), %r12
	movq	160(%rsi), %r15
	sbbq	160(%rdx), %r15
	movq	168(%rsi), %r14
	sbbq	168(%rdx), %r14
	movq	176(%rsi), %rbx
	sbbq	176(%rdx), %rbx
	movq	184(%rsi), %r11
	sbbq	184(%rdx), %r11
	movq	192(%rsi), %r10
	sbbq	192(%rdx), %r10
	movq	200(%rsi), %r9
	sbbq	200(%rdx), %r9
	movq	208(%rsi), %r8
	sbbq	208(%rdx), %r8
	movq	216(%rsi), %rcx
	sbbq	216(%rdx), %rcx
	movq	224(%rsi), %rax
	sbbq	224(%rdx), %rax
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	%rbp, 136(%rdi)
	movq	%r13, 144(%rdi)
	movq	%r12, 152(%rdi)
	movq	%r15, 160(%rdi)
	movq	%r14, 168(%rdi)
	movq	%rbx, 176(%rdi)
	movq	%r11, 184(%rdi)
	movq	%r10, 192(%rdi)
	movq	%r9, 200(%rdi)
	movq	%r8, 208(%rdi)
	movq	%rcx, 216(%rdi)
	movq	%rax, 224(%rdi)
	shrq	$63, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end115:
	.size	mclb_subNF29, .Lfunc_end115-mclb_subNF29
                                        # -- End function
	.globl	mclb_add30                      # -- Begin function mclb_add30
	.p2align	4, 0x90
	.type	mclb_add30,@function
mclb_add30:                             # @mclb_add30
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rbp
	adcq	136(%rsi), %rbp
	movq	144(%rdx), %r13
	adcq	144(%rsi), %r13
	movq	152(%rdx), %r12
	adcq	152(%rsi), %r12
	movq	160(%rdx), %r15
	adcq	160(%rsi), %r15
	movq	168(%rdx), %r14
	adcq	168(%rsi), %r14
	movq	176(%rdx), %rbx
	adcq	176(%rsi), %rbx
	movq	184(%rdx), %r11
	adcq	184(%rsi), %r11
	movq	192(%rdx), %r10
	adcq	192(%rsi), %r10
	movq	200(%rdx), %r9
	adcq	200(%rsi), %r9
	movq	208(%rdx), %r8
	adcq	208(%rsi), %r8
	movq	216(%rdx), %rcx
	adcq	216(%rsi), %rcx
	movq	224(%rdx), %rax
	adcq	224(%rsi), %rax
	movq	232(%rdx), %rdx
	adcq	232(%rsi), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	%rbp, 136(%rdi)
	movq	%r13, 144(%rdi)
	movq	%r12, 152(%rdi)
	movq	%r15, 160(%rdi)
	movq	%r14, 168(%rdi)
	movq	%rbx, 176(%rdi)
	movq	%r11, 184(%rdi)
	movq	%r10, 192(%rdi)
	movq	%r9, 200(%rdi)
	movq	%r8, 208(%rdi)
	movq	%rcx, 216(%rdi)
	movq	%rax, 224(%rdi)
	movq	%rdx, 232(%rdi)
	setb	%al
	movzbl	%al, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end116:
	.size	mclb_add30, .Lfunc_end116-mclb_add30
                                        # -- End function
	.globl	mclb_sub30                      # -- Begin function mclb_sub30
	.p2align	4, 0x90
	.type	mclb_sub30,@function
mclb_sub30:                             # @mclb_sub30
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	80(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rcx
	sbbq	72(%rdx), %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	sbbq	80(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rbp
	sbbq	136(%rdx), %rbp
	movq	144(%rsi), %r13
	sbbq	144(%rdx), %r13
	movq	152(%rsi), %r12
	sbbq	152(%rdx), %r12
	movq	160(%rsi), %r15
	sbbq	160(%rdx), %r15
	movq	168(%rsi), %r14
	sbbq	168(%rdx), %r14
	movq	176(%rsi), %rbx
	sbbq	176(%rdx), %rbx
	movq	184(%rsi), %r11
	sbbq	184(%rdx), %r11
	movq	192(%rsi), %r10
	sbbq	192(%rdx), %r10
	movq	200(%rsi), %r9
	sbbq	200(%rdx), %r9
	movq	208(%rsi), %r8
	sbbq	208(%rdx), %r8
	movq	216(%rsi), %rax
	sbbq	216(%rdx), %rax
	movq	232(%rsi), %rcx
	movq	224(%rsi), %rsi
	sbbq	224(%rdx), %rsi
	sbbq	232(%rdx), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	%rbp, 136(%rdi)
	movq	%r13, 144(%rdi)
	movq	%r12, 152(%rdi)
	movq	%r15, 160(%rdi)
	movq	%r14, 168(%rdi)
	movq	%rbx, 176(%rdi)
	movq	%r11, 184(%rdi)
	movq	%r10, 192(%rdi)
	movq	%r9, 200(%rdi)
	movq	%r8, 208(%rdi)
	movq	%rax, 216(%rdi)
	movq	%rsi, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end117:
	.size	mclb_sub30, .Lfunc_end117-mclb_sub30
                                        # -- End function
	.globl	mclb_addNF30                    # -- Begin function mclb_addNF30
	.p2align	4, 0x90
	.type	mclb_addNF30,@function
mclb_addNF30:                           # @mclb_addNF30
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rbp
	adcq	136(%rsi), %rbp
	movq	144(%rdx), %r13
	adcq	144(%rsi), %r13
	movq	152(%rdx), %r12
	adcq	152(%rsi), %r12
	movq	160(%rdx), %r15
	adcq	160(%rsi), %r15
	movq	168(%rdx), %r14
	adcq	168(%rsi), %r14
	movq	176(%rdx), %rbx
	adcq	176(%rsi), %rbx
	movq	184(%rdx), %r11
	adcq	184(%rsi), %r11
	movq	192(%rdx), %r10
	adcq	192(%rsi), %r10
	movq	200(%rdx), %r9
	adcq	200(%rsi), %r9
	movq	208(%rdx), %r8
	adcq	208(%rsi), %r8
	movq	216(%rdx), %rcx
	adcq	216(%rsi), %rcx
	movq	224(%rdx), %rax
	adcq	224(%rsi), %rax
	movq	232(%rdx), %rdx
	adcq	232(%rsi), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	%rbp, 136(%rdi)
	movq	%r13, 144(%rdi)
	movq	%r12, 152(%rdi)
	movq	%r15, 160(%rdi)
	movq	%r14, 168(%rdi)
	movq	%rbx, 176(%rdi)
	movq	%r11, 184(%rdi)
	movq	%r10, 192(%rdi)
	movq	%r9, 200(%rdi)
	movq	%r8, 208(%rdi)
	movq	%rcx, 216(%rdi)
	movq	%rax, 224(%rdi)
	movq	%rdx, 232(%rdi)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end118:
	.size	mclb_addNF30, .Lfunc_end118-mclb_addNF30
                                        # -- End function
	.globl	mclb_subNF30                    # -- Begin function mclb_subNF30
	.p2align	4, 0x90
	.type	mclb_subNF30,@function
mclb_subNF30:                           # @mclb_subNF30
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	144(%rsi), %rbp
	sbbq	144(%rdx), %rbp
	movq	152(%rsi), %r13
	sbbq	152(%rdx), %r13
	movq	160(%rsi), %r12
	sbbq	160(%rdx), %r12
	movq	168(%rsi), %r15
	sbbq	168(%rdx), %r15
	movq	176(%rsi), %r14
	sbbq	176(%rdx), %r14
	movq	184(%rsi), %rbx
	sbbq	184(%rdx), %rbx
	movq	192(%rsi), %r11
	sbbq	192(%rdx), %r11
	movq	200(%rsi), %r10
	sbbq	200(%rdx), %r10
	movq	208(%rsi), %r9
	sbbq	208(%rdx), %r9
	movq	216(%rsi), %r8
	sbbq	216(%rdx), %r8
	movq	224(%rsi), %rcx
	sbbq	224(%rdx), %rcx
	movq	232(%rsi), %rax
	sbbq	232(%rdx), %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 136(%rdi)
	movq	%rbp, 144(%rdi)
	movq	%r13, 152(%rdi)
	movq	%r12, 160(%rdi)
	movq	%r15, 168(%rdi)
	movq	%r14, 176(%rdi)
	movq	%rbx, 184(%rdi)
	movq	%r11, 192(%rdi)
	movq	%r10, 200(%rdi)
	movq	%r9, 208(%rdi)
	movq	%r8, 216(%rdi)
	movq	%rcx, 224(%rdi)
	movq	%rax, 232(%rdi)
	shrq	$63, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end119:
	.size	mclb_subNF30, .Lfunc_end119-mclb_subNF30
                                        # -- End function
	.globl	mclb_add31                      # -- Begin function mclb_add31
	.p2align	4, 0x90
	.type	mclb_add31,@function
mclb_add31:                             # @mclb_add31
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	88(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rcx
	adcq	32(%rsi), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rcx
	adcq	40(%rsi), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rcx
	adcq	48(%rsi), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rcx
	adcq	56(%rsi), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rcx
	adcq	64(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rcx
	adcq	72(%rsi), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rcx
	adcq	80(%rsi), %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	adcq	88(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rax
	adcq	136(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	144(%rdx), %rbp
	adcq	144(%rsi), %rbp
	movq	152(%rdx), %r13
	adcq	152(%rsi), %r13
	movq	160(%rdx), %r12
	adcq	160(%rsi), %r12
	movq	168(%rdx), %r15
	adcq	168(%rsi), %r15
	movq	176(%rdx), %r14
	adcq	176(%rsi), %r14
	movq	184(%rdx), %rbx
	adcq	184(%rsi), %rbx
	movq	192(%rdx), %r11
	adcq	192(%rsi), %r11
	movq	200(%rdx), %r10
	adcq	200(%rsi), %r10
	movq	208(%rdx), %r9
	adcq	208(%rsi), %r9
	movq	216(%rdx), %r8
	adcq	216(%rsi), %r8
	movq	224(%rdx), %rax
	adcq	224(%rsi), %rax
	movq	240(%rdx), %rcx
	movq	232(%rdx), %rdx
	adcq	232(%rsi), %rdx
	adcq	240(%rsi), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 136(%rdi)
	movq	%rbp, 144(%rdi)
	movq	%r13, 152(%rdi)
	movq	%r12, 160(%rdi)
	movq	%r15, 168(%rdi)
	movq	%r14, 176(%rdi)
	movq	%rbx, 184(%rdi)
	movq	%r11, 192(%rdi)
	movq	%r10, 200(%rdi)
	movq	%r9, 208(%rdi)
	movq	%r8, 216(%rdi)
	movq	%rax, 224(%rdi)
	movq	%rdx, 232(%rdi)
	movq	%rcx, 240(%rdi)
	setb	%al
	movzbl	%al, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end120:
	.size	mclb_add31, .Lfunc_end120-mclb_add31
                                        # -- End function
	.globl	mclb_sub31                      # -- Begin function mclb_sub31
	.p2align	4, 0x90
	.type	mclb_sub31,@function
mclb_sub31:                             # @mclb_sub31
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	144(%rsi), %rbp
	sbbq	144(%rdx), %rbp
	movq	152(%rsi), %r13
	sbbq	152(%rdx), %r13
	movq	160(%rsi), %r12
	sbbq	160(%rdx), %r12
	movq	168(%rsi), %r15
	sbbq	168(%rdx), %r15
	movq	176(%rsi), %r14
	sbbq	176(%rdx), %r14
	movq	184(%rsi), %rbx
	sbbq	184(%rdx), %rbx
	movq	192(%rsi), %r11
	sbbq	192(%rdx), %r11
	movq	200(%rsi), %r10
	sbbq	200(%rdx), %r10
	movq	208(%rsi), %r9
	sbbq	208(%rdx), %r9
	movq	216(%rsi), %r8
	sbbq	216(%rdx), %r8
	movq	224(%rsi), %rcx
	sbbq	224(%rdx), %rcx
	movq	232(%rsi), %rax
	sbbq	232(%rdx), %rax
	movq	240(%rsi), %rsi
	sbbq	240(%rdx), %rsi
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 136(%rdi)
	movq	%rbp, 144(%rdi)
	movq	%r13, 152(%rdi)
	movq	%r12, 160(%rdi)
	movq	%r15, 168(%rdi)
	movq	%r14, 176(%rdi)
	movq	%rbx, 184(%rdi)
	movq	%r11, 192(%rdi)
	movq	%r10, 200(%rdi)
	movq	%r9, 208(%rdi)
	movq	%r8, 216(%rdi)
	movq	%rcx, 224(%rdi)
	movq	%rax, 232(%rdi)
	movq	%rsi, 240(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end121:
	.size	mclb_sub31, .Lfunc_end121-mclb_sub31
                                        # -- End function
	.globl	mclb_addNF31                    # -- Begin function mclb_addNF31
	.p2align	4, 0x90
	.type	mclb_addNF31,@function
mclb_addNF31:                           # @mclb_addNF31
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rax
	adcq	136(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	144(%rdx), %rbp
	adcq	144(%rsi), %rbp
	movq	152(%rdx), %r13
	adcq	152(%rsi), %r13
	movq	160(%rdx), %r12
	adcq	160(%rsi), %r12
	movq	168(%rdx), %r15
	adcq	168(%rsi), %r15
	movq	176(%rdx), %r14
	adcq	176(%rsi), %r14
	movq	184(%rdx), %rbx
	adcq	184(%rsi), %rbx
	movq	192(%rdx), %r11
	adcq	192(%rsi), %r11
	movq	200(%rdx), %r10
	adcq	200(%rsi), %r10
	movq	208(%rdx), %r9
	adcq	208(%rsi), %r9
	movq	216(%rdx), %r8
	adcq	216(%rsi), %r8
	movq	224(%rdx), %rcx
	adcq	224(%rsi), %rcx
	movq	232(%rdx), %rax
	adcq	232(%rsi), %rax
	movq	240(%rdx), %rdx
	adcq	240(%rsi), %rdx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 136(%rdi)
	movq	%rbp, 144(%rdi)
	movq	%r13, 152(%rdi)
	movq	%r12, 160(%rdi)
	movq	%r15, 168(%rdi)
	movq	%r14, 176(%rdi)
	movq	%rbx, 184(%rdi)
	movq	%r11, 192(%rdi)
	movq	%r10, 200(%rdi)
	movq	%r9, 208(%rdi)
	movq	%r8, 216(%rdi)
	movq	%rcx, 224(%rdi)
	movq	%rax, 232(%rdi)
	movq	%rdx, 240(%rdi)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end122:
	.size	mclb_addNF31, .Lfunc_end122-mclb_addNF31
                                        # -- End function
	.globl	mclb_subNF31                    # -- Begin function mclb_subNF31
	.p2align	4, 0x90
	.type	mclb_subNF31,@function
mclb_subNF31:                           # @mclb_subNF31
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	144(%rsi), %rax
	sbbq	144(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	152(%rsi), %rbp
	sbbq	152(%rdx), %rbp
	movq	160(%rsi), %r13
	sbbq	160(%rdx), %r13
	movq	168(%rsi), %r12
	sbbq	168(%rdx), %r12
	movq	176(%rsi), %r15
	sbbq	176(%rdx), %r15
	movq	184(%rsi), %r14
	sbbq	184(%rdx), %r14
	movq	192(%rsi), %rbx
	sbbq	192(%rdx), %rbx
	movq	200(%rsi), %r11
	sbbq	200(%rdx), %r11
	movq	208(%rsi), %r10
	sbbq	208(%rdx), %r10
	movq	216(%rsi), %r9
	sbbq	216(%rdx), %r9
	movq	224(%rsi), %r8
	sbbq	224(%rdx), %r8
	movq	232(%rsi), %rcx
	sbbq	232(%rdx), %rcx
	movq	240(%rsi), %rax
	sbbq	240(%rdx), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 136(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 144(%rdi)
	movq	%rbp, 152(%rdi)
	movq	%r13, 160(%rdi)
	movq	%r12, 168(%rdi)
	movq	%r15, 176(%rdi)
	movq	%r14, 184(%rdi)
	movq	%rbx, 192(%rdi)
	movq	%r11, 200(%rdi)
	movq	%r10, 208(%rdi)
	movq	%r9, 216(%rdi)
	movq	%r8, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movq	%rax, 240(%rdi)
	shrq	$63, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end123:
	.size	mclb_subNF31, .Lfunc_end123-mclb_subNF31
                                        # -- End function
	.globl	mclb_add32                      # -- Begin function mclb_add32
	.p2align	4, 0x90
	.type	mclb_add32,@function
mclb_add32:                             # @mclb_add32
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rax
	adcq	136(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	144(%rdx), %rax
	adcq	144(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	152(%rdx), %rbp
	adcq	152(%rsi), %rbp
	movq	160(%rdx), %r13
	adcq	160(%rsi), %r13
	movq	168(%rdx), %r12
	adcq	168(%rsi), %r12
	movq	176(%rdx), %r15
	adcq	176(%rsi), %r15
	movq	184(%rdx), %r14
	adcq	184(%rsi), %r14
	movq	192(%rdx), %rbx
	adcq	192(%rsi), %rbx
	movq	200(%rdx), %r11
	adcq	200(%rsi), %r11
	movq	208(%rdx), %r10
	adcq	208(%rsi), %r10
	movq	216(%rdx), %r9
	adcq	216(%rsi), %r9
	movq	224(%rdx), %r8
	adcq	224(%rsi), %r8
	movq	232(%rdx), %rcx
	adcq	232(%rsi), %rcx
	movq	240(%rdx), %rax
	adcq	240(%rsi), %rax
	movq	248(%rdx), %rdx
	adcq	248(%rsi), %rdx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 136(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 144(%rdi)
	movq	%rbp, 152(%rdi)
	movq	%r13, 160(%rdi)
	movq	%r12, 168(%rdi)
	movq	%r15, 176(%rdi)
	movq	%r14, 184(%rdi)
	movq	%rbx, 192(%rdi)
	movq	%r11, 200(%rdi)
	movq	%r10, 208(%rdi)
	movq	%r9, 216(%rdi)
	movq	%r8, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movq	%rax, 240(%rdi)
	movq	%rdx, 248(%rdi)
	setb	%al
	movzbl	%al, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end124:
	.size	mclb_add32, .Lfunc_end124-mclb_add32
                                        # -- End function
	.globl	mclb_sub32                      # -- Begin function mclb_sub32
	.p2align	4, 0x90
	.type	mclb_sub32,@function
mclb_sub32:                             # @mclb_sub32
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rax
	sbbq	56(%rdx), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	144(%rsi), %rax
	sbbq	144(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	152(%rsi), %rbp
	sbbq	152(%rdx), %rbp
	movq	160(%rsi), %r13
	sbbq	160(%rdx), %r13
	movq	168(%rsi), %r12
	sbbq	168(%rdx), %r12
	movq	176(%rsi), %r15
	sbbq	176(%rdx), %r15
	movq	184(%rsi), %r14
	sbbq	184(%rdx), %r14
	movq	192(%rsi), %rbx
	sbbq	192(%rdx), %rbx
	movq	200(%rsi), %r11
	sbbq	200(%rdx), %r11
	movq	208(%rsi), %r10
	sbbq	208(%rdx), %r10
	movq	216(%rsi), %r9
	sbbq	216(%rdx), %r9
	movq	224(%rsi), %r8
	sbbq	224(%rdx), %r8
	movq	232(%rsi), %rcx
	sbbq	232(%rdx), %rcx
	movq	240(%rsi), %rax
	sbbq	240(%rdx), %rax
	movq	248(%rsi), %rsi
	sbbq	248(%rdx), %rsi
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 136(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 144(%rdi)
	movq	%rbp, 152(%rdi)
	movq	%r13, 160(%rdi)
	movq	%r12, 168(%rdi)
	movq	%r15, 176(%rdi)
	movq	%r14, 184(%rdi)
	movq	%rbx, 192(%rdi)
	movq	%r11, 200(%rdi)
	movq	%r10, 208(%rdi)
	movq	%r9, 216(%rdi)
	movq	%r8, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movq	%rax, 240(%rdi)
	movq	%rsi, 248(%rdi)
	movl	$0, %eax
	sbbq	%rax, %rax
	andl	$1, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end125:
	.size	mclb_sub32, .Lfunc_end125-mclb_sub32
                                        # -- End function
	.globl	mclb_addNF32                    # -- Begin function mclb_addNF32
	.p2align	4, 0x90
	.type	mclb_addNF32,@function
mclb_addNF32:                           # @mclb_addNF32
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	32(%rdx), %rax
	adcq	32(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	40(%rdx), %rax
	adcq	40(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	48(%rdx), %rax
	adcq	48(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	56(%rdx), %rax
	adcq	56(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	64(%rdx), %rax
	adcq	64(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	72(%rdx), %rax
	adcq	72(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	120(%rdx), %rax
	adcq	120(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	128(%rdx), %rax
	adcq	128(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	136(%rdx), %rax
	adcq	136(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	144(%rdx), %rax
	adcq	144(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	152(%rdx), %rbp
	adcq	152(%rsi), %rbp
	movq	160(%rdx), %r13
	adcq	160(%rsi), %r13
	movq	168(%rdx), %r12
	adcq	168(%rsi), %r12
	movq	176(%rdx), %r15
	adcq	176(%rsi), %r15
	movq	184(%rdx), %r14
	adcq	184(%rsi), %r14
	movq	192(%rdx), %rbx
	adcq	192(%rsi), %rbx
	movq	200(%rdx), %r11
	adcq	200(%rsi), %r11
	movq	208(%rdx), %r10
	adcq	208(%rsi), %r10
	movq	216(%rdx), %r9
	adcq	216(%rsi), %r9
	movq	224(%rdx), %r8
	adcq	224(%rsi), %r8
	movq	232(%rdx), %rcx
	adcq	232(%rsi), %rcx
	movq	240(%rdx), %rax
	adcq	240(%rsi), %rax
	movq	248(%rdx), %rdx
	adcq	248(%rsi), %rdx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	(%rsp), %rsi                    # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 32(%rdi)
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 40(%rdi)
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 48(%rdi)
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 56(%rdi)
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 64(%rdi)
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 72(%rdi)
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 80(%rdi)
	movq	-72(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 88(%rdi)
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 96(%rdi)
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 104(%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 112(%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 120(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 128(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 136(%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 144(%rdi)
	movq	%rbp, 152(%rdi)
	movq	%r13, 160(%rdi)
	movq	%r12, 168(%rdi)
	movq	%r15, 176(%rdi)
	movq	%r14, 184(%rdi)
	movq	%rbx, 192(%rdi)
	movq	%r11, 200(%rdi)
	movq	%r10, 208(%rdi)
	movq	%r9, 216(%rdi)
	movq	%r8, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movq	%rax, 240(%rdi)
	movq	%rdx, 248(%rdi)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end126:
	.size	mclb_addNF32, .Lfunc_end126-mclb_addNF32
                                        # -- End function
	.globl	mclb_subNF32                    # -- Begin function mclb_subNF32
	.p2align	4, 0x90
	.type	mclb_subNF32,@function
mclb_subNF32:                           # @mclb_subNF32
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	32(%rsi), %rcx
	sbbq	32(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rcx
	sbbq	40(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rcx
	sbbq	48(%rdx), %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movq	56(%rsi), %rcx
	sbbq	56(%rdx), %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	64(%rsi), %rcx
	sbbq	64(%rdx), %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movq	72(%rsi), %rcx
	sbbq	72(%rdx), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	80(%rsi), %rcx
	sbbq	80(%rdx), %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	sbbq	88(%rdx), %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	120(%rsi), %rax
	sbbq	120(%rdx), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	128(%rsi), %rax
	sbbq	128(%rdx), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	136(%rsi), %rax
	sbbq	136(%rdx), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	144(%rsi), %rax
	sbbq	144(%rdx), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	152(%rsi), %rbp
	sbbq	152(%rdx), %rbp
	movq	160(%rsi), %r13
	sbbq	160(%rdx), %r13
	movq	168(%rsi), %r12
	sbbq	168(%rdx), %r12
	movq	176(%rsi), %r15
	sbbq	176(%rdx), %r15
	movq	184(%rsi), %r14
	sbbq	184(%rdx), %r14
	movq	192(%rsi), %rbx
	sbbq	192(%rdx), %rbx
	movq	200(%rsi), %r11
	sbbq	200(%rdx), %r11
	movq	208(%rsi), %r10
	sbbq	208(%rdx), %r10
	movq	216(%rsi), %r9
	sbbq	216(%rdx), %r9
	movq	224(%rsi), %r8
	sbbq	224(%rdx), %r8
	movq	232(%rsi), %rcx
	sbbq	232(%rdx), %rcx
	movq	248(%rsi), %rax
	movq	240(%rsi), %rsi
	sbbq	240(%rdx), %rsi
	sbbq	248(%rdx), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, (%rdi)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 8(%rdi)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 16(%rdi)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 24(%rdi)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 32(%rdi)
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 40(%rdi)
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 48(%rdi)
	movq	-40(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 56(%rdi)
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 64(%rdi)
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 72(%rdi)
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 80(%rdi)
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 88(%rdi)
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 96(%rdi)
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 104(%rdi)
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	movq	%rdx, 112(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 120(%rdi)
	movq	-112(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 128(%rdi)
	movq	-120(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 136(%rdi)
	movq	-128(%rsp), %rdx                # 8-byte Reload
	movq	%rdx, 144(%rdi)
	movq	%rbp, 152(%rdi)
	movq	%r13, 160(%rdi)
	movq	%r12, 168(%rdi)
	movq	%r15, 176(%rdi)
	movq	%r14, 184(%rdi)
	movq	%rbx, 192(%rdi)
	movq	%r11, 200(%rdi)
	movq	%r10, 208(%rdi)
	movq	%r9, 216(%rdi)
	movq	%r8, 224(%rdi)
	movq	%rcx, 232(%rdi)
	movq	%rsi, 240(%rdi)
	movq	%rax, 248(%rdi)
	shrq	$63, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end127:
	.size	mclb_subNF32, .Lfunc_end127-mclb_subNF32
                                        # -- End function
	.globl	mulUnit_inner64                 # -- Begin function mulUnit_inner64
	.p2align	4, 0x90
	.type	mulUnit_inner64,@function
mulUnit_inner64:                        # @mulUnit_inner64
# %bb.0:
	movq	%rsi, %rax
	mulq	(%rdi)
	retq
.Lfunc_end128:
	.size	mulUnit_inner64, .Lfunc_end128-mulUnit_inner64
                                        # -- End function
	.globl	mclb_mulUnit1                   # -- Begin function mclb_mulUnit1
	.p2align	4, 0x90
	.type	mclb_mulUnit1,@function
mclb_mulUnit1:                          # @mclb_mulUnit1
# %bb.0:
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	movq	%rdx, %rax
	retq
.Lfunc_end129:
	.size	mclb_mulUnit1, .Lfunc_end129-mclb_mulUnit1
                                        # -- End function
	.globl	mclb_mulUnitAdd1                # -- Begin function mclb_mulUnitAdd1
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd1,@function
mclb_mulUnitAdd1:                       # @mclb_mulUnitAdd1
# %bb.0:
	movq	%rdx, %rax
	mulq	(%rsi)
	addq	%rax, (%rdi)
	adcq	$0, %rdx
	movq	%rdx, %rax
	retq
.Lfunc_end130:
	.size	mclb_mulUnitAdd1, .Lfunc_end130-mclb_mulUnitAdd1
                                        # -- End function
	.globl	mclb_mul1                       # -- Begin function mclb_mul1
	.p2align	4, 0x90
	.type	mclb_mul1,@function
mclb_mul1:                              # @mclb_mul1
# %bb.0:
	movq	(%rdx), %rax
	mulq	(%rsi)
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	retq
.Lfunc_end131:
	.size	mclb_mul1, .Lfunc_end131-mclb_mul1
                                        # -- End function
	.globl	mclb_sqr1                       # -- Begin function mclb_sqr1
	.p2align	4, 0x90
	.type	mclb_sqr1,@function
mclb_sqr1:                              # @mclb_sqr1
# %bb.0:
	movq	(%rsi), %rax
	mulq	%rax
	movq	%rax, (%rdi)
	movq	%rdx, 8(%rdi)
	retq
.Lfunc_end132:
	.size	mclb_sqr1, .Lfunc_end132-mclb_sqr1
                                        # -- End function
	.globl	mulUnit_inner128                # -- Begin function mulUnit_inner128
	.p2align	4, 0x90
	.type	mulUnit_inner128,@function
mulUnit_inner128:                       # @mulUnit_inner128
# %bb.0:
	movq	%rsi, %rcx
	movq	%rsi, %rax
	mulq	(%rdi)
	movq	%rdx, %rsi
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	8(%rdi)
	movq	%rdx, %rcx
	addq	%rax, %rsi
	adcq	$0, %rcx
	movq	%r8, %rax
	movq	%rsi, %rdx
	retq
.Lfunc_end133:
	.size	mulUnit_inner128, .Lfunc_end133-mulUnit_inner128
                                        # -- End function
	.globl	mclb_mulUnit2                   # -- Begin function mclb_mulUnit2
	.p2align	4, 0x90
	.type	mclb_mulUnit2,@function
mclb_mulUnit2:                          # @mclb_mulUnit2
# %bb.0:
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	addq	%r8, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%rax, 8(%rdi)
	movq	%rdx, %rax
	retq
.Lfunc_end134:
	.size	mclb_mulUnit2, .Lfunc_end134-mclb_mulUnit2
                                        # -- End function
	.globl	mclb_mulUnitAdd2                # -- Begin function mclb_mulUnitAdd2
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd2,@function
mclb_mulUnitAdd2:                       # @mclb_mulUnitAdd2
# %bb.0:
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	addq	%r9, (%rdi)
	adcq	8(%rdi), %rax
	setb	%cl
	movzbl	%cl, %ecx
	addq	%r8, %rax
	adcq	%rdx, %rcx
	movq	%rax, 8(%rdi)
	movq	%rcx, %rax
	retq
.Lfunc_end135:
	.size	mclb_mulUnitAdd2, .Lfunc_end135-mclb_mulUnitAdd2
                                        # -- End function
	.globl	mclb_mul2                       # -- Begin function mclb_mul2
	.p2align	4, 0x90
	.type	mclb_mul2,@function
mclb_mul2:                              # @mclb_mul2
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %r8
	movq	(%rdx), %rcx
	movq	(%rsi), %r14
	movq	8(%rsi), %r11
	movq	%r14, %rax
	mulq	%rcx
	movq	%rdx, %r9
	movq	%rax, %r10
	movq	%r11, %rax
	mulq	%rcx
	movq	%rdx, %r15
	movq	%rax, %rbx
	addq	%r9, %rbx
	adcq	$0, %r15
	movq	8(%r8), %rcx
	movq	%rcx, %rax
	mulq	%r14
	movq	%rdx, %r8
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	%r11
	addq	%r8, %rax
	adcq	$0, %rdx
	addq	%rbx, %rsi
	adcq	%r15, %rax
	adcq	$0, %rdx
	movq	%r10, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rdx, 24(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end136:
	.size	mclb_mul2, .Lfunc_end136-mclb_mul2
                                        # -- End function
	.globl	mclb_sqr2                       # -- Begin function mclb_sqr2
	.p2align	4, 0x90
	.type	mclb_sqr2,@function
mclb_sqr2:                              # @mclb_sqr2
# %bb.0:
	movq	(%rsi), %rcx
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	8(%rsi), %rsi
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %r10
	addq	%rax, %r9
	movq	%rdx, %rcx
	adcq	$0, %rcx
	movq	%rsi, %rax
	mulq	%rsi
	addq	%r11, %rax
	adcq	$0, %rdx
	addq	%r10, %r9
	adcq	%rcx, %rax
	adcq	$0, %rdx
	movq	%r8, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rdx, 24(%rdi)
	retq
.Lfunc_end137:
	.size	mclb_sqr2, .Lfunc_end137-mclb_sqr2
                                        # -- End function
	.globl	mulUnit_inner192                # -- Begin function mulUnit_inner192
	.p2align	4, 0x90
	.type	mulUnit_inner192,@function
mulUnit_inner192:                       # @mulUnit_inner192
# %bb.0:
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	addq	%r9, %r11
	adcq	%r10, %rax
	adcq	$0, %rdx
	movq	%r8, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%rdi, %rax
	retq
.Lfunc_end138:
	.size	mulUnit_inner192, .Lfunc_end138-mulUnit_inner192
                                        # -- End function
	.globl	mclb_mulUnit3                   # -- Begin function mclb_mulUnit3
	.p2align	4, 0x90
	.type	mclb_mulUnit3,@function
mclb_mulUnit3:                          # @mclb_mulUnit3
# %bb.0:
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	addq	%r8, %r11
	adcq	%r10, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rdx, %rax
	retq
.Lfunc_end139:
	.size	mclb_mulUnit3, .Lfunc_end139-mclb_mulUnit3
                                        # -- End function
	.globl	mclb_mulUnitAdd3                # -- Begin function mclb_mulUnitAdd3
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd3,@function
mclb_mulUnitAdd3:                       # @mclb_mulUnitAdd3
# %bb.0:
	pushq	%rbx
	movq	%rdx, %r11
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%r11, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %rbx
	movq	%r11, %rax
	mulq	16(%rsi)
	addq	%r9, (%rdi)
	adcq	8(%rdi), %rbx
	adcq	16(%rdi), %rax
	setb	%cl
	movzbl	%cl, %esi
	addq	%r8, %rbx
	adcq	%r10, %rax
	adcq	%rdx, %rsi
	movq	%rbx, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rsi, %rax
	popq	%rbx
	retq
.Lfunc_end140:
	.size	mclb_mulUnitAdd3, .Lfunc_end140-mclb_mulUnitAdd3
                                        # -- End function
	.globl	mclb_mul3                       # -- Begin function mclb_mul3
	.p2align	4, 0x90
	.type	mclb_mul3,@function
mclb_mul3:                              # @mclb_mul3
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbp
	movq	%rdx, %rcx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	(%rsi), %r11
	movq	8(%rsi), %rbx
	movq	%r11, %rax
	mulq	%rbp
	movq	%rdx, %r9
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rax, %r12
	movq	%rdx, %r8
	movq	16(%rsi), %r14
	movq	%r14, %rax
	mulq	%rbp
	movq	%rax, %r13
	movq	%rdx, %rbp
	addq	%r9, %r12
	adcq	%r8, %r13
	adcq	$0, %rbp
	movq	8(%rcx), %rcx
	movq	%rcx, %rax
	mulq	%r11
	movq	%rdx, %r8
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	%r14
	movq	%rax, %rsi
	movq	%rdx, %rcx
	addq	%r8, %r10
	adcq	%r9, %rsi
	adcq	$0, %rcx
	addq	%r12, %r15
	adcq	%r13, %r10
	adcq	%rbp, %rsi
	adcq	$0, %rcx
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rbp
	movq	%rbp, %rax
	mulq	%r11
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rax, %rbx
	movq	%rdx, %r11
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rdi)
	movq	%rbp, %rax
	mulq	%r14
	addq	%r8, %rbx
	adcq	%r11, %rax
	adcq	$0, %rdx
	movq	%r15, 8(%rdi)
	addq	%r10, %r9
	adcq	%rsi, %rbx
	adcq	%rcx, %rax
	adcq	$0, %rdx
	movq	%r9, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rdx, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end141:
	.size	mclb_mul3, .Lfunc_end141-mclb_mul3
                                        # -- End function
	.globl	mclb_sqr3                       # -- Begin function mclb_sqr3
	.p2align	4, 0x90
	.type	mclb_sqr3,@function
mclb_sqr3:                              # @mclb_sqr3
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rcx
	movq	8(%rsi), %rbx
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r10
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rax, %r14
	movq	%rdx, %rbp
	movq	16(%rsi), %r11
	movq	%r11, %rax
	mulq	%rcx
	movq	%rax, %r8
	movq	%rdx, %r12
	addq	%r14, %r10
	movq	%rbp, %r15
	adcq	%rax, %r15
	movq	%rdx, %r9
	adcq	$0, %r9
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rdx, %rsi
	movq	%rax, %rcx
	movq	%r11, %rax
	mulq	%rbx
	movq	%rax, %rbx
	movq	%rdx, %r13
	addq	%rbp, %rcx
	adcq	%rax, %rsi
	movq	%rdx, %rbp
	adcq	$0, %rbp
	addq	%r14, %r10
	adcq	%r15, %rcx
	adcq	%r9, %rsi
	adcq	$0, %rbp
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rdi)
	movq	%r11, %rax
	mulq	%r11
	addq	%rbx, %r12
	adcq	%r13, %rax
	adcq	$0, %rdx
	movq	%r10, 8(%rdi)
	addq	%r8, %rcx
	adcq	%rsi, %r12
	adcq	%rbp, %rax
	adcq	$0, %rdx
	movq	%rcx, 16(%rdi)
	movq	%r12, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rdx, 40(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end142:
	.size	mclb_sqr3, .Lfunc_end142-mclb_sqr3
                                        # -- End function
	.globl	mulUnit_inner256                # -- Begin function mulUnit_inner256
	.p2align	4, 0x90
	.type	mulUnit_inner256,@function
mulUnit_inner256:                       # @mulUnit_inner256
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	24(%rsi)
	addq	%r8, %r11
	adcq	%r10, %rbx
	adcq	%r14, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	%rdx, 32(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end143:
	.size	mulUnit_inner256, .Lfunc_end143-mulUnit_inner256
                                        # -- End function
	.globl	mclb_mulUnit4                   # -- Begin function mclb_mulUnit4
	.p2align	4, 0x90
	.type	mclb_mulUnit4,@function
mclb_mulUnit4:                          # @mclb_mulUnit4
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	24(%rsi)
	addq	%r8, %r11
	adcq	%r10, %rbx
	adcq	%r14, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	%rdx, %rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end144:
	.size	mclb_mulUnit4, .Lfunc_end144-mclb_mulUnit4
                                        # -- End function
	.globl	mclb_mulUnitAdd4                # -- Begin function mclb_mulUnitAdd4
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd4,@function
mclb_mulUnitAdd4:                       # @mclb_mulUnitAdd4
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	24(%rsi)
	addq	%r9, (%rdi)
	adcq	8(%rdi), %r11
	adcq	16(%rdi), %rbx
	adcq	24(%rdi), %rax
	setb	%cl
	movzbl	%cl, %ecx
	addq	%r8, %r11
	adcq	%r10, %rbx
	adcq	%r14, %rax
	adcq	%rdx, %rcx
	movq	%r11, 8(%rdi)
	movq	%rbx, 16(%rdi)
	movq	%rax, 24(%rdi)
	movq	%rcx, %rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end145:
	.size	mclb_mulUnitAdd4, .Lfunc_end145-mclb_mulUnitAdd4
                                        # -- End function
	.globl	mclb_mul4                       # -- Begin function mclb_mul4
	.p2align	4, 0x90
	.type	mclb_mul4,@function
mclb_mul4:                              # @mclb_mul4
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbp
	movq	%rdx, %r15
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	%rax, %r12
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rax, %r8
	movq	%rdx, %r9
	movq	16(%rsi), %rax
	movq	%rax, %rbx
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r13
	movq	%rdx, %r14
	movq	24(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rdx, %r10
	addq	-64(%rsp), %r8                  # 8-byte Folded Reload
	adcq	%r9, %r13
	adcq	%r14, %r11
	adcq	$0, %r10
	movq	8(%r15), %rsi
	movq	%rsi, %rax
	mulq	%r12
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	%rcx
	movq	%rcx, %r12
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	movq	%rax, %rbx
	movq	%rsi, %rax
	movq	-56(%rsp), %r9                  # 8-byte Reload
	mulq	%r9
	movq	%rax, %r14
	addq	%r8, %rbp
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	adcq	%r13, %r15
	adcq	%r11, %rbx
	adcq	%r10, %r14
	setb	%al
	addq	-72(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-24(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	%rcx, %r14
	movzbl	%al, %esi
	adcq	%rdx, %rsi
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rcx
	movq	%rcx, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	%r12
	movq	%rdx, %r11
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	%r9
	movq	%rax, %r9
	movq	%rdx, %r8
	addq	-72(%rsp), %r13                 # 8-byte Folded Reload
	adcq	%r11, %rbp
	adcq	%r12, %r9
	adcq	$0, %r8
	addq	%r15, %r10
	movq	%r10, %r12
	adcq	%rbx, %r13
	adcq	%r14, %rbp
	adcq	%rsi, %r9
	adcq	$0, %r8
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r15
	movq	%rax, %rsi
	movq	%rcx, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	addq	%r10, %rbx
	adcq	%r11, %rsi
	adcq	%r15, %rax
	adcq	$0, %rdx
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 8(%rdi)
	addq	%r13, %r14
	adcq	%rbp, %rbx
	adcq	%r9, %rsi
	adcq	%r8, %rax
	movq	%r12, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%rbx, 32(%rdi)
	movq	%rsi, 40(%rdi)
	movq	%rax, 48(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end146:
	.size	mclb_mul4, .Lfunc_end146-mclb_mul4
                                        # -- End function
	.globl	mclb_sqr4                       # -- Begin function mclb_sqr4
	.p2align	4, 0x90
	.type	mclb_sqr4,@function
mclb_sqr4:                              # @mclb_sqr4
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rbp
	movq	8(%rsi), %rcx
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %rbx
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rax, %r10
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %r8
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %r14
	movq	%r14, %rax
	mulq	%rbp
	movq	%rax, %r9
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, %r15
	movq	24(%rsi), %r12
	movq	%r12, %rax
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	addq	%r10, %rbx
	movq	%r8, %r10
	adcq	%r9, %r10
	movq	%r15, %r9
	adcq	%rax, %r9
	movq	%rdx, %r8
	adcq	$0, %r8
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r11
	movq	%rax, %rsi
	movq	%r14, %rax
	mulq	%rcx
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%r12, %rax
	mulq	%rcx
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	addq	-72(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	%rbp, %r11
	movq	%r13, %rcx
	adcq	%rax, %r13
	adcq	$0, %r12
	addq	-80(%rsp), %rbx                 # 8-byte Folded Reload
	movq	%rbx, -80(%rsp)                 # 8-byte Spill
	adcq	%r10, %rsi
	adcq	%r9, %r11
	adcq	%r8, %r13
	adcq	$0, %r12
	movq	%r14, %rax
	mulq	%r14
	movq	%rdx, %r9
	movq	%rax, %r10
	movq	-48(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rax
	mulq	%r14
	movq	%rax, %rbx
	movq	%rdx, %r14
	addq	-56(%rsp), %r15                 # 8-byte Folded Reload
	adcq	%rcx, %r10
	adcq	%rax, %r9
	movq	%rdx, %r8
	adcq	$0, %r8
	addq	-32(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	%r11, %r15
	adcq	%r13, %r10
	adcq	%r12, %r9
	adcq	$0, %r8
	movq	%rbp, %rax
	mulq	%rbp
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, (%rdi)
	movq	-24(%rsp), %rbp                 # 8-byte Reload
	addq	-40(%rsp), %rbp                 # 8-byte Folded Reload
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	adcq	%rbx, %rcx
	adcq	%r14, %rax
	adcq	$0, %rdx
	movq	-80(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, 8(%rdi)
	addq	-16(%rsp), %r15                 # 8-byte Folded Reload
	adcq	%r10, %rbp
	adcq	%r9, %rcx
	adcq	%r8, %rax
	movq	%rsi, 16(%rdi)
	movq	%r15, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%rax, 48(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end147:
	.size	mclb_sqr4, .Lfunc_end147-mclb_sqr4
                                        # -- End function
	.globl	mulUnit_inner320                # -- Begin function mulUnit_inner320
	.p2align	4, 0x90
	.type	mulUnit_inner320,@function
mulUnit_inner320:                       # @mulUnit_inner320
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	32(%rsi)
	addq	%r8, %r11
	adcq	%r10, %r12
	adcq	%r14, %rbx
	adcq	%r15, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rdx, 40(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end148:
	.size	mulUnit_inner320, .Lfunc_end148-mulUnit_inner320
                                        # -- End function
	.globl	mclb_mulUnit5                   # -- Begin function mclb_mulUnit5
	.p2align	4, 0x90
	.type	mclb_mulUnit5,@function
mclb_mulUnit5:                          # @mclb_mulUnit5
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	32(%rsi)
	addq	%r8, %r11
	adcq	%r10, %r12
	adcq	%r14, %rbx
	adcq	%r15, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end149:
	.size	mclb_mulUnit5, .Lfunc_end149-mclb_mulUnit5
                                        # -- End function
	.globl	mclb_mulUnitAdd5                # -- Begin function mclb_mulUnitAdd5
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd5,@function
mclb_mulUnitAdd5:                       # @mclb_mulUnitAdd5
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r9
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r11
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	32(%rsi)
	addq	%r10, (%rdi)
	adcq	8(%rdi), %r8
	adcq	16(%rdi), %r12
	adcq	24(%rdi), %rbx
	adcq	32(%rdi), %rax
	setb	%cl
	movzbl	%cl, %ecx
	addq	%r9, %r8
	adcq	%r11, %r12
	adcq	%r14, %rbx
	adcq	%r15, %rax
	adcq	%rdx, %rcx
	movq	%r8, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rax, 32(%rdi)
	movq	%rcx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end150:
	.size	mclb_mulUnitAdd5, .Lfunc_end150-mclb_mulUnitAdd5
                                        # -- End function
	.globl	mclb_mul5                       # -- Begin function mclb_mul5
	.p2align	4, 0x90
	.type	mclb_mul5,@function
mclb_mul5:                              # @mclb_mul5
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbp
	movq	%rdx, %rbx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	(%rsi), %r15
	movq	8(%rsi), %rcx
	movq	%r15, %rax
	movq	%r15, -24(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	movq	%rcx, %r13
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r9
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	16(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r10
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %r8
	movq	%r8, %rax
	movq	%r8, -16(%rsp)                  # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rdx, %rcx
	movq	32(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r12
	movq	%rdx, %r14
	addq	-104(%rsp), %r9                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r11                 # 8-byte Folded Reload
	adcq	%rcx, %r12
	adcq	$0, %r14
	movq	8(%rbx), %rbx
	movq	%rbx, %rax
	mulq	%r15
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %rsi
	movq	%rbx, %rax
	mulq	%r13
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rbx, %rax
	movq	-32(%rsp), %r13                 # 8-byte Reload
	mulq	%r13
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	%r8
	movq	%rdx, %r8
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rbx
	addq	%r9, %rsi
	movq	%rsi, -56(%rsp)                 # 8-byte Spill
	adcq	%r10, %r15
	adcq	%r11, %rbp
	adcq	%r12, %rcx
	adcq	%r14, %rbx
	setb	%al
	addq	-104(%rsp), %r15                # 8-byte Folded Reload
	adcq	-96(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	%r8, %rbx
	movzbl	%al, %r12d
	adcq	%rdx, %r12
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rsi
	movq	%rsi, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	%r13
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rsi, %rax
	movq	-40(%rsp), %r13                 # 8-byte Reload
	mulq	%r13
	movq	%rax, %r11
	movq	%rdx, %r10
	addq	-104(%rsp), %r8                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-72(%rsp), %r11                 # 8-byte Folded Reload
	adcq	$0, %r10
	addq	%r15, -96(%rsp)                 # 8-byte Folded Spill
	adcq	%rbp, %r8
	adcq	%rcx, %r14
	adcq	%rbx, %r9
	adcq	%r12, %r11
	adcq	$0, %r10
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rax
	mulq	%r13
	movq	%rax, %r13
	movq	%rdx, %r12
	movq	-104(%rsp), %rdx                # 8-byte Reload
	addq	-88(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-72(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	%rbx, %r13
	adcq	$0, %r12
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	%rax, (%rdi)
	addq	%r8, %rbp
	movq	%rbp, -48(%rsp)                 # 8-byte Spill
	adcq	%r14, %rdx
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	adcq	%r9, %r15
	adcq	%r11, %rcx
	adcq	%r10, %r13
	adcq	$0, %r12
	movq	-56(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 8(%rdi)
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movq	32(%rax), %rsi
	movq	%rsi, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, %r10
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r14
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 16(%rdi)
	addq	-80(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	%r10, %rbp
	adcq	%r11, %r9
	adcq	%r14, %rax
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	adcq	$0, %rdx
	addq	-104(%rsp), %r8                 # 8-byte Folded Reload
	adcq	%r15, %rbx
	adcq	%rcx, %rbp
	adcq	%r13, %r9
	adcq	%r12, %rax
	movq	%r8, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rbp, 48(%rdi)
	movq	%r9, 56(%rdi)
	movq	%rax, 64(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 72(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end151:
	.size	mclb_mul5, .Lfunc_end151-mclb_mul5
                                        # -- End function
	.globl	mclb_sqr5                       # -- Begin function mclb_sqr5
	.p2align	4, 0x90
	.type	mclb_sqr5,@function
mclb_sqr5:                              # @mclb_sqr5
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	(%rsi), %rbx
	movq	8(%rsi), %rbp
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rdx, %rcx
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, %rax
	mulq	%rbx
	movq	%rax, %r8
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	16(%rsi), %r10
	movq	%r10, %rax
	mulq	%rbx
	movq	%rax, %r11
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rdx, %r14
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %r15
	movq	%r15, %rax
	movq	%r15, -128(%rsp)                # 8-byte Spill
	mulq	%rbx
	movq	%rax, %r9
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rdx, %r12
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	mulq	%rbx
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, (%rsp)                    # 8-byte Spill
	addq	%r8, %rcx
	adcq	%r11, %r13
	movq	%r13, -112(%rsp)                # 8-byte Spill
	adcq	%r9, %r14
	adcq	%rax, %r12
	movq	%rdx, %r11
	adcq	$0, %r11
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %r8
	movq	%rax, %r13
	movq	%r10, %rax
	mulq	%rbp
	movq	%rdx, %r9
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%r15, %rax
	mulq	%rbp
	movq	%rdx, %r15
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rax                 # 8-byte Reload
	mulq	%rbp
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	addq	-120(%rsp), %r13                # 8-byte Folded Reload
	adcq	%rsi, %r8
	movq	%r9, %rsi
	adcq	%rbx, %rsi
	movq	%r15, %rbp
	adcq	%rax, %rbp
	movq	%rdx, %r15
	adcq	$0, %r15
	addq	-104(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	adcq	-112(%rsp), %r13                # 8-byte Folded Reload
	adcq	%r14, %r8
	adcq	%r12, %rsi
	adcq	%r11, %rbp
	adcq	$0, %r15
	movq	%r10, %rax
	mulq	%r10
	movq	%rdx, %r11
	movq	%rax, %r9
	movq	-128(%rsp), %rax                # 8-byte Reload
	mulq	%r10
	movq	%rdx, %r12
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	-88(%rsp), %rbx                 # 8-byte Reload
	movq	%rbx, %rax
	mulq	%r10
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rdx, %r14
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	addq	-72(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r9                  # 8-byte Folded Reload
	adcq	%rcx, %r11
	movq	%r12, %r10
	adcq	%rax, %r10
	movq	%r14, %r12
	adcq	$0, %r12
	addq	-40(%rsp), %r13                 # 8-byte Folded Reload
	adcq	%r8, %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	adcq	%rsi, %r9
	adcq	%rbp, %r11
	adcq	%r15, %r10
	adcq	$0, %r12
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r8
	movq	%rax, %rsi
	movq	%rbx, %rax
	mulq	%rcx
	movq	%rax, %r15
	movq	%rdx, %rcx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, (%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	addq	-56(%rsp), %rax                 # 8-byte Folded Reload
	movq	-48(%rsp), %rdx                 # 8-byte Reload
	adcq	-80(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-120(%rsp), %rsi                # 8-byte Folded Reload
	adcq	%r15, %r8
	movq	-104(%rsp), %rbp                # 8-byte Reload
	movq	%rbp, 8(%rdi)
	movq	%rcx, %rbp
	adcq	$0, %rbp
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	addq	-8(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	%r9, %rax
	movq	%rax, %r9
	adcq	%r11, %rdx
	movq	%rdx, %r11
	adcq	%r10, %rsi
	adcq	%r12, %r8
	adcq	$0, %rbp
	movq	%rbx, %rax
	mulq	%rbx
	movq	%r13, 16(%rdi)
	movq	(%rsp), %rbx                    # 8-byte Reload
	addq	-32(%rsp), %rbx                 # 8-byte Folded Reload
	movq	-24(%rsp), %r10                 # 8-byte Reload
	adcq	-112(%rsp), %r10                # 8-byte Folded Reload
	adcq	%r15, %r14
	adcq	-128(%rsp), %rax                # 8-byte Folded Reload
	movq	%rcx, 24(%rdi)
	adcq	$0, %rdx
	addq	16(%rsp), %r9                   # 8-byte Folded Reload
	adcq	%r11, %rbx
	adcq	%rsi, %r10
	adcq	%r8, %r14
	adcq	%rbp, %rax
	movq	%r9, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%r10, 48(%rdi)
	movq	%r14, 56(%rdi)
	movq	%rax, 64(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 72(%rdi)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end152:
	.size	mclb_sqr5, .Lfunc_end152-mclb_sqr5
                                        # -- End function
	.globl	mulUnit_inner384                # -- Begin function mulUnit_inner384
	.p2align	4, 0x90
	.type	mulUnit_inner384,@function
mulUnit_inner384:                       # @mulUnit_inner384
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	addq	%r8, %r11
	adcq	%r10, %r12
	adcq	%r14, %rbx
	adcq	%r15, %rbp
	adcq	%r13, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%rax, 40(%rdi)
	movq	%rdx, 48(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end153:
	.size	mulUnit_inner384, .Lfunc_end153-mulUnit_inner384
                                        # -- End function
	.globl	mclb_mulUnit6                   # -- Begin function mclb_mulUnit6
	.p2align	4, 0x90
	.type	mclb_mulUnit6,@function
mclb_mulUnit6:                          # @mclb_mulUnit6
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	addq	%r8, %r11
	adcq	%r10, %r15
	adcq	%r14, %rbx
	adcq	%r12, %rbp
	adcq	%r13, %rax
	adcq	$0, %rdx
	movq	%r9, (%rdi)
	movq	%r11, 8(%rdi)
	movq	%r15, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%rax, 40(%rdi)
	movq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end154:
	.size	mclb_mulUnit6, .Lfunc_end154-mclb_mulUnit6
                                        # -- End function
	.globl	mclb_mulUnitAdd6                # -- Begin function mclb_mulUnitAdd6
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd6,@function
mclb_mulUnitAdd6:                       # @mclb_mulUnitAdd6
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r9
	movq	%rax, %r15
	movq	%rbx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r12
	movq	%rax, %r11
	movq	%rbx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r13
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	32(%rsi)
	movq	%rdx, %rbp
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	40(%rsi)
	addq	%r15, (%rdi)
	adcq	8(%rdi), %r8
	adcq	16(%rdi), %r11
	adcq	24(%rdi), %r14
	adcq	32(%rdi), %rcx
	adcq	40(%rdi), %rax
	setb	%bl
	addq	%r9, %r8
	adcq	%r10, %r11
	adcq	%r12, %r14
	adcq	%r13, %rcx
	adcq	%rbp, %rax
	movzbl	%bl, %esi
	adcq	%rdx, %rsi
	movq	%r8, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%rax, 40(%rdi)
	movq	%rsi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end155:
	.size	mclb_mulUnitAdd6, .Lfunc_end155-mclb_mulUnitAdd6
                                        # -- End function
	.globl	mclb_mul6                       # -- Begin function mclb_mul6
	.p2align	4, 0x90
	.type	mclb_mul6,@function
mclb_mul6:                              # @mclb_mul6
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdx, %r9
	movq	(%rdx), %rbp
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	8(%rsi), %r11
	mulq	%rbp
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%r11, %rax
	movq	%r11, -72(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %rbx
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	16(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %rcx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r10
	movq	%rdx, %r15
	movq	32(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r14
	movq	%rdx, %r8
	movq	40(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r13
	movq	%rdx, %r12
	addq	-112(%rsp), %rbx                # 8-byte Folded Reload
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	adcq	-120(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	adcq	-128(%rsp), %r10                # 8-byte Folded Reload
	adcq	%r15, %r14
	adcq	%r8, %r13
	adcq	$0, %r12
	movq	8(%r9), %rsi
	movq	%rsi, %rax
	movq	-80(%rsp), %r8                  # 8-byte Reload
	mulq	%r8
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	%r11
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, %r11
	movq	%rsi, %rax
	movq	-24(%rsp), %r9                  # 8-byte Reload
	mulq	%r9
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %rbx
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rsi
	addq	-48(%rsp), %rbp                 # 8-byte Folded Reload
	movq	%rbp, (%rsp)                    # 8-byte Spill
	adcq	-120(%rsp), %r11                # 8-byte Folded Reload
	adcq	%r10, %r15
	adcq	%r14, %rcx
	adcq	%r13, %rbx
	adcq	%r12, %rsi
	setb	%al
	addq	-112(%rsp), %r11                # 8-byte Folded Reload
	adcq	-128(%rsp), %r15                # 8-byte Folded Reload
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	-96(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-104(%rsp), %rsi                # 8-byte Folded Reload
	movzbl	%al, %r13d
	adcq	%rdx, %r13
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rbp
	movq	%rbp, %rax
	mulq	%r8
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	-72(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rbp, %rax
	mulq	%r9
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rbp, %rax
	movq	-40(%rsp), %r12                 # 8-byte Reload
	mulq	%r12
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rbp, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %r9
	movq	%rbp, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r14
	movq	%rdx, %rbp
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	-120(%rsp), %rax                # 8-byte Folded Reload
	adcq	-128(%rsp), %r8                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-104(%rsp), %r14                # 8-byte Folded Reload
	adcq	$0, %rbp
	addq	%r11, -48(%rsp)                 # 8-byte Folded Spill
	adcq	%r15, %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	adcq	%rcx, %r8
	adcq	%rbx, %r10
	adcq	%rsi, %r9
	adcq	%r13, %r14
	adcq	$0, %rbp
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rcx
	movq	%rcx, %rax
	mulq	-80(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	-72(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	%r12
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	movq	-32(%rsp), %rbx                 # 8-byte Reload
	mulq	%rbx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r15
	movq	%rdx, %rsi
	movq	-120(%rsp), %rax                # 8-byte Reload
	addq	-128(%rsp), %rax                # 8-byte Folded Reload
	adcq	-96(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-104(%rsp), %r11                # 8-byte Folded Reload
	adcq	-8(%rsp), %r12                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r15                 # 8-byte Folded Reload
	adcq	$0, %rsi
	movq	-112(%rsp), %rcx                # 8-byte Reload
	addq	%rcx, -88(%rsp)                 # 8-byte Folded Spill
	adcq	%r8, %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	adcq	%r10, %r13
	adcq	%r9, %r11
	adcq	%r14, %r12
	adcq	%rbp, %r15
	adcq	$0, %rsi
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	32(%rax), %rcx
	movq	%rcx, %rax
	mulq	-80(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	-72(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	%rbx
	movq	%rax, %r8
	movq	%rdx, %rbx
	movq	%rcx, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r10
	movq	%rdx, %r9
	movq	-112(%rsp), %rcx                # 8-byte Reload
	addq	-96(%rsp), %rcx                 # 8-byte Folded Reload
	movq	-128(%rsp), %rdx                # 8-byte Reload
	adcq	-104(%rsp), %rdx                # 8-byte Folded Reload
	adcq	-8(%rsp), %r14                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r8                  # 8-byte Folded Reload
	adcq	%rbx, %r10
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, (%rdi)
	adcq	$0, %r9
	addq	-120(%rsp), %rbp                # 8-byte Folded Reload
	movq	%rbp, -120(%rsp)                # 8-byte Spill
	adcq	%r13, %rcx
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	adcq	%r11, %rdx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	adcq	%r12, %r14
	adcq	%r15, %r8
	adcq	%rsi, %r10
	adcq	$0, %r9
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, 8(%rdi)
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movq	40(%rax), %rsi
	movq	%rsi, %rax
	mulq	-80(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	-72(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-24(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rsi, %rax
	mulq	-40(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %r13
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rbx
	movq	%rdx, %r12
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	addq	-64(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-72(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-80(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	%r13, %rbx
	adcq	%r12, %rax
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, 24(%rdi)
	adcq	$0, %rdx
	addq	-112(%rsp), %r11                # 8-byte Folded Reload
	adcq	-128(%rsp), %r15                # 8-byte Folded Reload
	adcq	%r14, %rbp
	adcq	%r8, %rcx
	adcq	%r10, %rbx
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 32(%rdi)
	adcq	%r9, %rax
	movq	%r11, 40(%rdi)
	movq	%r15, 48(%rdi)
	movq	%rbp, 56(%rdi)
	movq	%rcx, 64(%rdi)
	movq	%rbx, 72(%rdi)
	movq	%rax, 80(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 88(%rdi)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end156:
	.size	mclb_mul6, .Lfunc_end156-mclb_mul6
                                        # -- End function
	.globl	mclb_sqr6                       # -- Begin function mclb_sqr6
	.p2align	4, 0x90
	.type	mclb_sqr6,@function
mclb_sqr6:                              # @mclb_sqr6
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	(%rsi), %rbp
	movq	8(%rsi), %rbx
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %rcx
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rax, %r12
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	16(%rsi), %r14
	movq	%r14, %rax
	mulq	%rbp
	movq	%rax, %r8
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, %r15
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r9
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rdx, %r10
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	40(%rsi), %rsi
	movq	%rsi, %rax
	movq	%rsi, -32(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	addq	%r12, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	-112(%rsp), %rcx                # 8-byte Reload
	adcq	%r8, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movq	%r13, %r8
	adcq	%r11, %r8
	adcq	%r9, %r15
	adcq	%rax, %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rdx, %rbp
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%r14, %rax
	mulq	%rbx
	movq	%rdx, %r12
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	-120(%rsp), %rax                # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %r10
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	-128(%rsp), %rax                # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r13
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	mulq	%rbx
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	-104(%rsp), %rsi                # 8-byte Reload
	addq	-112(%rsp), %rsi                # 8-byte Folded Reload
	adcq	%r11, %rbp
	movq	%r12, %rbx
	adcq	%r10, %rbx
	adcq	%rcx, %r9
	adcq	%rax, %r13
	movq	%rdx, %r12
	adcq	$0, %r12
	movq	-40(%rsp), %rax                 # 8-byte Reload
	addq	%rax, -8(%rsp)                  # 8-byte Folded Spill
	adcq	-56(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, -104(%rsp)                # 8-byte Spill
	adcq	%r8, %rbp
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	adcq	%r15, %rbx
	adcq	-64(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-88(%rsp), %r13                 # 8-byte Folded Reload
	adcq	$0, %r12
	movq	%r14, %rax
	mulq	%r14
	movq	%rdx, %rsi
	movq	%rax, %r10
	movq	-120(%rsp), %rax                # 8-byte Reload
	mulq	%r14
	movq	%rdx, %r8
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	-128(%rsp), %rax                # 8-byte Reload
	mulq	%r14
	movq	%rdx, %r11
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	-32(%rsp), %rax                 # 8-byte Reload
	mulq	%r14
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	-24(%rsp), %rbp                 # 8-byte Reload
	addq	-96(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%r15, %rsi
	movq	%r8, %r15
	adcq	%rcx, %r15
	adcq	%rax, %r11
	movq	%rdx, %r8
	adcq	$0, %r8
	movq	-48(%rsp), %rax                 # 8-byte Reload
	addq	%rax, -104(%rsp)                # 8-byte Folded Spill
	adcq	-72(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	%rbx, %r10
	adcq	%r9, %rsi
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	adcq	%r13, %r15
	adcq	%r12, %r11
	adcq	$0, %r8
	movq	-120(%rsp), %rbx                # 8-byte Reload
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rdx, %r12
	movq	%rax, %r14
	movq	-128(%rsp), %rax                # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	-32(%rsp), %rax                 # 8-byte Reload
	mulq	%rbx
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	addq	8(%rsp), %rsi                   # 8-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	(%rsp), %rcx                    # 8-byte Folded Reload
	adcq	-88(%rsp), %r14                 # 8-byte Folded Reload
	adcq	%r13, %r12
	movq	%r9, %rbx
	adcq	%rax, %rbx
	movq	%rdx, %r13
	adcq	$0, %r13
	addq	40(%rsp), %rbp                  # 8-byte Folded Reload
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	adcq	%r10, %rsi
	adcq	-72(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, %r9
	adcq	%r15, %r14
	adcq	%r11, %r12
	adcq	%r8, %rbx
	adcq	$0, %r13
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rax, %r15
	movq	%rdx, %r11
	movq	80(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rdi)
	movq	-32(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rax
	mulq	%rcx
	movq	%rax, %rcx
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rdx, %r8
	movq	64(%rsp), %r10                  # 8-byte Reload
	addq	24(%rsp), %r10                  # 8-byte Folded Reload
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	-64(%rsp), %rax                 # 8-byte Folded Reload
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	adcq	-96(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r15                 # 8-byte Folded Reload
	adcq	%rcx, %r11
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rdi)
	movq	%r8, %rcx
	adcq	$0, %r8
	addq	72(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	adcq	%r9, %r10
	adcq	%r14, %rax
	movq	%rax, %r9
	adcq	%r12, %rdx
	movq	%rdx, %r12
	adcq	%rbx, %r15
	adcq	%r13, %r11
	adcq	$0, %r8
	movq	-104(%rsp), %rax                # 8-byte Reload
	movq	%rax, 16(%rdi)
	movq	%rbp, %rax
	mulq	%rbp
	movq	88(%rsp), %rbx                  # 8-byte Reload
	addq	48(%rsp), %rbx                  # 8-byte Folded Reload
	movq	56(%rsp), %rbp                  # 8-byte Reload
	adcq	-40(%rsp), %rbp                 # 8-byte Folded Reload
	movq	-112(%rsp), %rsi                # 8-byte Reload
	adcq	-48(%rsp), %rsi                 # 8-byte Folded Reload
	movq	-120(%rsp), %r13                # 8-byte Reload
	adcq	-128(%rsp), %r13                # 8-byte Folded Reload
	adcq	%rcx, %rax
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 24(%rdi)
	adcq	$0, %rdx
	addq	96(%rsp), %r10                  # 8-byte Folded Reload
	adcq	%r9, %rbx
	adcq	%r12, %rbp
	adcq	%r15, %rsi
	adcq	%r11, %r13
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	movq	%rcx, 32(%rdi)
	adcq	%r8, %rax
	movq	%r10, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%rbp, 56(%rdi)
	movq	%rsi, 64(%rdi)
	movq	%r13, 72(%rdi)
	movq	%rax, 80(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 88(%rdi)
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end157:
	.size	mclb_sqr6, .Lfunc_end157-mclb_sqr6
                                        # -- End function
	.globl	mulUnit_inner448                # -- Begin function mulUnit_inner448
	.p2align	4, 0x90
	.type	mulUnit_inner448,@function
mulUnit_inner448:                       # @mulUnit_inner448
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r11
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	48(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	%r11, %r12
	adcq	%r14, %r13
	adcq	%r15, %rbx
	adcq	%rbp, %r10
	adcq	%r8, %rax
	adcq	$0, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%r13, 24(%rdi)
	movq	%rbx, 32(%rdi)
	movq	%r10, 40(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, 56(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end158:
	.size	mulUnit_inner448, .Lfunc_end158-mulUnit_inner448
                                        # -- End function
	.globl	mclb_mulUnit7                   # -- Begin function mclb_mulUnit7
	.p2align	4, 0x90
	.type	mclb_mulUnit7,@function
mclb_mulUnit7:                          # @mclb_mulUnit7
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r11
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	48(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	%r11, %r12
	adcq	%r14, %rbx
	adcq	%r15, %rbp
	adcq	%r13, %r10
	adcq	%r8, %rax
	adcq	$0, %rdx
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%r10, 40(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end159:
	.size	mclb_mulUnit7, .Lfunc_end159-mclb_mulUnit7
                                        # -- End function
	.globl	mclb_mulUnitAdd7                # -- Begin function mclb_mulUnitAdd7
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd7,@function
mclb_mulUnitAdd7:                       # @mclb_mulUnitAdd7
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r15
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r12
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r11
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	48(%rsi)
	addq	%r9, (%rdi)
	adcq	8(%rdi), %r8
	adcq	16(%rdi), %r10
	adcq	24(%rdi), %r13
	adcq	32(%rdi), %rbp
	adcq	40(%rdi), %rbx
	adcq	48(%rdi), %rax
	setb	%cl
	movzbl	%cl, %ecx
	addq	-8(%rsp), %r8                   # 8-byte Folded Reload
	adcq	-16(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%r14, %r13
	adcq	%r15, %rbp
	adcq	%r12, %rbx
	adcq	%r11, %rax
	adcq	%rdx, %rcx
	movq	%r8, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r13, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%rax, 48(%rdi)
	movq	%rcx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end160:
	.size	mclb_mulUnitAdd7, .Lfunc_end160-mclb_mulUnitAdd7
                                        # -- End function
	.globl	mclb_mul7                       # -- Begin function mclb_mul7
	.p2align	4, 0x90
	.type	mclb_mul7,@function
mclb_mul7:                              # @mclb_mul7
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	(%rdx), %rbp
	movq	(%rsi), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	8(%rsi), %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	%rbp
	movq	%rax, %r9
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	16(%rsi), %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r10
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %rcx
	movq	%rdx, %r14
	movq	32(%rsi), %r13
	movq	%r13, %rax
	movq	%r13, -32(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %rbx
	movq	%rdx, %r8
	movq	40(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r12
	movq	%rdx, %r15
	movq	48(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rdx, %rsi
	addq	-120(%rsp), %r9                 # 8-byte Folded Reload
	movq	%r9, -104(%rsp)                 # 8-byte Spill
	adcq	-112(%rsp), %r10                # 8-byte Folded Reload
	movq	%r10, -112(%rsp)                # 8-byte Spill
	adcq	-128(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	adcq	%r14, %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	adcq	%r8, %r12
	adcq	%r15, %r11
	adcq	$0, %rsi
	movq	-40(%rsp), %r14                 # 8-byte Reload
	movq	8(%r14), %rbx
	movq	%rbx, %rax
	movq	8(%rsp), %r15                   # 8-byte Reload
	mulq	%r15
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rbx, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rbx, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	%r13
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rbx
	addq	-104(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	-112(%rsp), %r9                 # 8-byte Folded Reload
	adcq	-128(%rsp), %r10                # 8-byte Folded Reload
	adcq	24(%rsp), %r8                   # 8-byte Folded Reload
	adcq	%r12, %r13
	adcq	%r11, %rbp
	adcq	%rsi, %rbx
	setb	%al
	addq	-120(%rsp), %r9                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-72(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-80(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-96(%rsp), %rbx                 # 8-byte Folded Reload
	movzbl	%al, %eax
	adcq	%rdx, %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	16(%r14), %rsi
	movq	%rsi, %rax
	mulq	%r15
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r12
	movq	%rdx, %r15
	movq	-120(%rsp), %rax                # 8-byte Reload
	addq	-128(%rsp), %rax                # 8-byte Folded Reload
	movq	-112(%rsp), %rdx                # 8-byte Reload
	adcq	-24(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-72(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r12                 # 8-byte Folded Reload
	adcq	$0, %r15
	addq	%r9, 24(%rsp)                   # 8-byte Folded Spill
	adcq	%r10, %rax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	adcq	%r8, %rdx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	adcq	%r13, %r14
	adcq	%rbp, %r11
	adcq	%rbx, %rcx
	adcq	-104(%rsp), %r12                # 8-byte Folded Reload
	adcq	$0, %r15
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rsi
	movq	%rsi, %rax
	mulq	8(%rsp)                         # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %rbx
	movq	%rdx, %rbp
	movq	-104(%rsp), %rax                # 8-byte Reload
	addq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movq	-128(%rsp), %rdx                # 8-byte Reload
	adcq	-80(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r13                 # 8-byte Folded Reload
	adcq	(%rsp), %r9                     # 8-byte Folded Reload
	adcq	%r8, %rbx
	adcq	$0, %rbp
	movq	-120(%rsp), %rsi                # 8-byte Reload
	addq	%rsi, -24(%rsp)                 # 8-byte Folded Spill
	adcq	-112(%rsp), %rax                # 8-byte Folded Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	adcq	%r14, %rdx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	adcq	%r11, %r10
	adcq	%rcx, %r13
	adcq	%r12, %r9
	adcq	%r15, %rbx
	adcq	$0, %rbp
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	32(%rax), %rsi
	movq	%rsi, %rax
	mulq	8(%rsp)                         # 8-byte Folded Reload
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %r8
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, %r11
	movq	%rax, %r15
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r12
	movq	%rdx, %r14
	movq	-120(%rsp), %rax                # 8-byte Reload
	addq	-80(%rsp), %rax                 # 8-byte Folded Reload
	movq	-112(%rsp), %rdx                # 8-byte Reload
	adcq	-88(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-96(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	(%rsp), %r8                     # 8-byte Folded Reload
	adcq	32(%rsp), %r15                  # 8-byte Folded Reload
	adcq	%r11, %r12
	adcq	$0, %r14
	movq	-104(%rsp), %rsi                # 8-byte Reload
	addq	%rsi, -72(%rsp)                 # 8-byte Folded Spill
	adcq	-128(%rsp), %rax                # 8-byte Folded Reload
	movq	%rax, -120(%rsp)                # 8-byte Spill
	adcq	%r10, %rdx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	adcq	%r13, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	adcq	%r9, %r8
	adcq	%rbx, %r15
	adcq	%rbp, %r12
	adcq	$0, %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, (%rdi)
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	40(%rax), %rsi
	movq	%rsi, %rax
	mulq	8(%rsp)                         # 8-byte Folded Reload
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rsi, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rcx
	movq	%rsi, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, %rbx
	movq	%rax, %r13
	movq	%rsi, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rdx, %rbp
	movq	%rax, %r10
	movq	%rsi, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	movq	%rax, %r9
	movq	%rdx, %r11
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 8(%rdi)
	movq	-104(%rsp), %rdx                # 8-byte Reload
	addq	-88(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-128(%rsp), %rsi                # 8-byte Reload
	adcq	-96(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	(%rsp), %rcx                    # 8-byte Folded Reload
	adcq	32(%rsp), %r13                  # 8-byte Folded Reload
	adcq	%rbx, %r10
	adcq	%rbp, %r9
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 16(%rdi)
	adcq	$0, %r11
	movq	-120(%rsp), %rax                # 8-byte Reload
	addq	%rax, 16(%rsp)                  # 8-byte Folded Spill
	adcq	-112(%rsp), %rdx                # 8-byte Folded Reload
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	adcq	-80(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, -128(%rsp)                # 8-byte Spill
	adcq	%r8, %rcx
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	adcq	%r15, %r13
	adcq	%r12, %r10
	adcq	%r14, %r9
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 24(%rdi)
	adcq	$0, %r11
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	48(%rax), %rbp
	movq	%rbp, %rax
	mulq	8(%rsp)                         # 8-byte Folded Reload
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rbp, %rax
	mulq	-56(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rbp, %rax
	mulq	-64(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rbp, %rax
	mulq	-48(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	movq	%rbp, %rax
	mulq	-32(%rsp)                       # 8-byte Folded Reload
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rbp, %rax
	mulq	-8(%rsp)                        # 8-byte Folded Reload
	movq	%rax, %rcx
	movq	%rdx, %r12
	movq	-72(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	%rbp, %rax
	mulq	-16(%rsp)                       # 8-byte Folded Reload
	addq	-40(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-64(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	-48(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-32(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	%r12, %rax
	adcq	$0, %rdx
	movq	16(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 40(%rdi)
	addq	-104(%rsp), %r8                 # 8-byte Folded Reload
	adcq	-128(%rsp), %r14                # 8-byte Folded Reload
	adcq	-120(%rsp), %r15                # 8-byte Folded Reload
	adcq	%r13, %rsi
	adcq	%r10, %rbx
	adcq	%r9, %rcx
	adcq	%r11, %rax
	movq	%r8, 48(%rdi)
	movq	%r14, 56(%rdi)
	movq	%r15, 64(%rdi)
	movq	%rsi, 72(%rdi)
	movq	%rbx, 80(%rdi)
	movq	%rcx, 88(%rdi)
	movq	%rax, 96(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 104(%rdi)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end161:
	.size	mclb_mul7, .Lfunc_end161-mclb_mul7
                                        # -- End function
	.globl	mclb_sqr7                       # -- Begin function mclb_sqr7
	.p2align	4, 0x90
	.type	mclb_sqr7,@function
mclb_sqr7:                              # @mclb_sqr7
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$192, %rsp
	movq	(%rsi), %rbp
	movq	8(%rsi), %rbx
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %r9
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	movq	%rbx, %rax
	mulq	%rbp
	movq	%rax, %r8
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	16(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r14
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	24(%rsi), %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r15
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%rdx, %r13
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	32(%rsi), %rax
	movq	%rax, -112(%rsp)                # 8-byte Spill
	mulq	%rbp
	movq	%rax, %r11
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	%rdx, %r12
	movq	%rdx, 112(%rsp)                 # 8-byte Spill
	movq	40(%rsi), %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	mulq	%rbp
	movq	%rax, %rcx
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	movq	%rdx, %r10
	movq	%rdx, 152(%rsp)                 # 8-byte Spill
	movq	48(%rsi), %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	mulq	%rbp
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	movq	%rdx, 176(%rsp)                 # 8-byte Spill
	addq	%r8, %r9
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	-120(%rsp), %rsi                # 8-byte Reload
	adcq	%r14, %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	adcq	%r15, %rsi
	movq	%rsi, -72(%rsp)                 # 8-byte Spill
	adcq	%r11, %r13
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	adcq	%rcx, %r12
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	adcq	%rax, %r10
	adcq	$0, %rdx
	movq	%rdx, %r15
	movq	%rbx, %rax
	mulq	%rbx
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, %rcx
	movq	-32(%rsp), %rax                 # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r8
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %rsi
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	-56(%rsp), %rax                 # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r12
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r14
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, %r11
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	mulq	%rbx
	movq	%rdx, %r9
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %rax                 # 8-byte Reload
	mulq	%rbx
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	%rdx, 144(%rsp)                 # 8-byte Spill
	addq	-120(%rsp), %rcx                # 8-byte Folded Reload
	movq	-128(%rsp), %rbx                # 8-byte Reload
	adcq	%rsi, %rbx
	adcq	%r13, %r8
	movq	%r12, %r13
	adcq	%r11, %r13
	movq	%r14, %r11
	adcq	%rbp, %r11
	adcq	%rax, %r9
	adcq	$0, %rdx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	addq	%rax, 64(%rsp)                  # 8-byte Folded Spill
	adcq	32(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	adcq	-72(%rsp), %rbx                 # 8-byte Folded Reload
	movq	%rbx, -128(%rsp)                # 8-byte Spill
	adcq	8(%rsp), %r8                    # 8-byte Folded Reload
	movq	%r8, -80(%rsp)                  # 8-byte Spill
	adcq	48(%rsp), %r13                  # 8-byte Folded Reload
	adcq	%r10, %r11
	adcq	%r15, %r9
	movq	%r9, (%rsp)                     # 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	-32(%rsp), %r8                  # 8-byte Reload
	movq	%r8, %rax
	mulq	%r8
	movq	%rdx, %rbx
	movq	%rax, %rcx
	movq	-56(%rsp), %rax                 # 8-byte Reload
	mulq	%r8
	movq	%rdx, %r15
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	movq	%rax, %r14
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	mulq	%r8
	movq	%rdx, %r10
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	-104(%rsp), %rax                # 8-byte Reload
	mulq	%r8
	movq	%rdx, %r12
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, %rbp
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	-48(%rsp), %rax                 # 8-byte Reload
	mulq	%r8
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	addq	-16(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	%r14, %rbx
	movq	%r15, %r14
	adcq	%r9, %r14
	adcq	%rbp, %r10
	adcq	%rax, %r12
	movq	%rdx, %r15
	adcq	$0, %r15
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	%rax, -24(%rsp)                 # 8-byte Folded Spill
	adcq	-128(%rsp), %rsi                # 8-byte Folded Reload
	movq	%rsi, -96(%rsp)                 # 8-byte Spill
	adcq	-80(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	adcq	%r13, %rbx
	movq	%rbx, -80(%rsp)                 # 8-byte Spill
	adcq	%r11, %r14
	adcq	(%rsp), %r10                    # 8-byte Folded Reload
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	adcq	-8(%rsp), %r12                  # 8-byte Folded Reload
	adcq	$0, %r15
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rdx, %r8
	movq	%rax, %r9
	movq	-112(%rsp), %rax                # 8-byte Reload
	mulq	%rbp
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, %rbx
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	-104(%rsp), %r10                # 8-byte Reload
	movq	%r10, %rax
	mulq	%rbp
	movq	%rdx, %r11
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, %r13
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	-48(%rsp), %rax                 # 8-byte Reload
	mulq	%rbp
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	addq	16(%rsp), %rcx                  # 8-byte Folded Reload
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	adcq	80(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	88(%rsp), %r9                   # 8-byte Folded Reload
	adcq	%rbx, %r8
	movq	-128(%rsp), %rbp                # 8-byte Reload
	adcq	%r13, %rbp
	movq	%r11, %r13
	adcq	%rax, %r13
	movq	%rdx, %r11
	adcq	$0, %r11
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	addq	40(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	adcq	-80(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, -64(%rsp)                 # 8-byte Spill
	adcq	%r14, %r9
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	adcq	-16(%rsp), %r8                  # 8-byte Folded Reload
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	adcq	%r12, %rbp
	adcq	%r15, %r13
	adcq	$0, %r11
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, %rax
	mulq	%rcx
	movq	%rdx, %r8
	movq	%rax, %rsi
	movq	%r10, %rax
	mulq	%rcx
	movq	%rdx, %r9
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rax
	mulq	%rcx
	movq	%rax, %rcx
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rdx, %r10
	movq	160(%rsp), %rax                 # 8-byte Reload
	movq	%rax, (%rdi)
	movq	112(%rsp), %r12                 # 8-byte Reload
	addq	96(%rsp), %r12                  # 8-byte Folded Reload
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	8(%rsp), %rax                   # 8-byte Folded Reload
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	adcq	72(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	-128(%rsp), %rsi                # 8-byte Folded Reload
	adcq	%rbx, %r8
	adcq	%rcx, %r9
	movq	64(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, 8(%rdi)
	movq	%r10, %r15
	adcq	$0, %r15
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	addq	128(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	adcq	-64(%rsp), %r12                 # 8-byte Folded Reload
	adcq	16(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	40(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	adcq	%rbp, %rsi
	adcq	%r13, %r8
	adcq	%r11, %r9
	adcq	$0, %r15
	movq	-104(%rsp), %rbp                # 8-byte Reload
	movq	%rbp, %rax
	mulq	%rbp
	movq	%rbp, %rcx
	movq	%rax, %rbp
	movq	%rdx, %rbx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 16(%rdi)
	movq	%r14, %rax
	mulq	%rcx
	movq	%rax, %r11
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%rdx, %r14
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	152(%rsp), %r13                 # 8-byte Reload
	addq	104(%rsp), %r13                 # 8-byte Folded Reload
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	adcq	-8(%rsp), %rdx                  # 8-byte Folded Reload
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	-88(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	-80(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	%r11, %rbx
	movq	%r14, %r11
	adcq	$0, %r11
	movq	-96(%rsp), %r14                 # 8-byte Reload
	movq	%r14, 24(%rdi)
	addq	168(%rsp), %r12                 # 8-byte Folded Reload
	adcq	56(%rsp), %r13                  # 8-byte Folded Reload
	adcq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r14
	adcq	%rsi, %rdx
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	adcq	%r8, %rcx
	adcq	%r9, %rbp
	adcq	%r15, %rbx
	adcq	$0, %r11
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movq	%rax, 32(%rdi)
	movq	-48(%rsp), %rax                 # 8-byte Reload
	mulq	%rax
	movq	176(%rsp), %rsi                 # 8-byte Reload
	addq	136(%rsp), %rsi                 # 8-byte Folded Reload
	movq	144(%rsp), %r8                  # 8-byte Reload
	adcq	48(%rsp), %r8                   # 8-byte Folded Reload
	movq	-32(%rsp), %r9                  # 8-byte Reload
	adcq	24(%rsp), %r9                   # 8-byte Folded Reload
	movq	-56(%rsp), %r15                 # 8-byte Reload
	adcq	-112(%rsp), %r15                # 8-byte Folded Reload
	adcq	-64(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-104(%rsp), %rax                # 8-byte Folded Reload
	adcq	$0, %rdx
	movq	%r12, 40(%rdi)
	addq	184(%rsp), %r13                 # 8-byte Folded Reload
	adcq	%r14, %rsi
	adcq	-120(%rsp), %r8                 # 8-byte Folded Reload
	adcq	%rcx, %r9
	adcq	%rbp, %r15
	adcq	%rbx, %r10
	adcq	%r11, %rax
	movq	%r13, 48(%rdi)
	movq	%rsi, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%r9, 72(%rdi)
	movq	%r15, 80(%rdi)
	movq	%r10, 88(%rdi)
	movq	%rax, 96(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 104(%rdi)
	addq	$192, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end162:
	.size	mclb_sqr7, .Lfunc_end162-mclb_sqr7
                                        # -- End function
	.globl	mulUnit_inner512                # -- Begin function mulUnit_inner512
	.p2align	4, 0x90
	.type	mulUnit_inner512,@function
mulUnit_inner512:                       # @mulUnit_inner512
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, %r13
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %rbx
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, %r15
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	56(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	%r13, %rbp
	adcq	%rbx, %r14
	adcq	%r8, %r12
	adcq	%r15, %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%rbp, 32(%rdi)
	movq	%r14, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rax, 56(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 64(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end163:
	.size	mulUnit_inner512, .Lfunc_end163-mulUnit_inner512
                                        # -- End function
	.globl	mclb_mulUnit8                   # -- Begin function mclb_mulUnit8
	.p2align	4, 0x90
	.type	mclb_mulUnit8,@function
mclb_mulUnit8:                          # @mclb_mulUnit8
# %bb.0:
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner512@PLT
	movq	72(%rsp), %rax
	movups	8(%rsp), %xmm0
	movups	24(%rsp), %xmm1
	movups	40(%rsp), %xmm2
	movups	56(%rsp), %xmm3
	movups	%xmm0, (%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm3, 48(%rbx)
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end164:
	.size	mclb_mulUnit8, .Lfunc_end164-mclb_mulUnit8
                                        # -- End function
	.globl	mclb_mulUnitAdd8                # -- Begin function mclb_mulUnitAdd8
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd8,@function
mclb_mulUnitAdd8:                       # @mclb_mulUnitAdd8
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, %r13
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %rbp
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, %r12
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	addq	%r15, (%rdi)
	adcq	8(%rdi), %r14
	adcq	16(%rdi), %r10
	adcq	24(%rdi), %r11
	adcq	32(%rdi), %r9
	adcq	40(%rdi), %r8
	adcq	48(%rdi), %rbx
	adcq	56(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %r14                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r9                  # 8-byte Folded Reload
	adcq	%r13, %r8
	adcq	%rbp, %rbx
	adcq	%r12, %rax
	movq	%r14, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r9, 32(%rdi)
	movq	%r8, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%rax, 56(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end165:
	.size	mclb_mulUnitAdd8, .Lfunc_end165-mclb_mulUnitAdd8
                                        # -- End function
	.globl	mclb_mul8                       # -- Begin function mclb_mul8
	.p2align	4, 0x90
	.type	mclb_mul8,@function
mclb_mul8:                              # @mclb_mul8
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$648, %rsp                      # imm = 0x288
	movq	%rdx, %rax
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %r12
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	(%rdx), %rdx
	movq	%rax, %r14
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	leaq	576(%rsp), %rdi
	callq	mulUnit_inner512@PLT
	movq	640(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	632(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	624(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	616(%rsp), %r13
	movq	608(%rsp), %rbp
	movq	600(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	592(%rsp), %rbx
	movq	576(%rsp), %rax
	movq	584(%rsp), %r15
	movq	%rax, (%r12)
	movq	8(%r14), %rdx
	leaq	504(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	addq	504(%rsp), %r15
	adcq	512(%rsp), %rbx
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	520(%rsp), %r12
	adcq	528(%rsp), %rbp
	adcq	536(%rsp), %r13
	movq	%r13, %rbx
	movq	16(%rsp), %r13                  # 8-byte Reload
	adcq	544(%rsp), %r13
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	552(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	568(%rsp), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	560(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	$0, %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	movq	%r15, 8(%rax)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rdx
	leaq	432(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	432(%rsp), %rax
	adcq	440(%rsp), %r12
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	adcq	448(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	adcq	456(%rsp), %rbx
	movq	%rbx, (%rsp)                    # 8-byte Spill
	adcq	464(%rsp), %r13
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	472(%rsp), %rbp
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	480(%rsp), %rbx
	movq	496(%rsp), %r15
	adcq	488(%rsp), %r14
	adcq	$0, %r15
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 16(%rcx)
	movq	48(%rsp), %r12                  # 8-byte Reload
	movq	24(%r12), %rdx
	leaq	360(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	360(%rsp), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	368(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	adcq	384(%rsp), %r13
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	adcq	392(%rsp), %rbp
	adcq	400(%rsp), %rbx
	adcq	408(%rsp), %r14
	movq	424(%rsp), %r13
	adcq	416(%rsp), %r15
	adcq	$0, %r13
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 24(%rcx)
	movq	32(%r12), %rdx
	leaq	288(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	288(%rsp), %rax
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	296(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	312(%rsp), %rbp
	adcq	320(%rsp), %rbx
	adcq	328(%rsp), %r14
	adcq	336(%rsp), %r15
	movq	352(%rsp), %r12
	adcq	344(%rsp), %r13
	adcq	$0, %r12
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rcx)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	40(%rax), %rdx
	leaq	216(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	(%rsp), %rax                    # 8-byte Reload
	addq	216(%rsp), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	224(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	232(%rsp), %rbp
	adcq	240(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	adcq	248(%rsp), %r14
	adcq	256(%rsp), %r15
	adcq	264(%rsp), %r13
	movq	280(%rsp), %rbx
	adcq	272(%rsp), %r12
	adcq	$0, %rbx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rcx)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	48(%rax), %rdx
	leaq	144(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	144(%rsp), %rax
	adcq	152(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	160(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	168(%rsp), %r14
	adcq	176(%rsp), %r15
	adcq	184(%rsp), %r13
	adcq	192(%rsp), %r12
	movq	208(%rsp), %rbp
	adcq	200(%rsp), %rbx
	adcq	$0, %rbp
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rcx)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	56(%rax), %rdx
	leaq	72(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner512@PLT
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	72(%rsp), %rdx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	80(%rsp), %rsi
	adcq	88(%rsp), %r14
	adcq	96(%rsp), %r15
	adcq	104(%rsp), %r13
	adcq	112(%rsp), %r12
	adcq	120(%rsp), %rbx
	adcq	128(%rsp), %rbp
	movq	136(%rsp), %rax
	adcq	$0, %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 56(%rcx)
	movq	%rsi, 64(%rcx)
	movq	%r14, 72(%rcx)
	movq	%r15, 80(%rcx)
	movq	%r13, 88(%rcx)
	movq	%r12, 96(%rcx)
	movq	%rbx, 104(%rcx)
	movq	%rbp, 112(%rcx)
	movq	%rax, 120(%rcx)
	addq	$648, %rsp                      # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end166:
	.size	mclb_mul8, .Lfunc_end166-mclb_mul8
                                        # -- End function
	.globl	mclb_sqr8                       # -- Begin function mclb_sqr8
	.p2align	4, 0x90
	.type	mclb_sqr8,@function
mclb_sqr8:                              # @mclb_sqr8
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$648, %rsp                      # imm = 0x288
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	576(%rsp), %rdi
	callq	mulUnit_inner512@PLT
	movq	640(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	632(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	624(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	616(%rsp), %rbp
	movq	608(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	600(%rsp), %rbx
	movq	592(%rsp), %r12
	movq	576(%rsp), %rax
	movq	584(%rsp), %r14
	movq	%rax, (%r15)
	movq	8(%r13), %rdx
	leaq	504(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	addq	504(%rsp), %r14
	adcq	512(%rsp), %r12
	adcq	520(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	528(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	536(%rsp), %rbp
	movq	%rbp, %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	544(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	552(%rsp), %r15
	movq	568(%rsp), %rax
	movq	(%rsp), %rbp                    # 8-byte Reload
	adcq	560(%rsp), %rbp
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%r14, 8(%rax)
	movq	16(%r13), %rdx
	leaq	432(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	addq	432(%rsp), %r12
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	440(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	448(%rsp), %r14
	adcq	456(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	464(%rsp), %rbx
	adcq	472(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	adcq	480(%rsp), %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movq	496(%rsp), %r15
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	488(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %r15
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movq	%r12, 16(%rbp)
	movq	24(%r13), %rdx
	leaq	360(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	addq	360(%rsp), %rax
	adcq	368(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	384(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	392(%rsp), %rbx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	400(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %r14                  # 8-byte Reload
	adcq	408(%rsp), %r14
	movq	424(%rsp), %r12
	adcq	416(%rsp), %r15
	adcq	$0, %r12
	movq	%rax, 24(%rbp)
	movq	32(%r13), %rdx
	leaq	288(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	288(%rsp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	296(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, %rbp
	adcq	312(%rsp), %rbp
	movq	(%rsp), %rbx                    # 8-byte Reload
	adcq	320(%rsp), %rbx
	adcq	328(%rsp), %r14
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	adcq	336(%rsp), %r15
	movq	352(%rsp), %r14
	adcq	344(%rsp), %r12
	adcq	$0, %r14
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 32(%rcx)
	movq	40(%r13), %rdx
	leaq	216(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	216(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	224(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	232(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	240(%rsp), %rbx
	movq	%rbx, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %rbp                  # 8-byte Reload
	adcq	248(%rsp), %rbp
	adcq	256(%rsp), %r15
	adcq	264(%rsp), %r12
	movq	280(%rsp), %rbx
	adcq	272(%rsp), %r14
	adcq	$0, %rbx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rcx)
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	48(%r13), %rdx
	leaq	144(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner512@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	144(%rsp), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	152(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	160(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	adcq	168(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	adcq	176(%rsp), %r15
	adcq	184(%rsp), %r12
	adcq	192(%rsp), %r14
	movq	208(%rsp), %r13
	adcq	200(%rsp), %rbx
	adcq	$0, %r13
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movq	%rax, 48(%rbp)
	movq	64(%rsp), %rsi                  # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	72(%rsp), %rdi
	callq	mulUnit_inner512@PLT
	movq	16(%rsp), %rsi                  # 8-byte Reload
	addq	72(%rsp), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	80(%rsp), %rdi
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	88(%rsp), %rdx
	adcq	96(%rsp), %r15
	adcq	104(%rsp), %r12
	adcq	112(%rsp), %r14
	adcq	120(%rsp), %rbx
	adcq	128(%rsp), %r13
	movq	136(%rsp), %rax
	adcq	$0, %rax
	movq	%rsi, 56(%rbp)
	movq	%rdi, 64(%rbp)
	movq	%rdx, 72(%rbp)
	movq	%r15, 80(%rbp)
	movq	%r12, 88(%rbp)
	movq	%r14, 96(%rbp)
	movq	%rbx, 104(%rbp)
	movq	%r13, 112(%rbp)
	movq	%rax, 120(%rbp)
	addq	$648, %rsp                      # imm = 0x288
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end167:
	.size	mclb_sqr8, .Lfunc_end167-mclb_sqr8
                                        # -- End function
	.globl	mulUnit_inner576                # -- Begin function mulUnit_inner576
	.p2align	4, 0x90
	.type	mulUnit_inner576,@function
mulUnit_inner576:                       # @mulUnit_inner576
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, %r15
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, %r12
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, %rbp
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	64(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-48(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	%r15, %r13
	adcq	%r12, %r8
	adcq	%rbp, %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%r8, 56(%rdi)
	movq	%rax, 64(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 72(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end168:
	.size	mulUnit_inner576, .Lfunc_end168-mulUnit_inner576
                                        # -- End function
	.globl	mclb_mulUnit9                   # -- Begin function mclb_mulUnit9
	.p2align	4, 0x90
	.type	mclb_mulUnit9,@function
mclb_mulUnit9:                          # @mclb_mulUnit9
# %bb.0:
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner576@PLT
	movq	72(%rsp), %rax
	movq	64(%rsp), %rcx
	movups	(%rsp), %xmm0
	movups	16(%rsp), %xmm1
	movups	32(%rsp), %xmm2
	movups	48(%rsp), %xmm3
	movups	%xmm0, (%rbx)
	movups	%xmm1, 16(%rbx)
	movups	%xmm2, 32(%rbx)
	movups	%xmm3, 48(%rbx)
	movq	%rcx, 64(%rbx)
	addq	$80, %rsp
	popq	%rbx
	retq
.Lfunc_end169:
	.size	mclb_mulUnit9, .Lfunc_end169-mclb_mulUnit9
                                        # -- End function
	.globl	mclb_mulUnitAdd9                # -- Begin function mclb_mulUnitAdd9
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd9,@function
mclb_mulUnitAdd9:                       # @mclb_mulUnitAdd9
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, %rbp
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, %r13
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	64(%rsi)
	addq	%r15, (%rdi)
	adcq	8(%rdi), %r14
	adcq	16(%rdi), %r11
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r12
	adcq	40(%rdi), %r9
	adcq	48(%rdi), %rbx
	adcq	56(%rdi), %r8
	adcq	64(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %r14                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-48(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	%rbp, %r8
	adcq	%r13, %rax
	movq	%r14, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r12, 32(%rdi)
	movq	%r9, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%r8, 56(%rdi)
	movq	%rax, 64(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end170:
	.size	mclb_mulUnitAdd9, .Lfunc_end170-mclb_mulUnitAdd9
                                        # -- End function
	.globl	mclb_mul9                       # -- Begin function mclb_mul9
	.p2align	4, 0x90
	.type	mclb_mul9,@function
mclb_mul9:                              # @mclb_mul9
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$824, %rsp                      # imm = 0x338
	movq	%rdx, %rax
	movq	%rdi, %r14
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	(%rdx), %rdx
	movq	%rax, %r13
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	leaq	744(%rsp), %rdi
	movq	%rsi, %r12
	callq	mulUnit_inner576@PLT
	movq	816(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	808(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	800(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	792(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	784(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	776(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	768(%rsp), %rbp
	movq	760(%rsp), %rbx
	movq	744(%rsp), %rax
	movq	752(%rsp), %r15
	movq	%rax, (%r14)
	movq	8(%r13), %rdx
	leaq	664(%rsp), %rdi
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	%r12, %rsi
	callq	mulUnit_inner576@PLT
	movq	%r15, %rcx
	addq	664(%rsp), %rcx
	adcq	672(%rsp), %rbx
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	adcq	680(%rsp), %rbp
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	adcq	688(%rsp), %r14
	movq	48(%rsp), %r15                  # 8-byte Reload
	adcq	696(%rsp), %r15
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	704(%rsp), %rbp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	712(%rsp), %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	720(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	736(%rsp), %rax
	movq	16(%rsp), %r13                  # 8-byte Reload
	adcq	728(%rsp), %r13
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	16(%rax), %rdx
	leaq	584(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner576@PLT
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	584(%rsp), %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	592(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	600(%rsp), %r14
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	adcq	608(%rsp), %r15
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	adcq	616(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	adcq	624(%rsp), %rbx
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	632(%rsp), %rbp
	adcq	640(%rsp), %r13
	movq	656(%rsp), %r15
	movq	32(%rsp), %r12                  # 8-byte Reload
	adcq	648(%rsp), %r12
	adcq	$0, %r15
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	72(%rsp), %r14                  # 8-byte Reload
	movq	24(%r14), %rdx
	leaq	504(%rsp), %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner576@PLT
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addq	504(%rsp), %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	512(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	520(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	528(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	536(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	adcq	544(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	%r13, %rbp
	adcq	552(%rsp), %rbp
	adcq	560(%rsp), %r12
	movq	576(%rsp), %r13
	adcq	568(%rsp), %r15
	adcq	$0, %r13
	movq	56(%rsp), %rbx                  # 8-byte Reload
	movq	%rcx, 24(%rbx)
	movq	32(%r14), %rdx
	leaq	424(%rsp), %rdi
	movq	80(%rsp), %r14                  # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner576@PLT
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	424(%rsp), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	432(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	440(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	448(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	456(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	464(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	472(%rsp), %r12
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	adcq	480(%rsp), %r15
	movq	496(%rsp), %r12
	adcq	488(%rsp), %r13
	adcq	$0, %r12
	movq	%rax, 32(%rbx)
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	40(%rax), %rdx
	leaq	344(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner576@PLT
	movq	48(%rsp), %rax                  # 8-byte Reload
	addq	344(%rsp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	352(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	368(%rsp), %rbp
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	384(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	392(%rsp), %r15
	adcq	400(%rsp), %r13
	movq	416(%rsp), %rbx
	adcq	408(%rsp), %r12
	adcq	$0, %rbx
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rcx)
	movq	72(%rsp), %r14                  # 8-byte Reload
	movq	48(%r14), %rdx
	leaq	264(%rsp), %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner576@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	264(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	272(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	280(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	288(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	296(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	304(%rsp), %r15
	adcq	312(%rsp), %r13
	adcq	320(%rsp), %r12
	movq	336(%rsp), %rbp
	adcq	328(%rsp), %rbx
	adcq	$0, %rbp
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rcx)
	movq	56(%r14), %rdx
	leaq	184(%rsp), %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner576@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	184(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	192(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	200(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	208(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	216(%rsp), %r15
	adcq	224(%rsp), %r13
	adcq	232(%rsp), %r12
	adcq	240(%rsp), %rbx
	movq	256(%rsp), %r14
	adcq	248(%rsp), %rbp
	adcq	$0, %r14
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 56(%rcx)
	movq	72(%rsp), %rax                  # 8-byte Reload
	movq	64(%rax), %rdx
	leaq	104(%rsp), %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner576@PLT
	movq	8(%rsp), %rdi                   # 8-byte Reload
	addq	104(%rsp), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	112(%rsp), %rsi
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	120(%rsp), %rdx
	adcq	128(%rsp), %r15
	adcq	136(%rsp), %r13
	adcq	144(%rsp), %r12
	adcq	152(%rsp), %rbx
	adcq	160(%rsp), %rbp
	movq	176(%rsp), %rax
	adcq	168(%rsp), %r14
	adcq	$0, %rax
	movq	56(%rsp), %rcx                  # 8-byte Reload
	movq	%rdi, 64(%rcx)
	movq	%rsi, 72(%rcx)
	movq	%rdx, 80(%rcx)
	movq	%r15, 88(%rcx)
	movq	%r13, 96(%rcx)
	movq	%r12, 104(%rcx)
	movq	%rbx, 112(%rcx)
	movq	%rbp, 120(%rcx)
	movq	%r14, 128(%rcx)
	movq	%rax, 136(%rcx)
	addq	$824, %rsp                      # imm = 0x338
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end171:
	.size	mclb_mul9, .Lfunc_end171-mclb_mul9
                                        # -- End function
	.globl	mclb_sqr9                       # -- Begin function mclb_sqr9
	.p2align	4, 0x90
	.type	mclb_sqr9,@function
mclb_sqr9:                              # @mclb_sqr9
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$808, %rsp                      # imm = 0x328
	movq	%rsi, %r15
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	728(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	movq	800(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	792(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	784(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	776(%rsp), %r13
	movq	768(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	760(%rsp), %r14
	movq	752(%rsp), %rbx
	movq	744(%rsp), %rbp
	movq	728(%rsp), %rax
	movq	736(%rsp), %r12
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	8(%r15), %rdx
	leaq	648(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner576@PLT
	addq	648(%rsp), %r12
	adcq	656(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	664(%rsp), %rbx
	adcq	672(%rsp), %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rbp                  # 8-byte Reload
	adcq	680(%rsp), %rbp
	adcq	688(%rsp), %r13
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	696(%rsp), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	704(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	720(%rsp), %rax
	movq	48(%rsp), %r13                  # 8-byte Reload
	adcq	712(%rsp), %r13
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%r12, 8(%rax)
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	16(%r15), %rdx
	leaq	568(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner576@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	568(%rsp), %rcx
	movq	%rbx, %r12
	adcq	576(%rsp), %r12
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	584(%rsp), %rbx
	adcq	592(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r15                  # 8-byte Reload
	adcq	600(%rsp), %r15
	adcq	608(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	616(%rsp), %rbp
	adcq	624(%rsp), %r13
	movq	640(%rsp), %rax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	632(%rsp), %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	movq	%rcx, 16(%r14)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rsi), %rdx
	leaq	488(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	addq	488(%rsp), %r12
	movq	%r12, %rax
	adcq	496(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	504(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	adcq	512(%rsp), %r15
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	520(%rsp), %rbx
	adcq	528(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	adcq	536(%rsp), %r13
	movq	24(%rsp), %r15                  # 8-byte Reload
	adcq	544(%rsp), %r15
	movq	560(%rsp), %r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	552(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %r12
	movq	%rax, 24(%r14)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsi), %rdx
	leaq	408(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	408(%rsp), %rcx
	movq	72(%rsp), %rbp                  # 8-byte Reload
	adcq	416(%rsp), %rbp
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	424(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	432(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	440(%rsp), %rbx
	adcq	448(%rsp), %r13
	adcq	456(%rsp), %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	464(%rsp), %r15
	movq	480(%rsp), %r14
	adcq	472(%rsp), %r12
	adcq	$0, %r14
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsi), %rdx
	leaq	328(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	addq	328(%rsp), %rbp
	movq	%rbp, %rax
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	336(%rsp), %rbp
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	344(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	352(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	adcq	360(%rsp), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	368(%rsp), %rbx
	movq	%r15, %r13
	adcq	376(%rsp), %r13
	adcq	384(%rsp), %r12
	movq	400(%rsp), %r15
	adcq	392(%rsp), %r14
	adcq	$0, %r15
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 40(%rcx)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsi), %rdx
	leaq	248(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	movq	%rbp, %rax
	addq	248(%rsp), %rax
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	256(%rsp), %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	264(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	272(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	280(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	adcq	288(%rsp), %r13
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	adcq	296(%rsp), %r12
	adcq	304(%rsp), %r14
	movq	320(%rsp), %r13
	adcq	312(%rsp), %r15
	adcq	$0, %r13
	movq	40(%rsp), %rbx                  # 8-byte Reload
	movq	%rax, 48(%rbx)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	168(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	addq	168(%rsp), %rbp
	movq	%rbp, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	176(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	184(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	192(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	200(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	208(%rsp), %r12
	adcq	216(%rsp), %r14
	adcq	224(%rsp), %r15
	movq	240(%rsp), %rbp
	adcq	232(%rsp), %r13
	adcq	$0, %rbp
	movq	%rax, 56(%rbx)
	movq	56(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsi), %rdx
	leaq	88(%rsp), %rdi
	callq	mulUnit_inner576@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	88(%rsp), %rdx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	adcq	96(%rsp), %rsi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	104(%rsp), %rdi
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	112(%rsp), %rbx
	adcq	120(%rsp), %r12
	adcq	128(%rsp), %r14
	adcq	136(%rsp), %r15
	adcq	144(%rsp), %r13
	movq	160(%rsp), %rax
	adcq	152(%rsp), %rbp
	adcq	$0, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movq	%rdx, 64(%rcx)
	movq	%rsi, 72(%rcx)
	movq	%rdi, 80(%rcx)
	movq	%rbx, 88(%rcx)
	movq	%r12, 96(%rcx)
	movq	%r14, 104(%rcx)
	movq	%r15, 112(%rcx)
	movq	%r13, 120(%rcx)
	movq	%rbp, 128(%rcx)
	movq	%rax, 136(%rcx)
	addq	$808, %rsp                      # imm = 0x328
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end172:
	.size	mclb_sqr9, .Lfunc_end172-mclb_sqr9
                                        # -- End function
	.globl	mulUnit_inner640                # -- Begin function mulUnit_inner640
	.p2align	4, 0x90
	.type	mulUnit_inner640,@function
mulUnit_inner640:                       # @mulUnit_inner640
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, %r8
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	72(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-56(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	%r13, %r12
	adcq	%r8, %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%rbp, 56(%rdi)
	movq	%r12, 64(%rdi)
	movq	%rax, 72(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 80(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end173:
	.size	mulUnit_inner640, .Lfunc_end173-mulUnit_inner640
                                        # -- End function
	.globl	mclb_mulUnit10                  # -- Begin function mclb_mulUnit10
	.p2align	4, 0x90
	.type	mclb_mulUnit10,@function
mclb_mulUnit10:                         # @mclb_mulUnit10
# %bb.0:
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner640@PLT
	movq	88(%rsp), %rax
	movups	72(%rsp), %xmm0
	movups	8(%rsp), %xmm1
	movups	24(%rsp), %xmm2
	movups	40(%rsp), %xmm3
	movups	56(%rsp), %xmm4
	movups	%xmm1, (%rbx)
	movups	%xmm2, 16(%rbx)
	movups	%xmm3, 32(%rbx)
	movups	%xmm4, 48(%rbx)
	movups	%xmm0, 64(%rbx)
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end174:
	.size	mclb_mulUnit10, .Lfunc_end174-mclb_mulUnit10
                                        # -- End function
	.globl	mclb_mulUnitAdd10               # -- Begin function mclb_mulUnitAdd10
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd10,@function
mclb_mulUnitAdd10:                      # @mclb_mulUnitAdd10
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, %r13
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	72(%rsi)
	addq	%r12, (%rdi)
	adcq	8(%rdi), %r14
	adcq	16(%rdi), %r11
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r15
	adcq	40(%rdi), %r9
	adcq	48(%rdi), %rbx
	adcq	56(%rdi), %r8
	adcq	64(%rdi), %rbp
	adcq	72(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %r14                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-48(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-64(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	%r13, %rax
	movq	%r14, 8(%rdi)
	movq	%r11, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r9, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%r8, 56(%rdi)
	movq	%rbp, 64(%rdi)
	movq	%rax, 72(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end175:
	.size	mclb_mulUnitAdd10, .Lfunc_end175-mclb_mulUnitAdd10
                                        # -- End function
	.globl	mclb_mul10                      # -- Begin function mclb_mul10
	.p2align	4, 0x90
	.type	mclb_mul10,@function
mclb_mul10:                             # @mclb_mul10
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp                      # imm = 0x108
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	40(%rsi), %r12
	leaq	40(%rdx), %r13
	leaq	80(%rdi), %rbp
	callq	mclb_mul5@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul5@PLT
	movq	(%rbx), %rax
	addq	40(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rbx), %rax
	adcq	48(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rbx), %rax
	adcq	56(%rbx), %rax
	movq	%rax, %r10
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	24(%rbx), %rax
	adcq	64(%rbx), %rax
	movq	%rax, %r11
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	32(%rbx), %r12
	adcq	72(%rbx), %r12
	movq	(%r15), %r9
	setb	%al
	addq	40(%r15), %r9
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	movq	8(%r15), %r8
	adcq	48(%r15), %r8
	movq	%r8, 48(%rsp)                   # 8-byte Spill
	movq	16(%r15), %rcx
	adcq	56(%r15), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	24(%r15), %rcx
	adcq	64(%r15), %rcx
	movq	%rcx, %rsi
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	32(%r15), %rcx
	adcq	72(%r15), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movzbl	%al, %eax
	setb	%cl
	movzbl	%cl, %ecx
	movq	%rax, %r15
	movq	%rax, %r13
	shlq	$63, %r13
	negq	%r15
	shrdq	$63, %r15, %r13
	movq	%rcx, %rbx
	shlq	$63, %rbx
	movq	%rcx, %rbp
	negq	%rbp
	shrdq	$63, %rbp, %rbx
	andb	%al, %cl
	movzbl	%cl, %eax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 144(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 152(%rsp)
	movq	%r10, 160(%rsp)
	movq	%r11, 168(%rsp)
	movq	%r12, 176(%rsp)
	movq	%r9, 104(%rsp)
	movq	%r8, 112(%rsp)
	movq	%rdi, 120(%rsp)
	movq	%rsi, 128(%rsp)
	movq	%rdx, 136(%rsp)
	leaq	184(%rsp), %rdi
	leaq	144(%rsp), %rsi
	leaq	104(%rsp), %rdx
	callq	mclb_mul5@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	andq	%r15, %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	andq	%r15, %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andq	%r15, %rdx
	andq	48(%rsp), %r15                  # 8-byte Folded Reload
	andq	56(%rsp), %r13                  # 8-byte Folded Reload
	andq	%rbp, %r12
	movq	64(%rsp), %r8                   # 8-byte Reload
	andq	%rbp, %r8
	movq	72(%rsp), %r9                   # 8-byte Reload
	andq	%rbp, %r9
	andq	8(%rsp), %rbp                   # 8-byte Folded Reload
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	addq	%r13, %rbx
	adcq	%r15, %rbp
	adcq	%rdx, %r9
	adcq	%rcx, %r8
	adcq	%rax, %r12
	setb	%al
	addq	224(%rsp), %rbx
	adcq	232(%rsp), %rbp
	movq	216(%rsp), %r10
	adcq	240(%rsp), %r9
	movq	184(%rsp), %rdx
	adcq	248(%rsp), %r8
	movzbl	%al, %eax
	adcq	256(%rsp), %r12
	adcq	80(%rsp), %rax                  # 8-byte Folded Reload
	subq	(%r14), %rdx
	movq	192(%rsp), %rsi
	sbbq	8(%r14), %rsi
	movq	200(%rsp), %rdi
	sbbq	16(%r14), %rdi
	movq	208(%rsp), %rcx
	sbbq	24(%r14), %rcx
	movq	56(%r14), %r11
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	sbbq	32(%r14), %r10
	movq	40(%r14), %r13
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	48(%r14), %r15
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rbx
	sbbq	%r15, %rbp
	sbbq	%r11, %r9
	movq	64(%r14), %r11
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r8
	movq	72(%r14), %r11
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r12
	sbbq	$0, %rax
	movq	80(%r14), %r11
	movq	%r11, 88(%rsp)                  # 8-byte Spill
	subq	%r11, %rdx
	movq	88(%r14), %r11
	movq	%r11, 96(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rsi
	movq	96(%r14), %r11
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rdi
	movq	104(%r14), %r11
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rcx
	movq	112(%r14), %r11
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r10
	movq	120(%r14), %r11
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rbx
	movq	128(%r14), %r11
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rbp
	movq	136(%r14), %r13
	sbbq	%r13, %r9
	movq	144(%r14), %r11
	sbbq	%r11, %r8
	movq	152(%r14), %r15
	sbbq	%r15, %r12
	sbbq	$0, %rax
	addq	64(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	72(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	8(%rsp), %rdi                   # 8-byte Folded Reload
	adcq	80(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	56(%rsp), %r10                  # 8-byte Folded Reload
	adcq	88(%rsp), %rbx                  # 8-byte Folded Reload
	adcq	96(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	24(%rsp), %r9                   # 8-byte Folded Reload
	adcq	32(%rsp), %r8                   # 8-byte Folded Reload
	adcq	40(%rsp), %r12                  # 8-byte Folded Reload
	adcq	48(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rdx, 40(%r14)
	movq	%rsi, 48(%r14)
	movq	%rdi, 56(%r14)
	movq	%rcx, 64(%r14)
	movq	%r10, 72(%r14)
	movq	%rbx, 80(%r14)
	movq	%rbp, 88(%r14)
	movq	%r9, 96(%r14)
	movq	%r8, 104(%r14)
	movq	%r12, 112(%r14)
	movq	%rax, 120(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	adcq	$0, %r13
	movq	%rax, 128(%r14)
	movq	%r13, 136(%r14)
	adcq	$0, %r11
	movq	%r11, 144(%r14)
	adcq	$0, %r15
	movq	%r15, 152(%r14)
	addq	$264, %rsp                      # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end176:
	.size	mclb_mul10, .Lfunc_end176-mclb_mul10
                                        # -- End function
	.globl	mclb_sqr10                      # -- Begin function mclb_sqr10
	.p2align	4, 0x90
	.type	mclb_sqr10,@function
mclb_sqr10:                             # @mclb_sqr10
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$264, %rsp                      # imm = 0x108
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	40(%rsi), %r15
	leaq	80(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul5@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul5@PLT
	movq	(%rbx), %rcx
	addq	40(%rbx), %rcx
	movq	8(%rbx), %r15
	adcq	48(%rbx), %r15
	movq	16(%rbx), %r12
	adcq	56(%rbx), %r12
	movq	24(%rbx), %r13
	adcq	64(%rbx), %r13
	movq	32(%rbx), %rdx
	adcq	72(%rbx), %rdx
	setb	%al
	movzbl	%al, %ebx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %rbp
	shlq	$63, %rbp
	negq	%rbx
	shrdq	$63, %rbx, %rbp
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 144(%rsp)
	movq	%r15, 152(%rsp)
	movq	%r12, 160(%rsp)
	movq	%r13, 168(%rsp)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, 176(%rsp)
	movq	%rcx, 104(%rsp)
	movq	%r15, 112(%rsp)
	movq	%r12, 120(%rsp)
	movq	%r13, 128(%rsp)
	movq	%rdx, 136(%rsp)
	leaq	184(%rsp), %rdi
	leaq	144(%rsp), %rsi
	leaq	104(%rsp), %rdx
	callq	mclb_mul5@PLT
	andq	8(%rsp), %rbp                   # 8-byte Folded Reload
	andq	%rbx, %r15
	andq	%rbx, %r12
	andq	%rbx, %r13
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rbx, %rax
	shldq	$1, %r13, %rax
	shldq	$1, %r12, %r13
	shldq	$1, %r15, %r12
	shldq	$1, %rbp, %r15
	shrq	$63, %rbx
	addq	%rbp, %rbp
	addq	224(%rsp), %rbp
	adcq	232(%rsp), %r15
	adcq	240(%rsp), %r12
	movq	216(%rsp), %r8
	adcq	248(%rsp), %r13
	movq	184(%rsp), %rdx
	adcq	256(%rsp), %rax
	adcq	24(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rdx
	movq	192(%rsp), %rsi
	sbbq	8(%r14), %rsi
	movq	200(%rsp), %rdi
	sbbq	16(%r14), %rdi
	movq	208(%rsp), %rcx
	sbbq	24(%r14), %rcx
	movq	56(%r14), %r9
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	sbbq	32(%r14), %r8
	movq	40(%r14), %r11
	movq	%r11, 88(%rsp)                  # 8-byte Spill
	movq	48(%r14), %r10
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rbp
	sbbq	%r10, %r15
	sbbq	%r9, %r12
	movq	64(%r14), %r9
	movq	%r9, 8(%rsp)                    # 8-byte Spill
	sbbq	%r9, %r13
	movq	72(%r14), %r9
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	sbbq	%r9, %rax
	sbbq	$0, %rbx
	movq	80(%r14), %r9
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	subq	%r9, %rdx
	movq	88(%r14), %r9
	movq	%r9, 40(%rsp)                   # 8-byte Spill
	sbbq	%r9, %rsi
	movq	96(%r14), %r9
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	sbbq	%r9, %rdi
	movq	104(%r14), %r9
	movq	%r9, 56(%rsp)                   # 8-byte Spill
	sbbq	%r9, %rcx
	movq	112(%r14), %r9
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	sbbq	%r9, %r8
	movq	120(%r14), %r9
	movq	%r9, 72(%rsp)                   # 8-byte Spill
	sbbq	%r9, %rbp
	movq	128(%r14), %r9
	movq	%r9, 24(%rsp)                   # 8-byte Spill
	sbbq	%r9, %r15
	movq	136(%r14), %r10
	sbbq	%r10, %r12
	movq	144(%r14), %r11
	sbbq	%r11, %r13
	movq	152(%r14), %r9
	sbbq	%r9, %rax
	sbbq	$0, %rbx
	addq	88(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	96(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	16(%rsp), %rdi                  # 8-byte Folded Reload
	adcq	8(%rsp), %rcx                   # 8-byte Folded Reload
	adcq	80(%rsp), %r8                   # 8-byte Folded Reload
	adcq	32(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	40(%rsp), %r15                  # 8-byte Folded Reload
	adcq	48(%rsp), %r12                  # 8-byte Folded Reload
	adcq	56(%rsp), %r13                  # 8-byte Folded Reload
	adcq	64(%rsp), %rax                  # 8-byte Folded Reload
	adcq	72(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rdx, 40(%r14)
	movq	%rsi, 48(%r14)
	movq	%rdi, 56(%r14)
	movq	%rcx, 64(%r14)
	movq	%r8, 72(%r14)
	movq	%rbp, 80(%r14)
	movq	%r15, 88(%r14)
	movq	%r12, 96(%r14)
	movq	%r13, 104(%r14)
	movq	%rax, 112(%r14)
	movq	%rbx, 120(%r14)
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	adcq	$0, %r10
	movq	%rax, 128(%r14)
	movq	%r10, 136(%r14)
	adcq	$0, %r11
	movq	%r11, 144(%r14)
	adcq	$0, %r9
	movq	%r9, 152(%r14)
	addq	$264, %rsp                      # imm = 0x108
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end177:
	.size	mclb_sqr10, .Lfunc_end177-mclb_sqr10
                                        # -- End function
	.globl	mulUnit_inner704                # -- Begin function mulUnit_inner704
	.p2align	4, 0x90
	.type	mulUnit_inner704,@function
mulUnit_inner704:                       # @mulUnit_inner704
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rax, %r8
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, %rbp
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	80(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-64(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-72(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-80(%rsp), %r12                 # 8-byte Folded Reload
	adcq	%rbp, %rax
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%r12, 72(%rdi)
	movq	%rax, 80(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 88(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end178:
	.size	mulUnit_inner704, .Lfunc_end178-mulUnit_inner704
                                        # -- End function
	.globl	mclb_mulUnit11                  # -- Begin function mclb_mulUnit11
	.p2align	4, 0x90
	.type	mclb_mulUnit11,@function
mclb_mulUnit11:                         # @mclb_mulUnit11
# %bb.0:
	pushq	%rbx
	subq	$96, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner704@PLT
	movq	88(%rsp), %rax
	movq	80(%rsp), %rcx
	movups	64(%rsp), %xmm0
	movups	(%rsp), %xmm1
	movups	16(%rsp), %xmm2
	movups	32(%rsp), %xmm3
	movups	48(%rsp), %xmm4
	movups	%xmm1, (%rbx)
	movups	%xmm2, 16(%rbx)
	movups	%xmm3, 32(%rbx)
	movups	%xmm4, 48(%rbx)
	movups	%xmm0, 64(%rbx)
	movq	%rcx, 80(%rbx)
	addq	$96, %rsp
	popq	%rbx
	retq
.Lfunc_end179:
	.size	mclb_mulUnit11, .Lfunc_end179-mclb_mulUnit11
                                        # -- End function
	.globl	mclb_mulUnitAdd11               # -- Begin function mclb_mulUnitAdd11
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd11,@function
mclb_mulUnitAdd11:                      # @mclb_mulUnitAdd11
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	80(%rsi)
	addq	%rbp, (%rdi)
	adcq	8(%rdi), %r12
	adcq	16(%rdi), %r15
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r11
	adcq	40(%rdi), %r13
	adcq	48(%rdi), %r9
	adcq	56(%rdi), %rbx
	adcq	64(%rdi), %r8
	adcq	72(%rdi), %r14
	adcq	80(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %r12                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-56(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-72(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-80(%rsp), %rax                 # 8-byte Folded Reload
	movq	%r12, 8(%rdi)
	movq	%r15, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r11, 32(%rdi)
	movq	%r13, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%r14, 72(%rdi)
	movq	%rax, 80(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end180:
	.size	mclb_mulUnitAdd11, .Lfunc_end180-mclb_mulUnitAdd11
                                        # -- End function
	.globl	mclb_mul11                      # -- Begin function mclb_mul11
	.p2align	4, 0x90
	.type	mclb_mul11,@function
mclb_mul11:                             # @mclb_mul11
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1176, %rsp                     # imm = 0x498
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movq	%rsi, 104(%rsp)                 # 8-byte Spill
	movq	%rdi, 88(%rsp)                  # 8-byte Spill
	movq	(%rdx), %rdx
	leaq	1080(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	1168(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1160(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1152(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	1144(%rsp), %r13
	movq	1136(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1128(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1120(%rsp), %r14
	movq	1112(%rsp), %r15
	movq	1104(%rsp), %rbx
	movq	1096(%rsp), %rbp
	movq	1080(%rsp), %rax
	movq	1088(%rsp), %r12
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	8(%rax), %rdx
	leaq	984(%rsp), %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner704@PLT
	addq	984(%rsp), %r12
	adcq	992(%rsp), %rbp
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	adcq	1000(%rsp), %rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	adcq	1008(%rsp), %r15
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	adcq	1016(%rsp), %r14
	movq	%r14, 112(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1024(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	1032(%rsp), %rbp
	adcq	1040(%rsp), %r13
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1048(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	1056(%rsp), %rbx
	movq	1072(%rsp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	1064(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, %r13
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%r12, 8(%rax)
	movq	96(%rsp), %r15                  # 8-byte Reload
	movq	16(%r15), %rdx
	leaq	888(%rsp), %rdi
	movq	104(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	888(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	896(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	904(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r12                 # 8-byte Reload
	adcq	912(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	920(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	928(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	936(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	952(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	960(%rsp), %rbp
	movq	976(%rsp), %rax
	adcq	968(%rsp), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	movq	%rcx, 16(%r13)
	movq	24(%r15), %rdx
	leaq	792(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	792(%rsp), %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	800(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	808(%rsp), %r12
	movq	%r12, 112(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
	adcq	816(%rsp), %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	824(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r12                  # 8-byte Reload
	adcq	832(%rsp), %r12
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	840(%rsp), %rbx
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	848(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	856(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	864(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	880(%rsp), %rax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	adcq	872(%rsp), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%r13)
	movq	32(%r15), %rdx
	leaq	696(%rsp), %rdi
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rsi
	callq	mulUnit_inner704@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	696(%rsp), %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	704(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	adcq	712(%rsp), %r14
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	720(%rsp), %rbp
	adcq	728(%rsp), %r12
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	adcq	736(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	744(%rsp), %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	752(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	760(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r12                  # 8-byte Reload
	adcq	768(%rsp), %r12
	movq	784(%rsp), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	776(%rsp), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r14                  # 8-byte Reload
	movq	%rcx, 32(%r14)
	movq	40(%r15), %rdx
	leaq	600(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner704@PLT
	movq	112(%rsp), %rcx                 # 8-byte Reload
	addq	600(%rsp), %rcx
	movq	8(%rsp), %r15                   # 8-byte Reload
	adcq	608(%rsp), %r15
	adcq	616(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r13                  # 8-byte Reload
	adcq	624(%rsp), %r13
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	632(%rsp), %rbp
	adcq	640(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	648(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	656(%rsp), %rbx
	adcq	664(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	672(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	688(%rsp), %rax
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	680(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 40(%r14)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	48(%rax), %rdx
	leaq	504(%rsp), %rdi
	movq	104(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	addq	504(%rsp), %r15
	movq	%r15, %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	512(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	520(%rsp), %r13
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	adcq	528(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	536(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r13                  # 8-byte Reload
	adcq	544(%rsp), %r13
	adcq	552(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	adcq	560(%rsp), %r12
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	568(%rsp), %rbp
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	576(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	592(%rsp), %r15
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	584(%rsp), %rbx
	adcq	$0, %r15
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 48(%rcx)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	56(%rax), %rdx
	leaq	408(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	408(%rsp), %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	416(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	424(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r12                  # 8-byte Reload
	adcq	432(%rsp), %r12
	adcq	440(%rsp), %r13
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	448(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	456(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	464(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbp                  # 8-byte Reload
	adcq	472(%rsp), %rbp
	adcq	480(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	496(%rsp), %r14
	adcq	488(%rsp), %r15
	adcq	$0, %r14
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 56(%rax)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	64(%rax), %rdx
	leaq	312(%rsp), %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner704@PLT
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	312(%rsp), %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	320(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	328(%rsp), %r12
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	adcq	336(%rsp), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	344(%rsp), %rbx
	movq	80(%rsp), %r13                  # 8-byte Reload
	adcq	352(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	360(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	368(%rsp), %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	376(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	384(%rsp), %r15
	movq	400(%rsp), %r12
	adcq	392(%rsp), %r14
	adcq	$0, %r12
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 64(%rax)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	72(%rax), %rdx
	leaq	216(%rsp), %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner704@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	216(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	224(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	232(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	240(%rsp), %rbx
	adcq	248(%rsp), %r13
	movq	%r13, 80(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	256(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	264(%rsp), %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	272(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	280(%rsp), %r15
	adcq	288(%rsp), %r14
	movq	304(%rsp), %r13
	adcq	296(%rsp), %r12
	adcq	$0, %r13
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 72(%rcx)
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	80(%rax), %rdx
	leaq	120(%rsp), %rdi
	movq	104(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner704@PLT
	movq	24(%rsp), %r8                   # 8-byte Reload
	addq	120(%rsp), %r8
	movq	40(%rsp), %r9                   # 8-byte Reload
	adcq	128(%rsp), %r9
	movq	%rbx, %rdi
	adcq	136(%rsp), %rdi
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	144(%rsp), %rbx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	152(%rsp), %rsi
	adcq	160(%rsp), %rbp
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	168(%rsp), %rdx
	adcq	176(%rsp), %r15
	adcq	184(%rsp), %r14
	adcq	192(%rsp), %r12
	adcq	200(%rsp), %r13
	movq	208(%rsp), %rax
	adcq	$0, %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	movq	%r8, 80(%rcx)
	movq	%r9, 88(%rcx)
	movq	%rdi, 96(%rcx)
	movq	%rbx, 104(%rcx)
	movq	%rsi, 112(%rcx)
	movq	%rbp, 120(%rcx)
	movq	%rdx, 128(%rcx)
	movq	%r15, 136(%rcx)
	movq	%r14, 144(%rcx)
	movq	%r12, 152(%rcx)
	movq	%r13, 160(%rcx)
	movq	%rax, 168(%rcx)
	addq	$1176, %rsp                     # imm = 0x498
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end181:
	.size	mclb_mul11, .Lfunc_end181-mclb_mul11
                                        # -- End function
	.globl	mclb_sqr11                      # -- Begin function mclb_sqr11
	.p2align	4, 0x90
	.type	mclb_sqr11,@function
mclb_sqr11:                             # @mclb_sqr11
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1160, %rsp                     # imm = 0x488
	movq	%rsi, %r14
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	1064(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	1152(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	1144(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1136(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1128(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1120(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	1112(%rsp), %r13
	movq	1104(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1096(%rsp), %r15
	movq	1088(%rsp), %rbx
	movq	1080(%rsp), %rbp
	movq	1064(%rsp), %rax
	movq	1072(%rsp), %r12
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, (%rcx)
	movq	8(%r14), %rdx
	leaq	968(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	movq	%r12, %rcx
	addq	968(%rsp), %rcx
	adcq	976(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	adcq	984(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	adcq	992(%rsp), %r15
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r12                  # 8-byte Reload
	adcq	1000(%rsp), %r12
	adcq	1008(%rsp), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rbp                    # 8-byte Reload
	adcq	1016(%rsp), %rbp
	movq	8(%rsp), %r15                   # 8-byte Reload
	adcq	1024(%rsp), %r15
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	1032(%rsp), %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1040(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1056(%rsp), %rax
	movq	48(%rsp), %r13                  # 8-byte Reload
	adcq	1048(%rsp), %r13
	adcq	$0, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	16(%r14), %rdx
	leaq	872(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner704@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	872(%rsp), %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	880(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r14                  # 8-byte Reload
	adcq	888(%rsp), %r14
	adcq	896(%rsp), %r12
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	904(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	912(%rsp), %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	adcq	920(%rsp), %r15
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	adcq	928(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	936(%rsp), %rbp
	adcq	944(%rsp), %r13
	movq	960(%rsp), %rax
	movq	72(%rsp), %r12                  # 8-byte Reload
	adcq	952(%rsp), %r12
	adcq	$0, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r15                  # 8-byte Reload
	movq	%rcx, 16(%r15)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	24(%rsi), %rdx
	leaq	776(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	776(%rsp), %rcx
	adcq	784(%rsp), %r14
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	792(%rsp), %rbx
	movq	56(%rsp), %r14                  # 8-byte Reload
	adcq	800(%rsp), %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	808(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	816(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	824(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	832(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	840(%rsp), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movq	%r12, %rbp
	adcq	848(%rsp), %rbp
	movq	864(%rsp), %rax
	movq	64(%rsp), %r13                  # 8-byte Reload
	adcq	856(%rsp), %r13
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%r15)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsi), %rdx
	leaq	680(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addq	680(%rsp), %rcx
	adcq	688(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	adcq	696(%rsp), %r14
	movq	(%rsp), %r15                    # 8-byte Reload
	adcq	704(%rsp), %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	712(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	720(%rsp), %rbx
	movq	16(%rsp), %r12                  # 8-byte Reload
	adcq	728(%rsp), %r12
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	736(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	744(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	%r13, %rbp
	adcq	752(%rsp), %rbp
	movq	768(%rsp), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	760(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r13                  # 8-byte Reload
	movq	%rcx, 32(%r13)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsi), %rdx
	leaq	584(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	584(%rsp), %rcx
	adcq	592(%rsp), %r14
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	adcq	600(%rsp), %r15
	movq	%r15, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
	adcq	608(%rsp), %r14
	adcq	616(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	adcq	624(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r15                  # 8-byte Reload
	adcq	632(%rsp), %r15
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	640(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	648(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r12                  # 8-byte Reload
	adcq	656(%rsp), %r12
	movq	672(%rsp), %rax
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	664(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%r13)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsi), %rdx
	leaq	488(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	488(%rsp), %rdx
	movq	(%rsp), %rbp                    # 8-byte Reload
	adcq	496(%rsp), %rbp
	adcq	504(%rsp), %r14
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %r13                  # 8-byte Reload
	adcq	512(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	520(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	528(%rsp), %r15
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	536(%rsp), %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	544(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	552(%rsp), %r12
	movq	%r12, 32(%rsp)                  # 8-byte Spill
	adcq	560(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	576(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	568(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	movq	%rdx, 48(%r12)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	392(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	addq	392(%rsp), %rbp
	movq	%rbp, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	400(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	408(%rsp), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	416(%rsp), %r15
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	432(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r13                  # 8-byte Reload
	adcq	440(%rsp), %r13
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	448(%rsp), %r14
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	456(%rsp), %rbx
	movq	24(%rsp), %rbp                  # 8-byte Reload
	adcq	464(%rsp), %rbp
	movq	480(%rsp), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	472(%rsp), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, 56(%r12)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsi), %rdx
	leaq	296(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	8(%rsp), %rax                   # 8-byte Reload
	addq	296(%rsp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	312(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r12                  # 8-byte Reload
	adcq	320(%rsp), %r12
	movq	72(%rsp), %r15                  # 8-byte Reload
	adcq	328(%rsp), %r15
	adcq	336(%rsp), %r13
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	adcq	344(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	adcq	352(%rsp), %rbx
	adcq	360(%rsp), %rbp
	movq	%rbp, %r14
	movq	(%rsp), %r13                    # 8-byte Reload
	adcq	368(%rsp), %r13
	movq	384(%rsp), %rcx
	movq	56(%rsp), %rbp                  # 8-byte Reload
	adcq	376(%rsp), %rbp
	adcq	$0, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	72(%rsi), %rdx
	leaq	200(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	200(%rsp), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	208(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	216(%rsp), %r12
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	adcq	224(%rsp), %r15
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r12                  # 8-byte Reload
	adcq	232(%rsp), %r12
	movq	32(%rsp), %r15                  # 8-byte Reload
	adcq	240(%rsp), %r15
	adcq	248(%rsp), %rbx
	adcq	256(%rsp), %r14
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	adcq	264(%rsp), %r13
	movq	%r13, (%rsp)                    # 8-byte Spill
	adcq	272(%rsp), %rbp
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	288(%rsp), %r14
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	280(%rsp), %rbp
	adcq	$0, %r14
	movq	96(%rsp), %r13                  # 8-byte Reload
	movq	%rax, 72(%r13)
	movq	80(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsi), %rdx
	leaq	104(%rsp), %rdi
	callq	mulUnit_inner704@PLT
	movq	16(%rsp), %r10                  # 8-byte Reload
	addq	104(%rsp), %r10
	movq	48(%rsp), %r8                   # 8-byte Reload
	adcq	112(%rsp), %r8
	movq	72(%rsp), %r9                   # 8-byte Reload
	adcq	120(%rsp), %r9
	adcq	128(%rsp), %r12
	adcq	136(%rsp), %r15
	adcq	144(%rsp), %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	152(%rsp), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	160(%rsp), %rdi
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	168(%rsp), %rdx
	adcq	176(%rsp), %rbp
	adcq	184(%rsp), %r14
	movq	192(%rsp), %rax
	adcq	$0, %rax
	movq	%r10, 80(%r13)
	movq	%r8, 88(%r13)
	movq	%r9, 96(%r13)
	movq	%r12, 104(%r13)
	movq	%r15, 112(%r13)
	movq	%rbx, 120(%r13)
	movq	%rsi, 128(%r13)
	movq	%rdi, 136(%r13)
	movq	%rdx, 144(%r13)
	movq	%rbp, 152(%r13)
	movq	%r14, 160(%r13)
	movq	%rax, 168(%r13)
	addq	$1160, %rsp                     # imm = 0x488
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end182:
	.size	mclb_sqr11, .Lfunc_end182-mclb_sqr11
                                        # -- End function
	.globl	mulUnit_inner768                # -- Begin function mulUnit_inner768
	.p2align	4, 0x90
	.type	mulUnit_inner768,@function
mulUnit_inner768:                       # @mulUnit_inner768
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rbx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rbx, %rax
	mulq	24(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rbx, %rax
	mulq	32(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rbx, %rax
	mulq	40(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rbx, %rax
	mulq	48(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rbx, %rax
	mulq	56(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rbx, %rax
	mulq	64(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rbx, %rax
	mulq	72(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rbx, %rax
	mulq	80(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rbx, %rax
	mulq	88(%rsi)
	addq	-16(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-64(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	-72(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-88(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-96(%rsp), %rax                 # 8-byte Folded Reload
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%r9, 8(%rdi)
	movq	%r10, 16(%rdi)
	movq	%r11, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rcx, 56(%rdi)
	movq	%rbp, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%r13, 80(%rdi)
	movq	%rax, 88(%rdi)
	adcq	$0, %rdx
	movq	%rdx, 96(%rdi)
	movq	%rdi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end183:
	.size	mulUnit_inner768, .Lfunc_end183-mulUnit_inner768
                                        # -- End function
	.globl	mclb_mulUnit12                  # -- Begin function mclb_mulUnit12
	.p2align	4, 0x90
	.type	mclb_mulUnit12,@function
mclb_mulUnit12:                         # @mclb_mulUnit12
# %bb.0:
	pushq	%rbx
	subq	$112, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner768@PLT
	movq	104(%rsp), %rax
	movups	88(%rsp), %xmm0
	movups	72(%rsp), %xmm1
	movups	8(%rsp), %xmm2
	movups	24(%rsp), %xmm3
	movups	40(%rsp), %xmm4
	movups	56(%rsp), %xmm5
	movups	%xmm2, (%rbx)
	movups	%xmm3, 16(%rbx)
	movups	%xmm4, 32(%rbx)
	movups	%xmm5, 48(%rbx)
	movups	%xmm1, 64(%rbx)
	movups	%xmm0, 80(%rbx)
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end184:
	.size	mclb_mulUnit12, .Lfunc_end184-mclb_mulUnit12
                                        # -- End function
	.globl	mclb_mulUnitAdd12               # -- Begin function mclb_mulUnitAdd12
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd12,@function
mclb_mulUnitAdd12:                      # @mclb_mulUnitAdd12
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	addq	%rcx, (%rdi)
	adcq	8(%rdi), %r15
	adcq	16(%rdi), %r14
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r11
	adcq	40(%rdi), %r12
	adcq	48(%rdi), %r9
	adcq	56(%rdi), %rbx
	adcq	64(%rdi), %r8
	adcq	72(%rdi), %rbp
	adcq	80(%rdi), %r13
	adcq	88(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %r15                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-56(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-72(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rax                 # 8-byte Folded Reload
	movq	%r15, 8(%rdi)
	movq	%r14, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r11, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r8, 64(%rdi)
	movq	%rbp, 72(%rdi)
	movq	%r13, 80(%rdi)
	movq	%rax, 88(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end185:
	.size	mclb_mulUnitAdd12, .Lfunc_end185-mclb_mulUnitAdd12
                                        # -- End function
	.globl	mclb_mul12                      # -- Begin function mclb_mul12
	.p2align	4, 0x90
	.type	mclb_mul12,@function
mclb_mul12:                             # @mclb_mul12
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp                      # imm = 0x148
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	48(%rsi), %r12
	leaq	48(%rdx), %r13
	leaq	96(%rdi), %rbp
	callq	mclb_mul6@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul6@PLT
	movq	40(%rbx), %r10
	movq	(%rbx), %rax
	addq	48(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rbx), %rax
	adcq	56(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rbx), %rax
	adcq	64(%rbx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rbx), %rax
	adcq	72(%rbx), %rax
	movq	%rax, %r11
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	32(%rbx), %r12
	adcq	80(%rbx), %r12
	movq	40(%r15), %rdx
	adcq	88(%rbx), %r10
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	(%r15), %r9
	setb	%al
	addq	48(%r15), %r9
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	8(%r15), %r8
	adcq	56(%r15), %r8
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	16(%r15), %rcx
	adcq	64(%r15), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	24(%r15), %rcx
	adcq	72(%r15), %rcx
	movq	%rcx, %rsi
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	32(%r15), %rcx
	adcq	80(%r15), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movzbl	%al, %r13d
	adcq	88(%r15), %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	setb	%al
	movzbl	%al, %eax
	movq	%rax, %rbx
	movq	%rax, %rbp
	andb	%r13b, %al
	movq	%r13, %r15
	shlq	$63, %r13
	negq	%r15
	shrdq	$63, %r15, %r13
	shlq	$63, %rbx
	negq	%rbp
	shrdq	$63, %rbp, %rbx
	movzbl	%al, %eax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 184(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 192(%rsp)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, 200(%rsp)
	movq	%r11, 208(%rsp)
	movq	%r12, 216(%rsp)
	movq	%r10, 224(%rsp)
	movq	%r9, 136(%rsp)
	movq	%r8, 144(%rsp)
	movq	%rdi, 152(%rsp)
	movq	%rsi, 160(%rsp)
	movq	%rcx, 168(%rsp)
	movq	%rdx, 176(%rsp)
	leaq	232(%rsp), %rdi
	leaq	184(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	mclb_mul6@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	andq	%r15, %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	andq	%r15, %rdx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	andq	%r15, %rsi
	movq	48(%rsp), %rdi                  # 8-byte Reload
	andq	%r15, %rdi
	andq	56(%rsp), %r15                  # 8-byte Folded Reload
	andq	64(%rsp), %r13                  # 8-byte Folded Reload
	movq	72(%rsp), %r10                  # 8-byte Reload
	andq	%rbp, %r10
	andq	%rbp, %r12
	movq	80(%rsp), %rcx                  # 8-byte Reload
	andq	%rbp, %rcx
	movq	(%rsp), %r11                    # 8-byte Reload
	andq	%rbp, %r11
	andq	8(%rsp), %rbp                   # 8-byte Folded Reload
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	addq	%r13, %rbx
	adcq	%r15, %rbp
	movq	%r11, %r15
	adcq	%rdi, %r15
	movq	%rcx, %r11
	adcq	%rsi, %r11
	adcq	%rdx, %r12
	adcq	%rax, %r10
	setb	%al
	addq	280(%rsp), %rbx
	adcq	288(%rsp), %rbp
	adcq	296(%rsp), %r15
	adcq	304(%rsp), %r11
	movq	232(%rsp), %r8
	adcq	312(%rsp), %r12
	movzbl	%al, %eax
	adcq	320(%rsp), %r10
	adcq	88(%rsp), %rax                  # 8-byte Folded Reload
	subq	(%r14), %r8
	movq	240(%rsp), %r9
	sbbq	8(%r14), %r9
	movq	248(%rsp), %rsi
	sbbq	16(%r14), %rsi
	movq	256(%rsp), %rdi
	sbbq	24(%r14), %rdi
	movq	264(%rsp), %rcx
	sbbq	32(%r14), %rcx
	movq	272(%rsp), %rdx
	sbbq	40(%r14), %rdx
	movq	48(%r14), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rbx
	movq	56(%r14), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rbp
	movq	64(%r14), %r13
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	sbbq	%r13, %r15
	movq	72(%r14), %r13
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	sbbq	%r13, %r11
	movq	80(%r14), %r13
	movq	%r13, 80(%rsp)                  # 8-byte Spill
	sbbq	%r13, %r12
	movq	88(%r14), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	sbbq	%r13, %r10
	sbbq	$0, %rax
	movq	96(%r14), %r13
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	subq	%r13, %r8
	movq	104(%r14), %r13
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	sbbq	%r13, %r9
	movq	112(%r14), %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	sbbq	%r13, %rsi
	movq	120(%r14), %r13
	movq	%r13, 120(%rsp)                 # 8-byte Spill
	sbbq	%r13, %rdi
	movq	128(%r14), %r13
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	sbbq	%r13, %rcx
	movq	136(%r14), %r13
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rdx
	movq	144(%r14), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rbx
	movq	152(%r14), %r13
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	sbbq	%r13, %rbp
	movq	160(%r14), %r13
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	sbbq	%r13, %r15
	movq	168(%r14), %r13
	movq	%r13, (%rsp)                    # 8-byte Spill
	sbbq	%r13, %r11
	movq	176(%r14), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	sbbq	%r13, %r12
	movq	184(%r14), %r13
	sbbq	%r13, %r10
	sbbq	$0, %rax
	addq	56(%rsp), %r8                   # 8-byte Folded Reload
	adcq	48(%rsp), %r9                   # 8-byte Folded Reload
	adcq	64(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	72(%rsp), %rdi                  # 8-byte Folded Reload
	adcq	80(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	40(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	96(%rsp), %rbx                  # 8-byte Folded Reload
	adcq	104(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	112(%rsp), %r15                 # 8-byte Folded Reload
	adcq	120(%rsp), %r11                 # 8-byte Folded Reload
	adcq	128(%rsp), %r12                 # 8-byte Folded Reload
	adcq	24(%rsp), %r10                  # 8-byte Folded Reload
	adcq	32(%rsp), %rax                  # 8-byte Folded Reload
	movq	%r8, 48(%r14)
	movq	%r9, 56(%r14)
	movq	%rsi, 64(%r14)
	movq	%rdi, 72(%r14)
	movq	%rcx, 80(%r14)
	movq	%rdx, 88(%r14)
	movq	%rbx, 96(%r14)
	movq	%rbp, 104(%r14)
	movq	%r15, 112(%r14)
	movq	%r11, 120(%r14)
	movq	%r12, 128(%r14)
	movq	%r10, 136(%r14)
	movq	%rax, 144(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 152(%r14)
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	$0, %rax
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 160(%r14)
	movq	%rcx, 168(%r14)
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 176(%r14)
	adcq	$0, %r13
	movq	%r13, 184(%r14)
	addq	$328, %rsp                      # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end186:
	.size	mclb_mul12, .Lfunc_end186-mclb_mul12
                                        # -- End function
	.globl	mclb_sqr12                      # -- Begin function mclb_sqr12
	.p2align	4, 0x90
	.type	mclb_sqr12,@function
mclb_sqr12:                             # @mclb_sqr12
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp                      # imm = 0x148
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	48(%rsi), %r15
	leaq	96(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul6@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul6@PLT
	movq	(%rbx), %rdx
	addq	48(%rbx), %rdx
	movq	8(%rbx), %rcx
	adcq	56(%rbx), %rcx
	movq	16(%rbx), %r12
	adcq	64(%rbx), %r12
	movq	24(%rbx), %r13
	adcq	72(%rbx), %r13
	movq	32(%rbx), %rbp
	adcq	80(%rbx), %rbp
	movq	40(%rbx), %rsi
	adcq	88(%rbx), %rsi
	setb	%al
	movzbl	%al, %ebx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	%rbx, %r15
	shlq	$63, %r15
	negq	%rbx
	shrdq	$63, %rbx, %r15
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rdx, 184(%rsp)
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 192(%rsp)
	movq	%r12, 200(%rsp)
	movq	%r13, 208(%rsp)
	movq	%rbp, 216(%rsp)
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 224(%rsp)
	movq	%rdx, 136(%rsp)
	movq	%rcx, 144(%rsp)
	movq	%r12, 152(%rsp)
	movq	%r13, 160(%rsp)
	movq	%rbp, 168(%rsp)
	movq	%rsi, 176(%rsp)
	leaq	232(%rsp), %rdi
	leaq	184(%rsp), %rsi
	leaq	136(%rsp), %rdx
	callq	mclb_mul6@PLT
	andq	(%rsp), %r15                    # 8-byte Folded Reload
	movq	8(%rsp), %r10                   # 8-byte Reload
	andq	%rbx, %r10
	andq	%rbx, %r12
	andq	%rbx, %r13
	andq	%rbx, %rbp
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rbx, %rax
	shldq	$1, %rbp, %rax
	shldq	$1, %r13, %rbp
	shldq	$1, %r12, %r13
	shldq	$1, %r10, %r12
	shldq	$1, %r15, %r10
	shrq	$63, %rbx
	addq	%r15, %r15
	addq	280(%rsp), %r15
	adcq	288(%rsp), %r10
	adcq	296(%rsp), %r12
	adcq	304(%rsp), %r13
	adcq	312(%rsp), %rbp
	movq	232(%rsp), %r8
	adcq	320(%rsp), %rax
	adcq	24(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %r8
	movq	240(%rsp), %r9
	sbbq	8(%r14), %r9
	movq	248(%rsp), %rsi
	sbbq	16(%r14), %rsi
	movq	256(%rsp), %rdi
	sbbq	24(%r14), %rdi
	movq	264(%rsp), %rcx
	sbbq	32(%r14), %rcx
	movq	272(%rsp), %rdx
	sbbq	40(%r14), %rdx
	movq	48(%r14), %r11
	movq	%r11, 104(%rsp)                 # 8-byte Spill
	sbbq	%r11, %r15
	movq	56(%r14), %r11
	movq	%r11, 96(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r10
	movq	64(%r14), %r11
	movq	%r11, 112(%rsp)                 # 8-byte Spill
	sbbq	%r11, %r12
	movq	72(%r14), %r11
	movq	%r11, 120(%rsp)                 # 8-byte Spill
	sbbq	%r11, %r13
	movq	80(%r14), %r11
	movq	%r11, 128(%rsp)                 # 8-byte Spill
	sbbq	%r11, %rbp
	movq	88(%r14), %r11
	movq	%r11, 88(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rax
	sbbq	$0, %rbx
	movq	96(%r14), %r11
	movq	%r11, 32(%rsp)                  # 8-byte Spill
	subq	%r11, %r8
	movq	104(%r14), %r11
	movq	%r11, 40(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r9
	movq	112(%r14), %r11
	movq	%r11, 48(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rsi
	movq	120(%r14), %r11
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rdi
	movq	128(%r14), %r11
	movq	%r11, 64(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rcx
	movq	136(%r14), %r11
	movq	%r11, 72(%rsp)                  # 8-byte Spill
	sbbq	%r11, %rdx
	movq	144(%r14), %r11
	movq	%r11, 80(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r15
	movq	152(%r14), %r11
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r10
	movq	160(%r14), %r11
	movq	%r11, 16(%rsp)                  # 8-byte Spill
	sbbq	%r11, %r12
	movq	168(%r14), %r11
	movq	%r11, 8(%rsp)                   # 8-byte Spill
	sbbq	%r11, %r13
	movq	176(%r14), %r11
	movq	%r11, (%rsp)                    # 8-byte Spill
	sbbq	%r11, %rbp
	movq	184(%r14), %r11
	sbbq	%r11, %rax
	sbbq	$0, %rbx
	addq	104(%rsp), %r8                  # 8-byte Folded Reload
	adcq	96(%rsp), %r9                   # 8-byte Folded Reload
	adcq	112(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	120(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	128(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	88(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	32(%rsp), %r15                  # 8-byte Folded Reload
	adcq	40(%rsp), %r10                  # 8-byte Folded Reload
	adcq	48(%rsp), %r12                  # 8-byte Folded Reload
	adcq	56(%rsp), %r13                  # 8-byte Folded Reload
	adcq	64(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	72(%rsp), %rax                  # 8-byte Folded Reload
	adcq	80(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%r8, 48(%r14)
	movq	%r9, 56(%r14)
	movq	%rsi, 64(%r14)
	movq	%rdi, 72(%r14)
	movq	%rcx, 80(%r14)
	movq	%rdx, 88(%r14)
	movq	%r15, 96(%r14)
	movq	%r10, 104(%r14)
	movq	%r12, 112(%r14)
	movq	%r13, 120(%r14)
	movq	%rbp, 128(%r14)
	movq	%rax, 136(%r14)
	movq	%rbx, 144(%r14)
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 152(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 160(%r14)
	movq	%rcx, 168(%r14)
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 176(%r14)
	adcq	$0, %r11
	movq	%r11, 184(%r14)
	addq	$328, %rsp                      # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end187:
	.size	mclb_sqr12, .Lfunc_end187-mclb_sqr12
                                        # -- End function
	.globl	mulUnit_inner832                # -- Begin function mulUnit_inner832
	.p2align	4, 0x90
	.type	mulUnit_inner832,@function
mulUnit_inner832:                       # @mulUnit_inner832
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rax, %rcx
	movq	%rdi, %rax
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	addq	-16(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-72(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-80(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-104(%rsp), %r9                 # 8-byte Folded Reload
	adcq	-112(%rsp), %rcx                # 8-byte Folded Reload
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rax)
	movq	%rdi, 8(%rax)
	movq	%r10, 16(%rax)
	movq	%r11, 24(%rax)
	movq	%r14, 32(%rax)
	movq	%r15, 40(%rax)
	movq	%r12, 48(%rax)
	movq	%r13, 56(%rax)
	movq	%rbx, 64(%rax)
	movq	%rbp, 72(%rax)
	movq	%r8, 80(%rax)
	movq	%r9, 88(%rax)
	movq	%rcx, 96(%rax)
	adcq	$0, %rdx
	movq	%rdx, 104(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end188:
	.size	mulUnit_inner832, .Lfunc_end188-mulUnit_inner832
                                        # -- End function
	.globl	mclb_mulUnit13                  # -- Begin function mclb_mulUnit13
	.p2align	4, 0x90
	.type	mclb_mulUnit13,@function
mclb_mulUnit13:                         # @mclb_mulUnit13
# %bb.0:
	pushq	%rbx
	subq	$112, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner832@PLT
	movq	104(%rsp), %rax
	movq	96(%rsp), %rcx
	movups	80(%rsp), %xmm0
	movups	64(%rsp), %xmm1
	movups	(%rsp), %xmm2
	movups	16(%rsp), %xmm3
	movups	32(%rsp), %xmm4
	movups	48(%rsp), %xmm5
	movups	%xmm2, (%rbx)
	movups	%xmm3, 16(%rbx)
	movups	%xmm4, 32(%rbx)
	movups	%xmm5, 48(%rbx)
	movups	%xmm1, 64(%rbx)
	movups	%xmm0, 80(%rbx)
	movq	%rcx, 96(%rbx)
	addq	$112, %rsp
	popq	%rbx
	retq
.Lfunc_end189:
	.size	mclb_mulUnit13, .Lfunc_end189-mclb_mulUnit13
                                        # -- End function
	.globl	mclb_mulUnitAdd13               # -- Begin function mclb_mulUnitAdd13
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd13,@function
mclb_mulUnitAdd13:                      # @mclb_mulUnitAdd13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	-104(%rsp), %rcx                # 8-byte Reload
	addq	%rcx, (%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	adcq	8(%rdi), %rsi
	adcq	16(%rdi), %rbp
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r11
	adcq	40(%rdi), %r15
	adcq	48(%rdi), %r13
	adcq	56(%rdi), %rbx
	adcq	64(%rdi), %r9
	adcq	72(%rdi), %r8
	adcq	80(%rdi), %r12
	adcq	88(%rdi), %r14
	adcq	96(%rdi), %rax
	setb	%cl
	addq	-8(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	-16(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-56(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-72(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-80(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-96(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rsi, 8(%rdi)
	movq	%rbp, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r11, 32(%rdi)
	movq	%r15, 40(%rdi)
	movq	%r13, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%r12, 80(%rdi)
	movq	%r14, 88(%rdi)
	movq	%rax, 96(%rdi)
	movzbl	%cl, %eax
	adcq	%rdx, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end190:
	.size	mclb_mulUnitAdd13, .Lfunc_end190-mclb_mulUnitAdd13
                                        # -- End function
	.globl	mclb_mul13                      # -- Begin function mclb_mul13
	.p2align	4, 0x90
	.type	mclb_mul13,@function
mclb_mul13:                             # @mclb_mul13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1592, %rsp                     # imm = 0x638
	movq	%rdx, %rax
	movq	%rsi, 120(%rsp)                 # 8-byte Spill
	movq	%rdi, 112(%rsp)                 # 8-byte Spill
	movq	(%rdx), %rdx
	movq	%rax, %r12
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	leaq	1480(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	1584(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1576(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	1568(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	1560(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	1552(%rsp), %r15
	movq	1544(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1536(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	1528(%rsp), %r13
	movq	1520(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1512(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1504(%rsp), %r14
	movq	1496(%rsp), %rbx
	movq	1480(%rsp), %rax
	movq	1488(%rsp), %rbp
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	8(%r12), %rdx
	leaq	1368(%rsp), %rdi
	movq	120(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rsi
	callq	mulUnit_inner832@PLT
	addq	1368(%rsp), %rbp
	movq	%rbp, %rdx
	adcq	1376(%rsp), %rbx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	adcq	1384(%rsp), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1392(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1400(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	1408(%rsp), %r13
	movq	%r13, %rbp
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	1416(%rsp), %r13
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1424(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	1432(%rsp), %r15
	movq	%r15, %rbx
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1440(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1448(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1456(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	1472(%rsp), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	1464(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 8(%rax)
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rdx
	leaq	1256(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner832@PLT
	movq	48(%rsp), %rcx                  # 8-byte Reload
	addq	1256(%rsp), %rcx
	adcq	1264(%rsp), %r14
	movq	%r14, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
	adcq	1272(%rsp), %r14
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	1280(%rsp), %r15
	adcq	1288(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	adcq	1296(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r13                  # 8-byte Reload
	adcq	1304(%rsp), %r13
	adcq	1312(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rbx                  # 8-byte Reload
	adcq	1320(%rsp), %rbx
	movq	72(%rsp), %rbp                  # 8-byte Reload
	adcq	1328(%rsp), %rbp
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1336(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1344(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1360(%rsp), %rax
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	1352(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	24(%r12), %rdx
	leaq	1144(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addq	1144(%rsp), %rcx
	adcq	1152(%rsp), %r14
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	adcq	1160(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1168(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	1176(%rsp), %r14
	adcq	1184(%rsp), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1192(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	1200(%rsp), %rbx
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	adcq	1208(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rbp                  # 8-byte Reload
	adcq	1216(%rsp), %rbp
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	1224(%rsp), %rbx
	movq	56(%rsp), %r15                  # 8-byte Reload
	adcq	1232(%rsp), %r15
	movq	1248(%rsp), %rax
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	1240(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	%rcx, 24(%r13)
	movq	32(%r12), %rdx
	leaq	1032(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	1032(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1040(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1048(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1056(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1064(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r12                  # 8-byte Reload
	adcq	1072(%rsp), %r12
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1080(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1088(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	1096(%rsp), %rbp
	adcq	1104(%rsp), %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	adcq	1112(%rsp), %r15
	movq	%r15, 56(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbx                  # 8-byte Reload
	adcq	1120(%rsp), %rbx
	movq	1136(%rsp), %rax
	movq	104(%rsp), %r15                 # 8-byte Reload
	adcq	1128(%rsp), %r15
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 32(%r13)
	movq	128(%rsp), %r13                 # 8-byte Reload
	movq	40(%r13), %rdx
	leaq	920(%rsp), %rdi
	movq	120(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner832@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	920(%rsp), %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	928(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	936(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	952(%rsp), %r12
	movq	%r12, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	960(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	968(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	%rbp, %r12
	adcq	976(%rsp), %r12
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	984(%rsp), %rbp
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	992(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1000(%rsp), %rbx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	adcq	1008(%rsp), %r15
	movq	1024(%rsp), %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	1016(%rsp), %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	48(%r13), %rdx
	leaq	808(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner832@PLT
	movq	24(%rsp), %rax                  # 8-byte Reload
	addq	808(%rsp), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	816(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	adcq	824(%rsp), %r14
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	832(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	adcq	840(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rbx                  # 8-byte Reload
	adcq	848(%rsp), %rbx
	adcq	856(%rsp), %r12
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	adcq	864(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbp                  # 8-byte Reload
	adcq	872(%rsp), %rbp
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	880(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	888(%rsp), %r15
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %r12                   # 8-byte Reload
	adcq	896(%rsp), %r12
	movq	912(%rsp), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	904(%rsp), %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	movq	%rax, 48(%r13)
	movq	128(%rsp), %r15                 # 8-byte Reload
	movq	56(%r15), %rdx
	leaq	696(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	696(%rsp), %rax
	adcq	704(%rsp), %r14
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	712(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r14                  # 8-byte Reload
	adcq	720(%rsp), %r14
	adcq	728(%rsp), %rbx
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	736(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	744(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	752(%rsp), %rbp
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbx                  # 8-byte Reload
	adcq	760(%rsp), %rbx
	movq	104(%rsp), %rcx                 # 8-byte Reload
	adcq	768(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	adcq	776(%rsp), %r12
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %r12                  # 8-byte Reload
	adcq	784(%rsp), %r12
	movq	800(%rsp), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	792(%rsp), %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 56(%r13)
	movq	64(%r15), %rdx
	leaq	584(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	40(%rsp), %rdx                  # 8-byte Reload
	addq	584(%rsp), %rdx
	movq	88(%rsp), %rbp                  # 8-byte Reload
	adcq	592(%rsp), %rbp
	movq	%r14, %r13
	adcq	600(%rsp), %r13
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	608(%rsp), %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	616(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	624(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	632(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	640(%rsp), %rbx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rbx                 # 8-byte Reload
	adcq	648(%rsp), %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	656(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	664(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r15                  # 8-byte Reload
	adcq	672(%rsp), %r15
	movq	688(%rsp), %rax
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	680(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 64(%rax)
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	72(%rax), %rdx
	leaq	472(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	addq	472(%rsp), %rbp
	movq	%rbp, %rax
	adcq	480(%rsp), %r13
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	adcq	488(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r14                  # 8-byte Reload
	adcq	496(%rsp), %r14
	movq	64(%rsp), %r13                  # 8-byte Reload
	adcq	504(%rsp), %r13
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	512(%rsp), %r12
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	520(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	528(%rsp), %rbx
	movq	%rbx, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	536(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	544(%rsp), %rbp
	adcq	552(%rsp), %r15
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	560(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	576(%rsp), %rcx
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	568(%rsp), %rbx
	adcq	$0, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 72(%rcx)
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	80(%rax), %rdx
	leaq	360(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	360(%rsp), %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	368(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	376(%rsp), %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	%r13, %r14
	adcq	384(%rsp), %r14
	adcq	392(%rsp), %r12
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r13                  # 8-byte Reload
	adcq	400(%rsp), %r13
	movq	104(%rsp), %r12                 # 8-byte Reload
	adcq	408(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	416(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	424(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	432(%rsp), %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	440(%rsp), %rbp
	adcq	448(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	464(%rsp), %r15
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	456(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	$0, %r15
	movq	112(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 80(%rax)
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	88(%rax), %rdx
	leaq	248(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	72(%rsp), %rax                  # 8-byte Reload
	addq	248(%rsp), %rax
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	256(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	adcq	264(%rsp), %r14
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	272(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	adcq	280(%rsp), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	adcq	288(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	296(%rsp), %rbx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	312(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	320(%rsp), %rbp
	movq	88(%rsp), %r12                  # 8-byte Reload
	adcq	328(%rsp), %r12
	movq	40(%rsp), %r14                  # 8-byte Reload
	adcq	336(%rsp), %r14
	movq	352(%rsp), %r13
	adcq	344(%rsp), %r15
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 88(%rcx)
	adcq	$0, %r13
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	96(%rax), %rdx
	leaq	136(%rsp), %rdi
	movq	120(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner832@PLT
	movq	80(%rsp), %r8                   # 8-byte Reload
	addq	136(%rsp), %r8
	movq	64(%rsp), %r9                   # 8-byte Reload
	adcq	144(%rsp), %r9
	movq	56(%rsp), %r10                  # 8-byte Reload
	adcq	152(%rsp), %r10
	movq	48(%rsp), %r11                  # 8-byte Reload
	adcq	160(%rsp), %r11
	movq	104(%rsp), %rdx                 # 8-byte Reload
	adcq	168(%rsp), %rdx
	adcq	176(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	184(%rsp), %rsi
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	192(%rsp), %rdi
	adcq	200(%rsp), %rbp
	adcq	208(%rsp), %r12
	adcq	216(%rsp), %r14
	adcq	224(%rsp), %r15
	movq	240(%rsp), %rax
	adcq	232(%rsp), %r13
	adcq	$0, %rax
	movq	112(%rsp), %rcx                 # 8-byte Reload
	movq	%r8, 96(%rcx)
	movq	%r9, 104(%rcx)
	movq	%r10, 112(%rcx)
	movq	%r11, 120(%rcx)
	movq	%rdx, 128(%rcx)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 136(%rcx)
	movq	%rsi, 144(%rcx)
	movq	%rdi, 152(%rcx)
	movq	%rbp, 160(%rcx)
	movq	%r12, 168(%rcx)
	movq	%r14, 176(%rcx)
	movq	%r15, 184(%rcx)
	movq	%r13, 192(%rcx)
	movq	%rax, 200(%rcx)
	addq	$1592, %rsp                     # imm = 0x638
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end191:
	.size	mclb_mul13, .Lfunc_end191-mclb_mul13
                                        # -- End function
	.globl	mclb_sqr13                      # -- Begin function mclb_sqr13
	.p2align	4, 0x90
	.type	mclb_sqr13,@function
mclb_sqr13:                             # @mclb_sqr13
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1576, %rsp                     # imm = 0x628
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	%rdi, 104(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	1464(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	1568(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1560(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1552(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	1544(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	1536(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1528(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	1520(%rsp), %r14
	movq	1512(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1504(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	1496(%rsp), %rbp
	movq	1488(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	1480(%rsp), %rbx
	movq	1464(%rsp), %rax
	movq	1472(%rsp), %r15
	movq	%rax, (%r13)
	movq	8(%r12), %rdx
	leaq	1352(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner832@PLT
	addq	1352(%rsp), %r15
	adcq	1360(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	1368(%rsp), %r13
	adcq	1376(%rsp), %rbp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rbp                    # 8-byte Reload
	adcq	1384(%rsp), %rbp
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1392(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	1400(%rsp), %r14
	movq	%r14, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1408(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	adcq	1416(%rsp), %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1424(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1432(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1440(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1456(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	1448(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%r15, 8(%rax)
	movq	%rax, %r15
	movq	16(%r12), %rdx
	leaq	1240(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner832@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	1240(%rsp), %rdx
	adcq	1248(%rsp), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1256(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1264(%rsp), %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %r13                   # 8-byte Reload
	adcq	1272(%rsp), %r13
	adcq	1280(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	1288(%rsp), %rbp
	adcq	1296(%rsp), %r14
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	1304(%rsp), %rbx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1312(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1320(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1328(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1344(%rsp), %rax
	movq	112(%rsp), %rcx                 # 8-byte Reload
	adcq	1336(%rsp), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 16(%r15)
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	movq	24(%r12), %rdx
	leaq	1128(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner832@PLT
	movq	88(%rsp), %rcx                  # 8-byte Reload
	addq	1128(%rsp), %rcx
	movq	48(%rsp), %r15                  # 8-byte Reload
	adcq	1136(%rsp), %r15
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1144(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	adcq	1152(%rsp), %r13
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1160(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1168(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	adcq	1176(%rsp), %r14
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	adcq	1184(%rsp), %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	1192(%rsp), %r14
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	1200(%rsp), %rbp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	1208(%rsp), %rbx
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1216(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	1232(%rsp), %r12
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	1224(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %r12
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	%rcx, 24(%r13)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	32(%rsi), %rdx
	leaq	1016(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	addq	1016(%rsp), %r15
	movq	%r15, %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1024(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1032(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	80(%rsp), %r15                  # 8-byte Reload
	adcq	1040(%rsp), %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1048(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1056(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1064(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	1072(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	adcq	1080(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	adcq	1088(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rbp                 # 8-byte Reload
	adcq	1096(%rsp), %rbp
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1104(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	1120(%rsp), %rax
	adcq	1112(%rsp), %r12
	movq	%r12, 88(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 32(%r13)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	40(%rsi), %rdx
	leaq	904(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	904(%rsp), %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	912(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	920(%rsp), %r15
	movq	%r15, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	928(%rsp), %r14
	movq	40(%rsp), %r15                  # 8-byte Reload
	adcq	936(%rsp), %r15
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rbx                  # 8-byte Reload
	adcq	952(%rsp), %rbx
	movq	16(%rsp), %r12                  # 8-byte Reload
	adcq	960(%rsp), %r12
	movq	24(%rsp), %r13                  # 8-byte Reload
	adcq	968(%rsp), %r13
	adcq	976(%rsp), %rbp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rbp                  # 8-byte Reload
	adcq	984(%rsp), %rbp
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	992(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	1008(%rsp), %rax
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	1000(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	48(%rsi), %rdx
	leaq	792(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	792(%rsp), %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	800(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	808(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	adcq	816(%rsp), %r15
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	adcq	824(%rsp), %r14
	adcq	832(%rsp), %rbx
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	adcq	840(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	adcq	848(%rsp), %r13
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r15                 # 8-byte Reload
	adcq	856(%rsp), %r15
	adcq	864(%rsp), %rbp
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rbp                  # 8-byte Reload
	adcq	872(%rsp), %rbp
	movq	48(%rsp), %r12                  # 8-byte Reload
	adcq	880(%rsp), %r12
	movq	896(%rsp), %rax
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	888(%rsp), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	104(%rsp), %r13                 # 8-byte Reload
	movq	%rcx, 48(%r13)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	680(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	680(%rsp), %rcx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	688(%rsp), %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	696(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	704(%rsp), %r14
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	712(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	720(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	728(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	736(%rsp), %r15
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	744(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	752(%rsp), %rbp
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	adcq	760(%rsp), %r12
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	adcq	768(%rsp), %r14
	movq	784(%rsp), %rax
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	776(%rsp), %rbp
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%r13)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	64(%rsi), %rdx
	leaq	568(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	addq	568(%rsp), %rbx
	movq	%rbx, %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	576(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	584(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %r12                  # 8-byte Reload
	adcq	592(%rsp), %r12
	movq	16(%rsp), %r13                  # 8-byte Reload
	adcq	600(%rsp), %r13
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	608(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	616(%rsp), %r15
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	624(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	632(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	640(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	648(%rsp), %r14
	movq	%r14, (%rsp)                    # 8-byte Spill
	adcq	656(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	672(%rsp), %rcx
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	664(%rsp), %rbx
	adcq	$0, %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 64(%rcx)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	72(%rsi), %rdx
	leaq	456(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	456(%rsp), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	464(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	472(%rsp), %r12
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	adcq	480(%rsp), %r13
	movq	%r13, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r12                  # 8-byte Reload
	adcq	488(%rsp), %r12
	adcq	496(%rsp), %r15
	movq	56(%rsp), %r14                  # 8-byte Reload
	adcq	504(%rsp), %r14
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	512(%rsp), %r13
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	520(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rbp                    # 8-byte Reload
	adcq	528(%rsp), %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	536(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	544(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	560(%rsp), %rcx
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	552(%rsp), %rbx
	adcq	$0, %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 72(%rcx)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	80(%rsi), %rdx
	leaq	344(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	344(%rsp), %rax
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	352(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	368(%rsp), %r12
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	adcq	376(%rsp), %r15
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	movq	%r14, %r12
	adcq	384(%rsp), %r12
	adcq	392(%rsp), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r13                  # 8-byte Reload
	adcq	400(%rsp), %r13
	adcq	408(%rsp), %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	416(%rsp), %rbp
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	432(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	movq	448(%rsp), %r15
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	440(%rsp), %rbx
	adcq	$0, %r15
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 80(%rcx)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	88(%rsi), %rdx
	leaq	232(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	232(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	240(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	248(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r14                 # 8-byte Reload
	adcq	256(%rsp), %r14
	adcq	264(%rsp), %r12
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r12                  # 8-byte Reload
	adcq	272(%rsp), %r12
	adcq	280(%rsp), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	288(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	adcq	296(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	304(%rsp), %r13
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	312(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	320(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	336(%rsp), %rbp
	adcq	328(%rsp), %r15
	adcq	$0, %rbp
	movq	104(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 88(%rax)
	movq	96(%rsp), %rsi                  # 8-byte Reload
	movq	96(%rsi), %rdx
	leaq	120(%rsp), %rdi
	callq	mulUnit_inner832@PLT
	movq	16(%rsp), %r11                  # 8-byte Reload
	addq	120(%rsp), %r11
	movq	24(%rsp), %r8                   # 8-byte Reload
	adcq	128(%rsp), %r8
	adcq	136(%rsp), %r14
	movq	56(%rsp), %r9                   # 8-byte Reload
	adcq	144(%rsp), %r9
	movq	%r12, %r10
	adcq	152(%rsp), %r10
	movq	48(%rsp), %rsi                  # 8-byte Reload
	adcq	160(%rsp), %rsi
	movq	(%rsp), %r12                    # 8-byte Reload
	adcq	168(%rsp), %r12
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	176(%rsp), %rdi
	adcq	184(%rsp), %r13
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	192(%rsp), %rbx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	adcq	200(%rsp), %rdx
	adcq	208(%rsp), %r15
	movq	224(%rsp), %rax
	adcq	216(%rsp), %rbp
	adcq	$0, %rax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	movq	%r11, 96(%rcx)
	movq	%r8, 104(%rcx)
	movq	%r14, 112(%rcx)
	movq	%r9, 120(%rcx)
	movq	%r10, 128(%rcx)
	movq	%rsi, 136(%rcx)
	movq	%r12, 144(%rcx)
	movq	%rdi, 152(%rcx)
	movq	%r13, 160(%rcx)
	movq	%rbx, 168(%rcx)
	movq	%rdx, 176(%rcx)
	movq	%r15, 184(%rcx)
	movq	%rbp, 192(%rcx)
	movq	%rax, 200(%rcx)
	addq	$1576, %rsp                     # imm = 0x628
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end192:
	.size	mclb_sqr13, .Lfunc_end192-mclb_sqr13
                                        # -- End function
	.globl	mulUnit_inner896                # -- Begin function mulUnit_inner896
	.p2align	4, 0x90
	.type	mulUnit_inner896,@function
mulUnit_inner896:                       # @mulUnit_inner896
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, %r9
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	104(%rsi)
	movq	%rax, %rbp
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	addq	%r8, %r13
	adcq	%r9, %r12
	movq	%r14, %r15
	adcq	%r10, %r15
	movq	%r11, %r14
	adcq	8(%rsp), %r14                   # 8-byte Folded Reload
	adcq	(%rsp), %rbx                    # 8-byte Folded Reload
	movq	-40(%rsp), %r11                 # 8-byte Reload
	adcq	-8(%rsp), %r11                  # 8-byte Folded Reload
	movq	-56(%rsp), %r10                 # 8-byte Reload
	adcq	-24(%rsp), %r10                 # 8-byte Folded Reload
	movq	-72(%rsp), %r9                  # 8-byte Reload
	adcq	-32(%rsp), %r9                  # 8-byte Folded Reload
	movq	-88(%rsp), %r8                  # 8-byte Reload
	adcq	-48(%rsp), %r8                  # 8-byte Folded Reload
	movq	-104(%rsp), %rsi                # 8-byte Reload
	adcq	-64(%rsp), %rsi                 # 8-byte Folded Reload
	movq	-120(%rsp), %rdx                # 8-byte Reload
	adcq	-80(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-128(%rsp), %rax                # 8-byte Reload
	adcq	-96(%rsp), %rax                 # 8-byte Folded Reload
	adcq	-112(%rsp), %rbp                # 8-byte Folded Reload
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movq	%rcx, (%rdi)
	movq	%r13, 8(%rdi)
	movq	%r12, 16(%rdi)
	movq	%r15, 24(%rdi)
	movq	%r14, 32(%rdi)
	movq	%rbx, 40(%rdi)
	movq	%r11, 48(%rdi)
	movq	%r10, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%rsi, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 112(%rdi)
	movq	%rdi, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end193:
	.size	mulUnit_inner896, .Lfunc_end193-mulUnit_inner896
                                        # -- End function
	.globl	mclb_mulUnit14                  # -- Begin function mclb_mulUnit14
	.p2align	4, 0x90
	.type	mclb_mulUnit14,@function
mclb_mulUnit14:                         # @mclb_mulUnit14
# %bb.0:
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner896@PLT
	movq	120(%rsp), %rax
	movups	104(%rsp), %xmm0
	movups	88(%rsp), %xmm1
	movups	72(%rsp), %xmm2
	movups	8(%rsp), %xmm3
	movups	24(%rsp), %xmm4
	movups	40(%rsp), %xmm5
	movups	56(%rsp), %xmm6
	movups	%xmm3, (%rbx)
	movups	%xmm4, 16(%rbx)
	movups	%xmm5, 32(%rbx)
	movups	%xmm6, 48(%rbx)
	movups	%xmm2, 64(%rbx)
	movups	%xmm1, 80(%rbx)
	movups	%xmm0, 96(%rbx)
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end194:
	.size	mclb_mulUnit14, .Lfunc_end194-mclb_mulUnit14
                                        # -- End function
	.globl	mclb_mulUnitAdd14               # -- Begin function mclb_mulUnitAdd14
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd14,@function
mclb_mulUnitAdd14:                      # @mclb_mulUnitAdd14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	104(%rsi)
	movq	%rax, %rcx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	addq	%rax, (%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	adcq	8(%rdi), %rsi
	movq	-128(%rsp), %rax                # 8-byte Reload
	adcq	16(%rdi), %rax
	adcq	24(%rdi), %r10
	adcq	32(%rdi), %r11
	adcq	40(%rdi), %r14
	adcq	48(%rdi), %r12
	adcq	56(%rdi), %rbx
	adcq	64(%rdi), %r9
	adcq	72(%rdi), %r8
	adcq	80(%rdi), %r15
	adcq	88(%rdi), %rbp
	adcq	96(%rdi), %r13
	adcq	104(%rdi), %rcx
	setb	%dl
	addq	(%rsp), %rsi                    # 8-byte Folded Reload
	adcq	-8(%rsp), %rax                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r14                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-48(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-72(%rsp), %r8                  # 8-byte Folded Reload
	adcq	-80(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-88(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-104(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%r10, 24(%rdi)
	movq	%r11, 32(%rdi)
	movq	%r14, 40(%rdi)
	movq	%r12, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r9, 64(%rdi)
	movq	%r8, 72(%rdi)
	movq	%r15, 80(%rdi)
	movq	%rbp, 88(%rdi)
	movq	%r13, 96(%rdi)
	movq	%rcx, 104(%rdi)
	movzbl	%dl, %eax
	adcq	-56(%rsp), %rax                 # 8-byte Folded Reload
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end195:
	.size	mclb_mulUnitAdd14, .Lfunc_end195-mclb_mulUnitAdd14
                                        # -- End function
	.globl	mclb_mul14                      # -- Begin function mclb_mul14
	.p2align	4, 0x90
	.type	mclb_mul14,@function
mclb_mul14:                             # @mclb_mul14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp                      # imm = 0x1A8
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	56(%rsi), %r12
	leaq	56(%rdx), %r13
	leaq	112(%rdi), %rbp
	callq	mclb_mul7@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul7@PLT
	movq	48(%rbx), %rdx
	movq	(%rbx), %rax
	addq	56(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	8(%rbx), %rax
	adcq	64(%rbx), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	16(%rbx), %rax
	adcq	72(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	24(%rbx), %rax
	adcq	80(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	32(%rbx), %rax
	adcq	88(%rbx), %rax
	movq	%rax, %r12
	movq	40(%rbx), %r13
	adcq	96(%rbx), %r13
	movq	40(%r15), %rcx
	adcq	104(%rbx), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	(%r15), %r8
	setb	%al
	addq	56(%r15), %r8
	movq	%r8, 96(%rsp)                   # 8-byte Spill
	movq	8(%r15), %rsi
	adcq	64(%r15), %rsi
	movq	%rsi, %r9
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	16(%r15), %rsi
	adcq	72(%r15), %rsi
	movq	%rsi, %r10
	movq	%rsi, 80(%rsp)                  # 8-byte Spill
	movq	24(%r15), %rsi
	adcq	80(%r15), %rsi
	movq	%rsi, %r11
	movq	%rsi, 72(%rsp)                  # 8-byte Spill
	movq	32(%r15), %rsi
	adcq	88(%r15), %rsi
	movq	%rsi, %rdi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	adcq	96(%r15), %rcx
	movq	%rcx, %rsi
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	48(%r15), %rcx
	adcq	104(%r15), %rcx
	movq	%rcx, %rdx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	setb	%cl
	movzbl	%al, %ebp
	movzbl	%cl, %eax
	movq	%rax, %rbx
	andb	%bpl, %al
	negq	%rbp
	negq	%rbx
	movzbl	%al, %eax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 256(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 264(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 272(%rsp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 280(%rsp)
	movq	%r12, 288(%rsp)
	movq	%r13, 296(%rsp)
	movq	48(%rsp), %r15                  # 8-byte Reload
	movq	%r15, 304(%rsp)
	movq	%r8, 200(%rsp)
	movq	%r9, 208(%rsp)
	movq	%r10, 216(%rsp)
	movq	%r11, 224(%rsp)
	movq	%rdi, 232(%rsp)
	movq	%rsi, 240(%rsp)
	movq	%rdx, 248(%rsp)
	leaq	312(%rsp), %rdi
	leaq	256(%rsp), %rsi
	leaq	200(%rsp), %rdx
	callq	mclb_mul7@PLT
	andq	%rbp, 32(%rsp)                  # 8-byte Folded Spill
	movq	56(%rsp), %r9                   # 8-byte Reload
	andq	%rbp, %r9
	movq	64(%rsp), %r8                   # 8-byte Reload
	andq	%rbp, %r8
	movq	72(%rsp), %rdi                  # 8-byte Reload
	andq	%rbp, %rdi
	movq	80(%rsp), %rsi                  # 8-byte Reload
	andq	%rbp, %rsi
	movq	88(%rsp), %rax                  # 8-byte Reload
	andq	%rbp, %rax
	andq	96(%rsp), %rbp                  # 8-byte Folded Reload
	andq	%rbx, %r15
	movq	%r15, %r10
	andq	%rbx, %r13
	andq	%rbx, %r12
	movq	40(%rsp), %rdx                  # 8-byte Reload
	andq	%rbx, %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	andq	%rbx, %rcx
	movq	24(%rsp), %r11                  # 8-byte Reload
	andq	%rbx, %r11
	andq	8(%rsp), %rbx                   # 8-byte Folded Reload
	addq	%rbp, %rbx
	movq	%r11, %rbp
	adcq	%rax, %rbp
	adcq	%rsi, %rcx
	adcq	%rdi, %rdx
	adcq	%r8, %r12
	adcq	%r9, %r13
	adcq	32(%rsp), %r10                  # 8-byte Folded Reload
	setb	%al
	addq	368(%rsp), %rbx
	adcq	376(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	adcq	384(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	392(%rsp), %rdx
	adcq	400(%rsp), %r12
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	312(%rsp), %r12
	adcq	408(%rsp), %r13
	movzbl	%al, %esi
	adcq	416(%rsp), %r10
	adcq	104(%rsp), %rsi                 # 8-byte Folded Reload
	subq	(%r14), %r12
	movq	320(%rsp), %r15
	sbbq	8(%r14), %r15
	movq	328(%rsp), %r11
	sbbq	16(%r14), %r11
	movq	336(%rsp), %r9
	sbbq	24(%r14), %r9
	movq	344(%rsp), %rbp
	sbbq	32(%r14), %rbp
	movq	352(%rsp), %r8
	sbbq	40(%r14), %r8
	movq	360(%rsp), %rdi
	sbbq	48(%r14), %rdi
	movq	56(%r14), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rbx
	movq	64(%r14), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	sbbq	%rax, %rcx
	movq	72(%r14), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	sbbq	%rax, 16(%rsp)                  # 8-byte Folded Spill
	movq	80(%r14), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rdx
	movq	88(%r14), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	sbbq	%rax, 8(%rsp)                   # 8-byte Folded Spill
	movq	96(%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r13
	movq	104(%r14), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r10
	movq	%r10, 48(%rsp)                  # 8-byte Spill
	sbbq	$0, %rsi
	movq	112(%r14), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	subq	%rax, %r12
	movq	120(%r14), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	128(%r14), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r11
	movq	136(%r14), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r9
	movq	144(%r14), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbp
	movq	152(%r14), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r8
	movq	160(%r14), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rdi
	movq	168(%r14), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbx
	movq	176(%r14), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	184(%r14), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %r10                  # 8-byte Reload
	sbbq	%rax, %r10
	movq	192(%r14), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, %rcx
	sbbq	%rax, %rcx
	movq	200(%r14), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rdx                   # 8-byte Reload
	sbbq	%rax, %rdx
	movq	208(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	sbbq	%rax, %r13
	movq	216(%r14), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	sbbq	%rax, 48(%rsp)                  # 8-byte Folded Spill
	sbbq	$0, %rsi
	addq	56(%rsp), %r12                  # 8-byte Folded Reload
	adcq	192(%rsp), %r15                 # 8-byte Folded Reload
	adcq	64(%rsp), %r11                  # 8-byte Folded Reload
	adcq	176(%rsp), %r9                  # 8-byte Folded Reload
	adcq	72(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	80(%rsp), %r8                   # 8-byte Folded Reload
	adcq	184(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	112(%rsp), %rbx                 # 8-byte Folded Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	120(%rsp), %rax                 # 8-byte Folded Reload
	adcq	128(%rsp), %r10                 # 8-byte Folded Reload
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	adcq	136(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	144(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, %r10
	adcq	152(%rsp), %r13                 # 8-byte Folded Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	160(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	168(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%r12, 56(%r14)
	movq	%r15, 64(%r14)
	movq	%r11, 72(%r14)
	movq	%r9, 80(%r14)
	movq	%rbp, 88(%r14)
	movq	%r8, 96(%r14)
	movq	%rdi, 104(%r14)
	movq	%rbx, 112(%r14)
	movq	%rax, 120(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 128(%r14)
	movq	%rcx, 136(%r14)
	movq	%r10, 144(%r14)
	movq	%r13, 152(%r14)
	movq	%rdx, 160(%r14)
	movq	%rsi, 168(%r14)
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 176(%r14)
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 184(%r14)
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 192(%r14)
	movq	%rcx, 200(%r14)
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 208(%r14)
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 216(%r14)
	addq	$424, %rsp                      # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end196:
	.size	mclb_mul14, .Lfunc_end196-mclb_mul14
                                        # -- End function
	.globl	mclb_sqr14                      # -- Begin function mclb_sqr14
	.p2align	4, 0x90
	.type	mclb_sqr14,@function
mclb_sqr14:                             # @mclb_sqr14
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$424, %rsp                      # imm = 0x1A8
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	56(%rsi), %r15
	leaq	112(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul7@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul7@PLT
	movq	48(%rbx), %rsi
	movq	(%rbx), %rcx
	addq	56(%rbx), %rcx
	movq	8(%rbx), %rdx
	adcq	64(%rbx), %rdx
	movq	16(%rbx), %r13
	adcq	72(%rbx), %r13
	movq	24(%rbx), %rbp
	adcq	80(%rbx), %rbp
	movq	32(%rbx), %r15
	adcq	88(%rbx), %r15
	movq	40(%rbx), %r12
	adcq	96(%rbx), %r12
	adcq	104(%rbx), %rsi
	setb	%al
	movzbl	%al, %ebx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	negq	%rbx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 256(%rsp)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 264(%rsp)
	movq	%r13, 272(%rsp)
	movq	%rbp, 280(%rsp)
	movq	%r15, 288(%rsp)
	movq	%r12, 296(%rsp)
	movq	%rsi, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, 304(%rsp)
	movq	%rcx, 200(%rsp)
	movq	%rdx, 208(%rsp)
	movq	%r13, 216(%rsp)
	movq	%rbp, 224(%rsp)
	movq	%r15, 232(%rsp)
	movq	%r12, 240(%rsp)
	movq	%rsi, 248(%rsp)
	leaq	312(%rsp), %rdi
	leaq	256(%rsp), %rsi
	leaq	200(%rsp), %rdx
	callq	mclb_mul7@PLT
	movq	24(%rsp), %r11                  # 8-byte Reload
	andq	%rbx, %r11
	movq	8(%rsp), %rax                   # 8-byte Reload
	andq	%rbx, %rax
	andq	%rbx, %r13
	andq	%rbx, %rbp
	andq	%rbx, %r15
	andq	%rbx, %r12
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rbx, %rdx
	shldq	$1, %r12, %rdx
	shldq	$1, %r15, %r12
	shldq	$1, %rbp, %r15
	shldq	$1, %r13, %rbp
	shldq	$1, %rax, %r13
	shldq	$1, %r11, %rax
	shrq	$63, %rbx
	addq	%r11, %r11
	addq	368(%rsp), %r11
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	adcq	376(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	384(%rsp), %r13
	adcq	392(%rsp), %rbp
	adcq	400(%rsp), %r15
	adcq	408(%rsp), %r12
	movq	312(%rsp), %rax
	adcq	416(%rsp), %rdx
	adcq	32(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	320(%rsp), %r11
	sbbq	8(%r14), %r11
	movq	328(%rsp), %r10
	sbbq	16(%r14), %r10
	movq	336(%rsp), %r9
	sbbq	24(%r14), %r9
	movq	344(%rsp), %r8
	sbbq	32(%r14), %r8
	movq	352(%rsp), %rdi
	sbbq	40(%r14), %rdi
	movq	360(%rsp), %rsi
	sbbq	48(%r14), %rsi
	movq	56(%r14), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	sbbq	%rax, %rcx
	movq	64(%r14), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	sbbq	%rax, 8(%rsp)                   # 8-byte Folded Spill
	movq	72(%r14), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r13
	movq	80(%r14), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbp
	movq	88(%r14), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	96(%r14), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r12
	movq	104(%r14), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	sbbq	$0, %rbx
	movq	112(%r14), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rdx                  # 8-byte Reload
	subq	%rax, %rdx
	movq	120(%r14), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r11
	movq	128(%r14), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r10
	movq	136(%r14), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r9
	movq	144(%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r8
	movq	152(%r14), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rdi
	movq	160(%r14), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rsi
	movq	168(%r14), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	176(%r14), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	sbbq	%rax, %rcx
	movq	184(%r14), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r13
	movq	192(%r14), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbp
	movq	200(%r14), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	208(%r14), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r12
	movq	216(%r14), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	sbbq	%rax, 32(%rsp)                  # 8-byte Folded Spill
	sbbq	$0, %rbx
	addq	120(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	112(%rsp), %r11                 # 8-byte Folded Reload
	adcq	128(%rsp), %r10                 # 8-byte Folded Reload
	adcq	136(%rsp), %r9                  # 8-byte Folded Reload
	adcq	144(%rsp), %r8                  # 8-byte Folded Reload
	adcq	152(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	104(%rsp), %rsi                 # 8-byte Folded Reload
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	48(%rsp), %rax                  # 8-byte Folded Reload
	adcq	56(%rsp), %rcx                  # 8-byte Folded Reload
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	64(%rsp), %r13                  # 8-byte Folded Reload
	adcq	72(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	80(%rsp), %r15                  # 8-byte Folded Reload
	adcq	88(%rsp), %r12                  # 8-byte Folded Reload
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	96(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	40(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rdx, 56(%r14)
	movq	%r11, 64(%r14)
	movq	%r10, 72(%r14)
	movq	%r9, 80(%r14)
	movq	%r8, 88(%r14)
	movq	%rdi, 96(%r14)
	movq	%rsi, 104(%r14)
	movq	%rax, 112(%r14)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 120(%r14)
	movq	%r13, 128(%r14)
	movq	%rbp, 136(%r14)
	movq	%r15, 144(%r14)
	movq	%r12, 152(%r14)
	movq	%rcx, 160(%r14)
	movq	%rbx, 168(%r14)
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 176(%r14)
	movq	192(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 184(%r14)
	movq	184(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	176(%rsp), %rcx                 # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 192(%r14)
	movq	%rcx, 200(%r14)
	movq	168(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 208(%r14)
	movq	160(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 216(%r14)
	addq	$424, %rsp                      # imm = 0x1A8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end197:
	.size	mclb_sqr14, .Lfunc_end197-mclb_sqr14
                                        # -- End function
	.globl	mulUnit_inner960                # -- Begin function mulUnit_inner960
	.p2align	4, 0x90
	.type	mulUnit_inner960,@function
mulUnit_inner960:                       # @mulUnit_inner960
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rbp
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r8
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rbp, %rax
	mulq	8(%rsi)
	movq	%rdx, %r9
	movq	%rax, %r11
	movq	%rbp, %rax
	mulq	16(%rsi)
	movq	%rdx, %r10
	movq	%rax, %r13
	movq	%rbp, %rax
	mulq	24(%rsi)
	movq	%rdx, -128(%rsp)                # 8-byte Spill
	movq	%rax, %r12
	movq	%rbp, %rax
	mulq	32(%rsi)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %r15
	movq	%rbp, %rax
	mulq	40(%rsi)
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, %r14
	movq	%rbp, %rax
	mulq	48(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	56(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	64(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	72(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	80(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	88(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	96(%rsi)
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rbp, %rax
	mulq	104(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rbp, %rax
	mulq	112(%rsi)
	movq	%rax, %rsi
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%r11, %rbp
	addq	%r8, %rbp
	adcq	%r9, %r13
	adcq	%r10, %r12
	adcq	-128(%rsp), %r15                # 8-byte Folded Reload
	adcq	16(%rsp), %r14                  # 8-byte Folded Reload
	movq	-16(%rsp), %rbx                 # 8-byte Reload
	adcq	24(%rsp), %rbx                  # 8-byte Folded Reload
	movq	-32(%rsp), %r11                 # 8-byte Reload
	adcq	8(%rsp), %r11                   # 8-byte Folded Reload
	movq	-48(%rsp), %r10                 # 8-byte Reload
	adcq	-8(%rsp), %r10                  # 8-byte Folded Reload
	movq	-64(%rsp), %r9                  # 8-byte Reload
	adcq	-24(%rsp), %r9                  # 8-byte Folded Reload
	movq	-80(%rsp), %r8                  # 8-byte Reload
	adcq	-40(%rsp), %r8                  # 8-byte Folded Reload
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	adcq	-56(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-112(%rsp), %rcx                # 8-byte Reload
	adcq	-72(%rsp), %rcx                 # 8-byte Folded Reload
	movq	-120(%rsp), %rax                # 8-byte Reload
	adcq	-88(%rsp), %rax                 # 8-byte Folded Reload
	adcq	-104(%rsp), %rsi                # 8-byte Folded Reload
	movq	%rsi, -128(%rsp)                # 8-byte Spill
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	%rbp, 8(%rdi)
	movq	%r13, 16(%rdi)
	movq	%r12, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r14, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%r11, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%r9, 72(%rdi)
	movq	%r8, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rax, 104(%rdi)
	movq	-128(%rsp), %rax                # 8-byte Reload
	movq	%rax, 112(%rdi)
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 120(%rdi)
	movq	%rdi, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end198:
	.size	mulUnit_inner960, .Lfunc_end198-mulUnit_inner960
                                        # -- End function
	.globl	mclb_mulUnit15                  # -- Begin function mclb_mulUnit15
	.p2align	4, 0x90
	.type	mclb_mulUnit15,@function
mclb_mulUnit15:                         # @mclb_mulUnit15
# %bb.0:
	pushq	%rbx
	subq	$128, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner960@PLT
	movq	120(%rsp), %rax
	movq	112(%rsp), %rcx
	movups	96(%rsp), %xmm0
	movups	80(%rsp), %xmm1
	movups	64(%rsp), %xmm2
	movups	(%rsp), %xmm3
	movups	16(%rsp), %xmm4
	movups	32(%rsp), %xmm5
	movups	48(%rsp), %xmm6
	movups	%xmm3, (%rbx)
	movups	%xmm4, 16(%rbx)
	movups	%xmm5, 32(%rbx)
	movups	%xmm6, 48(%rbx)
	movups	%xmm2, 64(%rbx)
	movups	%xmm1, 80(%rbx)
	movups	%xmm0, 96(%rbx)
	movq	%rcx, 112(%rbx)
	addq	$128, %rsp
	popq	%rbx
	retq
.Lfunc_end199:
	.size	mclb_mulUnit15, .Lfunc_end199-mclb_mulUnit15
                                        # -- End function
	.globl	mclb_mulUnitAdd15               # -- Begin function mclb_mulUnitAdd15
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd15,@function
mclb_mulUnitAdd15:                      # @mclb_mulUnitAdd15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, %r15
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	104(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	112(%rsi)
	movq	%rax, %r8
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	-128(%rsp), %rax                # 8-byte Reload
	addq	%rax, (%rdi)
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	adcq	8(%rdi), %rsi
	movq	-104(%rsp), %rax                # 8-byte Reload
	adcq	16(%rdi), %rax
	movq	-112(%rsp), %rcx                # 8-byte Reload
	adcq	24(%rdi), %rcx
	movq	-120(%rsp), %rdx                # 8-byte Reload
	adcq	32(%rdi), %rdx
	adcq	40(%rdi), %r14
	adcq	48(%rdi), %r15
	adcq	56(%rdi), %rbx
	adcq	64(%rdi), %r11
	adcq	72(%rdi), %r10
	adcq	80(%rdi), %rbp
	adcq	88(%rdi), %r13
	adcq	96(%rdi), %r12
	adcq	104(%rdi), %r9
	adcq	112(%rdi), %r8
	setb	-128(%rsp)                      # 1-byte Folded Spill
	addq	24(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	16(%rsp), %rax                  # 8-byte Folded Reload
	adcq	8(%rsp), %rcx                   # 8-byte Folded Reload
	adcq	(%rsp), %rdx                    # 8-byte Folded Reload
	adcq	-8(%rsp), %r14                  # 8-byte Folded Reload
	adcq	-16(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-24(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r10                 # 8-byte Folded Reload
	adcq	-56(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-72(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-80(%rsp), %r9                  # 8-byte Folded Reload
	adcq	-88(%rsp), %r8                  # 8-byte Folded Reload
	movq	%rsi, 8(%rdi)
	movq	%rax, 16(%rdi)
	movq	%rcx, 24(%rdi)
	movq	%rdx, 32(%rdi)
	movq	%r14, 40(%rdi)
	movq	%r15, 48(%rdi)
	movq	%rbx, 56(%rdi)
	movq	%r11, 64(%rdi)
	movq	%r10, 72(%rdi)
	movq	%rbp, 80(%rdi)
	movq	%r13, 88(%rdi)
	movq	%r12, 96(%rdi)
	movq	%r9, 104(%rdi)
	movq	%r8, 112(%rdi)
	movzbl	-128(%rsp), %eax                # 1-byte Folded Reload
	adcq	-32(%rsp), %rax                 # 8-byte Folded Reload
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end200:
	.size	mclb_mulUnitAdd15, .Lfunc_end200-mclb_mulUnitAdd15
                                        # -- End function
	.globl	mclb_mul15                      # -- Begin function mclb_mul15
	.p2align	4, 0x90
	.type	mclb_mul15,@function
mclb_mul15:                             # @mclb_mul15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2072, %rsp                     # imm = 0x818
	movq	%rdx, %rax
	movq	%rdi, %r12
	movq	(%rdx), %rdx
	movq	%rax, %r15
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	leaq	1944(%rsp), %rdi
	movq	%rsi, %r13
	movq	%rsi, 144(%rsp)                 # 8-byte Spill
	callq	mulUnit_inner960@PLT
	movq	2064(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	2056(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	2048(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	2040(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	2032(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	2024(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	2016(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	2008(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	2000(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	1992(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	1984(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	1976(%rsp), %r14
	movq	1968(%rsp), %rbx
	movq	1960(%rsp), %rbp
	movq	1944(%rsp), %rax
	movq	1952(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, (%r12)
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	movq	8(%r15), %rdx
	leaq	1816(%rsp), %rdi
	movq	%r13, %rsi
	callq	mulUnit_inner960@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	1816(%rsp), %rdx
	adcq	1824(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	adcq	1832(%rsp), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	adcq	1840(%rsp), %r14
	movq	120(%rsp), %rbp                 # 8-byte Reload
	adcq	1848(%rsp), %rbp
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1856(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	1864(%rsp), %rbx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1872(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1880(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1888(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1896(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1904(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r15                 # 8-byte Reload
	adcq	1912(%rsp), %r15
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	1920(%rsp), %r13
	movq	1936(%rsp), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	1928(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rdx, 8(%r12)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rdx
	leaq	1688(%rsp), %rdi
	movq	144(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rsi
	callq	mulUnit_inner960@PLT
	movq	72(%rsp), %rdx                  # 8-byte Reload
	addq	1688(%rsp), %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1696(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	1704(%rsp), %r14
	movq	%r14, 56(%rsp)                  # 8-byte Spill
	adcq	1712(%rsp), %rbp
	movq	%rbp, 120(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1720(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	1728(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r14                  # 8-byte Reload
	adcq	1736(%rsp), %r14
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	1744(%rsp), %rbx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1752(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1760(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1768(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	1776(%rsp), %r15
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	movq	%r13, %rbp
	adcq	1784(%rsp), %rbp
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1792(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	1808(%rsp), %rax
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	1800(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 16(%rax)
	movq	136(%rsp), %r13                 # 8-byte Reload
	movq	24(%r13), %rdx
	leaq	1560(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner960@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	1560(%rsp), %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1568(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1576(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	1584(%rsp), %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1592(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	1600(%rsp), %r14
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	adcq	1608(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r12                  # 8-byte Reload
	adcq	1616(%rsp), %r12
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1624(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1632(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1640(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	adcq	1648(%rsp), %rbp
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbp                  # 8-byte Reload
	adcq	1656(%rsp), %rbp
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1664(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	1680(%rsp), %rax
	movq	72(%rsp), %rbx                  # 8-byte Reload
	adcq	1672(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	128(%rsp), %r14                 # 8-byte Reload
	movq	%rcx, 24(%r14)
	movq	32(%r13), %rdx
	leaq	1432(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	1432(%rsp), %rdx
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1440(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	adcq	1448(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1456(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1464(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1472(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1480(%rsp), %r12
	movq	%r12, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r13                 # 8-byte Reload
	adcq	1488(%rsp), %r13
	movq	96(%rsp), %r12                  # 8-byte Reload
	adcq	1496(%rsp), %r12
	movq	112(%rsp), %r15                 # 8-byte Reload
	adcq	1504(%rsp), %r15
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1512(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	1520(%rsp), %rbp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1528(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1536(%rsp), %rbx
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movq	1552(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	1544(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rdx, 32(%r14)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	40(%rax), %rdx
	leaq	1304(%rsp), %rdi
	movq	144(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rsi
	callq	mulUnit_inner960@PLT
	movq	120(%rsp), %rcx                 # 8-byte Reload
	addq	1304(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1312(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1320(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1328(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1336(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1344(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	1352(%rsp), %r13
	movq	%r13, 104(%rsp)                 # 8-byte Spill
	adcq	1360(%rsp), %r12
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	adcq	1368(%rsp), %r15
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	1376(%rsp), %rbx
	movq	48(%rsp), %r12                  # 8-byte Reload
	adcq	1384(%rsp), %r12
	movq	80(%rsp), %r14                  # 8-byte Reload
	adcq	1392(%rsp), %r14
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1400(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1408(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1424(%rsp), %r15
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	1416(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %r15
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 40(%rax)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	48(%rax), %rdx
	leaq	1176(%rsp), %rdi
	movq	%rbp, %rsi
	callq	mulUnit_inner960@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	1176(%rsp), %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1184(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1192(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1200(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %r13                  # 8-byte Reload
	adcq	1208(%rsp), %r13
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1216(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1224(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rbp                 # 8-byte Reload
	adcq	1232(%rsp), %rbp
	adcq	1240(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	adcq	1248(%rsp), %r12
	movq	%r12, 48(%rsp)                  # 8-byte Spill
	adcq	1256(%rsp), %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1264(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1272(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	1280(%rsp), %rbx
	movq	1296(%rsp), %rax
	adcq	1288(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	%rcx, 48(%r12)
	movq	136(%rsp), %r15                 # 8-byte Reload
	movq	56(%r15), %rdx
	leaq	1048(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	32(%rsp), %rcx                  # 8-byte Reload
	addq	1048(%rsp), %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1056(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1064(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1072(%rsp), %r13
	movq	%r13, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1080(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r14                  # 8-byte Reload
	adcq	1088(%rsp), %r14
	adcq	1096(%rsp), %rbp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1104(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1112(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rbp                  # 8-byte Reload
	adcq	1120(%rsp), %rbp
	movq	72(%rsp), %r13                  # 8-byte Reload
	adcq	1128(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1136(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	1144(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	1152(%rsp), %rbx
	movq	1168(%rsp), %rax
	movq	120(%rsp), %rdx                 # 8-byte Reload
	adcq	1160(%rsp), %rdx
	movq	%rdx, 120(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rcx, 56(%r12)
	movq	64(%r15), %rdx
	leaq	920(%rsp), %rdi
	movq	144(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rsi
	callq	mulUnit_inner960@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	920(%rsp), %rcx
	movq	24(%rsp), %r15                  # 8-byte Reload
	adcq	928(%rsp), %r15
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	936(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	adcq	952(%rsp), %r14
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	960(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	968(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	976(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	984(%rsp), %rbp
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	movq	%r13, %r14
	adcq	992(%rsp), %r14
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	1000(%rsp), %rbp
	movq	56(%rsp), %r13                  # 8-byte Reload
	adcq	1008(%rsp), %r13
	adcq	1016(%rsp), %rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1024(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	1040(%rsp), %rax
	movq	32(%rsp), %rbx                  # 8-byte Reload
	adcq	1032(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rax)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	72(%rax), %rdx
	leaq	792(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner960@PLT
	addq	792(%rsp), %r15
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	800(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r12                 # 8-byte Reload
	adcq	808(%rsp), %r12
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	816(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	824(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	832(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	840(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	848(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	856(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	adcq	864(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	adcq	872(%rsp), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	880(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %r14                 # 8-byte Reload
	adcq	888(%rsp), %r14
	adcq	896(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	movq	912(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	904(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r13                 # 8-byte Reload
	movq	%r15, 72(%r13)
	movq	136(%rsp), %r15                 # 8-byte Reload
	movq	80(%r15), %rdx
	leaq	664(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	664(%rsp), %rcx
	adcq	672(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	adcq	680(%rsp), %r12
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	688(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	696(%rsp), %rbx
	movq	48(%rsp), %rbp                  # 8-byte Reload
	adcq	704(%rsp), %rbp
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	712(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	720(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	728(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	736(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	744(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	752(%rsp), %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	760(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	768(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	784(%rsp), %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	adcq	776(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%r13)
	movq	88(%r15), %rdx
	leaq	536(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	536(%rsp), %rax
	adcq	544(%rsp), %r12
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r12                 # 8-byte Reload
	adcq	552(%rsp), %r12
	adcq	560(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	adcq	568(%rsp), %rbp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rbp                  # 8-byte Reload
	adcq	576(%rsp), %rbp
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	584(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	592(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	600(%rsp), %rbx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	608(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	616(%rsp), %r14
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	624(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r15                  # 8-byte Reload
	adcq	632(%rsp), %r15
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	640(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	656(%rsp), %r13
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	648(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	$0, %r13
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 88(%rcx)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	96(%rax), %rdx
	leaq	408(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	96(%rsp), %rax                  # 8-byte Reload
	addq	408(%rsp), %rax
	adcq	416(%rsp), %r12
	movq	%r12, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	432(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	440(%rsp), %rbp
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	448(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	456(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	464(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	472(%rsp), %rbp
	adcq	480(%rsp), %r14
	movq	%r14, 120(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	488(%rsp), %r14
	adcq	496(%rsp), %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r15                  # 8-byte Reload
	adcq	504(%rsp), %r15
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	512(%rsp), %rbx
	movq	528(%rsp), %r12
	adcq	520(%rsp), %r13
	adcq	$0, %r12
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 96(%rcx)
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	104(%rax), %rdx
	leaq	280(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	addq	280(%rsp), %rax
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	288(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	296(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	312(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	320(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	328(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	adcq	336(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rbp                 # 8-byte Reload
	adcq	344(%rsp), %rbp
	adcq	352(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	368(%rsp), %r15
	movq	%r15, 40(%rsp)                  # 8-byte Spill
	adcq	376(%rsp), %rbx
	adcq	384(%rsp), %r13
	movq	400(%rsp), %r14
	adcq	392(%rsp), %r12
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 104(%rcx)
	adcq	$0, %r14
	movq	136(%rsp), %rax                 # 8-byte Reload
	movq	112(%rax), %rdx
	leaq	152(%rsp), %rdi
	movq	144(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner960@PLT
	movq	88(%rsp), %rdx                  # 8-byte Reload
	addq	152(%rsp), %rdx
	movq	48(%rsp), %r11                  # 8-byte Reload
	adcq	160(%rsp), %r11
	movq	80(%rsp), %r15                  # 8-byte Reload
	adcq	168(%rsp), %r15
	movq	72(%rsp), %r8                   # 8-byte Reload
	adcq	176(%rsp), %r8
	movq	8(%rsp), %r9                    # 8-byte Reload
	adcq	184(%rsp), %r9
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	192(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	200(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	208(%rsp), %rbp
	movq	32(%rsp), %r10                  # 8-byte Reload
	adcq	216(%rsp), %r10
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	224(%rsp), %rsi
	movq	40(%rsp), %rdi                  # 8-byte Reload
	adcq	232(%rsp), %rdi
	adcq	240(%rsp), %rbx
	adcq	248(%rsp), %r13
	adcq	256(%rsp), %r12
	adcq	264(%rsp), %r14
	movq	272(%rsp), %rax
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rdx, 112(%rcx)
	movq	%r11, 120(%rcx)
	movq	%r15, 128(%rcx)
	movq	%r8, 136(%rcx)
	movq	%r9, 144(%rcx)
	movq	56(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 152(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 160(%rcx)
	movq	%rbp, 168(%rcx)
	movq	%r10, 176(%rcx)
	movq	%rsi, 184(%rcx)
	movq	%rdi, 192(%rcx)
	movq	%rbx, 200(%rcx)
	movq	%r13, 208(%rcx)
	movq	%r12, 216(%rcx)
	movq	%r14, 224(%rcx)
	adcq	$0, %rax
	movq	%rax, 232(%rcx)
	addq	$2072, %rsp                     # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end201:
	.size	mclb_mul15, .Lfunc_end201-mclb_mul15
                                        # -- End function
	.globl	mclb_sqr15                      # -- Begin function mclb_sqr15
	.p2align	4, 0x90
	.type	mclb_sqr15,@function
mclb_sqr15:                             # @mclb_sqr15
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2072, %rsp                     # imm = 0x818
	movq	%rsi, %r12
	movq	%rdi, 128(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	1944(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	2064(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	2056(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	2048(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	2040(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	2032(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	2024(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	2016(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	2008(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	2000(%rsp), %r15
	movq	1992(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	1984(%rsp), %r13
	movq	1976(%rsp), %r14
	movq	1968(%rsp), %rbp
	movq	1960(%rsp), %rbx
	movq	1944(%rsp), %rax
	movq	1952(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	%r12, 120(%rsp)                 # 8-byte Spill
	movq	8(%r12), %rdx
	leaq	1816(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner960@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	1816(%rsp), %rdx
	adcq	1824(%rsp), %rbx
	movq	%rbx, 32(%rsp)                  # 8-byte Spill
	adcq	1832(%rsp), %rbp
	movq	%rbp, 80(%rsp)                  # 8-byte Spill
	adcq	1840(%rsp), %r14
	movq	%r14, %rbx
	adcq	1848(%rsp), %r13
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1856(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1864(%rsp), %r15
	movq	%r15, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1872(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %r14                 # 8-byte Reload
	adcq	1880(%rsp), %r14
	movq	16(%rsp), %r12                  # 8-byte Reload
	adcq	1888(%rsp), %r12
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1896(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1904(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r15                 # 8-byte Reload
	adcq	1912(%rsp), %r15
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	1920(%rsp), %rbp
	movq	1936(%rsp), %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	1928(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 8(%rax)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	16(%rsi), %rdx
	leaq	1688(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	1688(%rsp), %rdx
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1696(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1704(%rsp), %rbx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	adcq	1712(%rsp), %r13
	movq	%r13, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	1720(%rsp), %rbx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1728(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1736(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1744(%rsp), %r14
	adcq	1752(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1760(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	1768(%rsp), %r13
	adcq	1776(%rsp), %r15
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	adcq	1784(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1792(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	1808(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	1800(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	%rdx, 16(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	24(%rsi), %rdx
	leaq	1560(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	1560(%rsp), %rcx
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1568(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1576(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	1584(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	1592(%rsp), %rbp
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	1600(%rsp), %rbx
	adcq	1608(%rsp), %r14
	movq	%r14, 136(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1616(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r15                  # 8-byte Reload
	adcq	1624(%rsp), %r15
	adcq	1632(%rsp), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r13                 # 8-byte Reload
	adcq	1640(%rsp), %r13
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1648(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r14                  # 8-byte Reload
	adcq	1656(%rsp), %r14
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1664(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1680(%rsp), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	1672(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rcx, 24(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	32(%rsi), %rdx
	leaq	1432(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	112(%rsp), %rcx                 # 8-byte Reload
	addq	1432(%rsp), %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1440(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1448(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1456(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	adcq	1464(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	1472(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1480(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	1488(%rsp), %r15
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r15                  # 8-byte Reload
	adcq	1496(%rsp), %r15
	movq	%r13, %r12
	adcq	1504(%rsp), %r12
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	1512(%rsp), %rbp
	movq	%r14, %r13
	adcq	1520(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1528(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %r14                  # 8-byte Reload
	adcq	1536(%rsp), %r14
	movq	1552(%rsp), %rax
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	1544(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 32(%rax)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsi), %rdx
	leaq	1304(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	1304(%rsp), %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1312(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1320(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1328(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	1336(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1344(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1352(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	1360(%rsp), %r15
	movq	%r15, 88(%rsp)                  # 8-byte Spill
	adcq	1368(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	adcq	1376(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	adcq	1384(%rsp), %r13
	movq	%r13, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	1392(%rsp), %rbp
	adcq	1400(%rsp), %r14
	movq	%r14, 32(%rsp)                  # 8-byte Spill
	adcq	1408(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	movq	1424(%rsp), %rax
	movq	112(%rsp), %rbx                 # 8-byte Reload
	adcq	1416(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	%rcx, 40(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	48(%rsi), %rdx
	leaq	1176(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	56(%rsp), %rcx                  # 8-byte Reload
	addq	1176(%rsp), %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1184(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1192(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	1200(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	1208(%rsp), %r15
	movq	96(%rsp), %r13                  # 8-byte Reload
	adcq	1216(%rsp), %r13
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1224(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r14                 # 8-byte Reload
	adcq	1232(%rsp), %r14
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1240(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1248(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1256(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1264(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1272(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1280(%rsp), %rbx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	movq	1296(%rsp), %rax
	movq	72(%rsp), %rdx                  # 8-byte Reload
	adcq	1288(%rsp), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 48(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	1048(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	addq	1048(%rsp), %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1056(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %r12                 # 8-byte Reload
	adcq	1064(%rsp), %r12
	adcq	1072(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	adcq	1080(%rsp), %r13
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rbp                  # 8-byte Reload
	adcq	1088(%rsp), %rbp
	adcq	1096(%rsp), %r14
	movq	%r14, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	1104(%rsp), %rbx
	movq	48(%rsp), %r14                  # 8-byte Reload
	adcq	1112(%rsp), %r14
	movq	8(%rsp), %r15                   # 8-byte Reload
	adcq	1120(%rsp), %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1128(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1136(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1144(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1152(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	1168(%rsp), %rax
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	1160(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r13                 # 8-byte Reload
	movq	%rcx, 56(%r13)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	64(%rsi), %rdx
	leaq	920(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	920(%rsp), %rcx
	adcq	928(%rsp), %r12
	movq	%r12, 136(%rsp)                 # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	936(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	952(%rsp), %rbp
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	960(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	adcq	968(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	adcq	976(%rsp), %r14
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	adcq	984(%rsp), %r15
	movq	%r15, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	992(%rsp), %rbp
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	1000(%rsp), %rbx
	movq	112(%rsp), %r15                 # 8-byte Reload
	adcq	1008(%rsp), %r15
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	1016(%rsp), %r14
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	1024(%rsp), %r12
	movq	1040(%rsp), %rax
	movq	64(%rsp), %rdx                  # 8-byte Reload
	adcq	1032(%rsp), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	%rcx, 64(%r13)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	72(%rsi), %rdx
	leaq	792(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	136(%rsp), %rdx                 # 8-byte Reload
	addq	792(%rsp), %rdx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	800(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	808(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	816(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	824(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	832(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	840(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	848(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	856(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	adcq	864(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	adcq	872(%rsp), %r15
	adcq	880(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	adcq	888(%rsp), %r12
	movq	%r12, %r13
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	896(%rsp), %rbx
	movq	912(%rsp), %rax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	adcq	904(%rsp), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r12                 # 8-byte Reload
	movq	%rdx, 72(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	80(%rsi), %rdx
	leaq	664(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	664(%rsp), %rcx
	movq	96(%rsp), %rbp                  # 8-byte Reload
	adcq	672(%rsp), %rbp
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	680(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	688(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	696(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	704(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	712(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	720(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r14                  # 8-byte Reload
	adcq	728(%rsp), %r14
	adcq	736(%rsp), %r15
	movq	%r15, 112(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	744(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	752(%rsp), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	adcq	760(%rsp), %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %r15                 # 8-byte Reload
	adcq	768(%rsp), %r15
	movq	784(%rsp), %rax
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	776(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rcx, 80(%r12)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	88(%rsi), %rdx
	leaq	536(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	addq	536(%rsp), %rbp
	movq	%rbp, %rax
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	544(%rsp), %r13
	movq	104(%rsp), %r12                 # 8-byte Reload
	adcq	552(%rsp), %r12
	movq	40(%rsp), %rbp                  # 8-byte Reload
	adcq	560(%rsp), %rbp
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	568(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	576(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	584(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	592(%rsp), %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r14                 # 8-byte Reload
	adcq	600(%rsp), %r14
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	608(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	616(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	624(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	adcq	632(%rsp), %r15
	movq	%r15, 144(%rsp)                 # 8-byte Spill
	adcq	640(%rsp), %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	656(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	648(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, %r15
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 88(%rcx)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsi), %rdx
	leaq	408(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	addq	408(%rsp), %r13
	movq	%r13, %rax
	adcq	416(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	adcq	424(%rsp), %rbp
	movq	%rbp, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbp                  # 8-byte Reload
	adcq	432(%rsp), %rbp
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	440(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	448(%rsp), %r13
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	456(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	adcq	464(%rsp), %r14
	movq	%r14, 112(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	472(%rsp), %r14
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	480(%rsp), %rbx
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	488(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	adcq	496(%rsp), %rcx
	movq	%rcx, 144(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	504(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	512(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	528(%rsp), %rcx
	adcq	520(%rsp), %r15
	adcq	$0, %rcx
	movq	%rcx, %r12
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 96(%rcx)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	104(%rsi), %rdx
	leaq	280(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	104(%rsp), %rax                 # 8-byte Reload
	addq	280(%rsp), %rax
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	288(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	adcq	296(%rsp), %rbp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	304(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	312(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r13                  # 8-byte Reload
	adcq	320(%rsp), %r13
	movq	112(%rsp), %rcx                 # 8-byte Reload
	adcq	328(%rsp), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	adcq	336(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	adcq	344(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	352(%rsp), %rbx
	movq	144(%rsp), %rbp                 # 8-byte Reload
	adcq	360(%rsp), %rbp
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	368(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	384(%rsp), %r15
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movq	400(%rsp), %rcx
	adcq	392(%rsp), %r12
	movq	%r12, 88(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 104(%rcx)
	movq	120(%rsp), %rsi                 # 8-byte Reload
	movq	112(%rsi), %rdx
	leaq	152(%rsp), %rdi
	callq	mulUnit_inner960@PLT
	movq	40(%rsp), %rax                  # 8-byte Reload
	addq	152(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	160(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	168(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	176(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	184(%rsp), %r13
	movq	112(%rsp), %r15                 # 8-byte Reload
	adcq	192(%rsp), %r15
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	200(%rsp), %r14
	movq	56(%rsp), %r11                  # 8-byte Reload
	adcq	208(%rsp), %r11
	movq	%rbx, %r10
	adcq	216(%rsp), %r10
	movq	%rbp, %r9
	adcq	224(%rsp), %r9
	movq	24(%rsp), %r8                   # 8-byte Reload
	adcq	232(%rsp), %r8
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	240(%rsp), %rbx
	movq	104(%rsp), %rdi                 # 8-byte Reload
	adcq	248(%rsp), %rdi
	movq	88(%rsp), %rsi                  # 8-byte Reload
	adcq	256(%rsp), %rsi
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	264(%rsp), %rax
	movq	272(%rsp), %rdx
	movq	128(%rsp), %rcx                 # 8-byte Reload
	movq	40(%rsp), %r12                  # 8-byte Reload
	movq	%r12, 112(%rcx)
	movq	48(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 120(%rcx)
	movq	8(%rsp), %rbp                   # 8-byte Reload
	movq	%rbp, 128(%rcx)
	movq	32(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 136(%rcx)
	movq	%r13, 144(%rcx)
	movq	%r15, 152(%rcx)
	movq	%r14, 160(%rcx)
	movq	%r11, 168(%rcx)
	movq	%r10, 176(%rcx)
	movq	%r9, 184(%rcx)
	movq	%r8, 192(%rcx)
	movq	%rbx, 200(%rcx)
	movq	%rdi, 208(%rcx)
	movq	%rsi, 216(%rcx)
	movq	%rax, 224(%rcx)
	adcq	$0, %rdx
	movq	%rdx, 232(%rcx)
	addq	$2072, %rsp                     # imm = 0x818
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end202:
	.size	mclb_sqr15, .Lfunc_end202-mclb_sqr15
                                        # -- End function
	.globl	mulUnit_inner1024               # -- Begin function mulUnit_inner1024
	.p2align	4, 0x90
	.type	mulUnit_inner1024,@function
mulUnit_inner1024:                      # @mulUnit_inner1024
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %r8
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r9
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	16(%rsi)
	movq	%rdx, %r11
	movq	%rax, %r13
	movq	%r8, %rax
	mulq	24(%rsi)
	movq	%rdx, %r14
	movq	%rax, %r12
	movq	%r8, %rax
	mulq	32(%rsi)
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %r15
	movq	%r8, %rax
	mulq	40(%rsi)
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	mulq	48(%rsi)
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	mulq	56(%rsi)
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	64(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	72(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	80(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	88(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	96(%rsi)
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%r8, %rax
	mulq	104(%rsi)
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	112(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	120(%rsi)
	movq	%rax, %rsi
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	addq	%r9, -128(%rsp)                 # 8-byte Folded Spill
	adcq	%r10, %r13
	adcq	%r11, %r12
	adcq	%r14, %r15
	movq	16(%rsp), %r14                  # 8-byte Reload
	adcq	40(%rsp), %r14                  # 8-byte Folded Reload
	movq	-8(%rsp), %rbx                  # 8-byte Reload
	adcq	32(%rsp), %rbx                  # 8-byte Folded Reload
	movq	-24(%rsp), %r11                 # 8-byte Reload
	adcq	24(%rsp), %r11                  # 8-byte Folded Reload
	movq	-40(%rsp), %r10                 # 8-byte Reload
	adcq	(%rsp), %r10                    # 8-byte Folded Reload
	movq	-56(%rsp), %r9                  # 8-byte Reload
	adcq	-16(%rsp), %r9                  # 8-byte Folded Reload
	movq	-72(%rsp), %r8                  # 8-byte Reload
	adcq	-32(%rsp), %r8                  # 8-byte Folded Reload
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	adcq	-48(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	-64(%rsp), %rcx                 # 8-byte Folded Reload
	movq	-112(%rsp), %rax                # 8-byte Reload
	adcq	-80(%rsp), %rax                 # 8-byte Folded Reload
	movq	-96(%rsp), %rbp                 # 8-byte Reload
	adcq	%rbp, -120(%rsp)                # 8-byte Folded Spill
	adcq	-104(%rsp), %rsi                # 8-byte Folded Reload
	movq	%rsi, %rbp
	movq	48(%rsp), %rsi                  # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-128(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	%r13, 16(%rdi)
	movq	%r12, 24(%rdi)
	movq	%r15, 32(%rdi)
	movq	%r14, 40(%rdi)
	movq	%rbx, 48(%rdi)
	movq	%r11, 56(%rdi)
	movq	%r10, 64(%rdi)
	movq	%r9, 72(%rdi)
	movq	%r8, 80(%rdi)
	movq	%rdx, 88(%rdi)
	movq	%rcx, 96(%rdi)
	movq	%rax, 104(%rdi)
	movq	-120(%rsp), %rax                # 8-byte Reload
	movq	%rax, 112(%rdi)
	movq	%rbp, 120(%rdi)
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 128(%rdi)
	movq	%rdi, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end203:
	.size	mulUnit_inner1024, .Lfunc_end203-mulUnit_inner1024
                                        # -- End function
	.globl	mclb_mulUnit16                  # -- Begin function mclb_mulUnit16
	.p2align	4, 0x90
	.type	mclb_mulUnit16,@function
mclb_mulUnit16:                         # @mclb_mulUnit16
# %bb.0:
	pushq	%rbx
	subq	$144, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner1024@PLT
	movq	136(%rsp), %rax
	movups	120(%rsp), %xmm0
	movups	104(%rsp), %xmm1
	movups	88(%rsp), %xmm2
	movups	72(%rsp), %xmm3
	movups	8(%rsp), %xmm4
	movups	24(%rsp), %xmm5
	movups	40(%rsp), %xmm6
	movups	56(%rsp), %xmm7
	movups	%xmm4, (%rbx)
	movups	%xmm5, 16(%rbx)
	movups	%xmm6, 32(%rbx)
	movups	%xmm7, 48(%rbx)
	movups	%xmm3, 64(%rbx)
	movups	%xmm2, 80(%rbx)
	movups	%xmm1, 96(%rbx)
	movups	%xmm0, 112(%rbx)
	addq	$144, %rsp
	popq	%rbx
	retq
.Lfunc_end204:
	.size	mclb_mulUnit16, .Lfunc_end204-mclb_mulUnit16
                                        # -- End function
	.globl	mclb_mulUnitAdd16               # -- Begin function mclb_mulUnitAdd16
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd16,@function
mclb_mulUnitAdd16:                      # @mclb_mulUnitAdd16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -104(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	104(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	112(%rsi)
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	120(%rsi)
	movq	%rax, %r15
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	-96(%rsp), %rax                 # 8-byte Reload
	addq	(%rdi), %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	adcq	8(%rdi), %rax
	movq	%r9, %rcx
	adcq	16(%rdi), %rcx
	movq	%r10, %rdx
	adcq	24(%rdi), %rdx
	movq	%r11, %rsi
	adcq	32(%rdi), %rsi
	movq	%r14, %r8
	adcq	40(%rdi), %r8
	movq	%rbx, %r9
	adcq	48(%rdi), %r9
	movq	%rbp, %r10
	adcq	56(%rdi), %r10
	movq	-128(%rsp), %r11                # 8-byte Reload
	adcq	64(%rdi), %r11
	movq	-72(%rsp), %rbx                 # 8-byte Reload
	adcq	72(%rdi), %rbx
	movq	-80(%rsp), %r14                 # 8-byte Reload
	adcq	80(%rdi), %r14
	movq	-104(%rsp), %rbp                # 8-byte Reload
	adcq	88(%rdi), %rbp
	movq	%rbp, -104(%rsp)                # 8-byte Spill
	movq	-88(%rsp), %rbp                 # 8-byte Reload
	adcq	96(%rdi), %rbp
	adcq	104(%rdi), %r13
	adcq	112(%rdi), %r12
	adcq	120(%rdi), %r15
	setb	-128(%rsp)                      # 1-byte Folded Spill
	addq	-112(%rsp), %rax                # 8-byte Folded Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	adcq	-120(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, -120(%rsp)                # 8-byte Spill
	adcq	40(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	32(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rsi, %rcx
	adcq	24(%rsp), %r8                   # 8-byte Folded Reload
	adcq	16(%rsp), %r9                   # 8-byte Folded Reload
	adcq	8(%rsp), %r10                   # 8-byte Folded Reload
	adcq	-8(%rsp), %r11                  # 8-byte Folded Reload
	movq	%rbx, %rax
	adcq	-16(%rsp), %rax                 # 8-byte Folded Reload
	adcq	-24(%rsp), %r14                 # 8-byte Folded Reload
	movq	-104(%rsp), %rbx                # 8-byte Reload
	adcq	-32(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	-40(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r15                 # 8-byte Folded Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	%rdx, 24(%rdi)
	movq	%rcx, 32(%rdi)
	movq	%r8, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	%r10, 56(%rdi)
	movq	%r11, 64(%rdi)
	movq	%rax, 72(%rdi)
	movq	%r14, 80(%rdi)
	movq	%rbx, 88(%rdi)
	movq	%rbp, 96(%rdi)
	movq	%r13, 104(%rdi)
	movq	%r12, 112(%rdi)
	movq	%r15, 120(%rdi)
	movzbl	-128(%rsp), %eax                # 1-byte Folded Reload
	adcq	(%rsp), %rax                    # 8-byte Folded Reload
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end205:
	.size	mclb_mulUnitAdd16, .Lfunc_end205-mclb_mulUnitAdd16
                                        # -- End function
	.globl	mclb_mul16                      # -- Begin function mclb_mul16
	.p2align	4, 0x90
	.type	mclb_mul16,@function
mclb_mul16:                             # @mclb_mul16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp                      # imm = 0x1F8
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	64(%rsi), %r12
	leaq	64(%rdx), %r13
	leaq	128(%rdi), %rbp
	callq	mclb_mul8@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul8@PLT
	movq	56(%rbx), %r13
	movq	(%rbx), %rax
	addq	64(%rbx), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	8(%rbx), %rax
	adcq	72(%rbx), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	16(%rbx), %rax
	adcq	80(%rbx), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rbx), %rax
	adcq	88(%rbx), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	32(%rbx), %rax
	adcq	96(%rbx), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rbx), %rax
	adcq	104(%rbx), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	48(%rbx), %rax
	adcq	112(%rbx), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	32(%r15), %rdx
	adcq	120(%rbx), %r13
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	movq	(%r15), %r11
	setb	%al
	addq	64(%r15), %r11
	movq	%r11, 104(%rsp)                 # 8-byte Spill
	movq	8(%r15), %r10
	adcq	72(%r15), %r10
	movq	%r10, 96(%rsp)                  # 8-byte Spill
	movq	16(%r15), %r8
	adcq	80(%r15), %r8
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movq	24(%r15), %rcx
	adcq	88(%r15), %rcx
	movq	%rcx, %r9
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	adcq	96(%r15), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	40(%r15), %rcx
	adcq	104(%r15), %rcx
	movq	%rcx, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	48(%r15), %rcx
	adcq	112(%r15), %rcx
	movq	%rcx, %rdi
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	56(%r15), %rcx
	adcq	120(%r15), %rcx
	movzbl	%al, %ebx
	setb	%al
	movzbl	%al, %eax
	movq	%rax, %r12
	movq	%rax, %rbp
	andb	%bl, %al
	movq	%rbx, %r15
	shlq	$63, %rbx
	negq	%r15
	shrdq	$63, %r15, %rbx
	shlq	$63, %r12
	negq	%rbp
	shrdq	$63, %rbp, %r12
	movzbl	%al, %eax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 312(%rsp)
	movq	48(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 320(%rsp)
	movq	(%rsp), %rax                    # 8-byte Reload
	movq	%rax, 328(%rsp)
	movq	24(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 336(%rsp)
	movq	8(%rsp), %rax                   # 8-byte Reload
	movq	%rax, 344(%rsp)
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 352(%rsp)
	movq	40(%rsp), %rax                  # 8-byte Reload
	movq	%rax, 360(%rsp)
	movq	%r13, 368(%rsp)
	movq	%r11, 248(%rsp)
	movq	%r10, 256(%rsp)
	movq	%r8, 264(%rsp)
	movq	%r9, 272(%rsp)
	movq	%rdx, 280(%rsp)
	movq	%rsi, 288(%rsp)
	movq	%rdi, 296(%rsp)
	movq	%rcx, 304(%rsp)
	movq	%rcx, %r13
	leaq	376(%rsp), %rdi
	leaq	312(%rsp), %rsi
	leaq	248(%rsp), %rdx
	callq	mclb_mul8@PLT
	andq	%r15, %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %r10                  # 8-byte Reload
	andq	%r15, %r10
	movq	72(%rsp), %r11                  # 8-byte Reload
	andq	%r15, %r11
	movq	80(%rsp), %r9                   # 8-byte Reload
	andq	%r15, %r9
	andq	%r15, 32(%rsp)                  # 8-byte Folded Spill
	movq	88(%rsp), %r8                   # 8-byte Reload
	andq	%r15, %r8
	andq	96(%rsp), %r15                  # 8-byte Folded Reload
	andq	104(%rsp), %rbx                 # 8-byte Folded Reload
	movq	128(%rsp), %rcx                 # 8-byte Reload
	andq	%rbp, %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	andq	%rbp, %rax
	movq	16(%rsp), %r13                  # 8-byte Reload
	andq	%rbp, %r13
	movq	8(%rsp), %rdi                   # 8-byte Reload
	andq	%rbp, %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	andq	%rbp, %rsi
	movq	(%rsp), %rdx                    # 8-byte Reload
	andq	%rbp, %rdx
	andq	48(%rsp), %rbp                  # 8-byte Folded Reload
	andq	56(%rsp), %r12                  # 8-byte Folded Reload
	addq	%rbx, %r12
	adcq	%r15, %rbp
	adcq	%r8, %rdx
	adcq	32(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	%r9, %rdi
	movq	%r13, %rbx
	adcq	%r11, %rbx
	adcq	%r10, %rax
	adcq	112(%rsp), %rcx                 # 8-byte Folded Reload
	setb	%r8b
	addq	440(%rsp), %r12
	adcq	448(%rsp), %rbp
	adcq	456(%rsp), %rdx
	movq	%rdx, %r15
	adcq	464(%rsp), %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	adcq	472(%rsp), %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	adcq	480(%rsp), %rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	376(%rsp), %rdi
	adcq	488(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movzbl	%r8b, %r8d
	adcq	496(%rsp), %rcx
	adcq	120(%rsp), %r8                  # 8-byte Folded Reload
	subq	(%r14), %rdi
	movq	384(%rsp), %rdx
	sbbq	8(%r14), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	392(%rsp), %rdx
	sbbq	16(%r14), %rdx
	movq	%rdx, %rsi
	movq	400(%rsp), %rax
	sbbq	24(%r14), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	408(%rsp), %r13
	sbbq	32(%r14), %r13
	movq	416(%rsp), %r11
	sbbq	40(%r14), %r11
	movq	424(%rsp), %r10
	sbbq	48(%r14), %r10
	movq	432(%rsp), %r9
	sbbq	56(%r14), %r9
	movq	64(%r14), %rdx
	movq	%rdx, 88(%rsp)                  # 8-byte Spill
	sbbq	%rdx, %r12
	movq	72(%r14), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	sbbq	%rdx, %rbp
	movq	80(%r14), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	sbbq	%rdx, %r15
	movq	88(%r14), %rdx
	movq	%rdx, 240(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rbx                  # 8-byte Reload
	sbbq	%rdx, %rbx
	movq	96(%r14), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	sbbq	%rax, 8(%rsp)                   # 8-byte Folded Spill
	movq	104(%r14), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	sbbq	%rax, 16(%rsp)                  # 8-byte Folded Spill
	movq	112(%r14), %rax
	movq	%rax, 216(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rdx                  # 8-byte Reload
	sbbq	%rax, %rdx
	movq	120(%r14), %rax
	movq	%rax, 208(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	sbbq	$0, %r8
	movq	128(%r14), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	subq	%rax, %rdi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movq	136(%r14), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	sbbq	%rax, (%rsp)                    # 8-byte Folded Spill
	movq	144(%r14), %rax
	movq	%rax, 160(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	152(%r14), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rdi                  # 8-byte Reload
	sbbq	%rax, %rdi
	movq	160(%r14), %rax
	movq	%rax, 168(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r13
	movq	168(%r14), %rax
	movq	%rax, 176(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r11
	movq	176(%r14), %rax
	movq	%rax, 184(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r10
	movq	184(%r14), %rax
	movq	%rax, 192(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r9
	movq	192(%r14), %rax
	movq	%rax, 200(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r12
	movq	200(%r14), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rbp
	movq	208(%r14), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	216(%r14), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbx
	movq	%rbx, 24(%rsp)                  # 8-byte Spill
	movq	224(%r14), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	sbbq	%rcx, %rax
	movq	232(%r14), %rbx
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	sbbq	%rbx, %rcx
	movq	240(%r14), %rbx
	movq	%rbx, 96(%rsp)                  # 8-byte Spill
	sbbq	%rbx, %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	248(%r14), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rdx                 # 8-byte Reload
	sbbq	%rsi, %rdx
	sbbq	$0, %r8
	movq	88(%rsp), %rsi                  # 8-byte Reload
	addq	%rsi, 56(%rsp)                  # 8-byte Folded Spill
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	80(%rsp), %rsi                  # 8-byte Folded Reload
	movq	72(%rsp), %rbx                  # 8-byte Reload
	adcq	%rbx, 48(%rsp)                  # 8-byte Folded Spill
	adcq	240(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	232(%rsp), %r13                 # 8-byte Folded Reload
	adcq	224(%rsp), %r11                 # 8-byte Folded Reload
	adcq	216(%rsp), %r10                 # 8-byte Folded Reload
	adcq	208(%rsp), %r9                  # 8-byte Folded Reload
	adcq	152(%rsp), %r12                 # 8-byte Folded Reload
	adcq	136(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	160(%rsp), %r15                 # 8-byte Folded Reload
	movq	%r15, (%rsp)                    # 8-byte Spill
	movq	144(%rsp), %rbx                 # 8-byte Reload
	adcq	%rbx, 24(%rsp)                  # 8-byte Folded Spill
	adcq	168(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %rbx
	adcq	176(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	184(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rdx, %rax
	adcq	192(%rsp), %rax                 # 8-byte Folded Reload
	adcq	200(%rsp), %r8                  # 8-byte Folded Reload
	movq	56(%rsp), %r15                  # 8-byte Reload
	movq	%r15, 64(%r14)
	movq	%rsi, 72(%r14)
	movq	48(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 80(%r14)
	movq	%rdi, 88(%r14)
	movq	%r13, 96(%r14)
	movq	%r11, 104(%r14)
	movq	%r10, 112(%r14)
	movq	%r9, 120(%r14)
	movq	%r12, 128(%r14)
	movq	%rbp, 136(%r14)
	movq	(%rsp), %rdx                    # 8-byte Reload
	movq	%rdx, 144(%r14)
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 152(%r14)
	movq	%rbx, 160(%r14)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 168(%r14)
	movq	%rcx, 176(%r14)
	movq	%rax, 184(%r14)
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%r8, 192(%r14)
	movq	%rax, 200(%r14)
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 208(%r14)
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 216(%r14)
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 224(%r14)
	movq	%rcx, 232(%r14)
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 240(%r14)
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 248(%r14)
	addq	$504, %rsp                      # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end206:
	.size	mclb_mul16, .Lfunc_end206-mclb_mul16
                                        # -- End function
	.globl	mclb_sqr16                      # -- Begin function mclb_sqr16
	.p2align	4, 0x90
	.type	mclb_sqr16,@function
mclb_sqr16:                             # @mclb_sqr16
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$504, %rsp                      # imm = 0x1F8
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	64(%rsi), %r15
	leaq	128(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul8@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul8@PLT
	movq	(%rbx), %rdi
	addq	64(%rbx), %rdi
	movq	8(%rbx), %rcx
	adcq	72(%rbx), %rcx
	movq	16(%rbx), %rdx
	adcq	80(%rbx), %rdx
	movq	24(%rbx), %rsi
	adcq	88(%rbx), %rsi
	movq	32(%rbx), %r12
	adcq	96(%rbx), %r12
	movq	40(%rbx), %rbp
	adcq	104(%rbx), %rbp
	movq	48(%rbx), %r15
	adcq	112(%rbx), %r15
	movq	56(%rbx), %r8
	adcq	120(%rbx), %r8
	setb	%al
	movzbl	%al, %ebx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	%rbx, %r13
	shlq	$63, %r13
	negq	%rbx
	shrdq	$63, %rbx, %r13
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	%rdi, 312(%rsp)
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rcx, 320(%rsp)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, 328(%rsp)
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, 336(%rsp)
	movq	%r12, 344(%rsp)
	movq	%rbp, 352(%rsp)
	movq	%r15, 360(%rsp)
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%r8, 368(%rsp)
	movq	%rdi, 248(%rsp)
	movq	%rcx, 256(%rsp)
	movq	%rdx, 264(%rsp)
	movq	%rsi, 272(%rsp)
	movq	%r12, 280(%rsp)
	movq	%rbp, 288(%rsp)
	movq	%r15, 296(%rsp)
	movq	%r8, 304(%rsp)
	leaq	376(%rsp), %rdi
	leaq	312(%rsp), %rsi
	leaq	248(%rsp), %rdx
	callq	mclb_mul8@PLT
	andq	32(%rsp), %r13                  # 8-byte Folded Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	andq	%rbx, %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	andq	%rbx, %rcx
	movq	24(%rsp), %rax                  # 8-byte Reload
	andq	%rbx, %rax
	andq	%rbx, %r12
	andq	%rbx, %rbp
	andq	%rbx, %r15
	andq	16(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rbx, %r10
	shldq	$1, %r15, %r10
	shldq	$1, %rbp, %r15
	movq	%r15, %r8
	shldq	$1, %r12, %rbp
	movq	%rbp, %rsi
	movq	%rax, %rbp
	shldq	$1, %rax, %r12
	shldq	$1, %rcx, %rbp
	movq	%rbp, %rax
	movq	%rdx, %r15
	shldq	$1, %rdx, %rcx
	shldq	$1, %r13, %r15
	shrq	$63, %rbx
	addq	%r13, %r13
	addq	440(%rsp), %r13
	adcq	448(%rsp), %r15
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	adcq	456(%rsp), %rcx
	adcq	464(%rsp), %rax
	movq	%rax, %rdx
	adcq	472(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	adcq	480(%rsp), %rsi
	movq	%rsi, 32(%rsp)                  # 8-byte Spill
	adcq	488(%rsp), %r8
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	376(%rsp), %rax
	adcq	496(%rsp), %r10
	adcq	40(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	384(%rsp), %r8
	sbbq	8(%r14), %r8
	movq	392(%rsp), %rax
	sbbq	16(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	400(%rsp), %rax
	sbbq	24(%r14), %rax
	movq	%rax, %rbp
	movq	408(%rsp), %r12
	sbbq	32(%r14), %r12
	movq	416(%rsp), %r15
	sbbq	40(%r14), %r15
	movq	424(%rsp), %r11
	sbbq	48(%r14), %r11
	movq	432(%rsp), %r9
	sbbq	56(%r14), %r9
	movq	64(%r14), %rsi
	movq	%rsi, 64(%rsp)                  # 8-byte Spill
	sbbq	%rsi, %r13
	movq	72(%r14), %rdi
	movq	%rdi, 200(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rsi                  # 8-byte Reload
	sbbq	%rdi, %rsi
	movq	80(%r14), %rdi
	movq	%rdi, 192(%rsp)                 # 8-byte Spill
	sbbq	%rdi, %rcx
	movq	%rcx, %rdi
	movq	88(%r14), %rcx
	movq	%rcx, 184(%rsp)                 # 8-byte Spill
	sbbq	%rcx, %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	96(%r14), %rcx
	movq	%rcx, 176(%rsp)                 # 8-byte Spill
	sbbq	%rcx, 16(%rsp)                  # 8-byte Folded Spill
	movq	104(%r14), %rdx
	movq	%rdx, 168(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	sbbq	%rdx, %rcx
	movq	112(%r14), %rdx
	movq	%rdx, 160(%rsp)                 # 8-byte Spill
	sbbq	%rdx, 56(%rsp)                  # 8-byte Folded Spill
	movq	120(%r14), %rax
	movq	%rax, 152(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r10
	sbbq	$0, %rbx
	movq	128(%r14), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rdx                  # 8-byte Reload
	subq	%rax, %rdx
	movq	136(%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r8
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	144(%r14), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r8                    # 8-byte Reload
	sbbq	%rax, %r8
	movq	152(%r14), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rbp
	movq	160(%r14), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r12
	movq	168(%r14), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	176(%r14), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r11
	movq	184(%r14), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r9
	movq	192(%r14), %rax
	movq	%rax, 144(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r13
	movq	200(%r14), %rax
	movq	%rax, 240(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rsi
	movq	%rsi, 48(%rsp)                  # 8-byte Spill
	movq	208(%r14), %rax
	movq	%rax, 232(%rsp)                 # 8-byte Spill
	sbbq	%rax, %rdi
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movq	216(%r14), %rax
	movq	%rax, 224(%rsp)                 # 8-byte Spill
	movq	24(%rsp), %rsi                  # 8-byte Reload
	sbbq	%rax, %rsi
	movq	224(%r14), %rdi
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	sbbq	%rdi, %rax
	movq	232(%r14), %rdi
	movq	%rdi, 216(%rsp)                 # 8-byte Spill
	sbbq	%rdi, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	240(%r14), %rdi
	movq	%rdi, 208(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	sbbq	%rdi, %rcx
	movq	248(%r14), %rdi
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	sbbq	%rdi, %r10
	sbbq	$0, %rbx
	addq	64(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	72(%rsp), %rdi                  # 8-byte Reload
	adcq	200(%rsp), %rdi                 # 8-byte Folded Reload
	adcq	192(%rsp), %r8                  # 8-byte Folded Reload
	adcq	184(%rsp), %rbp                 # 8-byte Folded Reload
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	adcq	176(%rsp), %r12                 # 8-byte Folded Reload
	adcq	168(%rsp), %r15                 # 8-byte Folded Reload
	adcq	160(%rsp), %r11                 # 8-byte Folded Reload
	adcq	152(%rsp), %r9                  # 8-byte Folded Reload
	adcq	88(%rsp), %r13                  # 8-byte Folded Reload
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	80(%rsp), %rdx                  # 8-byte Folded Reload
	movq	96(%rsp), %rbp                  # 8-byte Reload
	adcq	%rbp, 8(%rsp)                   # 8-byte Folded Spill
	adcq	104(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	112(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	120(%rsp), %rax                 # 8-byte Folded Reload
	adcq	128(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	136(%rsp), %r10                 # 8-byte Folded Reload
	adcq	144(%rsp), %rbx                 # 8-byte Folded Reload
	movq	40(%rsp), %rbp                  # 8-byte Reload
	movq	%rbp, 64(%r14)
	movq	%rdi, 72(%r14)
	movq	%r8, 80(%r14)
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, 88(%r14)
	movq	%r12, 96(%r14)
	movq	%r15, 104(%r14)
	movq	%r11, 112(%r14)
	movq	%r9, 120(%r14)
	movq	%r13, 128(%r14)
	movq	%rdx, 136(%r14)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 144(%r14)
	movq	%rsi, 152(%r14)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 160(%r14)
	movq	%rax, 168(%r14)
	movq	%rcx, 176(%r14)
	movq	%r10, 184(%r14)
	movq	240(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rbx, 192(%r14)
	movq	%rax, 200(%r14)
	movq	232(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 208(%r14)
	movq	224(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 216(%r14)
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	216(%rsp), %rcx                 # 8-byte Reload
	adcq	$0, %rcx
	movq	%rax, 224(%r14)
	movq	%rcx, 232(%r14)
	movq	208(%rsp), %rax                 # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 240(%r14)
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	$0, %rax
	movq	%rax, 248(%r14)
	addq	$504, %rsp                      # imm = 0x1F8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end207:
	.size	mclb_sqr16, .Lfunc_end207-mclb_sqr16
                                        # -- End function
	.globl	mulUnit_inner1088               # -- Begin function mulUnit_inner1088
	.p2align	4, 0x90
	.type	mulUnit_inner1088,@function
mulUnit_inner1088:                      # @mulUnit_inner1088
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdx, %r8
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, %r9
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	mulq	8(%rsi)
	movq	%rdx, %r10
	movq	%rax, %rbp
	movq	%r8, %rax
	mulq	16(%rsi)
	movq	%rdx, %r11
	movq	%rax, %rcx
	movq	%r8, %rax
	mulq	24(%rsi)
	movq	%rdx, %rbx
	movq	%rax, %r12
	movq	%r8, %rax
	mulq	32(%rsi)
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, %r15
	movq	%r8, %rax
	mulq	40(%rsi)
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, %r14
	movq	%r8, %rax
	mulq	48(%rsi)
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%r8, %rax
	mulq	56(%rsi)
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r8, %rax
	mulq	64(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	72(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	80(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	88(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	96(%rsi)
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	104(%rsi)
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	mulq	112(%rsi)
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	120(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -120(%rsp)                # 8-byte Spill
	movq	%r8, %rax
	mulq	128(%rsi)
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	addq	%r9, %rbp
	movq	%rcx, %r13
	adcq	%r10, %r13
	adcq	%r11, %r12
	adcq	%rbx, %r15
	adcq	56(%rsp), %r14                  # 8-byte Folded Reload
	movq	24(%rsp), %rbx                  # 8-byte Reload
	adcq	48(%rsp), %rbx                  # 8-byte Folded Reload
	movq	(%rsp), %r11                    # 8-byte Reload
	adcq	40(%rsp), %r11                  # 8-byte Folded Reload
	movq	-16(%rsp), %r10                 # 8-byte Reload
	adcq	32(%rsp), %r10                  # 8-byte Folded Reload
	movq	-32(%rsp), %r9                  # 8-byte Reload
	adcq	8(%rsp), %r9                    # 8-byte Folded Reload
	movq	-48(%rsp), %r8                  # 8-byte Reload
	adcq	-8(%rsp), %r8                   # 8-byte Folded Reload
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	adcq	-24(%rsp), %rsi                 # 8-byte Folded Reload
	movq	-80(%rsp), %rdx                 # 8-byte Reload
	adcq	-40(%rsp), %rdx                 # 8-byte Folded Reload
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	adcq	-56(%rsp), %rcx                 # 8-byte Folded Reload
	movq	-72(%rsp), %rdi                 # 8-byte Reload
	adcq	%rdi, -112(%rsp)                # 8-byte Folded Spill
	movq	-88(%rsp), %rdi                 # 8-byte Reload
	adcq	%rdi, -120(%rsp)                # 8-byte Folded Spill
	movq	-104(%rsp), %rdi                # 8-byte Reload
	adcq	%rdi, -128(%rsp)                # 8-byte Folded Spill
	movq	64(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, (%rax)
	movq	%rbp, 8(%rax)
	movq	%r13, 16(%rax)
	movq	%r12, 24(%rax)
	movq	%r15, 32(%rax)
	movq	%r14, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	%r11, 56(%rax)
	movq	%r10, 64(%rax)
	movq	%r9, 72(%rax)
	movq	%r8, 80(%rax)
	movq	%rsi, 88(%rax)
	movq	%rdx, 96(%rax)
	movq	%rcx, 104(%rax)
	movq	-112(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 112(%rax)
	movq	-120(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 120(%rax)
	movq	-128(%rsp), %rcx                # 8-byte Reload
	movq	%rcx, 128(%rax)
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	$0, %rcx
	movq	%rcx, 136(%rax)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end208:
	.size	mulUnit_inner1088, .Lfunc_end208-mulUnit_inner1088
                                        # -- End function
	.globl	mclb_mulUnit17                  # -- Begin function mclb_mulUnit17
	.p2align	4, 0x90
	.type	mclb_mulUnit17,@function
mclb_mulUnit17:                         # @mclb_mulUnit17
# %bb.0:
	pushq	%rbx
	subq	$144, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner1088@PLT
	movq	136(%rsp), %rax
	movq	128(%rsp), %rcx
	movups	112(%rsp), %xmm0
	movups	96(%rsp), %xmm1
	movups	80(%rsp), %xmm2
	movups	64(%rsp), %xmm3
	movups	(%rsp), %xmm4
	movups	16(%rsp), %xmm5
	movups	32(%rsp), %xmm6
	movups	48(%rsp), %xmm7
	movups	%xmm4, (%rbx)
	movups	%xmm5, 16(%rbx)
	movups	%xmm6, 32(%rbx)
	movups	%xmm7, 48(%rbx)
	movups	%xmm3, 64(%rbx)
	movups	%xmm2, 80(%rbx)
	movups	%xmm1, 96(%rbx)
	movups	%xmm0, 112(%rbx)
	movq	%rcx, 128(%rbx)
	addq	$144, %rsp
	popq	%rbx
	retq
.Lfunc_end209:
	.size	mclb_mulUnit17, .Lfunc_end209-mclb_mulUnit17
                                        # -- End function
	.globl	mclb_mulUnitAdd17               # -- Begin function mclb_mulUnitAdd17
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd17,@function
mclb_mulUnitAdd17:                      # @mclb_mulUnitAdd17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdx, %rcx
	movq	%rdx, %rax
	mulq	(%rsi)
	movq	%rdx, -104(%rsp)                # 8-byte Spill
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	8(%rsi)
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	movq	%rax, %r8
	movq	%rcx, %rax
	mulq	16(%rsi)
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	movq	%rax, %r9
	movq	%rcx, %rax
	mulq	24(%rsi)
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movq	%rax, %r10
	movq	%rcx, %rax
	mulq	32(%rsi)
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rax, %r11
	movq	%rcx, %rax
	mulq	40(%rsi)
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	movq	%rax, %r14
	movq	%rcx, %rax
	mulq	48(%rsi)
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rax, %rbx
	movq	%rcx, %rax
	mulq	56(%rsi)
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	movq	%rax, %rbp
	movq	%rcx, %rax
	mulq	64(%rsi)
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	%rax, -128(%rsp)                # 8-byte Spill
	movq	%rcx, %rax
	mulq	72(%rsi)
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	80(%rsi)
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	88(%rsi)
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	96(%rsi)
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	104(%rsi)
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movq	%rcx, %rax
	mulq	112(%rsi)
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rax, %r13
	movq	%rcx, %rax
	mulq	120(%rsi)
	movq	%rdx, -48(%rsp)                 # 8-byte Spill
	movq	%rax, %r12
	movq	%rcx, %rax
	mulq	128(%rsi)
	movq	%rax, %r15
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	-80(%rsp), %rax                 # 8-byte Reload
	addq	(%rdi), %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movq	%r8, %rax
	adcq	8(%rdi), %rax
	movq	%r9, %rcx
	adcq	16(%rdi), %rcx
	movq	%r10, %rdx
	adcq	24(%rdi), %rdx
	movq	%r11, %rsi
	adcq	32(%rdi), %rsi
	movq	%r14, %r8
	adcq	40(%rdi), %r8
	movq	%rbx, %r9
	adcq	48(%rdi), %r9
	movq	%rbp, %r10
	adcq	56(%rdi), %r10
	movq	-128(%rsp), %r11                # 8-byte Reload
	adcq	64(%rdi), %r11
	movq	-56(%rsp), %rbx                 # 8-byte Reload
	adcq	72(%rdi), %rbx
	movq	-64(%rsp), %r14                 # 8-byte Reload
	adcq	80(%rdi), %r14
	movq	-88(%rsp), %rbp                 # 8-byte Reload
	adcq	88(%rdi), %rbp
	movq	%rbp, -88(%rsp)                 # 8-byte Spill
	movq	-96(%rsp), %rbp                 # 8-byte Reload
	adcq	96(%rdi), %rbp
	movq	%rbp, -96(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rbp                 # 8-byte Reload
	adcq	104(%rdi), %rbp
	adcq	112(%rdi), %r13
	adcq	120(%rdi), %r12
	adcq	128(%rdi), %r15
	setb	-128(%rsp)                      # 1-byte Folded Spill
	addq	-104(%rsp), %rax                # 8-byte Folded Reload
	movq	%rax, -104(%rsp)                # 8-byte Spill
	adcq	-112(%rsp), %rcx                # 8-byte Folded Reload
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	adcq	-120(%rsp), %rdx                # 8-byte Folded Reload
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	adcq	56(%rsp), %rsi                  # 8-byte Folded Reload
	movq	%rsi, %rdx
	adcq	48(%rsp), %r8                   # 8-byte Folded Reload
	adcq	40(%rsp), %r9                   # 8-byte Folded Reload
	adcq	32(%rsp), %r10                  # 8-byte Folded Reload
	adcq	24(%rsp), %r11                  # 8-byte Folded Reload
	movq	%rbx, %rcx
	adcq	8(%rsp), %rcx                   # 8-byte Folded Reload
	adcq	(%rsp), %r14                    # 8-byte Folded Reload
	movq	-88(%rsp), %rbx                 # 8-byte Reload
	adcq	-8(%rsp), %rbx                  # 8-byte Folded Reload
	movq	-96(%rsp), %rax                 # 8-byte Reload
	adcq	-16(%rsp), %rax                 # 8-byte Folded Reload
	adcq	-24(%rsp), %rbp                 # 8-byte Folded Reload
	adcq	-32(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-40(%rsp), %r12                 # 8-byte Folded Reload
	adcq	-48(%rsp), %r15                 # 8-byte Folded Reload
	movq	-80(%rsp), %rsi                 # 8-byte Reload
	movq	%rsi, (%rdi)
	movq	-104(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 8(%rdi)
	movq	-112(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 16(%rdi)
	movq	-120(%rsp), %rsi                # 8-byte Reload
	movq	%rsi, 24(%rdi)
	movq	%rdx, 32(%rdi)
	movq	%r8, 40(%rdi)
	movq	%r9, 48(%rdi)
	movq	%r10, 56(%rdi)
	movq	%r11, 64(%rdi)
	movq	%rcx, 72(%rdi)
	movq	%r14, 80(%rdi)
	movq	%rbx, 88(%rdi)
	movq	%rax, 96(%rdi)
	movq	%rbp, 104(%rdi)
	movq	%r13, 112(%rdi)
	movq	%r12, 120(%rdi)
	movq	%r15, 128(%rdi)
	movzbl	-128(%rsp), %eax                # 1-byte Folded Reload
	adcq	16(%rsp), %rax                  # 8-byte Folded Reload
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end210:
	.size	mclb_mulUnitAdd17, .Lfunc_end210-mclb_mulUnitAdd17
                                        # -- End function
	.globl	mclb_mul17                      # -- Begin function mclb_mul17
	.p2align	4, 0x90
	.type	mclb_mul17,@function
mclb_mul17:                             # @mclb_mul17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2616, %rsp                     # imm = 0xA38
	movq	%rdx, %r14
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	(%rdx), %rdx
	movq	%r14, 152(%rsp)                 # 8-byte Spill
	leaq	2472(%rsp), %rdi
	movq	%rsi, %r12
	movq	%rsi, 160(%rsp)                 # 8-byte Spill
	callq	mulUnit_inner1088@PLT
	movq	2608(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	2600(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	2592(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	2584(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	2576(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	2568(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	2560(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	2552(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	2544(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	2536(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	2528(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	2520(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	2512(%rsp), %r13
	movq	2504(%rsp), %rbp
	movq	2496(%rsp), %r15
	movq	2488(%rsp), %rbx
	movq	2472(%rsp), %rax
	movq	2480(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	8(%r14), %rdx
	leaq	2328(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner1088@PLT
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	2328(%rsp), %rdx
	adcq	2336(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	adcq	2344(%rsp), %r15
	adcq	2352(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	adcq	2360(%rsp), %r13
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %r13                  # 8-byte Reload
	adcq	2368(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	2376(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rbp                 # 8-byte Reload
	adcq	2384(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	2392(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	2400(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	2408(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	2416(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	2424(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	2432(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	2440(%rsp), %rbx
	movq	88(%rsp), %r14                  # 8-byte Reload
	adcq	2448(%rsp), %r14
	movq	2464(%rsp), %rax
	movq	96(%rsp), %rcx                  # 8-byte Reload
	adcq	2456(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 8(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	16(%rax), %rdx
	leaq	2184(%rsp), %rdi
	movq	160(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %rsi
	callq	mulUnit_inner1088@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	2184(%rsp), %rcx
	adcq	2192(%rsp), %r15
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	2200(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %r15                 # 8-byte Reload
	adcq	2208(%rsp), %r15
	adcq	2216(%rsp), %r13
	movq	%r13, 56(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	2224(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	2232(%rsp), %rbp
	movq	%rbp, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	2240(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	2248(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	2256(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	adcq	2264(%rsp), %r13
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	2272(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	2280(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	2288(%rsp), %rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	adcq	2296(%rsp), %r14
	movq	%r14, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	2304(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	2320(%rsp), %rax
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	2312(%rsp), %rdx
	movq	%rdx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	24(%rax), %rdx
	leaq	2040(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner1088@PLT
	movq	136(%rsp), %rcx                 # 8-byte Reload
	addq	2040(%rsp), %rcx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	2048(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	2056(%rsp), %r15
	movq	%r15, 128(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	2064(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	2072(%rsp), %rbp
	movq	104(%rsp), %r15                 # 8-byte Reload
	adcq	2080(%rsp), %r15
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	2088(%rsp), %rbx
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	2096(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	2104(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	2112(%rsp), %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	2120(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r14                   # 8-byte Reload
	adcq	2128(%rsp), %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	2136(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	2144(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	2152(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r13                  # 8-byte Reload
	adcq	2160(%rsp), %r13
	movq	2176(%rsp), %rax
	movq	80(%rsp), %rdx                  # 8-byte Reload
	adcq	2168(%rsp), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	152(%rsp), %r12                 # 8-byte Reload
	movq	32(%r12), %rdx
	leaq	1896(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	1896(%rsp), %rcx
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1904(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1912(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1920(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	adcq	1928(%rsp), %r15
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	adcq	1936(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %r15                 # 8-byte Reload
	adcq	1944(%rsp), %r15
	movq	48(%rsp), %rbx                  # 8-byte Reload
	adcq	1952(%rsp), %rbx
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1960(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1968(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	1976(%rsp), %r14
	movq	%r14, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1984(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1992(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rbp                  # 8-byte Reload
	adcq	2000(%rsp), %rbp
	adcq	2008(%rsp), %r13
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	2016(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	2032(%rsp), %rax
	movq	136(%rsp), %rdx                 # 8-byte Reload
	adcq	2024(%rsp), %rdx
	movq	%rdx, 136(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %r14                 # 8-byte Reload
	movq	%rcx, 32(%r14)
	movq	40(%r12), %rdx
	leaq	1752(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	128(%rsp), %rcx                 # 8-byte Reload
	addq	1752(%rsp), %rcx
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	1760(%rsp), %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1768(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1776(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1784(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	1792(%rsp), %r15
	movq	%r15, 120(%rsp)                 # 8-byte Spill
	adcq	1800(%rsp), %rbx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	adcq	1808(%rsp), %r13
	movq	64(%rsp), %rbx                  # 8-byte Reload
	adcq	1816(%rsp), %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1824(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1832(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1840(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	1848(%rsp), %rbp
	movq	%rbp, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1856(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r15                  # 8-byte Reload
	adcq	1864(%rsp), %r15
	movq	136(%rsp), %rbp                 # 8-byte Reload
	adcq	1872(%rsp), %rbp
	movq	1888(%rsp), %rax
	movq	72(%rsp), %rdx                  # 8-byte Reload
	adcq	1880(%rsp), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%r14)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	48(%rax), %rdx
	leaq	1608(%rsp), %rdi
	movq	160(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	addq	1608(%rsp), %r12
	movq	%r12, %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1616(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1624(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1632(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %r12                 # 8-byte Reload
	adcq	1640(%rsp), %r12
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1648(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1656(%rsp), %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	adcq	1664(%rsp), %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1672(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1680(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	1688(%rsp), %rbx
	movq	96(%rsp), %r13                  # 8-byte Reload
	adcq	1696(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1704(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1712(%rsp), %r15
	movq	%r15, 80(%rsp)                  # 8-byte Spill
	adcq	1720(%rsp), %rbp
	movq	%rbp, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %r15                  # 8-byte Reload
	adcq	1728(%rsp), %r15
	movq	1744(%rsp), %rax
	movq	56(%rsp), %rdx                  # 8-byte Reload
	adcq	1736(%rsp), %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 48(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	56(%rax), %rdx
	leaq	1464(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	movq	32(%rsp), %rdx                  # 8-byte Reload
	addq	1464(%rsp), %rdx
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1472(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1480(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	adcq	1488(%rsp), %r12
	movq	%r12, 120(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %r14                  # 8-byte Reload
	adcq	1496(%rsp), %r14
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1504(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %r12                  # 8-byte Reload
	adcq	1512(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1520(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	1528(%rsp), %rbp
	adcq	1536(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	adcq	1544(%rsp), %r13
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1552(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1560(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	1568(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	adcq	1576(%rsp), %r15
	movq	%r15, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	1584(%rsp), %rbx
	movq	1600(%rsp), %rax
	movq	128(%rsp), %rcx                 # 8-byte Reload
	adcq	1592(%rsp), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 56(%rax)
	movq	152(%rsp), %r15                 # 8-byte Reload
	movq	64(%r15), %rdx
	leaq	1320(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	104(%rsp), %rcx                 # 8-byte Reload
	addq	1320(%rsp), %rcx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1328(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1336(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	adcq	1344(%rsp), %r14
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	adcq	1352(%rsp), %r13
	adcq	1360(%rsp), %r12
	movq	%r12, %r14
	movq	8(%rsp), %r12                   # 8-byte Reload
	adcq	1368(%rsp), %r12
	adcq	1376(%rsp), %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1384(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1392(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbp                  # 8-byte Reload
	adcq	1400(%rsp), %rbp
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1408(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	1416(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1424(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	1432(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1440(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	1456(%rsp), %rax
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	1448(%rsp), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 64(%rax)
	movq	72(%r15), %rdx
	leaq	1176(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	1176(%rsp), %rcx
	movq	120(%rsp), %r15                 # 8-byte Reload
	adcq	1184(%rsp), %r15
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1192(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1200(%rsp), %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	adcq	1208(%rsp), %r14
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	adcq	1216(%rsp), %r12
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %r12                  # 8-byte Reload
	adcq	1224(%rsp), %r12
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1232(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1240(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	1248(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	1256(%rsp), %rbx
	movq	136(%rsp), %r13                 # 8-byte Reload
	adcq	1264(%rsp), %r13
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1272(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1280(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1288(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1296(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	1312(%rsp), %rax
	movq	104(%rsp), %rdx                 # 8-byte Reload
	adcq	1304(%rsp), %rdx
	movq	%rdx, 104(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 72(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	80(%rax), %rdx
	leaq	1032(%rsp), %rdi
	movq	160(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	addq	1032(%rsp), %r15
	movq	%r15, %rax
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	1040(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
	adcq	1048(%rsp), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	1056(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rbp                   # 8-byte Reload
	adcq	1064(%rsp), %rbp
	adcq	1072(%rsp), %r12
	movq	%r12, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	1080(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	adcq	1088(%rsp), %r12
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	1096(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	1104(%rsp), %rbx
	movq	%rbx, 80(%rsp)                  # 8-byte Spill
	adcq	1112(%rsp), %r13
	movq	%r13, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	1120(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	1128(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rbx                 # 8-byte Reload
	adcq	1136(%rsp), %rbx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	1144(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r15                 # 8-byte Reload
	adcq	1152(%rsp), %r15
	movq	1168(%rsp), %rcx
	movq	40(%rsp), %rdx                  # 8-byte Reload
	adcq	1160(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 80(%rcx)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	88(%rax), %rdx
	leaq	888(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	888(%rsp), %rdx
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	896(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	904(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	912(%rsp), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	920(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	928(%rsp), %r13
	adcq	936(%rsp), %r12
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	944(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	952(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rax                 # 8-byte Reload
	adcq	960(%rsp), %rax
	movq	%rax, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %r12                  # 8-byte Reload
	adcq	968(%rsp), %r12
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	976(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	984(%rsp), %rbx
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	992(%rsp), %rbp
	adcq	1000(%rsp), %r15
	movq	%r15, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1008(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	1024(%rsp), %rax
	movq	120(%rsp), %rcx                 # 8-byte Reload
	adcq	1016(%rsp), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 88(%rax)
	movq	152(%rsp), %r15                 # 8-byte Reload
	movq	96(%r15), %rdx
	leaq	744(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	movq	112(%rsp), %rax                 # 8-byte Reload
	addq	744(%rsp), %rax
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	752(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	760(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	768(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	776(%rsp), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r13                  # 8-byte Reload
	adcq	784(%rsp), %r13
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	792(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	800(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx                 # 8-byte Reload
	adcq	808(%rsp), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	adcq	816(%rsp), %r12
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	824(%rsp), %rbx
	movq	128(%rsp), %r12                 # 8-byte Reload
	adcq	832(%rsp), %r12
	adcq	840(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx                 # 8-byte Reload
	adcq	848(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	856(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	120(%rsp), %rcx                 # 8-byte Reload
	adcq	864(%rsp), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	880(%rsp), %rcx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	872(%rsp), %rdx
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 96(%rcx)
	movq	104(%r15), %rdx
	leaq	600(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner1088@PLT
	movq	64(%rsp), %rax                  # 8-byte Reload
	addq	600(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	608(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	616(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	624(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	adcq	632(%rsp), %r13
	movq	%r13, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r15                  # 8-byte Reload
	adcq	640(%rsp), %r15
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	648(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rbp                 # 8-byte Reload
	adcq	656(%rsp), %rbp
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	664(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	adcq	672(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	adcq	680(%rsp), %r12
	movq	%r12, 128(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	688(%rsp), %r13
	movq	104(%rsp), %r12                 # 8-byte Reload
	adcq	696(%rsp), %r12
	movq	40(%rsp), %r14                  # 8-byte Reload
	adcq	704(%rsp), %r14
	movq	120(%rsp), %rcx                 # 8-byte Reload
	adcq	712(%rsp), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	720(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	736(%rsp), %rcx
	movq	112(%rsp), %rbx                 # 8-byte Reload
	adcq	728(%rsp), %rbx
	adcq	$0, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 104(%rcx)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	112(%rax), %rdx
	leaq	456(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	456(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	464(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	472(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	480(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	488(%rsp), %r15
	movq	%r15, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r15                  # 8-byte Reload
	adcq	496(%rsp), %r15
	adcq	504(%rsp), %rbp
	movq	%rbp, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	512(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	520(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	528(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	adcq	536(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	adcq	544(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movq	%r14, %r13
	adcq	552(%rsp), %r13
	movq	120(%rsp), %rbp                 # 8-byte Reload
	adcq	560(%rsp), %rbp
	movq	48(%rsp), %r14                  # 8-byte Reload
	adcq	568(%rsp), %r14
	adcq	576(%rsp), %rbx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	movq	592(%rsp), %rdx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	584(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 112(%rax)
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	120(%rax), %rdx
	leaq	312(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	312(%rsp), %rax
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	320(%rsp), %rbx
	movq	96(%rsp), %rcx                  # 8-byte Reload
	adcq	328(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	336(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	344(%rsp), %r15
	movq	%r15, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %rcx                 # 8-byte Reload
	adcq	352(%rsp), %rcx
	movq	%rcx, 136(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	368(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rcx                 # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	384(%rsp), %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rcx                 # 8-byte Reload
	adcq	392(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	adcq	400(%rsp), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	adcq	408(%rsp), %rbp
	adcq	416(%rsp), %r14
	movq	%r14, 48(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rcx                 # 8-byte Reload
	adcq	424(%rsp), %rcx
	movq	%rcx, 112(%rsp)                 # 8-byte Spill
	movq	64(%rsp), %rcx                  # 8-byte Reload
	adcq	432(%rsp), %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	448(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	440(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 120(%rcx)
	adcq	$0, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	152(%rsp), %rax                 # 8-byte Reload
	movq	128(%rax), %rdx
	leaq	168(%rsp), %rdi
	movq	160(%rsp), %rsi                 # 8-byte Reload
	callq	mulUnit_inner1088@PLT
	addq	168(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	176(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	184(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	192(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	136(%rsp), %r15                 # 8-byte Reload
	adcq	200(%rsp), %r15
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	208(%rsp), %r14
	movq	56(%rsp), %r13                  # 8-byte Reload
	adcq	216(%rsp), %r13
	movq	128(%rsp), %r11                 # 8-byte Reload
	adcq	224(%rsp), %r11
	movq	32(%rsp), %r10                  # 8-byte Reload
	adcq	232(%rsp), %r10
	movq	104(%rsp), %r9                  # 8-byte Reload
	adcq	240(%rsp), %r9
	movq	40(%rsp), %r8                   # 8-byte Reload
	adcq	248(%rsp), %r8
	adcq	256(%rsp), %rbp
	movq	48(%rsp), %rdi                  # 8-byte Reload
	adcq	264(%rsp), %rdi
	movq	112(%rsp), %rsi                 # 8-byte Reload
	adcq	272(%rsp), %rsi
	movq	64(%rsp), %rdx                  # 8-byte Reload
	adcq	280(%rsp), %rdx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	288(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	296(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	304(%rsp), %rax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	88(%rsp), %r12                  # 8-byte Reload
	movq	%r12, 128(%rcx)
	movq	96(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 136(%rcx)
	movq	24(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 144(%rcx)
	movq	80(%rsp), %rbx                  # 8-byte Reload
	movq	%rbx, 152(%rcx)
	movq	%r15, 160(%rcx)
	movq	%r14, 168(%rcx)
	movq	%r13, 176(%rcx)
	movq	%r11, 184(%rcx)
	movq	%r10, 192(%rcx)
	movq	%r9, 200(%rcx)
	movq	%r8, 208(%rcx)
	movq	%rbp, 216(%rcx)
	movq	%rdi, 224(%rcx)
	movq	%rsi, 232(%rcx)
	movq	%rdx, 240(%rcx)
	movq	8(%rsp), %rdx                   # 8-byte Reload
	movq	%rdx, 248(%rcx)
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 256(%rcx)
	adcq	$0, %rax
	movq	%rax, 264(%rcx)
	addq	$2616, %rsp                     # imm = 0xA38
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end211:
	.size	mclb_mul17, .Lfunc_end211-mclb_mul17
                                        # -- End function
	.globl	mclb_sqr17                      # -- Begin function mclb_sqr17
	.p2align	4, 0x90
	.type	mclb_sqr17,@function
mclb_sqr17:                             # @mclb_sqr17
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$2600, %rsp                     # imm = 0xA28
	movq	%rsi, %r15
	movq	%rdi, 144(%rsp)                 # 8-byte Spill
	movq	(%rsi), %rdx
	leaq	2456(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	2592(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	2584(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	2576(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	2568(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	2560(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	2552(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	2544(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	2536(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	2528(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	2520(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	2512(%rsp), %r14
	movq	2504(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	2496(%rsp), %r13
	movq	2488(%rsp), %rbx
	movq	2480(%rsp), %rbp
	movq	2472(%rsp), %r12
	movq	2456(%rsp), %rax
	movq	2464(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, (%rcx)
	movq	8(%r15), %rdx
	leaq	2312(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner1088@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	2312(%rsp), %rcx
	adcq	2320(%rsp), %r12
	adcq	2328(%rsp), %rbp
	movq	%rbp, (%rsp)                    # 8-byte Spill
	adcq	2336(%rsp), %rbx
	movq	%rbx, 64(%rsp)                  # 8-byte Spill
	adcq	2344(%rsp), %r13
	movq	%r13, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	2352(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	2360(%rsp), %r14
	movq	%r14, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	2368(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rbp                  # 8-byte Reload
	adcq	2376(%rsp), %rbp
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	2384(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	2392(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	2400(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	2408(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	2416(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	2424(%rsp), %r13
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	2432(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	2448(%rsp), %rax
	movq	88(%rsp), %rbx                  # 8-byte Reload
	adcq	2440(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, %r14
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 8(%rax)
	movq	%r15, 136(%rsp)                 # 8-byte Spill
	movq	16(%r15), %rdx
	leaq	2168(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner1088@PLT
	movq	%r12, %rcx
	addq	2168(%rsp), %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	2176(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	2184(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	2192(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r15                  # 8-byte Reload
	adcq	2200(%rsp), %r15
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	2208(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r12                   # 8-byte Reload
	adcq	2216(%rsp), %r12
	adcq	2224(%rsp), %rbp
	movq	%rbp, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	2232(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	2240(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	2248(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rbp                  # 8-byte Reload
	adcq	2256(%rsp), %rbp
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	2264(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	2272(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	2280(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	adcq	2288(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	movq	2304(%rsp), %rax
	adcq	2296(%rsp), %r14
	movq	%r14, %rbx
	adcq	$0, %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 16(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	24(%rsi), %rdx
	leaq	2024(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	2024(%rsp), %rcx
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	2032(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	2040(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	2048(%rsp), %r15
	movq	%r15, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %r13                  # 8-byte Reload
	adcq	2056(%rsp), %r13
	adcq	2064(%rsp), %r12
	movq	%r12, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	2072(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r15                  # 8-byte Reload
	adcq	2080(%rsp), %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	2088(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %r12                 # 8-byte Reload
	adcq	2096(%rsp), %r12
	adcq	2104(%rsp), %rbp
	movq	%rbp, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r14                  # 8-byte Reload
	adcq	2112(%rsp), %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	2120(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rbp                 # 8-byte Reload
	adcq	2128(%rsp), %rbp
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	2136(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	2144(%rsp), %rbx
	movq	%rbx, 128(%rsp)                 # 8-byte Spill
	movq	2160(%rsp), %rax
	movq	120(%rsp), %rbx                 # 8-byte Reload
	adcq	2152(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 24(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	32(%rsi), %rdx
	leaq	1880(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	64(%rsp), %rdx                  # 8-byte Reload
	addq	1880(%rsp), %rdx
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1888(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1896(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1904(%rsp), %r13
	movq	%r13, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1912(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1920(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1928(%rsp), %r15
	movq	%r15, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1936(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	1944(%rsp), %r12
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1952(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	adcq	1960(%rsp), %r14
	movq	%r14, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	1968(%rsp), %r13
	adcq	1976(%rsp), %rbp
	movq	%rbp, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rbp                  # 8-byte Reload
	adcq	1984(%rsp), %rbp
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1992(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	adcq	2000(%rsp), %rbx
	movq	%rbx, 120(%rsp)                 # 8-byte Spill
	movq	2016(%rsp), %rax
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	2008(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %r15                 # 8-byte Reload
	movq	%rdx, 32(%r15)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	40(%rsi), %rdx
	leaq	1736(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	24(%rsp), %rcx                  # 8-byte Reload
	addq	1736(%rsp), %rcx
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1744(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1752(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1760(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1768(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1776(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rbx                  # 8-byte Reload
	adcq	1784(%rsp), %rbx
	adcq	1792(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %r14                  # 8-byte Reload
	adcq	1800(%rsp), %r14
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1808(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1816(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %r13                 # 8-byte Reload
	adcq	1824(%rsp), %r13
	adcq	1832(%rsp), %rbp
	movq	%rbp, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1840(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1848(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1856(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	1872(%rsp), %rax
	movq	64(%rsp), %rdx                  # 8-byte Reload
	adcq	1864(%rsp), %rdx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, 40(%r15)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	48(%rsi), %rdx
	leaq	1592(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	48(%rsp), %rdx                  # 8-byte Reload
	addq	1592(%rsp), %rdx
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	1600(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1608(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	1616(%rsp), %r12
	movq	96(%rsp), %rax                  # 8-byte Reload
	adcq	1624(%rsp), %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	adcq	1632(%rsp), %rbx
	movq	%rbx, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1640(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	adcq	1648(%rsp), %r14
	movq	%r14, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1656(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rbp                  # 8-byte Reload
	adcq	1664(%rsp), %rbp
	movq	%r13, %rbx
	adcq	1672(%rsp), %rbx
	movq	88(%rsp), %r13                  # 8-byte Reload
	adcq	1680(%rsp), %r13
	movq	128(%rsp), %r15                 # 8-byte Reload
	adcq	1688(%rsp), %r15
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1696(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1704(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	adcq	1712(%rsp), %r14
	movq	1728(%rsp), %rax
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	1720(%rsp), %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 48(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	56(%rsi), %rdx
	leaq	1448(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	40(%rsp), %rcx                  # 8-byte Reload
	addq	1448(%rsp), %rcx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1456(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	1464(%rsp), %r12
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r12                  # 8-byte Reload
	adcq	1472(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1480(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1488(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1496(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	1504(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	adcq	1512(%rsp), %rbp
	movq	%rbp, 32(%rsp)                  # 8-byte Spill
	adcq	1520(%rsp), %rbx
	movq	%rbx, 112(%rsp)                 # 8-byte Spill
	adcq	1528(%rsp), %r13
	movq	%r13, 88(%rsp)                  # 8-byte Spill
	movq	%r15, %r13
	adcq	1536(%rsp), %r13
	movq	120(%rsp), %rbp                 # 8-byte Reload
	adcq	1544(%rsp), %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1552(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	adcq	1560(%rsp), %r14
	movq	%r14, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1568(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	1584(%rsp), %rax
	movq	48(%rsp), %rbx                  # 8-byte Reload
	adcq	1576(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %r14                 # 8-byte Reload
	movq	%rcx, 56(%r14)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	64(%rsi), %rdx
	leaq	1304(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	1304(%rsp), %rcx
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	1312(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	adcq	1320(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1328(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rax                 # 8-byte Reload
	adcq	1336(%rsp), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	1344(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %r15                  # 8-byte Reload
	adcq	1352(%rsp), %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1360(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1368(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1376(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	adcq	1384(%rsp), %r13
	movq	%r13, 128(%rsp)                 # 8-byte Spill
	adcq	1392(%rsp), %rbp
	movq	%rbp, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r13                    # 8-byte Reload
	adcq	1400(%rsp), %r13
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1408(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	1416(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	1424(%rsp), %rbx
	movq	1440(%rsp), %rax
	movq	40(%rsp), %rdx                  # 8-byte Reload
	adcq	1432(%rsp), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rcx, 64(%r14)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	72(%rsi), %rdx
	leaq	1160(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	56(%rsp), %rdx                  # 8-byte Reload
	addq	1160(%rsp), %rdx
	adcq	1168(%rsp), %r12
	movq	%r12, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1176(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	104(%rsp), %rbp                 # 8-byte Reload
	adcq	1184(%rsp), %rbp
	movq	72(%rsp), %r12                  # 8-byte Reload
	adcq	1192(%rsp), %r12
	adcq	1200(%rsp), %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	1208(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	1216(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1224(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1232(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1240(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	adcq	1248(%rsp), %r13
	movq	%r13, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	1256(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %r14                  # 8-byte Reload
	adcq	1264(%rsp), %r14
	adcq	1272(%rsp), %rbx
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rbx                  # 8-byte Reload
	adcq	1280(%rsp), %rbx
	movq	1296(%rsp), %rax
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	1288(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 72(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	80(%rsi), %rdx
	leaq	1016(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	96(%rsp), %rcx                  # 8-byte Reload
	addq	1016(%rsp), %rcx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	1024(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	adcq	1032(%rsp), %rbp
	movq	%rbp, 104(%rsp)                 # 8-byte Spill
	adcq	1040(%rsp), %r12
	movq	%r12, 72(%rsp)                  # 8-byte Spill
	adcq	1048(%rsp), %r15
	movq	32(%rsp), %r13                  # 8-byte Reload
	adcq	1056(%rsp), %r13
	movq	112(%rsp), %r12                 # 8-byte Reload
	adcq	1064(%rsp), %r12
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	1072(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	1080(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rax                 # 8-byte Reload
	adcq	1088(%rsp), %rax
	movq	%rax, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1096(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	adcq	1104(%rsp), %rbp
	adcq	1112(%rsp), %r14
	movq	%r14, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	1120(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	adcq	1128(%rsp), %rbx
	movq	%rbx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1136(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	1152(%rsp), %rax
	movq	56(%rsp), %rbx                  # 8-byte Reload
	adcq	1144(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 96(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rcx, 80(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	88(%rsi), %rdx
	leaq	872(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	16(%rsp), %rax                  # 8-byte Reload
	addq	872(%rsp), %rax
	movq	104(%rsp), %rcx                 # 8-byte Reload
	adcq	880(%rsp), %rcx
	movq	%rcx, 104(%rsp)                 # 8-byte Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	adcq	888(%rsp), %rcx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	adcq	896(%rsp), %r15
	movq	%r15, 80(%rsp)                  # 8-byte Spill
	adcq	904(%rsp), %r13
	movq	%r13, 32(%rsp)                  # 8-byte Spill
	adcq	912(%rsp), %r12
	movq	88(%rsp), %r15                  # 8-byte Reload
	adcq	920(%rsp), %r15
	movq	128(%rsp), %rcx                 # 8-byte Reload
	adcq	928(%rsp), %rcx
	movq	%rcx, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %r14                 # 8-byte Reload
	adcq	936(%rsp), %r14
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	944(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	adcq	952(%rsp), %rbp
	movq	%rbp, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rbp                  # 8-byte Reload
	adcq	960(%rsp), %rbp
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	968(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	976(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %r13                   # 8-byte Reload
	adcq	984(%rsp), %r13
	adcq	992(%rsp), %rbx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	movq	1008(%rsp), %rcx
	movq	96(%rsp), %rdx                  # 8-byte Reload
	adcq	1000(%rsp), %rdx
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	adcq	$0, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 88(%rcx)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	96(%rsi), %rdx
	leaq	728(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	104(%rsp), %rdx                 # 8-byte Reload
	addq	728(%rsp), %rdx
	movq	72(%rsp), %rax                  # 8-byte Reload
	adcq	736(%rsp), %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	744(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	752(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	adcq	760(%rsp), %r12
	movq	%r12, 112(%rsp)                 # 8-byte Spill
	movq	%r15, %rbx
	adcq	768(%rsp), %rbx
	movq	128(%rsp), %r15                 # 8-byte Reload
	adcq	776(%rsp), %r15
	adcq	784(%rsp), %r14
	movq	%r14, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %r14                    # 8-byte Reload
	adcq	792(%rsp), %r14
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	800(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	adcq	808(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rbp                  # 8-byte Reload
	adcq	816(%rsp), %rbp
	movq	40(%rsp), %r12                  # 8-byte Reload
	adcq	824(%rsp), %r12
	adcq	832(%rsp), %r13
	movq	%r13, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rax                  # 8-byte Reload
	adcq	840(%rsp), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %r13                  # 8-byte Reload
	adcq	848(%rsp), %r13
	movq	864(%rsp), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	856(%rsp), %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	adcq	$0, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	144(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, 96(%rax)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	104(%rsi), %rdx
	leaq	584(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	72(%rsp), %rcx                  # 8-byte Reload
	addq	584(%rsp), %rcx
	movq	80(%rsp), %rax                  # 8-byte Reload
	adcq	592(%rsp), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	600(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	608(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	adcq	616(%rsp), %rbx
	movq	%rbx, 88(%rsp)                  # 8-byte Spill
	adcq	624(%rsp), %r15
	movq	%r15, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %r15                 # 8-byte Reload
	adcq	632(%rsp), %r15
	adcq	640(%rsp), %r14
	movq	%r14, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	648(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	656(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	adcq	664(%rsp), %rbp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	adcq	672(%rsp), %r12
	movq	%r12, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	680(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %r12                  # 8-byte Reload
	adcq	688(%rsp), %r12
	movq	%r13, %r14
	adcq	696(%rsp), %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	704(%rsp), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	720(%rsp), %rax
	movq	104(%rsp), %rbx                 # 8-byte Reload
	adcq	712(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 72(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %r13                 # 8-byte Reload
	movq	%rcx, 104(%r13)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	112(%rsi), %rdx
	leaq	440(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	80(%rsp), %rcx                  # 8-byte Reload
	addq	440(%rsp), %rcx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	448(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	112(%rsp), %rax                 # 8-byte Reload
	adcq	456(%rsp), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	464(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rbp                 # 8-byte Reload
	adcq	472(%rsp), %rbp
	adcq	480(%rsp), %r15
	movq	%r15, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	488(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %rax                  # 8-byte Reload
	adcq	496(%rsp), %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	24(%rsp), %rax                  # 8-byte Reload
	adcq	504(%rsp), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	adcq	512(%rsp), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rax                  # 8-byte Reload
	adcq	520(%rsp), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	528(%rsp), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	adcq	536(%rsp), %r12
	movq	%r12, 56(%rsp)                  # 8-byte Spill
	adcq	544(%rsp), %r14
	movq	%r14, 96(%rsp)                  # 8-byte Spill
	movq	16(%rsp), %r15                  # 8-byte Reload
	adcq	552(%rsp), %r15
	adcq	560(%rsp), %rbx
	movq	%rbx, %r12
	movq	576(%rsp), %rax
	movq	72(%rsp), %rbx                  # 8-byte Reload
	adcq	568(%rsp), %rbx
	adcq	$0, %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	movq	%rcx, 112(%r13)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	120(%rsi), %rdx
	leaq	296(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	movq	32(%rsp), %rax                  # 8-byte Reload
	addq	296(%rsp), %rax
	movq	112(%rsp), %r13                 # 8-byte Reload
	adcq	304(%rsp), %r13
	movq	88(%rsp), %rcx                  # 8-byte Reload
	adcq	312(%rsp), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	adcq	320(%rsp), %rbp
	movq	%rbp, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %rcx                 # 8-byte Reload
	adcq	328(%rsp), %rcx
	movq	%rcx, 120(%rsp)                 # 8-byte Spill
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	336(%rsp), %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	64(%rsp), %r14                  # 8-byte Reload
	adcq	344(%rsp), %r14
	movq	24(%rsp), %rbp                  # 8-byte Reload
	adcq	352(%rsp), %rbp
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	adcq	368(%rsp), %rcx
	movq	%rcx, 40(%rsp)                  # 8-byte Spill
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	376(%rsp), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	56(%rsp), %rcx                  # 8-byte Reload
	adcq	384(%rsp), %rcx
	movq	%rcx, 56(%rsp)                  # 8-byte Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	adcq	392(%rsp), %rcx
	movq	%rcx, 96(%rsp)                  # 8-byte Spill
	adcq	400(%rsp), %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	adcq	408(%rsp), %r12
	movq	%r12, 104(%rsp)                 # 8-byte Spill
	adcq	416(%rsp), %rbx
	movq	%rbx, 72(%rsp)                  # 8-byte Spill
	movq	432(%rsp), %rdx
	movq	80(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	movq	%rcx, 80(%rsp)                  # 8-byte Spill
	adcq	$0, %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	%rax, 120(%rcx)
	movq	136(%rsp), %rsi                 # 8-byte Reload
	movq	128(%rsi), %rdx
	leaq	152(%rsp), %rdi
	callq	mulUnit_inner1088@PLT
	addq	152(%rsp), %r13
	movq	%r13, 112(%rsp)                 # 8-byte Spill
	movq	88(%rsp), %rax                  # 8-byte Reload
	adcq	160(%rsp), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	movq	128(%rsp), %rax                 # 8-byte Reload
	adcq	168(%rsp), %rax
	movq	%rax, 128(%rsp)                 # 8-byte Spill
	movq	120(%rsp), %r15                 # 8-byte Reload
	adcq	176(%rsp), %r15
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	184(%rsp), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%r14, %r13
	adcq	192(%rsp), %r13
	adcq	200(%rsp), %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %r14                  # 8-byte Reload
	adcq	208(%rsp), %r14
	movq	40(%rsp), %r11                  # 8-byte Reload
	adcq	216(%rsp), %r11
	movq	8(%rsp), %rbx                   # 8-byte Reload
	adcq	224(%rsp), %rbx
	movq	56(%rsp), %r10                  # 8-byte Reload
	adcq	232(%rsp), %r10
	movq	96(%rsp), %r9                   # 8-byte Reload
	adcq	240(%rsp), %r9
	movq	16(%rsp), %rbp                  # 8-byte Reload
	adcq	248(%rsp), %rbp
	movq	104(%rsp), %r8                  # 8-byte Reload
	adcq	256(%rsp), %r8
	movq	72(%rsp), %rsi                  # 8-byte Reload
	adcq	264(%rsp), %rsi
	movq	80(%rsp), %rdx                  # 8-byte Reload
	adcq	272(%rsp), %rdx
	movq	32(%rsp), %rax                  # 8-byte Reload
	adcq	280(%rsp), %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	288(%rsp), %rax
	movq	144(%rsp), %rcx                 # 8-byte Reload
	movq	112(%rsp), %r12                 # 8-byte Reload
	movq	%r12, 128(%rcx)
	movq	88(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, 136(%rcx)
	movq	128(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, 144(%rcx)
	movq	%r15, 152(%rcx)
	movq	(%rsp), %rdi                    # 8-byte Reload
	movq	%rdi, 160(%rcx)
	movq	%r13, 168(%rcx)
	movq	24(%rsp), %rdi                  # 8-byte Reload
	movq	%rdi, 176(%rcx)
	movq	%r14, 184(%rcx)
	movq	%r11, 192(%rcx)
	movq	%rbx, 200(%rcx)
	movq	%r10, 208(%rcx)
	movq	%r9, 216(%rcx)
	movq	%rbp, 224(%rcx)
	movq	%r8, 232(%rcx)
	movq	%rsi, 240(%rcx)
	movq	%rdx, 248(%rcx)
	movq	32(%rsp), %rdx                  # 8-byte Reload
	movq	%rdx, 256(%rcx)
	adcq	$0, %rax
	movq	%rax, 264(%rcx)
	addq	$2600, %rsp                     # imm = 0xA28
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end212:
	.size	mclb_sqr17, .Lfunc_end212-mclb_sqr17
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
