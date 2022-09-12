	.text
	.file	"bint32.ll"
	.globl	mclb_add1                       # -- Begin function mclb_add1
	.p2align	4, 0x90
	.type	mclb_add1,@function
mclb_add1:                              # @mclb_add1
# %bb.0:
	movl	(%rsi), %ecx
	movl	(%rdx), %eax
	addq	%rcx, %rax
	movl	%eax, (%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end0:
	.size	mclb_add1, .Lfunc_end0-mclb_add1
                                        # -- End function
	.globl	mclb_sub1                       # -- Begin function mclb_sub1
	.p2align	4, 0x90
	.type	mclb_sub1,@function
mclb_sub1:                              # @mclb_sub1
# %bb.0:
	movl	(%rsi), %eax
	movl	(%rdx), %ecx
	subq	%rcx, %rax
	movl	%eax, (%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end1:
	.size	mclb_sub1, .Lfunc_end1-mclb_sub1
                                        # -- End function
	.globl	mclb_addNF1                     # -- Begin function mclb_addNF1
	.p2align	4, 0x90
	.type	mclb_addNF1,@function
mclb_addNF1:                            # @mclb_addNF1
# %bb.0:
	movl	(%rdx), %eax
	addl	(%rsi), %eax
	movl	%eax, (%rdi)
	retq
.Lfunc_end2:
	.size	mclb_addNF1, .Lfunc_end2-mclb_addNF1
                                        # -- End function
	.globl	mclb_subNF1                     # -- Begin function mclb_subNF1
	.p2align	4, 0x90
	.type	mclb_subNF1,@function
mclb_subNF1:                            # @mclb_subNF1
# %bb.0:
	movl	(%rsi), %eax
	subl	(%rdx), %eax
	movl	%eax, (%rdi)
	shrl	$31, %eax
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
	xorl	%eax, %eax
	addq	(%rsi), %rcx
	setb	%al
	movq	%rcx, (%rdi)
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
	sbbq	%rax, %rax
	movq	%rcx, (%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	%rax, (%rdi)
	retq
.Lfunc_end6:
	.size	mclb_addNF2, .Lfunc_end6-mclb_addNF2
                                        # -- End function
	.globl	mclb_subNF2                     # -- Begin function mclb_subNF2
	.p2align	4, 0x90
	.type	mclb_subNF2,@function
mclb_subNF2:                            # @mclb_subNF2
# %bb.0:
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	%rax, (%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end7:
	.size	mclb_subNF2, .Lfunc_end7-mclb_subNF2
                                        # -- End function
	.globl	mclb_add3                       # -- Begin function mclb_add3
	.p2align	4, 0x90
	.type	mclb_add3,@function
mclb_add3:                              # @mclb_add3
# %bb.0:
	movl	8(%rsi), %eax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movl	8(%rdx), %edx
	adcq	%rax, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%edx, 8(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end8:
	.size	mclb_add3, .Lfunc_end8-mclb_add3
                                        # -- End function
	.globl	mclb_sub3                       # -- Begin function mclb_sub3
	.p2align	4, 0x90
	.type	mclb_sub3,@function
mclb_sub3:                              # @mclb_sub3
# %bb.0:
	movl	8(%rsi), %eax
	movq	(%rsi), %rcx
	movl	8(%rdx), %esi
	subq	(%rdx), %rcx
	sbbq	%rsi, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end9:
	.size	mclb_sub3, .Lfunc_end9-mclb_sub3
                                        # -- End function
	.globl	mclb_addNF3                     # -- Begin function mclb_addNF3
	.p2align	4, 0x90
	.type	mclb_addNF3,@function
mclb_addNF3:                            # @mclb_addNF3
# %bb.0:
	movl	8(%rsi), %eax
	movl	8(%rdx), %ecx
	movq	(%rdx), %rdx
	addq	(%rsi), %rdx
	adcq	%rax, %rcx
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	retq
.Lfunc_end10:
	.size	mclb_addNF3, .Lfunc_end10-mclb_addNF3
                                        # -- End function
	.globl	mclb_subNF3                     # -- Begin function mclb_subNF3
	.p2align	4, 0x90
	.type	mclb_subNF3,@function
mclb_subNF3:                            # @mclb_subNF3
# %bb.0:
	movl	8(%rsi), %ecx
	movq	(%rsi), %rsi
	movl	8(%rdx), %eax
	subq	(%rdx), %rsi
	sbbq	%rax, %rcx
	movl	%ecx, %eax
	movl	%esi, (%rdi)
	shrq	$32, %rsi
	movl	%esi, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end11:
	.size	mclb_subNF3, .Lfunc_end11-mclb_subNF3
                                        # -- End function
	.globl	mclb_add4                       # -- Begin function mclb_add4
	.p2align	4, 0x90
	.type	mclb_add4,@function
mclb_add4:                              # @mclb_add4
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	setb	%dl
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movzbl	%dl, %eax
	retq
.Lfunc_end12:
	.size	mclb_add4, .Lfunc_end12-mclb_add4
                                        # -- End function
	.globl	mclb_sub4                       # -- Begin function mclb_sub4
	.p2align	4, 0x90
	.type	mclb_sub4,@function
mclb_sub4:                              # @mclb_sub4
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rsi
	sbbq	8(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%esi, 8(%rdi)
	shrq	$32, %rsi
	movl	%esi, 12(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end13:
	.size	mclb_sub4, .Lfunc_end13-mclb_sub4
                                        # -- End function
	.globl	mclb_addNF4                     # -- Begin function mclb_addNF4
	.p2align	4, 0x90
	.type	mclb_addNF4,@function
mclb_addNF4:                            # @mclb_addNF4
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	retq
.Lfunc_end14:
	.size	mclb_addNF4, .Lfunc_end14-mclb_addNF4
                                        # -- End function
	.globl	mclb_subNF4                     # -- Begin function mclb_subNF4
	.p2align	4, 0x90
	.type	mclb_subNF4,@function
mclb_subNF4:                            # @mclb_subNF4
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	movl	%edx, 12(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end15:
	.size	mclb_subNF4, .Lfunc_end15-mclb_subNF4
                                        # -- End function
	.globl	mclb_add5                       # -- Begin function mclb_add5
	.p2align	4, 0x90
	.type	mclb_add5,@function
mclb_add5:                              # @mclb_add5
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movl	16(%rsi), %esi
	movl	16(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%edx, 16(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end16:
	.size	mclb_add5, .Lfunc_end16-mclb_add5
                                        # -- End function
	.globl	mclb_sub5                       # -- Begin function mclb_sub5
	.p2align	4, 0x90
	.type	mclb_sub5,@function
mclb_sub5:                              # @mclb_sub5
# %bb.0:
	movl	16(%rsi), %eax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rsi
	sbbq	8(%rdx), %rsi
	movl	16(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%esi, 8(%rdi)
	shrq	$32, %rsi
	movl	%esi, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end17:
	.size	mclb_sub5, .Lfunc_end17-mclb_sub5
                                        # -- End function
	.globl	mclb_addNF5                     # -- Begin function mclb_addNF5
	.p2align	4, 0x90
	.type	mclb_addNF5,@function
mclb_addNF5:                            # @mclb_addNF5
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movl	16(%rsi), %esi
	movl	16(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%edx, 16(%rdi)
	retq
.Lfunc_end18:
	.size	mclb_addNF5, .Lfunc_end18-mclb_addNF5
                                        # -- End function
	.globl	mclb_subNF5                     # -- Begin function mclb_subNF5
	.p2align	4, 0x90
	.type	mclb_subNF5,@function
mclb_subNF5:                            # @mclb_subNF5
# %bb.0:
	movl	16(%rsi), %r8d
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rsi
	sbbq	8(%rdx), %rsi
	movl	16(%rdx), %eax
	sbbq	%rax, %r8
	movl	%r8d, %eax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%esi, 8(%rdi)
	shrq	$32, %rsi
	movl	%esi, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end19:
	.size	mclb_subNF5, .Lfunc_end19-mclb_subNF5
                                        # -- End function
	.globl	mclb_add6                       # -- Begin function mclb_add6
	.p2align	4, 0x90
	.type	mclb_add6,@function
mclb_add6:                              # @mclb_add6
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rdx
	adcq	16(%rsi), %rdx
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
	movzbl	%sil, %eax
	retq
.Lfunc_end20:
	.size	mclb_add6, .Lfunc_end20-mclb_add6
                                        # -- End function
	.globl	mclb_sub6                       # -- Begin function mclb_sub6
	.p2align	4, 0x90
	.type	mclb_sub6,@function
mclb_sub6:                              # @mclb_sub6
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %rsi
	sbbq	16(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%esi, 16(%rdi)
	shrq	$32, %rsi
	movl	%esi, 20(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end21:
	.size	mclb_sub6, .Lfunc_end21-mclb_sub6
                                        # -- End function
	.globl	mclb_addNF6                     # -- Begin function mclb_addNF6
	.p2align	4, 0x90
	.type	mclb_addNF6,@function
mclb_addNF6:                            # @mclb_addNF6
# %bb.0:
	movq	16(%rdx), %rax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rdx
	adcq	8(%rsi), %rdx
	adcq	16(%rsi), %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%edx, 8(%rdi)
	shrq	$32, %rdx
	movl	%edx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	retq
.Lfunc_end22:
	.size	mclb_addNF6, .Lfunc_end22-mclb_addNF6
                                        # -- End function
	.globl	mclb_subNF6                     # -- Begin function mclb_subNF6
	.p2align	4, 0x90
	.type	mclb_subNF6,@function
mclb_subNF6:                            # @mclb_subNF6
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%eax, 16(%rdi)
	movl	%edx, 20(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end23:
	.size	mclb_subNF6, .Lfunc_end23-mclb_subNF6
                                        # -- End function
	.globl	mclb_add7                       # -- Begin function mclb_add7
	.p2align	4, 0x90
	.type	mclb_add7,@function
mclb_add7:                              # @mclb_add7
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movl	24(%rsi), %esi
	movl	24(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%edx, 24(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end24:
	.size	mclb_add7, .Lfunc_end24-mclb_add7
                                        # -- End function
	.globl	mclb_sub7                       # -- Begin function mclb_sub7
	.p2align	4, 0x90
	.type	mclb_sub7,@function
mclb_sub7:                              # @mclb_sub7
# %bb.0:
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r8
	sbbq	16(%rdx), %r8
	movl	24(%rsi), %esi
	movl	24(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%esi, 24(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end25:
	.size	mclb_sub7, .Lfunc_end25-mclb_sub7
                                        # -- End function
	.globl	mclb_addNF7                     # -- Begin function mclb_addNF7
	.p2align	4, 0x90
	.type	mclb_addNF7,@function
mclb_addNF7:                            # @mclb_addNF7
# %bb.0:
	movl	24(%rsi), %r8d
	movl	24(%rdx), %r9d
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rdx
	adcq	16(%rsi), %rdx
	adcq	%r8, %r9
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
	movl	%r9d, 24(%rdi)
	retq
.Lfunc_end26:
	.size	mclb_addNF7, .Lfunc_end26-mclb_addNF7
                                        # -- End function
	.globl	mclb_subNF7                     # -- Begin function mclb_subNF7
	.p2align	4, 0x90
	.type	mclb_subNF7,@function
mclb_subNF7:                            # @mclb_subNF7
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movl	24(%rsi), %esi
	movl	24(%rdx), %eax
	sbbq	%rax, %rsi
	movl	%esi, %eax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%esi, 24(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end27:
	.size	mclb_subNF7, .Lfunc_end27-mclb_subNF7
                                        # -- End function
	.globl	mclb_add8                       # -- Begin function mclb_add8
	.p2align	4, 0x90
	.type	mclb_add8,@function
mclb_add8:                              # @mclb_add8
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%edx, 24(%rdi)
	shrq	$32, %rdx
	movl	%edx, 28(%rdi)
	movzbl	%sil, %eax
	retq
.Lfunc_end28:
	.size	mclb_add8, .Lfunc_end28-mclb_add8
                                        # -- End function
	.globl	mclb_sub8                       # -- Begin function mclb_sub8
	.p2align	4, 0x90
	.type	mclb_sub8,@function
mclb_sub8:                              # @mclb_sub8
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %rsi
	sbbq	24(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%esi, 24(%rdi)
	shrq	$32, %rsi
	movl	%esi, 28(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end29:
	.size	mclb_sub8, .Lfunc_end29-mclb_sub8
                                        # -- End function
	.globl	mclb_addNF8                     # -- Begin function mclb_addNF8
	.p2align	4, 0x90
	.type	mclb_addNF8,@function
mclb_addNF8:                            # @mclb_addNF8
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%edx, 24(%rdi)
	shrq	$32, %rdx
	movl	%edx, 28(%rdi)
	retq
.Lfunc_end30:
	.size	mclb_addNF8, .Lfunc_end30-mclb_addNF8
                                        # -- End function
	.globl	mclb_subNF8                     # -- Begin function mclb_subNF8
	.p2align	4, 0x90
	.type	mclb_subNF8,@function
mclb_subNF8:                            # @mclb_subNF8
# %bb.0:
	movq	24(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %rsi
	sbbq	16(%rdx), %rsi
	sbbq	24(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%esi, 16(%rdi)
	shrq	$32, %rsi
	movl	%esi, 20(%rdi)
	movl	%eax, 24(%rdi)
	movl	%edx, 28(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end31:
	.size	mclb_subNF8, .Lfunc_end31-mclb_subNF8
                                        # -- End function
	.globl	mclb_add9                       # -- Begin function mclb_add9
	.p2align	4, 0x90
	.type	mclb_add9,@function
mclb_add9:                              # @mclb_add9
# %bb.0:
	movl	32(%rsi), %r8d
	movl	32(%rdx), %eax
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r9
	adcq	8(%rsi), %r9
	movq	16(%rdx), %r10
	adcq	16(%rsi), %r10
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	adcq	%r8, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r9d, 8(%rdi)
	shrq	$32, %r9
	movl	%r9d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	shrq	$32, %r10
	movl	%r10d, 20(%rdi)
	movl	%edx, 24(%rdi)
	shrq	$32, %rdx
	movl	%edx, 28(%rdi)
	movl	%eax, 32(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end32:
	.size	mclb_add9, .Lfunc_end32-mclb_add9
                                        # -- End function
	.globl	mclb_sub9                       # -- Begin function mclb_sub9
	.p2align	4, 0x90
	.type	mclb_sub9,@function
mclb_sub9:                              # @mclb_sub9
# %bb.0:
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r8
	sbbq	16(%rdx), %r8
	movq	24(%rsi), %r9
	sbbq	24(%rdx), %r9
	movl	32(%rsi), %esi
	movl	32(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%esi, 32(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end33:
	.size	mclb_sub9, .Lfunc_end33-mclb_sub9
                                        # -- End function
	.globl	mclb_addNF9                     # -- Begin function mclb_addNF9
	.p2align	4, 0x90
	.type	mclb_addNF9,@function
mclb_addNF9:                            # @mclb_addNF9
# %bb.0:
	movl	32(%rsi), %r8d
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movl	32(%rdx), %edx
	adcq	%r8, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%edx, 32(%rdi)
	retq
.Lfunc_end34:
	.size	mclb_addNF9, .Lfunc_end34-mclb_addNF9
                                        # -- End function
	.globl	mclb_subNF9                     # -- Begin function mclb_subNF9
	.p2align	4, 0x90
	.type	mclb_subNF9,@function
mclb_subNF9:                            # @mclb_subNF9
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movl	32(%rsi), %esi
	movl	32(%rdx), %eax
	sbbq	%rax, %rsi
	movl	%esi, %eax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%esi, 32(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end35:
	.size	mclb_subNF9, .Lfunc_end35-mclb_subNF9
                                        # -- End function
	.globl	mclb_add10                      # -- Begin function mclb_add10
	.p2align	4, 0x90
	.type	mclb_add10,@function
mclb_add10:                             # @mclb_add10
# %bb.0:
	movq	32(%rdx), %r8
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %rdx
	adcq	24(%rsi), %rdx
	adcq	32(%rsi), %r8
	setb	%sil
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%edx, 24(%rdi)
	shrq	$32, %rdx
	movl	%edx, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movzbl	%sil, %eax
	retq
.Lfunc_end36:
	.size	mclb_add10, .Lfunc_end36-mclb_add10
                                        # -- End function
	.globl	mclb_sub10                      # -- Begin function mclb_sub10
	.p2align	4, 0x90
	.type	mclb_sub10,@function
mclb_sub10:                             # @mclb_sub10
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rsi
	sbbq	32(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%esi, 32(%rdi)
	shrq	$32, %rsi
	movl	%esi, 36(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end37:
	.size	mclb_sub10, .Lfunc_end37-mclb_sub10
                                        # -- End function
	.globl	mclb_addNF10                    # -- Begin function mclb_addNF10
	.p2align	4, 0x90
	.type	mclb_addNF10,@function
mclb_addNF10:                           # @mclb_addNF10
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %r9
	adcq	24(%rsi), %r9
	movq	32(%rdx), %rdx
	adcq	32(%rsi), %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%edx, 32(%rdi)
	shrq	$32, %rdx
	movl	%edx, 36(%rdi)
	retq
.Lfunc_end38:
	.size	mclb_addNF10, .Lfunc_end38-mclb_addNF10
                                        # -- End function
	.globl	mclb_subNF10                    # -- Begin function mclb_subNF10
	.p2align	4, 0x90
	.type	mclb_subNF10,@function
mclb_subNF10:                           # @mclb_subNF10
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rax
	sbbq	32(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%eax, 32(%rdi)
	movl	%edx, 36(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end39:
	.size	mclb_subNF10, .Lfunc_end39-mclb_subNF10
                                        # -- End function
	.globl	mclb_add11                      # -- Begin function mclb_add11
	.p2align	4, 0x90
	.type	mclb_add11,@function
mclb_add11:                             # @mclb_add11
# %bb.0:
	pushq	%rbx
	movl	40(%rsi), %r8d
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r10
	adcq	8(%rsi), %r10
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %rbx
	adcq	24(%rsi), %rbx
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movl	40(%rdx), %eax
	adcq	%r8, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r10d, 8(%rdi)
	shrq	$32, %r10
	movl	%r10d, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%eax, 40(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end40:
	.size	mclb_add11, .Lfunc_end40-mclb_add11
                                        # -- End function
	.globl	mclb_sub11                      # -- Begin function mclb_sub11
	.p2align	4, 0x90
	.type	mclb_sub11,@function
mclb_sub11:                             # @mclb_sub11
# %bb.0:
	movl	40(%rsi), %eax
	movq	32(%rsi), %r8
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %rsi
	sbbq	24(%rdx), %rsi
	movl	40(%rdx), %r11d
	sbbq	32(%rdx), %r8
	sbbq	%r11, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r9d, 8(%rdi)
	shrq	$32, %r9
	movl	%r9d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	shrq	$32, %r10
	movl	%r10d, 20(%rdi)
	movl	%esi, 24(%rdi)
	shrq	$32, %rsi
	movl	%esi, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%eax, 40(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end41:
	.size	mclb_sub11, .Lfunc_end41-mclb_sub11
                                        # -- End function
	.globl	mclb_addNF11                    # -- Begin function mclb_addNF11
	.p2align	4, 0x90
	.type	mclb_addNF11,@function
mclb_addNF11:                           # @mclb_addNF11
# %bb.0:
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %r9
	adcq	24(%rsi), %r9
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movl	40(%rsi), %esi
	movl	40(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%edx, 40(%rdi)
	retq
.Lfunc_end42:
	.size	mclb_addNF11, .Lfunc_end42-mclb_addNF11
                                        # -- End function
	.globl	mclb_subNF11                    # -- Begin function mclb_subNF11
	.p2align	4, 0x90
	.type	mclb_subNF11,@function
mclb_subNF11:                           # @mclb_subNF11
# %bb.0:
	movl	40(%rsi), %r8d
	movq	32(%rsi), %r9
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r10
	sbbq	8(%rdx), %r10
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %rsi
	sbbq	24(%rdx), %rsi
	movl	40(%rdx), %eax
	sbbq	32(%rdx), %r9
	sbbq	%rax, %r8
	movl	%r8d, %eax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r10d, 8(%rdi)
	shrq	$32, %r10
	movl	%r10d, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%esi, 24(%rdi)
	shrq	$32, %rsi
	movl	%esi, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end43:
	.size	mclb_subNF11, .Lfunc_end43-mclb_subNF11
                                        # -- End function
	.globl	mclb_add12                      # -- Begin function mclb_add12
	.p2align	4, 0x90
	.type	mclb_add12,@function
mclb_add12:                             # @mclb_add12
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r8
	adcq	32(%rsi), %r8
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%edx, 40(%rdi)
	shrq	$32, %rdx
	movl	%edx, 44(%rdi)
	movzbl	%sil, %eax
	retq
.Lfunc_end44:
	.size	mclb_add12, .Lfunc_end44-mclb_add12
                                        # -- End function
	.globl	mclb_sub12                      # -- Begin function mclb_sub12
	.p2align	4, 0x90
	.type	mclb_sub12,@function
mclb_sub12:                             # @mclb_sub12
# %bb.0:
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %r10
	sbbq	8(%rdx), %r10
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r9
	sbbq	24(%rdx), %r9
	movq	32(%rsi), %r8
	sbbq	32(%rdx), %r8
	movq	40(%rsi), %rsi
	sbbq	40(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r10d, 8(%rdi)
	shrq	$32, %r10
	movl	%r10d, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%esi, 40(%rdi)
	shrq	$32, %rsi
	movl	%esi, 44(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end45:
	.size	mclb_sub12, .Lfunc_end45-mclb_sub12
                                        # -- End function
	.globl	mclb_addNF12                    # -- Begin function mclb_addNF12
	.p2align	4, 0x90
	.type	mclb_addNF12,@function
mclb_addNF12:                           # @mclb_addNF12
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r8
	adcq	32(%rsi), %r8
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%edx, 40(%rdi)
	shrq	$32, %rdx
	movl	%edx, 44(%rdi)
	retq
.Lfunc_end46:
	.size	mclb_addNF12, .Lfunc_end46-mclb_addNF12
                                        # -- End function
	.globl	mclb_subNF12                    # -- Begin function mclb_subNF12
	.p2align	4, 0x90
	.type	mclb_subNF12,@function
mclb_subNF12:                           # @mclb_subNF12
# %bb.0:
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r9
	sbbq	8(%rdx), %r9
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r8
	sbbq	32(%rdx), %r8
	movq	40(%rsi), %rax
	sbbq	40(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r9d, 8(%rdi)
	shrq	$32, %r9
	movl	%r9d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	shrq	$32, %r10
	movl	%r10d, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%eax, 40(%rdi)
	movl	%edx, 44(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end47:
	.size	mclb_subNF12, .Lfunc_end47-mclb_subNF12
                                        # -- End function
	.globl	mclb_add13                      # -- Begin function mclb_add13
	.p2align	4, 0x90
	.type	mclb_add13,@function
mclb_add13:                             # @mclb_add13
# %bb.0:
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r8
	adcq	40(%rsi), %r8
	movl	48(%rsi), %esi
	movl	48(%rdx), %eax
	adcq	%rsi, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%eax, 48(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end48:
	.size	mclb_add13, .Lfunc_end48-mclb_add13
                                        # -- End function
	.globl	mclb_sub13                      # -- Begin function mclb_sub13
	.p2align	4, 0x90
	.type	mclb_sub13,@function
mclb_sub13:                             # @mclb_sub13
# %bb.0:
	movl	48(%rsi), %eax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r11
	sbbq	8(%rdx), %r11
	movq	16(%rsi), %r10
	sbbq	16(%rdx), %r10
	movq	24(%rsi), %r9
	sbbq	24(%rdx), %r9
	movq	32(%rsi), %r8
	sbbq	32(%rdx), %r8
	movq	40(%rsi), %rsi
	sbbq	40(%rdx), %rsi
	movl	48(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r11d, 8(%rdi)
	shrq	$32, %r11
	movl	%r11d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	shrq	$32, %r10
	movl	%r10d, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%esi, 40(%rdi)
	shrq	$32, %rsi
	movl	%esi, 44(%rdi)
	movl	%eax, 48(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end49:
	.size	mclb_sub13, .Lfunc_end49-mclb_sub13
                                        # -- End function
	.globl	mclb_addNF13                    # -- Begin function mclb_addNF13
	.p2align	4, 0x90
	.type	mclb_addNF13,@function
mclb_addNF13:                           # @mclb_addNF13
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r8
	adcq	40(%rsi), %r8
	movl	48(%rsi), %esi
	movl	48(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%edx, 48(%rdi)
	retq
.Lfunc_end50:
	.size	mclb_addNF13, .Lfunc_end50-mclb_addNF13
                                        # -- End function
	.globl	mclb_subNF13                    # -- Begin function mclb_subNF13
	.p2align	4, 0x90
	.type	mclb_subNF13,@function
mclb_subNF13:                           # @mclb_subNF13
# %bb.0:
	pushq	%rbx
	movl	48(%rsi), %r8d
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %rsi
	sbbq	40(%rdx), %rsi
	movl	48(%rdx), %eax
	sbbq	%rax, %r8
	movl	%r8d, %eax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%esi, 40(%rdi)
	shrq	$32, %rsi
	movl	%esi, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end51:
	.size	mclb_subNF13, .Lfunc_end51-mclb_subNF13
                                        # -- End function
	.globl	mclb_add14                      # -- Begin function mclb_add14
	.p2align	4, 0x90
	.type	mclb_add14,@function
mclb_add14:                             # @mclb_add14
# %bb.0:
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r8
	adcq	40(%rsi), %r8
	movq	48(%rdx), %rdx
	adcq	48(%rsi), %rdx
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%edx, 48(%rdi)
	shrq	$32, %rdx
	movl	%edx, 52(%rdi)
	movzbl	%sil, %eax
	retq
.Lfunc_end52:
	.size	mclb_add14, .Lfunc_end52-mclb_add14
                                        # -- End function
	.globl	mclb_sub14                      # -- Begin function mclb_sub14
	.p2align	4, 0x90
	.type	mclb_sub14,@function
mclb_sub14:                             # @mclb_sub14
# %bb.0:
	pushq	%rbx
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r8
	sbbq	40(%rdx), %r8
	movq	48(%rsi), %rsi
	sbbq	48(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%esi, 48(%rdi)
	shrq	$32, %rsi
	movl	%esi, 52(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end53:
	.size	mclb_sub14, .Lfunc_end53-mclb_sub14
                                        # -- End function
	.globl	mclb_addNF14                    # -- Begin function mclb_addNF14
	.p2align	4, 0x90
	.type	mclb_addNF14,@function
mclb_addNF14:                           # @mclb_addNF14
# %bb.0:
	movq	48(%rdx), %r8
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %r11
	adcq	16(%rsi), %r11
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %rdx
	adcq	40(%rsi), %rdx
	adcq	48(%rsi), %r8
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%edx, 40(%rdi)
	shrq	$32, %rdx
	movl	%edx, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	retq
.Lfunc_end54:
	.size	mclb_addNF14, .Lfunc_end54-mclb_addNF14
                                        # -- End function
	.globl	mclb_subNF14                    # -- Begin function mclb_subNF14
	.p2align	4, 0x90
	.type	mclb_subNF14,@function
mclb_subNF14:                           # @mclb_subNF14
# %bb.0:
	pushq	%rbx
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r8
	sbbq	40(%rdx), %r8
	movq	48(%rsi), %rax
	sbbq	48(%rdx), %rax
	movl	%ecx, (%rdi)
	movq	%rax, %rdx
	shrq	$32, %rdx
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%eax, 48(%rdi)
	movl	%edx, 52(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end55:
	.size	mclb_subNF14, .Lfunc_end55-mclb_subNF14
                                        # -- End function
	.globl	mclb_add15                      # -- Begin function mclb_add15
	.p2align	4, 0x90
	.type	mclb_add15,@function
mclb_add15:                             # @mclb_add15
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r14
	adcq	16(%rsi), %r14
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %r9
	adcq	40(%rsi), %r9
	movq	48(%rdx), %r8
	adcq	48(%rsi), %r8
	movl	56(%rsi), %esi
	movl	56(%rdx), %eax
	adcq	%rsi, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r14d, 16(%rdi)
	shrq	$32, %r14
	movl	%r14d, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%eax, 56(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end56:
	.size	mclb_add15, .Lfunc_end56-mclb_add15
                                        # -- End function
	.globl	mclb_sub15                      # -- Begin function mclb_sub15
	.p2align	4, 0x90
	.type	mclb_sub15,@function
mclb_sub15:                             # @mclb_sub15
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r14
	sbbq	16(%rdx), %r14
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r10
	sbbq	32(%rdx), %r10
	movq	40(%rsi), %r9
	sbbq	40(%rdx), %r9
	movq	48(%rsi), %r8
	sbbq	48(%rdx), %r8
	movl	56(%rsi), %eax
	movl	56(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r14d, 16(%rdi)
	shrq	$32, %r14
	movl	%r14d, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%eax, 56(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end57:
	.size	mclb_sub15, .Lfunc_end57-mclb_sub15
                                        # -- End function
	.globl	mclb_addNF15                    # -- Begin function mclb_addNF15
	.p2align	4, 0x90
	.type	mclb_addNF15,@function
mclb_addNF15:                           # @mclb_addNF15
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movl	56(%rsi), %r14d
	movl	56(%rdx), %r8d
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %r9
	adcq	40(%rsi), %r9
	movq	48(%rdx), %rdx
	adcq	48(%rsi), %rdx
	adcq	%r14, %r8
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%edx, 48(%rdi)
	shrq	$32, %rdx
	movl	%edx, 52(%rdi)
	movl	%r8d, 56(%rdi)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end58:
	.size	mclb_addNF15, .Lfunc_end58-mclb_addNF15
                                        # -- End function
	.globl	mclb_subNF15                    # -- Begin function mclb_subNF15
	.p2align	4, 0x90
	.type	mclb_subNF15,@function
mclb_subNF15:                           # @mclb_subNF15
# %bb.0:
	pushq	%rbx
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r10
	sbbq	32(%rdx), %r10
	movq	40(%rsi), %r9
	sbbq	40(%rdx), %r9
	movq	48(%rsi), %r8
	sbbq	48(%rdx), %r8
	movl	56(%rsi), %esi
	movl	56(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%esi, 56(%rdi)
	movl	%esi, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end59:
	.size	mclb_subNF15, .Lfunc_end59-mclb_subNF15
                                        # -- End function
	.globl	mclb_add16                      # -- Begin function mclb_add16
	.p2align	4, 0x90
	.type	mclb_add16,@function
mclb_add16:                             # @mclb_add16
# %bb.0:
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %r9
	adcq	40(%rsi), %r9
	movq	48(%rdx), %r8
	adcq	48(%rsi), %r8
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	setb	%sil
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%edx, 56(%rdi)
	shrq	$32, %rdx
	movl	%edx, 60(%rdi)
	movzbl	%sil, %eax
	popq	%rbx
	retq
.Lfunc_end60:
	.size	mclb_add16, .Lfunc_end60-mclb_add16
                                        # -- End function
	.globl	mclb_sub16                      # -- Begin function mclb_sub16
	.p2align	4, 0x90
	.type	mclb_sub16,@function
mclb_sub16:                             # @mclb_sub16
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r14
	sbbq	16(%rdx), %r14
	movq	24(%rsi), %r11
	sbbq	24(%rdx), %r11
	movq	32(%rsi), %r10
	sbbq	32(%rdx), %r10
	movq	40(%rsi), %r9
	sbbq	40(%rdx), %r9
	movq	48(%rsi), %r8
	sbbq	48(%rdx), %r8
	movq	56(%rsi), %rsi
	sbbq	56(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r14d, 16(%rdi)
	shrq	$32, %r14
	movl	%r14d, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%esi, 56(%rdi)
	shrq	$32, %rsi
	movl	%esi, 60(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end61:
	.size	mclb_sub16, .Lfunc_end61-mclb_sub16
                                        # -- End function
	.globl	mclb_addNF16                    # -- Begin function mclb_addNF16
	.p2align	4, 0x90
	.type	mclb_addNF16,@function
mclb_addNF16:                           # @mclb_addNF16
# %bb.0:
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r11
	adcq	24(%rsi), %r11
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %r9
	adcq	40(%rsi), %r9
	movq	48(%rdx), %r8
	adcq	48(%rsi), %r8
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r11d, 24(%rdi)
	shrq	$32, %r11
	movl	%r11d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r9d, 40(%rdi)
	shrq	$32, %r9
	movl	%r9d, 44(%rdi)
	movl	%r8d, 48(%rdi)
	shrq	$32, %r8
	movl	%r8d, 52(%rdi)
	movl	%edx, 56(%rdi)
	shrq	$32, %rdx
	movl	%edx, 60(%rdi)
	popq	%rbx
	retq
.Lfunc_end62:
	.size	mclb_addNF16, .Lfunc_end62-mclb_addNF16
                                        # -- End function
	.globl	mclb_subNF16                    # -- Begin function mclb_subNF16
	.p2align	4, 0x90
	.type	mclb_subNF16,@function
mclb_subNF16:                           # @mclb_subNF16
# %bb.0:
	pushq	%rbx
	movq	56(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r11
	sbbq	16(%rdx), %r11
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r8
	sbbq	40(%rdx), %r8
	movq	48(%rsi), %rsi
	sbbq	48(%rdx), %rsi
	sbbq	56(%rdx), %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r11d, 16(%rdi)
	shrq	$32, %r11
	movl	%r11d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%esi, 48(%rdi)
	shrq	$32, %rsi
	movl	%esi, 52(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 56(%rdi)
	movl	%ecx, 60(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end63:
	.size	mclb_subNF16, .Lfunc_end63-mclb_subNF16
                                        # -- End function
	.globl	mclb_add17                      # -- Begin function mclb_add17
	.p2align	4, 0x90
	.type	mclb_add17,@function
mclb_add17:                             # @mclb_add17
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %r15
	adcq	16(%rsi), %r15
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r11
	adcq	32(%rsi), %r11
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r9
	adcq	48(%rsi), %r9
	movq	56(%rdx), %r8
	adcq	56(%rsi), %r8
	movl	64(%rsi), %esi
	movl	64(%rdx), %eax
	adcq	%rsi, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r15d, 16(%rdi)
	shrq	$32, %r15
	movl	%r15d, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%eax, 64(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end64:
	.size	mclb_add17, .Lfunc_end64-mclb_add17
                                        # -- End function
	.globl	mclb_sub17                      # -- Begin function mclb_sub17
	.p2align	4, 0x90
	.type	mclb_sub17,@function
mclb_sub17:                             # @mclb_sub17
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r15
	sbbq	16(%rdx), %r15
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r11
	sbbq	32(%rdx), %r11
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r9
	sbbq	48(%rdx), %r9
	movq	56(%rsi), %r8
	sbbq	56(%rdx), %r8
	movl	64(%rsi), %eax
	movl	64(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r15d, 16(%rdi)
	shrq	$32, %r15
	movl	%r15d, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%eax, 64(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end65:
	.size	mclb_sub17, .Lfunc_end65-mclb_sub17
                                        # -- End function
	.globl	mclb_addNF17                    # -- Begin function mclb_addNF17
	.p2align	4, 0x90
	.type	mclb_addNF17,@function
mclb_addNF17:                           # @mclb_addNF17
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	56(%rdx), %r8
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r11
	adcq	32(%rsi), %r11
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r9
	adcq	48(%rsi), %r9
	adcq	56(%rsi), %r8
	movl	64(%rsi), %esi
	movl	64(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%edx, 64(%rdi)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end66:
	.size	mclb_addNF17, .Lfunc_end66-mclb_addNF17
                                        # -- End function
	.globl	mclb_subNF17                    # -- Begin function mclb_subNF17
	.p2align	4, 0x90
	.type	mclb_subNF17,@function
mclb_subNF17:                           # @mclb_subNF17
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rbx
	sbbq	16(%rdx), %rbx
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r11
	sbbq	32(%rdx), %r11
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r9
	sbbq	48(%rdx), %r9
	movq	56(%rsi), %r8
	sbbq	56(%rdx), %r8
	movl	64(%rsi), %esi
	movl	64(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%esi, 64(%rdi)
	movl	%esi, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end67:
	.size	mclb_subNF17, .Lfunc_end67-mclb_subNF17
                                        # -- End function
	.globl	mclb_add18                      # -- Begin function mclb_add18
	.p2align	4, 0x90
	.type	mclb_add18,@function
mclb_add18:                             # @mclb_add18
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	64(%rdx), %r8
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r11
	adcq	32(%rsi), %r11
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r9
	adcq	48(%rsi), %r9
	movq	56(%rdx), %rdx
	adcq	56(%rsi), %rdx
	adcq	64(%rsi), %r8
	setb	%sil
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%edx, 56(%rdi)
	shrq	$32, %rdx
	movl	%edx, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movzbl	%sil, %eax
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end68:
	.size	mclb_add18, .Lfunc_end68-mclb_add18
                                        # -- End function
	.globl	mclb_sub18                      # -- Begin function mclb_sub18
	.p2align	4, 0x90
	.type	mclb_sub18,@function
mclb_sub18:                             # @mclb_sub18
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rbx
	xorl	%eax, %eax
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r15
	sbbq	16(%rdx), %r15
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r11
	sbbq	32(%rdx), %r11
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r9
	sbbq	48(%rdx), %r9
	movq	56(%rsi), %r8
	sbbq	56(%rdx), %r8
	movq	64(%rsi), %rsi
	sbbq	64(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r15d, 16(%rdi)
	shrq	$32, %r15
	movl	%r15d, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%esi, 64(%rdi)
	shrq	$32, %rsi
	movl	%esi, 68(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end69:
	.size	mclb_sub18, .Lfunc_end69-mclb_sub18
                                        # -- End function
	.globl	mclb_addNF18                    # -- Begin function mclb_addNF18
	.p2align	4, 0x90
	.type	mclb_addNF18,@function
mclb_addNF18:                           # @mclb_addNF18
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %r14
	adcq	24(%rsi), %r14
	movq	32(%rdx), %r11
	adcq	32(%rsi), %r11
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r9
	adcq	48(%rsi), %r9
	movq	56(%rdx), %r8
	adcq	56(%rsi), %r8
	movq	64(%rdx), %rdx
	adcq	64(%rsi), %rdx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movl	%edx, 64(%rdi)
	shrq	$32, %rdx
	movl	%edx, 68(%rdi)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end70:
	.size	mclb_addNF18, .Lfunc_end70-mclb_addNF18
                                        # -- End function
	.globl	mclb_subNF18                    # -- Begin function mclb_subNF18
	.p2align	4, 0x90
	.type	mclb_subNF18,@function
mclb_subNF18:                           # @mclb_subNF18
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r15
	sbbq	16(%rdx), %r15
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r11
	sbbq	32(%rdx), %r11
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r9
	sbbq	48(%rdx), %r9
	movq	56(%rsi), %r8
	sbbq	56(%rdx), %r8
	movq	64(%rsi), %rax
	sbbq	64(%rdx), %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r15d, 16(%rdi)
	shrq	$32, %r15
	movl	%r15d, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%r8d, 56(%rdi)
	shrq	$32, %r8
	movl	%r8d, 60(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 64(%rdi)
	movl	%ecx, 68(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end71:
	.size	mclb_subNF18, .Lfunc_end71-mclb_subNF18
                                        # -- End function
	.globl	mclb_add19                      # -- Begin function mclb_add19
	.p2align	4, 0x90
	.type	mclb_add19,@function
mclb_add19:                             # @mclb_add19
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	64(%rdx), %r8
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %r15
	adcq	24(%rsi), %r15
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r11
	adcq	40(%rsi), %r11
	movq	48(%rdx), %r10
	adcq	48(%rsi), %r10
	movq	56(%rdx), %r9
	adcq	56(%rsi), %r9
	adcq	64(%rsi), %r8
	movl	72(%rsi), %esi
	movl	72(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%edx, 72(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end72:
	.size	mclb_add19, .Lfunc_end72-mclb_add19
                                        # -- End function
	.globl	mclb_sub19                      # -- Begin function mclb_sub19
	.p2align	4, 0x90
	.type	mclb_sub19,@function
mclb_sub19:                             # @mclb_sub19
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movl	72(%rsi), %eax
	movq	64(%rsi), %r8
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r15
	sbbq	16(%rdx), %r15
	movq	24(%rsi), %r14
	sbbq	24(%rdx), %r14
	movq	32(%rsi), %r11
	sbbq	32(%rdx), %r11
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r9
	sbbq	48(%rdx), %r9
	movq	56(%rsi), %rsi
	sbbq	56(%rdx), %rsi
	sbbq	64(%rdx), %r8
	movl	72(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r15d, 16(%rdi)
	shrq	$32, %r15
	movl	%r15d, 20(%rdi)
	movl	%r14d, 24(%rdi)
	shrq	$32, %r14
	movl	%r14d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r9d, 48(%rdi)
	shrq	$32, %r9
	movl	%r9d, 52(%rdi)
	movl	%esi, 56(%rdi)
	shrq	$32, %rsi
	movl	%esi, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%eax, 72(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end73:
	.size	mclb_sub19, .Lfunc_end73-mclb_sub19
                                        # -- End function
	.globl	mclb_addNF19                    # -- Begin function mclb_addNF19
	.p2align	4, 0x90
	.type	mclb_addNF19,@function
mclb_addNF19:                           # @mclb_addNF19
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %r15
	adcq	24(%rsi), %r15
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r11
	adcq	40(%rsi), %r11
	movq	48(%rdx), %r10
	adcq	48(%rsi), %r10
	movq	56(%rdx), %r9
	adcq	56(%rsi), %r9
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movl	72(%rsi), %esi
	movl	72(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%edx, 72(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end74:
	.size	mclb_addNF19, .Lfunc_end74-mclb_addNF19
                                        # -- End function
	.globl	mclb_subNF19                    # -- Begin function mclb_subNF19
	.p2align	4, 0x90
	.type	mclb_subNF19,@function
mclb_subNF19:                           # @mclb_subNF19
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movl	72(%rsi), %r8d
	movq	64(%rsi), %r9
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	24(%rsi), %r15
	sbbq	24(%rdx), %r15
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r10
	sbbq	48(%rdx), %r10
	movq	56(%rsi), %rsi
	sbbq	56(%rdx), %rsi
	sbbq	64(%rdx), %r9
	movl	72(%rdx), %edx
	sbbq	%rdx, %r8
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%esi, 56(%rdi)
	shrq	$32, %rsi
	movl	%esi, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	movl	%r8d, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end75:
	.size	mclb_subNF19, .Lfunc_end75-mclb_subNF19
                                        # -- End function
	.globl	mclb_add20                      # -- Begin function mclb_add20
	.p2align	4, 0x90
	.type	mclb_add20,@function
mclb_add20:                             # @mclb_add20
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %r15
	adcq	24(%rsi), %r15
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r11
	adcq	40(%rsi), %r11
	movq	48(%rdx), %r10
	adcq	48(%rsi), %r10
	movq	56(%rdx), %r9
	adcq	56(%rsi), %r9
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%edx, 72(%rdi)
	shrq	$32, %rdx
	movl	%edx, 76(%rdi)
	movzbl	%sil, %eax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end76:
	.size	mclb_add20, .Lfunc_end76-mclb_add20
                                        # -- End function
	.globl	mclb_sub20                      # -- Begin function mclb_sub20
	.p2align	4, 0x90
	.type	mclb_sub20,@function
mclb_sub20:                             # @mclb_sub20
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r12
	sbbq	16(%rdx), %r12
	movq	24(%rsi), %r15
	sbbq	24(%rdx), %r15
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r10
	sbbq	48(%rdx), %r10
	movq	56(%rsi), %r9
	sbbq	56(%rdx), %r9
	movq	64(%rsi), %r8
	sbbq	64(%rdx), %r8
	movq	72(%rsi), %rsi
	sbbq	72(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r12d, 16(%rdi)
	shrq	$32, %r12
	movl	%r12d, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%esi, 72(%rdi)
	shrq	$32, %rsi
	movl	%esi, 76(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end77:
	.size	mclb_sub20, .Lfunc_end77-mclb_sub20
                                        # -- End function
	.globl	mclb_addNF20                    # -- Begin function mclb_addNF20
	.p2align	4, 0x90
	.type	mclb_addNF20,@function
mclb_addNF20:                           # @mclb_addNF20
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %r15
	adcq	24(%rsi), %r15
	movq	32(%rdx), %r14
	adcq	32(%rsi), %r14
	movq	40(%rdx), %r11
	adcq	40(%rsi), %r11
	movq	48(%rdx), %r10
	adcq	48(%rsi), %r10
	movq	56(%rdx), %r9
	adcq	56(%rsi), %r9
	movq	64(%rdx), %r8
	adcq	64(%rsi), %r8
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%edx, 72(%rdi)
	shrq	$32, %rdx
	movl	%edx, 76(%rdi)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end78:
	.size	mclb_addNF20, .Lfunc_end78-mclb_addNF20
                                        # -- End function
	.globl	mclb_subNF20                    # -- Begin function mclb_subNF20
	.p2align	4, 0x90
	.type	mclb_subNF20,@function
mclb_subNF20:                           # @mclb_subNF20
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r12
	sbbq	16(%rdx), %r12
	movq	24(%rsi), %r15
	sbbq	24(%rdx), %r15
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r10
	sbbq	48(%rdx), %r10
	movq	56(%rsi), %r9
	sbbq	56(%rdx), %r9
	movq	64(%rsi), %r8
	sbbq	64(%rdx), %r8
	movq	72(%rsi), %rax
	sbbq	72(%rdx), %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r12d, 16(%rdi)
	shrq	$32, %r12
	movl	%r12d, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 72(%rdi)
	movl	%ecx, 76(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end79:
	.size	mclb_subNF20, .Lfunc_end79-mclb_subNF20
                                        # -- End function
	.globl	mclb_add21                      # -- Begin function mclb_add21
	.p2align	4, 0x90
	.type	mclb_add21,@function
mclb_add21:                             # @mclb_add21
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %r13
	adcq	16(%rsi), %r13
	movq	24(%rdx), %r12
	adcq	24(%rsi), %r12
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r14
	adcq	40(%rsi), %r14
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r10
	adcq	56(%rsi), %r10
	movq	64(%rdx), %r9
	adcq	64(%rsi), %r9
	movq	72(%rdx), %r8
	adcq	72(%rsi), %r8
	movl	80(%rsi), %esi
	movl	80(%rdx), %eax
	adcq	%rsi, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r13d, 16(%rdi)
	shrq	$32, %r13
	movl	%r13d, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movl	%eax, 80(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end80:
	.size	mclb_add21, .Lfunc_end80-mclb_add21
                                        # -- End function
	.globl	mclb_sub21                      # -- Begin function mclb_sub21
	.p2align	4, 0x90
	.type	mclb_sub21,@function
mclb_sub21:                             # @mclb_sub21
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	80(%rsi), %eax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r12
	sbbq	16(%rdx), %r12
	movq	24(%rsi), %r15
	sbbq	24(%rdx), %r15
	movq	32(%rsi), %r14
	sbbq	32(%rdx), %r14
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r10
	sbbq	48(%rdx), %r10
	movq	56(%rsi), %r9
	sbbq	56(%rdx), %r9
	movq	64(%rsi), %r8
	sbbq	64(%rdx), %r8
	movq	72(%rsi), %rsi
	sbbq	72(%rdx), %rsi
	movl	80(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r12d, 16(%rdi)
	shrq	$32, %r12
	movl	%r12d, 20(%rdi)
	movl	%r15d, 24(%rdi)
	shrq	$32, %r15
	movl	%r15d, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r9d, 56(%rdi)
	shrq	$32, %r9
	movl	%r9d, 60(%rdi)
	movl	%r8d, 64(%rdi)
	shrq	$32, %r8
	movl	%r8d, 68(%rdi)
	movl	%esi, 72(%rdi)
	shrq	$32, %rsi
	movl	%esi, 76(%rdi)
	movl	%eax, 80(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end81:
	.size	mclb_sub21, .Lfunc_end81-mclb_sub21
                                        # -- End function
	.globl	mclb_addNF21                    # -- Begin function mclb_addNF21
	.p2align	4, 0x90
	.type	mclb_addNF21,@function
mclb_addNF21:                           # @mclb_addNF21
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r12
	adcq	24(%rsi), %r12
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r14
	adcq	40(%rsi), %r14
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r10
	adcq	56(%rsi), %r10
	movq	64(%rdx), %r9
	adcq	64(%rsi), %r9
	movq	72(%rdx), %r8
	adcq	72(%rsi), %r8
	movl	80(%rsi), %esi
	movl	80(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movl	%edx, 80(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end82:
	.size	mclb_addNF21, .Lfunc_end82-mclb_addNF21
                                        # -- End function
	.globl	mclb_subNF21                    # -- Begin function mclb_subNF21
	.p2align	4, 0x90
	.type	mclb_subNF21,@function
mclb_subNF21:                           # @mclb_subNF21
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	80(%rsi), %r8d
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %rax
	sbbq	16(%rdx), %rax
	movq	24(%rsi), %r12
	sbbq	24(%rdx), %r12
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r14
	sbbq	40(%rdx), %r14
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r10
	sbbq	56(%rdx), %r10
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %rsi
	sbbq	72(%rdx), %rsi
	movl	80(%rdx), %edx
	sbbq	%rdx, %r8
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%esi, 72(%rdi)
	shrq	$32, %rsi
	movl	%esi, 76(%rdi)
	movl	%r8d, 80(%rdi)
	movl	%r8d, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end83:
	.size	mclb_subNF21, .Lfunc_end83-mclb_subNF21
                                        # -- End function
	.globl	mclb_add22                      # -- Begin function mclb_add22
	.p2align	4, 0x90
	.type	mclb_add22,@function
mclb_add22:                             # @mclb_add22
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %r12
	adcq	24(%rsi), %r12
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r14
	adcq	40(%rsi), %r14
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r10
	adcq	56(%rsi), %r10
	movq	64(%rdx), %r9
	adcq	64(%rsi), %r9
	movq	72(%rdx), %r8
	adcq	72(%rsi), %r8
	movq	80(%rdx), %rdx
	adcq	80(%rsi), %rdx
	setb	%sil
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movl	%edx, 80(%rdi)
	shrq	$32, %rdx
	movl	%edx, 84(%rdi)
	movzbl	%sil, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end84:
	.size	mclb_add22, .Lfunc_end84-mclb_add22
                                        # -- End function
	.globl	mclb_sub22                      # -- Begin function mclb_sub22
	.p2align	4, 0x90
	.type	mclb_sub22,@function
mclb_sub22:                             # @mclb_sub22
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rbx
	xorl	%eax, %eax
	subq	(%rdx), %rbx
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r13
	sbbq	16(%rdx), %r13
	movq	24(%rsi), %r12
	sbbq	24(%rdx), %r12
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r14
	sbbq	40(%rdx), %r14
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r10
	sbbq	56(%rdx), %r10
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %r8
	sbbq	72(%rdx), %r8
	movq	80(%rsi), %rsi
	sbbq	80(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r13d, 16(%rdi)
	shrq	$32, %r13
	movl	%r13d, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movl	%esi, 80(%rdi)
	shrq	$32, %rsi
	movl	%esi, 84(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end85:
	.size	mclb_sub22, .Lfunc_end85-mclb_sub22
                                        # -- End function
	.globl	mclb_addNF22                    # -- Begin function mclb_addNF22
	.p2align	4, 0x90
	.type	mclb_addNF22,@function
mclb_addNF22:                           # @mclb_addNF22
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	80(%rdx), %r8
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rbx
	adcq	8(%rsi), %rbx
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r12
	adcq	24(%rsi), %r12
	movq	32(%rdx), %r15
	adcq	32(%rsi), %r15
	movq	40(%rdx), %r14
	adcq	40(%rsi), %r14
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r10
	adcq	56(%rsi), %r10
	movq	64(%rdx), %r9
	adcq	64(%rsi), %r9
	movq	72(%rdx), %rdx
	adcq	72(%rsi), %rdx
	adcq	80(%rsi), %r8
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%edx, 72(%rdi)
	shrq	$32, %rdx
	movl	%edx, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end86:
	.size	mclb_addNF22, .Lfunc_end86-mclb_addNF22
                                        # -- End function
	.globl	mclb_subNF22                    # -- Begin function mclb_subNF22
	.p2align	4, 0x90
	.type	mclb_subNF22,@function
mclb_subNF22:                           # @mclb_subNF22
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r13
	sbbq	16(%rdx), %r13
	movq	24(%rsi), %r12
	sbbq	24(%rdx), %r12
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r14
	sbbq	40(%rdx), %r14
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r10
	sbbq	56(%rdx), %r10
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %r8
	sbbq	72(%rdx), %r8
	movq	80(%rsi), %rax
	sbbq	80(%rdx), %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r13d, 16(%rdi)
	shrq	$32, %r13
	movl	%r13d, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 80(%rdi)
	movl	%ecx, 84(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rbp
	adcq	8(%rsi), %rbp
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r13
	adcq	24(%rsi), %r13
	movq	32(%rdx), %r12
	adcq	32(%rsi), %r12
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r14
	adcq	48(%rsi), %r14
	movq	56(%rdx), %r11
	adcq	56(%rsi), %r11
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %r9
	adcq	72(%rsi), %r9
	movq	80(%rdx), %r8
	adcq	80(%rsi), %r8
	movl	88(%rsi), %esi
	movl	88(%rdx), %eax
	adcq	%rsi, %rax
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbp
	sbbq	8(%rdx), %rbp
	movq	16(%rsi), %rbx
	sbbq	16(%rdx), %rbx
	movq	24(%rsi), %r13
	sbbq	24(%rdx), %r13
	movq	32(%rsi), %r12
	sbbq	32(%rdx), %r12
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r14
	sbbq	48(%rdx), %r14
	movq	56(%rsi), %r11
	sbbq	56(%rdx), %r11
	movq	64(%rsi), %r10
	sbbq	64(%rdx), %r10
	movq	72(%rsi), %r9
	sbbq	72(%rdx), %r9
	movq	80(%rsi), %r8
	sbbq	80(%rdx), %r8
	movl	88(%rsi), %eax
	movl	88(%rdx), %edx
	sbbq	%rdx, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %r13
	adcq	24(%rsi), %r13
	movq	32(%rdx), %r12
	adcq	32(%rsi), %r12
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r14
	adcq	48(%rsi), %r14
	movq	56(%rdx), %r11
	adcq	56(%rsi), %r11
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %r9
	adcq	72(%rsi), %r9
	movq	80(%rdx), %r8
	adcq	80(%rsi), %r8
	movl	88(%rsi), %esi
	movl	88(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%edx, 88(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end90:
	.size	mclb_addNF23, .Lfunc_end90-mclb_addNF23
                                        # -- End function
	.globl	mclb_subNF23                    # -- Begin function mclb_subNF23
	.p2align	4, 0x90
	.type	mclb_subNF23,@function
mclb_subNF23:                           # @mclb_subNF23
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rbx
	sbbq	16(%rdx), %rbx
	movq	24(%rsi), %r13
	sbbq	24(%rdx), %r13
	movq	32(%rsi), %r12
	sbbq	32(%rdx), %r12
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r14
	sbbq	48(%rdx), %r14
	movq	56(%rsi), %r11
	sbbq	56(%rdx), %r11
	movq	64(%rsi), %r10
	sbbq	64(%rdx), %r10
	movq	72(%rsi), %r9
	sbbq	72(%rdx), %r9
	movq	80(%rsi), %r8
	sbbq	80(%rdx), %r8
	movl	88(%rsi), %esi
	movl	88(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%esi, 88(%rdi)
	movl	%esi, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end91:
	.size	mclb_subNF23, .Lfunc_end91-mclb_subNF23
                                        # -- End function
	.globl	mclb_add24                      # -- Begin function mclb_add24
	.p2align	4, 0x90
	.type	mclb_add24,@function
mclb_add24:                             # @mclb_add24
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %r13
	adcq	24(%rsi), %r13
	movq	32(%rdx), %r12
	adcq	32(%rsi), %r12
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r14
	adcq	48(%rsi), %r14
	movq	56(%rdx), %r11
	adcq	56(%rsi), %r11
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %r9
	adcq	72(%rsi), %r9
	movq	80(%rdx), %r8
	adcq	80(%rsi), %r8
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	setb	%sil
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%edx, 88(%rdi)
	shrq	$32, %rdx
	movl	%edx, 92(%rdi)
	movzbl	%sil, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	movq	(%rsi), %rcx
	xorl	%eax, %eax
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbp
	sbbq	8(%rdx), %rbp
	movq	16(%rsi), %rbx
	sbbq	16(%rdx), %rbx
	movq	24(%rsi), %r13
	sbbq	24(%rdx), %r13
	movq	32(%rsi), %r12
	sbbq	32(%rdx), %r12
	movq	40(%rsi), %r15
	sbbq	40(%rdx), %r15
	movq	48(%rsi), %r14
	sbbq	48(%rdx), %r14
	movq	56(%rsi), %r11
	sbbq	56(%rdx), %r11
	movq	64(%rsi), %r10
	sbbq	64(%rdx), %r10
	movq	72(%rsi), %r9
	sbbq	72(%rdx), %r9
	movq	80(%rsi), %r8
	sbbq	80(%rdx), %r8
	movq	88(%rsi), %rsi
	sbbq	88(%rdx), %rsi
	sbbq	%rax, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%esi, 88(%rdi)
	shrq	$32, %rsi
	movl	%esi, 92(%rdi)
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %rbx
	addq	(%rsi), %rbx
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %rax
	adcq	16(%rsi), %rax
	movq	24(%rdx), %r13
	adcq	24(%rsi), %r13
	movq	32(%rdx), %r12
	adcq	32(%rsi), %r12
	movq	40(%rdx), %r15
	adcq	40(%rsi), %r15
	movq	48(%rdx), %r14
	adcq	48(%rsi), %r14
	movq	56(%rdx), %r11
	adcq	56(%rsi), %r11
	movq	64(%rdx), %r10
	adcq	64(%rsi), %r10
	movq	72(%rdx), %r9
	adcq	72(%rsi), %r9
	movq	80(%rdx), %r8
	adcq	80(%rsi), %r8
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%eax, 16(%rdi)
	shrq	$32, %rax
	movl	%eax, 20(%rdi)
	movl	%r13d, 24(%rdi)
	shrq	$32, %r13
	movl	%r13d, 28(%rdi)
	movl	%r12d, 32(%rdi)
	shrq	$32, %r12
	movl	%r12d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r14d, 48(%rdi)
	shrq	$32, %r14
	movl	%r14d, 52(%rdi)
	movl	%r11d, 56(%rdi)
	shrq	$32, %r11
	movl	%r11d, 60(%rdi)
	movl	%r10d, 64(%rdi)
	shrq	$32, %r10
	movl	%r10d, 68(%rdi)
	movl	%r9d, 72(%rdi)
	shrq	$32, %r9
	movl	%r9d, 76(%rdi)
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%edx, 88(%rdi)
	shrq	$32, %rdx
	movl	%edx, 92(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end94:
	.size	mclb_addNF24, .Lfunc_end94-mclb_addNF24
                                        # -- End function
	.globl	mclb_subNF24                    # -- Begin function mclb_subNF24
	.p2align	4, 0x90
	.type	mclb_subNF24,@function
mclb_subNF24:                           # @mclb_subNF24
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	88(%rsi), %rax
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %rbx
	sbbq	8(%rdx), %rbx
	movq	16(%rsi), %r13
	sbbq	16(%rdx), %r13
	movq	24(%rsi), %r12
	sbbq	24(%rdx), %r12
	movq	32(%rsi), %r15
	sbbq	32(%rdx), %r15
	movq	40(%rsi), %r14
	sbbq	40(%rdx), %r14
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r10
	sbbq	56(%rdx), %r10
	movq	64(%rsi), %r9
	sbbq	64(%rdx), %r9
	movq	72(%rsi), %r8
	sbbq	72(%rdx), %r8
	movq	80(%rsi), %rsi
	sbbq	80(%rdx), %rsi
	sbbq	88(%rdx), %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebx, 8(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 12(%rdi)
	movl	%r13d, 16(%rdi)
	shrq	$32, %r13
	movl	%r13d, 20(%rdi)
	movl	%r12d, 24(%rdi)
	shrq	$32, %r12
	movl	%r12d, 28(%rdi)
	movl	%r15d, 32(%rdi)
	shrq	$32, %r15
	movl	%r15d, 36(%rdi)
	movl	%r14d, 40(%rdi)
	shrq	$32, %r14
	movl	%r14d, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r10d, 56(%rdi)
	shrq	$32, %r10
	movl	%r10d, 60(%rdi)
	movl	%r9d, 64(%rdi)
	shrq	$32, %r9
	movl	%r9d, 68(%rdi)
	movl	%r8d, 72(%rdi)
	shrq	$32, %r8
	movl	%r8d, 76(%rdi)
	movl	%esi, 80(%rdi)
	shrq	$32, %rsi
	movl	%esi, 84(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 88(%rdi)
	movl	%ecx, 92(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	movq	(%rdx), %rbp
	addq	(%rsi), %rbp
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	32(%rdx), %r13
	adcq	32(%rsi), %r13
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r15
	adcq	48(%rsi), %r15
	movq	56(%rdx), %r14
	adcq	56(%rsi), %r14
	movq	64(%rdx), %r11
	adcq	64(%rsi), %r11
	movq	72(%rdx), %r10
	adcq	72(%rsi), %r10
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	movq	88(%rdx), %r8
	adcq	88(%rsi), %r8
	movl	96(%rsi), %esi
	movl	96(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%edx, 96(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	16(%rsi), %rbp
	sbbq	16(%rdx), %rbp
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	32(%rsi), %r13
	sbbq	32(%rdx), %r13
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r15
	sbbq	48(%rdx), %r15
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %r10
	sbbq	72(%rdx), %r10
	movq	80(%rsi), %r9
	sbbq	80(%rdx), %r9
	movq	88(%rsi), %r8
	sbbq	88(%rdx), %r8
	movl	96(%rsi), %esi
	movl	96(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%esi, 96(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	88(%rdx), %r8
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbp
	adcq	8(%rsi), %rbp
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	32(%rdx), %r13
	adcq	32(%rsi), %r13
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r15
	adcq	48(%rsi), %r15
	movq	56(%rdx), %r14
	adcq	56(%rsi), %r14
	movq	64(%rdx), %r11
	adcq	64(%rsi), %r11
	movq	72(%rdx), %r10
	adcq	72(%rsi), %r10
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	adcq	88(%rsi), %r8
	movl	96(%rsi), %esi
	movl	96(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%eax, 24(%rdi)
	shrq	$32, %rax
	movl	%eax, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%edx, 96(%rdi)
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
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rbp
	sbbq	8(%rdx), %rbp
	movq	16(%rsi), %rcx
	sbbq	16(%rdx), %rcx
	movq	24(%rsi), %rax
	sbbq	24(%rdx), %rax
	movq	32(%rsi), %r13
	sbbq	32(%rdx), %r13
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r15
	sbbq	48(%rdx), %r15
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %r10
	sbbq	72(%rdx), %r10
	movq	80(%rsi), %r9
	sbbq	80(%rdx), %r9
	movq	88(%rsi), %r8
	sbbq	88(%rdx), %r8
	movl	96(%rsi), %esi
	movl	96(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%eax, 24(%rdi)
	shrq	$32, %rax
	movl	%eax, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%esi, 96(%rdi)
	movl	%esi, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	96(%rdx), %r8
	movq	(%rdx), %rax
	addq	(%rsi), %rax
	movq	8(%rdx), %rbp
	adcq	8(%rsi), %rbp
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %rcx
	adcq	24(%rsi), %rcx
	movq	32(%rdx), %r13
	adcq	32(%rsi), %r13
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r15
	adcq	48(%rsi), %r15
	movq	56(%rdx), %r14
	adcq	56(%rsi), %r14
	movq	64(%rdx), %r11
	adcq	64(%rsi), %r11
	movq	72(%rdx), %r10
	adcq	72(%rsi), %r10
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	movq	88(%rdx), %rdx
	adcq	88(%rsi), %rdx
	adcq	96(%rsi), %r8
	setb	%sil
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%edx, 88(%rdi)
	shrq	$32, %rdx
	movl	%edx, 92(%rdi)
	movl	%r8d, 96(%rdi)
	shrq	$32, %r8
	movl	%r8d, 100(%rdi)
	movzbl	%sil, %eax
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
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	16(%rsi), %rbp
	sbbq	16(%rdx), %rbp
	movq	24(%rsi), %rcx
	sbbq	24(%rdx), %rcx
	movq	32(%rsi), %r13
	sbbq	32(%rdx), %r13
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r15
	sbbq	48(%rdx), %r15
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %r10
	sbbq	72(%rdx), %r10
	movq	80(%rsi), %r9
	sbbq	80(%rdx), %r9
	movq	88(%rsi), %r8
	sbbq	88(%rdx), %r8
	movq	96(%rsi), %rsi
	sbbq	96(%rdx), %rsi
	movl	$0, %edx
	sbbq	%rdx, %rdx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%esi, 96(%rdi)
	shrq	$32, %rsi
	movl	%esi, 100(%rdi)
	movq	%rdx, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %rbp
	adcq	8(%rsi), %rbp
	movq	16(%rdx), %rbx
	adcq	16(%rsi), %rbx
	movq	24(%rdx), %rax
	adcq	24(%rsi), %rax
	movq	32(%rdx), %r13
	adcq	32(%rsi), %r13
	movq	40(%rdx), %r12
	adcq	40(%rsi), %r12
	movq	48(%rdx), %r15
	adcq	48(%rsi), %r15
	movq	56(%rdx), %r14
	adcq	56(%rsi), %r14
	movq	64(%rdx), %r11
	adcq	64(%rsi), %r11
	movq	72(%rdx), %r10
	adcq	72(%rsi), %r10
	movq	80(%rdx), %r9
	adcq	80(%rsi), %r9
	movq	88(%rdx), %r8
	adcq	88(%rsi), %r8
	movq	96(%rdx), %rdx
	adcq	96(%rsi), %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%ebp, 8(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%eax, 24(%rdi)
	shrq	$32, %rax
	movl	%eax, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%r8d, 88(%rdi)
	shrq	$32, %r8
	movl	%r8d, 92(%rdi)
	movl	%edx, 96(%rdi)
	shrq	$32, %rdx
	movl	%edx, 100(%rdi)
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
	movq	(%rsi), %rbp
	subq	(%rdx), %rbp
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rbx
	sbbq	16(%rdx), %rbx
	movq	24(%rsi), %r8
	sbbq	24(%rdx), %r8
	movq	32(%rsi), %r13
	sbbq	32(%rdx), %r13
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r15
	sbbq	48(%rdx), %r15
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %r10
	sbbq	72(%rdx), %r10
	movq	80(%rsi), %r9
	sbbq	80(%rdx), %r9
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r8d, 24(%rdi)
	shrq	$32, %r8
	movl	%r8d, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	movl	%ecx, 88(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 92(%rdi)
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	%eax, 96(%rdi)
	movl	%ecx, 100(%rdi)
	shrq	$63, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	88(%rdx), %r9
	movq	(%rdx), %rbp
	addq	(%rsi), %rbp
	movq	8(%rdx), %rax
	adcq	8(%rsi), %rax
	movq	16(%rdx), %rcx
	adcq	16(%rsi), %rcx
	movq	24(%rdx), %rbx
	adcq	24(%rsi), %rbx
	movq	32(%rdx), %r8
	adcq	32(%rsi), %r8
	movq	40(%rdx), %r13
	adcq	40(%rsi), %r13
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r15
	adcq	56(%rsi), %r15
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %r11
	adcq	72(%rsi), %r11
	movq	80(%rdx), %r10
	adcq	80(%rsi), %r10
	adcq	88(%rsi), %r9
	movq	%r9, -8(%rsp)                   # 8-byte Spill
	movq	96(%rdx), %r9
	adcq	96(%rsi), %r9
	movl	104(%rsi), %esi
	movl	104(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r8d, 32(%rdi)
	shrq	$32, %r8
	movl	%r8d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	movl	%eax, 92(%rdi)
	movl	%r9d, 96(%rdi)
	shrq	$32, %r9
	movl	%r9d, 100(%rdi)
	movl	%edx, 104(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movl	104(%rsi), %ecx
	movq	80(%rsi), %r9
	movq	(%rsi), %rbx
	subq	(%rdx), %rbx
	movq	8(%rsi), %rax
	sbbq	8(%rdx), %rax
	movq	16(%rsi), %rbp
	sbbq	16(%rdx), %rbp
	movq	24(%rsi), %r8
	sbbq	24(%rdx), %r8
	movq	32(%rsi), %r13
	sbbq	32(%rdx), %r13
	movq	40(%rsi), %r12
	sbbq	40(%rdx), %r12
	movq	48(%rsi), %r15
	sbbq	48(%rdx), %r15
	movq	56(%rsi), %r14
	sbbq	56(%rdx), %r14
	movq	64(%rsi), %r11
	sbbq	64(%rdx), %r11
	movq	72(%rsi), %r10
	sbbq	72(%rdx), %r10
	sbbq	80(%rdx), %r9
	movq	%r9, -8(%rsp)                   # 8-byte Spill
	movq	96(%rsi), %r9
	movq	88(%rsi), %rsi
	sbbq	88(%rdx), %rsi
	sbbq	96(%rdx), %r9
	movl	104(%rdx), %edx
	sbbq	%rdx, %rcx
	movl	%ebx, (%rdi)
	shrq	$32, %rbx
	movl	%ebx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%r8d, 24(%rdi)
	shrq	$32, %r8
	movl	%r8d, 28(%rdi)
	movl	%r13d, 32(%rdi)
	shrq	$32, %r13
	movl	%r13d, 36(%rdi)
	movl	%r12d, 40(%rdi)
	shrq	$32, %r12
	movl	%r12d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r11d, 64(%rdi)
	shrq	$32, %r11
	movl	%r11d, 68(%rdi)
	movl	%r10d, 72(%rdi)
	shrq	$32, %r10
	movl	%r10d, 76(%rdi)
	movq	-8(%rsp), %r8                   # 8-byte Reload
	movl	%r8d, 80(%rdi)
	shrq	$32, %r8
	movl	%r8d, 84(%rdi)
	movl	%esi, 88(%rdi)
	shrq	$32, %rsi
	movl	%esi, 92(%rdi)
	movl	%r9d, 96(%rdi)
	shrq	$32, %r9
	movl	%r9d, 100(%rdi)
	movq	%rcx, %rax
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %rbx
	adcq	24(%rsi), %rbx
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r13
	adcq	40(%rsi), %r13
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r15
	adcq	56(%rsi), %r15
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %r11
	adcq	72(%rsi), %r11
	movq	80(%rdx), %r10
	adcq	80(%rsi), %r10
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	movq	96(%rdx), %rbp
	adcq	96(%rsi), %rbp
	movl	104(%rsi), %esi
	movl	104(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 88(%rdi)
	shrq	$32, %r9
	movl	%r9d, 92(%rdi)
	movl	%ebp, 96(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 100(%rdi)
	movl	%edx, 104(%rdi)
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
	movl	104(%rsi), %r8d
	movq	80(%rsi), %r10
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %rbp
	sbbq	16(%rdx), %rbp
	movq	24(%rsi), %rbx
	sbbq	24(%rdx), %rbx
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r13
	sbbq	40(%rdx), %r13
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r15
	sbbq	56(%rdx), %r15
	movq	64(%rsi), %r14
	sbbq	64(%rdx), %r14
	movq	72(%rsi), %r11
	sbbq	72(%rdx), %r11
	sbbq	80(%rdx), %r10
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %r10
	movq	88(%rsi), %rsi
	sbbq	88(%rdx), %rsi
	sbbq	96(%rdx), %r10
	movl	104(%rdx), %edx
	sbbq	%rdx, %r8
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 80(%rdi)
	shrq	$32, %r9
	movl	%r9d, 84(%rdi)
	movl	%esi, 88(%rdi)
	shrq	$32, %rsi
	movl	%esi, 92(%rdi)
	movl	%r10d, 96(%rdi)
	shrq	$32, %r10
	movl	%r10d, 100(%rdi)
	movl	%r8d, 104(%rdi)
	movl	%r8d, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %rbx
	adcq	24(%rsi), %rbx
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r13
	adcq	40(%rsi), %r13
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r15
	adcq	56(%rsi), %r15
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %r11
	adcq	72(%rsi), %r11
	movq	80(%rdx), %r10
	adcq	80(%rsi), %r10
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	movq	96(%rdx), %rbp
	adcq	96(%rsi), %rbp
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	movl	%eax, (%rdi)
	setb	%sil
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 88(%rdi)
	shrq	$32, %r9
	movl	%r9d, 92(%rdi)
	movl	%ebp, 96(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 100(%rdi)
	movl	%edx, 104(%rdi)
	shrq	$32, %rdx
	movl	%edx, 108(%rdi)
	movzbl	%sil, %eax
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
	movq	8(%rsi), %rcx
	sbbq	8(%rdx), %rcx
	movq	16(%rsi), %r8
	sbbq	16(%rdx), %r8
	movq	24(%rsi), %rbx
	sbbq	24(%rdx), %rbx
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r13
	sbbq	40(%rdx), %r13
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r15
	sbbq	56(%rdx), %r15
	movq	64(%rsi), %r14
	sbbq	64(%rdx), %r14
	movq	72(%rsi), %r11
	sbbq	72(%rdx), %r11
	movq	80(%rsi), %r10
	sbbq	80(%rdx), %r10
	movq	88(%rsi), %rbp
	sbbq	88(%rdx), %rbp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %rbp
	sbbq	96(%rdx), %rbp
	movq	104(%rsi), %rsi
	sbbq	104(%rdx), %rsi
	movl	$0, %edx
	sbbq	%rdx, %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 88(%rdi)
	shrq	$32, %r9
	movl	%r9d, 92(%rdi)
	movl	%ebp, 96(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 100(%rdi)
	movl	%esi, 104(%rdi)
	shrq	$32, %rsi
	movl	%esi, 108(%rdi)
	movq	%rdx, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	8(%rdx), %rcx
	adcq	8(%rsi), %rcx
	movq	16(%rdx), %r8
	adcq	16(%rsi), %r8
	movq	24(%rdx), %rbx
	adcq	24(%rsi), %rbx
	movq	32(%rdx), %r9
	adcq	32(%rsi), %r9
	movq	40(%rdx), %r13
	adcq	40(%rsi), %r13
	movq	48(%rdx), %r12
	adcq	48(%rsi), %r12
	movq	56(%rdx), %r15
	adcq	56(%rsi), %r15
	movq	64(%rdx), %r14
	adcq	64(%rsi), %r14
	movq	72(%rdx), %r11
	adcq	72(%rsi), %r11
	movq	80(%rdx), %r10
	adcq	80(%rsi), %r10
	movq	88(%rdx), %rbp
	adcq	88(%rsi), %rbp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	movq	96(%rdx), %rbp
	adcq	96(%rsi), %rbp
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%r8d, 16(%rdi)
	shrq	$32, %r8
	movl	%r8d, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 88(%rdi)
	shrq	$32, %r9
	movl	%r9d, 92(%rdi)
	movl	%ebp, 96(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 100(%rdi)
	movl	%edx, 104(%rdi)
	shrq	$32, %rdx
	movl	%edx, 108(%rdi)
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %rbp
	sbbq	16(%rdx), %rbp
	movq	24(%rsi), %rbx
	sbbq	24(%rdx), %rbx
	movq	32(%rsi), %r9
	sbbq	32(%rdx), %r9
	movq	40(%rsi), %r13
	sbbq	40(%rdx), %r13
	movq	48(%rsi), %r12
	sbbq	48(%rdx), %r12
	movq	56(%rsi), %r15
	sbbq	56(%rdx), %r15
	movq	64(%rsi), %r14
	sbbq	64(%rdx), %r14
	movq	72(%rsi), %r11
	sbbq	72(%rdx), %r11
	movq	80(%rsi), %r10
	sbbq	80(%rdx), %r10
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	104(%rsi), %rsi
	sbbq	104(%rdx), %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%ebx, 24(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdi)
	movl	%r9d, 32(%rdi)
	shrq	$32, %r9
	movl	%r9d, 36(%rdi)
	movl	%r13d, 40(%rdi)
	shrq	$32, %r13
	movl	%r13d, 44(%rdi)
	movl	%r12d, 48(%rdi)
	shrq	$32, %r12
	movl	%r12d, 52(%rdi)
	movl	%r15d, 56(%rdi)
	shrq	$32, %r15
	movl	%r15d, 60(%rdi)
	movl	%r14d, 64(%rdi)
	shrq	$32, %r14
	movl	%r14d, 68(%rdi)
	movl	%r11d, 72(%rdi)
	shrq	$32, %r11
	movl	%r11d, 76(%rdi)
	movl	%r10d, 80(%rdi)
	shrq	$32, %r10
	movl	%r10d, 84(%rdi)
	movq	-8(%rsp), %r9                   # 8-byte Reload
	movl	%r9d, 88(%rdi)
	shrq	$32, %r9
	movl	%r9d, 92(%rdi)
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%esi, 104(%rdi)
	movl	%eax, 108(%rdi)
	shrq	$63, %rsi
	movl	%esi, %eax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %rbp
	adcq	24(%rsi), %rbp
	movq	32(%rdx), %rbx
	adcq	32(%rsi), %rbx
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r12
	adcq	56(%rsi), %r12
	movq	64(%rdx), %r15
	adcq	64(%rsi), %r15
	movq	72(%rdx), %r14
	adcq	72(%rsi), %r14
	movq	80(%rdx), %r11
	adcq	80(%rsi), %r11
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	112(%rsi), %esi
	movl	112(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 88(%rdi)
	shrq	$32, %r10
	movl	%r10d, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movl	%edx, 112(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	88(%rsi), %rax
	movq	(%rsi), %rbp
	subq	(%rdx), %rbp
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rbx
	sbbq	32(%rdx), %rbx
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %rcx
	sbbq	80(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	sbbq	88(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	112(%rsi), %eax
	movq	104(%rsi), %rsi
	sbbq	104(%rdx), %rsi
	movl	112(%rdx), %edx
	sbbq	%rdx, %rax
	movq	%rax, %rdx
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movq	-24(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	movl	%eax, 92(%rdi)
	movq	-16(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 96(%rdi)
	shrq	$32, %r10
	movl	%r10d, 100(%rdi)
	movl	%esi, 104(%rdi)
	shrq	$32, %rsi
	movl	%esi, 108(%rdi)
	movq	%rdx, %rax
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %rbp
	adcq	16(%rsi), %rbp
	movq	24(%rdx), %r9
	adcq	24(%rsi), %r9
	movq	32(%rdx), %rbx
	adcq	32(%rsi), %rbx
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r12
	adcq	56(%rsi), %r12
	movq	64(%rdx), %r15
	adcq	64(%rsi), %r15
	movq	72(%rdx), %r14
	adcq	72(%rsi), %r14
	movq	80(%rdx), %r11
	adcq	80(%rsi), %r11
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	112(%rsi), %esi
	movl	112(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 88(%rdi)
	shrq	$32, %r10
	movl	%r10d, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movl	%edx, 112(%rdi)
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
	movq	88(%rsi), %rax
	movq	(%rsi), %rbp
	subq	(%rdx), %rbp
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rbx
	sbbq	32(%rdx), %rbx
	movq	40(%rsi), %r11
	sbbq	40(%rdx), %r11
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %rcx
	sbbq	80(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	sbbq	88(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movl	112(%rsi), %eax
	movq	104(%rsi), %rsi
	sbbq	104(%rdx), %rsi
	movl	112(%rdx), %edx
	sbbq	%rdx, %rax
	movq	%rax, %rdx
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movq	-24(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	movl	%eax, 92(%rdi)
	movq	-16(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 96(%rdi)
	shrq	$32, %r10
	movl	%r10d, 100(%rdi)
	movl	%esi, 104(%rdi)
	shrq	$32, %rsi
	movl	%esi, 108(%rdi)
	movq	%rdx, %rax
	movl	%eax, 112(%rdi)
	movl	%eax, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %rbp
	adcq	16(%rsi), %rbp
	movq	24(%rdx), %r9
	adcq	24(%rsi), %r9
	movq	32(%rdx), %rbx
	adcq	32(%rsi), %rbx
	movq	40(%rdx), %r10
	adcq	40(%rsi), %r10
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r12
	adcq	56(%rsi), %r12
	movq	64(%rdx), %r15
	adcq	64(%rsi), %r15
	movq	72(%rdx), %r14
	adcq	72(%rsi), %r14
	movq	80(%rdx), %r11
	adcq	80(%rsi), %r11
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	112(%rdx), %rdx
	adcq	112(%rsi), %rdx
	movl	%ecx, (%rdi)
	setb	%sil
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 88(%rdi)
	shrq	$32, %r10
	movl	%r10d, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movl	%edx, 112(%rdi)
	shrq	$32, %rdx
	movl	%edx, 116(%rdi)
	movzbl	%sil, %eax
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %rbp
	sbbq	24(%rdx), %rbp
	movq	32(%rsi), %rbx
	sbbq	32(%rdx), %rbx
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %r11
	sbbq	80(%rdx), %r11
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	112(%rsi), %rsi
	sbbq	112(%rdx), %rsi
	movl	$0, %edx
	sbbq	%rdx, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 88(%rdi)
	shrq	$32, %r10
	movl	%r10d, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movl	%esi, 112(%rdi)
	shrq	$32, %rsi
	movl	%esi, 116(%rdi)
	movq	%rdx, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	88(%rdx), %r10
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %rbp
	adcq	16(%rsi), %rbp
	movq	24(%rdx), %r9
	adcq	24(%rsi), %r9
	movq	32(%rdx), %rbx
	adcq	32(%rsi), %rbx
	movq	40(%rdx), %r11
	adcq	40(%rsi), %r11
	movq	48(%rdx), %r13
	adcq	48(%rsi), %r13
	movq	56(%rdx), %r12
	adcq	56(%rsi), %r12
	movq	64(%rdx), %r15
	adcq	64(%rsi), %r15
	movq	72(%rdx), %r14
	adcq	72(%rsi), %r14
	movq	80(%rdx), %rax
	adcq	80(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	adcq	88(%rsi), %r10
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	96(%rdx), %r10
	adcq	96(%rsi), %r10
	movq	112(%rdx), %rax
	movq	104(%rdx), %rdx
	adcq	104(%rsi), %rdx
	adcq	112(%rsi), %rax
	movq	%rax, %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%ebp, 16(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 20(%rdi)
	movl	%r9d, 24(%rdi)
	shrq	$32, %r9
	movl	%r9d, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movq	-16(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	movl	%eax, 92(%rdi)
	movl	%r10d, 96(%rdi)
	shrq	$32, %r10
	movl	%r10d, 100(%rdi)
	movl	%edx, 104(%rdi)
	shrq	$32, %rdx
	movl	%edx, 108(%rdi)
	movq	%rsi, %rax
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %rbp
	sbbq	24(%rdx), %rbp
	movq	32(%rsi), %rbx
	sbbq	32(%rdx), %rbx
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %r11
	sbbq	80(%rdx), %r11
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	112(%rsi), %rsi
	sbbq	112(%rdx), %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, 88(%rdi)
	shrq	$32, %r10
	movl	%r10d, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	movl	%esi, 112(%rdi)
	movl	%eax, 116(%rdi)
	shrq	$63, %rsi
	movl	%esi, %eax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %r10
	adcq	24(%rsi), %r10
	movq	32(%rdx), %rbp
	adcq	32(%rsi), %rbp
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	120(%rsi), %esi
	movl	120(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%ebp, 32(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%edx, 120(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rbp
	sbbq	32(%rdx), %rbp
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r12
	sbbq	64(%rdx), %r12
	movq	72(%rsi), %r15
	sbbq	72(%rdx), %r15
	movq	80(%rsi), %r14
	sbbq	80(%rdx), %r14
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	120(%rsi), %esi
	movl	120(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%ebp, 32(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%esi, 120(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %rbp
	adcq	24(%rsi), %rbp
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	120(%rsi), %esi
	movl	120(%rdx), %edx
	adcq	%rsi, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%edx, 120(%rdi)
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %rbp
	sbbq	24(%rdx), %rbp
	movq	32(%rsi), %r10
	sbbq	32(%rdx), %r10
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r12
	sbbq	64(%rdx), %r12
	movq	72(%rsi), %r15
	sbbq	72(%rdx), %r15
	movq	80(%rsi), %r14
	sbbq	80(%rdx), %r14
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movl	120(%rsi), %esi
	movl	120(%rdx), %edx
	sbbq	%rdx, %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%esi, 120(%rdi)
	movl	%esi, %eax
	shrq	$31, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %rbp
	adcq	24(%rsi), %rbp
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	120(%rdx), %rdx
	adcq	120(%rsi), %rdx
	movl	%ecx, (%rdi)
	setb	%sil
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%edx, 120(%rdi)
	shrq	$32, %rdx
	movl	%edx, 124(%rdi)
	movzbl	%sil, %eax
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
	movq	(%rsi), %rcx
	subq	(%rdx), %rcx
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %r10
	sbbq	24(%rdx), %r10
	movq	32(%rsi), %rbp
	sbbq	32(%rdx), %rbp
	movq	40(%rsi), %rbx
	sbbq	40(%rdx), %rbx
	movq	48(%rsi), %r11
	sbbq	48(%rdx), %r11
	movq	56(%rsi), %r13
	sbbq	56(%rdx), %r13
	movq	64(%rsi), %r12
	sbbq	64(%rdx), %r12
	movq	72(%rsi), %r15
	sbbq	72(%rdx), %r15
	movq	80(%rsi), %r14
	sbbq	80(%rdx), %r14
	movq	88(%rsi), %rax
	sbbq	88(%rdx), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rax
	sbbq	96(%rdx), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rax
	sbbq	104(%rdx), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rsi), %rax
	sbbq	112(%rdx), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	120(%rsi), %rsi
	sbbq	120(%rdx), %rsi
	movl	$0, %edx
	sbbq	%rdx, %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%r10d, 24(%rdi)
	shrq	$32, %r10
	movl	%r10d, 28(%rdi)
	movl	%ebp, 32(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%esi, 120(%rdi)
	shrq	$32, %rsi
	movl	%esi, 124(%rdi)
	movq	%rdx, %rax
	andl	$1, %eax
                                        # kill: def $eax killed $eax killed $rax
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
	movq	(%rdx), %rcx
	addq	(%rsi), %rcx
	movq	8(%rdx), %r8
	adcq	8(%rsi), %r8
	movq	16(%rdx), %r9
	adcq	16(%rsi), %r9
	movq	24(%rdx), %rbp
	adcq	24(%rsi), %rbp
	movq	32(%rdx), %r10
	adcq	32(%rsi), %r10
	movq	40(%rdx), %rbx
	adcq	40(%rsi), %rbx
	movq	48(%rdx), %r11
	adcq	48(%rsi), %r11
	movq	56(%rdx), %r13
	adcq	56(%rsi), %r13
	movq	64(%rdx), %r12
	adcq	64(%rsi), %r12
	movq	72(%rdx), %r15
	adcq	72(%rsi), %r15
	movq	80(%rdx), %r14
	adcq	80(%rsi), %r14
	movq	88(%rdx), %rax
	adcq	88(%rsi), %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movq	96(%rdx), %rax
	adcq	96(%rsi), %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movq	104(%rdx), %rax
	adcq	104(%rsi), %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	movq	112(%rdx), %rax
	adcq	112(%rsi), %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	120(%rdx), %rdx
	adcq	120(%rsi), %rdx
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%ebx, 40(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 44(%rdi)
	movl	%r11d, 48(%rdi)
	shrq	$32, %r11
	movl	%r11d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	shrq	$32, %r13
	movl	%r13d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, 68(%rdi)
	movl	%r15d, 72(%rdi)
	shrq	$32, %r15
	movl	%r15d, 76(%rdi)
	movl	%r14d, 80(%rdi)
	shrq	$32, %r14
	movl	%r14d, 84(%rdi)
	movq	-32(%rsp), %r11                 # 8-byte Reload
	movl	%r11d, 88(%rdi)
	shrq	$32, %r11
	movl	%r11d, 92(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 112(%rdi)
	shrq	$32, %rax
	movl	%eax, 116(%rdi)
	movl	%edx, 120(%rdi)
	shrq	$32, %rdx
	movl	%edx, 124(%rdi)
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
	movq	88(%rsi), %rcx
	movq	(%rsi), %rax
	subq	(%rdx), %rax
	movq	8(%rsi), %r8
	sbbq	8(%rdx), %r8
	movq	16(%rsi), %r9
	sbbq	16(%rdx), %r9
	movq	24(%rsi), %rbp
	sbbq	24(%rdx), %rbp
	movq	32(%rsi), %rbx
	sbbq	32(%rdx), %rbx
	movq	40(%rsi), %r10
	sbbq	40(%rdx), %r10
	movq	48(%rsi), %r13
	sbbq	48(%rdx), %r13
	movq	56(%rsi), %r12
	sbbq	56(%rdx), %r12
	movq	64(%rsi), %r15
	sbbq	64(%rdx), %r15
	movq	72(%rsi), %r14
	sbbq	72(%rdx), %r14
	movq	80(%rsi), %r11
	sbbq	80(%rdx), %r11
	sbbq	88(%rdx), %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movq	96(%rsi), %rcx
	sbbq	96(%rdx), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movq	104(%rsi), %rcx
	sbbq	104(%rdx), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movq	120(%rsi), %rcx
	movq	112(%rsi), %rsi
	sbbq	112(%rdx), %rsi
	sbbq	120(%rdx), %rcx
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r9d, 16(%rdi)
	shrq	$32, %r9
	movl	%r9d, 20(%rdi)
	movl	%ebp, 24(%rdi)
	shrq	$32, %rbp
	movl	%ebp, 28(%rdi)
	movl	%ebx, 32(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r10d, 40(%rdi)
	shrq	$32, %r10
	movl	%r10d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r12d, 56(%rdi)
	shrq	$32, %r12
	movl	%r12d, 60(%rdi)
	movl	%r15d, 64(%rdi)
	shrq	$32, %r15
	movl	%r15d, 68(%rdi)
	movl	%r14d, 72(%rdi)
	shrq	$32, %r14
	movl	%r14d, 76(%rdi)
	movl	%r11d, 80(%rdi)
	shrq	$32, %r11
	movl	%r11d, 84(%rdi)
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 88(%rdi)
	shrq	$32, %rax
	movl	%eax, 92(%rdi)
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 96(%rdi)
	shrq	$32, %rax
	movl	%eax, 100(%rdi)
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movl	%eax, 104(%rdi)
	shrq	$32, %rax
	movl	%eax, 108(%rdi)
	movl	%esi, 112(%rdi)
	shrq	$32, %rsi
	movl	%esi, 116(%rdi)
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%ecx, 120(%rdi)
	movl	%eax, 124(%rdi)
	shrq	$63, %rcx
	movl	%ecx, %eax
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
	.globl	mulUnit_inner32                 # -- Begin function mulUnit_inner32
	.p2align	4, 0x90
	.type	mulUnit_inner32,@function
mulUnit_inner32:                        # @mulUnit_inner32
# %bb.0:
	movl	(%rdi), %ecx
	movl	%esi, %eax
	imulq	%rcx, %rax
	retq
.Lfunc_end128:
	.size	mulUnit_inner32, .Lfunc_end128-mulUnit_inner32
                                        # -- End function
	.globl	mclb_mulUnit1                   # -- Begin function mclb_mulUnit1
	.p2align	4, 0x90
	.type	mclb_mulUnit1,@function
mclb_mulUnit1:                          # @mclb_mulUnit1
# %bb.0:
	movl	(%rsi), %ecx
	movl	%edx, %eax
	imulq	%rcx, %rax
	movl	%eax, (%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end129:
	.size	mclb_mulUnit1, .Lfunc_end129-mclb_mulUnit1
                                        # -- End function
	.globl	mclb_mulUnitAdd1                # -- Begin function mclb_mulUnitAdd1
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd1,@function
mclb_mulUnitAdd1:                       # @mclb_mulUnitAdd1
# %bb.0:
	movl	(%rsi), %eax
	movl	%edx, %ecx
	imulq	%rax, %rcx
	movl	(%rdi), %eax
	addq	%rcx, %rax
	movl	%eax, (%rdi)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end130:
	.size	mclb_mulUnitAdd1, .Lfunc_end130-mclb_mulUnitAdd1
                                        # -- End function
	.globl	mclb_mul1                       # -- Begin function mclb_mul1
	.p2align	4, 0x90
	.type	mclb_mul1,@function
mclb_mul1:                              # @mclb_mul1
# %bb.0:
	movl	(%rsi), %eax
	movl	(%rdx), %ecx
	imulq	%rax, %rcx
	movq	%rcx, (%rdi)
	retq
.Lfunc_end131:
	.size	mclb_mul1, .Lfunc_end131-mclb_mul1
                                        # -- End function
	.globl	mclb_sqr1                       # -- Begin function mclb_sqr1
	.p2align	4, 0x90
	.type	mclb_sqr1,@function
mclb_sqr1:                              # @mclb_sqr1
# %bb.0:
	movl	(%rsi), %eax
	imulq	%rax, %rax
	movq	%rax, (%rdi)
	retq
.Lfunc_end132:
	.size	mclb_sqr1, .Lfunc_end132-mclb_sqr1
                                        # -- End function
	.globl	mulUnit_inner64                 # -- Begin function mulUnit_inner64
	.p2align	4, 0x90
	.type	mulUnit_inner64,@function
mulUnit_inner64:                        # @mulUnit_inner64
# %bb.0:
	movl	(%rdi), %eax
	movl	4(%rdi), %ecx
	movl	%esi, %edx
	imulq	%rdx, %rax
	movl	%eax, %esi
	movq	%rax, %rdi
	shrq	$32, %rdi
	imulq	%rdx, %rcx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rax
	orq	%rdi, %rax
	shlq	$32, %rcx
	orq	%rsi, %rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	shlq	$32, %rax
	addq	%rcx, %rax
	adcq	$0, %rdx
	retq
.Lfunc_end133:
	.size	mulUnit_inner64, .Lfunc_end133-mulUnit_inner64
                                        # -- End function
	.globl	mclb_mulUnit2                   # -- Begin function mclb_mulUnit2
	.p2align	4, 0x90
	.type	mclb_mulUnit2,@function
mclb_mulUnit2:                          # @mclb_mulUnit2
# %bb.0:
	movl	(%rsi), %ecx
	movl	4(%rsi), %eax
	movl	%edx, %edx
	imulq	%rdx, %rcx
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rsi
	imulq	%rdx, %rax
	movl	%ecx, %ecx
	movq	%rax, %rdx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rax
	addq	%rsi, %rdx
	movq	%rdx, (%rdi)
	adcl	$0, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end134:
	.size	mclb_mulUnit2, .Lfunc_end134-mclb_mulUnit2
                                        # -- End function
	.globl	mclb_mulUnitAdd2                # -- Begin function mclb_mulUnitAdd2
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd2,@function
mclb_mulUnitAdd2:                       # @mclb_mulUnitAdd2
# %bb.0:
	movl	(%rsi), %ecx
	movl	4(%rsi), %eax
	movl	%edx, %edx
	imulq	%rdx, %rcx
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rsi
	imulq	%rdx, %rax
	movl	%ecx, %ecx
	movq	%rax, %rdx
	shlq	$32, %rdx
	orq	%rcx, %rdx
	shrq	$32, %rax
	xorl	%ecx, %ecx
	addq	(%rdi), %rdx
	setb	%cl
	addq	%rsi, %rdx
	movq	%rdx, (%rdi)
	adcl	%ecx, %eax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end135:
	.size	mclb_mulUnitAdd2, .Lfunc_end135-mclb_mulUnitAdd2
                                        # -- End function
	.globl	mclb_mul2                       # -- Begin function mclb_mul2
	.p2align	4, 0x90
	.type	mclb_mul2,@function
mclb_mul2:                              # @mclb_mul2
# %bb.0:
	movl	(%rdx), %ecx
	movl	(%rsi), %r9d
	movl	4(%rsi), %r8d
	movq	%r9, %rax
	imulq	%rcx, %rax
	movl	%eax, %r10d
	movq	%rax, %r11
	shrq	$32, %r11
	imulq	%r8, %rcx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rcx, %rsi
	andq	%rax, %rsi
	orq	%r11, %rsi
	shlq	$32, %rcx
	orq	%r10, %rcx
	movq	%rsi, %r10
	shrq	$32, %r10
	shlq	$32, %rsi
	addq	%rcx, %rsi
	adcq	$0, %r10
	shldq	$32, %rsi, %r10
	movl	4(%rdx), %ecx
	imulq	%rcx, %r9
	movl	%r9d, %edx
	shrq	$32, %r9
	imulq	%r8, %rcx
	andq	%rcx, %rax
	orq	%r9, %rax
	shlq	$32, %rcx
	orq	%rdx, %rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	shlq	$32, %rax
	addq	%rcx, %rax
	adcq	$0, %rdx
	movl	%esi, (%rdi)
	addq	%r10, %rax
	adcq	$0, %rdx
	movl	%eax, 4(%rdi)
	shrq	$32, %rax
	movl	%eax, 8(%rdi)
	movl	%edx, 12(%rdi)
	retq
.Lfunc_end136:
	.size	mclb_mul2, .Lfunc_end136-mclb_mul2
                                        # -- End function
	.globl	mclb_sqr2                       # -- Begin function mclb_sqr2
	.p2align	4, 0x90
	.type	mclb_sqr2,@function
mclb_sqr2:                              # @mclb_sqr2
# %bb.0:
	pushq	%rbx
	movl	(%rsi), %r9d
	movl	4(%rsi), %ebx
	movq	%r9, %rcx
	imulq	%r9, %rcx
	movl	%ecx, %r8d
	movq	%rcx, %r10
	shrq	$32, %r10
	imulq	%rbx, %r9
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	%r9, %rdx
	movq	%r9, %r11
	movq	%r9, %rsi
	andq	%rcx, %rsi
	orq	%r10, %rsi
	shlq	$32, %rdx
	orq	%r8, %rdx
	movq	%rsi, %rax
	shrq	$32, %rax
	shlq	$32, %rsi
	addq	%rdx, %rsi
	adcq	$0, %rax
	shldq	$32, %rsi, %rax
	movl	%r9d, %edx
	shrq	$32, %r11
	imulq	%rbx, %rbx
	andq	%rbx, %rcx
	orq	%r11, %rcx
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	shlq	$32, %rcx
	addq	%rbx, %rcx
	adcq	$0, %rdx
	movl	%esi, (%rdi)
	addq	%rax, %rcx
	adcq	$0, %rdx
	movl	%ecx, 4(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 8(%rdi)
	movl	%edx, 12(%rdi)
	popq	%rbx
	retq
.Lfunc_end137:
	.size	mclb_sqr2, .Lfunc_end137-mclb_sqr2
                                        # -- End function
	.globl	mulUnit_inner96                 # -- Begin function mulUnit_inner96
	.p2align	4, 0x90
	.type	mulUnit_inner96,@function
mulUnit_inner96:                        # @mulUnit_inner96
# %bb.0:
	movl	(%rdi), %eax
	movl	4(%rdi), %ecx
	movl	%esi, %edx
	imulq	%rdx, %rax
	movl	%eax, %r8d
	movq	%rax, %rsi
	shrq	$32, %rsi
	imulq	%rdx, %rcx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rax
	orq	%rsi, %rax
	movl	8(%rdi), %esi
	imulq	%rdx, %rsi
	movl	%esi, %edi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	shlq	$32, %rcx
	orq	%r8, %rcx
	shldq	$32, %rax, %rdx
	shlq	$32, %rax
	addq	%rcx, %rax
	adcq	%rdi, %rdx
	retq
.Lfunc_end138:
	.size	mulUnit_inner96, .Lfunc_end138-mulUnit_inner96
                                        # -- End function
	.globl	mclb_mulUnit3                   # -- Begin function mclb_mulUnit3
	.p2align	4, 0x90
	.type	mclb_mulUnit3,@function
mclb_mulUnit3:                          # @mclb_mulUnit3
# %bb.0:
	movl	(%rsi), %ecx
	movl	4(%rsi), %eax
	movl	%edx, %r9d
	imulq	%r9, %rcx
	movl	%ecx, %r8d
	shrq	$32, %rcx
	imulq	%r9, %rax
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rax, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %ecx
	imulq	%r9, %rcx
	movl	%ecx, %esi
	shrq	$32, %rcx
	shlq	$32, %rax
	orq	%r8, %rax
	shldq	$32, %rdx, %rcx
	shlq	$32, %rdx
	addq	%rax, %rdx
	adcq	%rsi, %rcx
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	movq	%rcx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end139:
	.size	mclb_mulUnit3, .Lfunc_end139-mclb_mulUnit3
                                        # -- End function
	.globl	mclb_mulUnitAdd3                # -- Begin function mclb_mulUnitAdd3
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd3,@function
mclb_mulUnitAdd3:                       # @mclb_mulUnitAdd3
# %bb.0:
	movl	(%rsi), %ecx
	movl	4(%rsi), %eax
	movl	%edx, %r9d
	imulq	%r9, %rcx
	movl	%ecx, %r8d
	shrq	$32, %rcx
	imulq	%r9, %rax
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rax, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %ecx
	imulq	%r9, %rcx
	movl	%ecx, %r9d
	shrq	$32, %rcx
	shlq	$32, %rax
	orq	%r8, %rax
	shldq	$32, %rdx, %rcx
	shlq	$32, %rdx
	movl	8(%rdi), %esi
	addq	(%rdi), %rax
	adcq	%r9, %rsi
	addq	%rdx, %rax
	adcq	%rcx, %rsi
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%esi, 8(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end140:
	.size	mclb_mulUnitAdd3, .Lfunc_end140-mclb_mulUnitAdd3
                                        # -- End function
	.globl	mclb_mul3                       # -- Begin function mclb_mul3
	.p2align	4, 0x90
	.type	mclb_mul3,@function
mclb_mul3:                              # @mclb_mul3
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	(%rdx), %ebx
	movl	(%rsi), %r8d
	movl	4(%rsi), %r10d
	movq	%r8, %rax
	imulq	%rbx, %rax
	movl	%eax, %r14d
	shrq	$32, %rax
	movq	%r10, %rcx
	imulq	%rbx, %rcx
	movabsq	$-4294967296, %r11              # imm = 0xFFFFFFFF00000000
	movq	%rcx, %r15
	andq	%r11, %r15
	orq	%rax, %r15
	movl	8(%rsi), %r9d
	imulq	%r9, %rbx
	movl	%ebx, %eax
	shrq	$32, %rbx
	shlq	$32, %rcx
	orq	%r14, %rcx
	shldq	$32, %r15, %rbx
	shlq	$32, %r15
	addq	%rcx, %r15
	adcq	%rax, %rbx
	movl	%r15d, (%rdi)
	shrdq	$32, %rbx, %r15
	shrq	$32, %rbx
	movl	4(%rdx), %eax
	movq	%rax, %rcx
	imulq	%r8, %rcx
	movl	%ecx, %r14d
	shrq	$32, %rcx
	movq	%rax, %rsi
	imulq	%r10, %rsi
	movq	%rsi, %r12
	andq	%r11, %r12
	orq	%rcx, %r12
	imulq	%r9, %rax
	movl	%eax, %ecx
	shrq	$32, %rax
	shlq	$32, %rsi
	orq	%r14, %rsi
	shldq	$32, %r12, %rax
	shlq	$32, %r12
	addq	%rsi, %r12
	adcq	%rcx, %rax
	addq	%r15, %r12
	adcq	%rbx, %rax
	movl	%r12d, 4(%rdi)
	shrdq	$32, %rax, %r12
	shrq	$32, %rax
	movl	8(%rdx), %ecx
	imulq	%rcx, %r8
	movl	%r8d, %edx
	shrq	$32, %r8
	imulq	%rcx, %r10
	andq	%r10, %r11
	orq	%r8, %r11
	imulq	%r9, %rcx
	movl	%ecx, %esi
	shrq	$32, %rcx
	shlq	$32, %r10
	orq	%rdx, %r10
	shldq	$32, %r11, %rcx
	shlq	$32, %r11
	addq	%r10, %r11
	adcq	%rsi, %rcx
	addq	%r12, %r11
	adcq	%rax, %rcx
	movl	%r11d, 8(%rdi)
	shrq	$32, %r11
	movl	%r11d, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end141:
	.size	mclb_mul3, .Lfunc_end141-mclb_mul3
                                        # -- End function
	.globl	mclb_sqr3                       # -- Begin function mclb_sqr3
	.p2align	4, 0x90
	.type	mclb_sqr3,@function
mclb_sqr3:                              # @mclb_sqr3
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %edx
	movl	4(%rsi), %r11d
	movq	%rdx, %rcx
	imulq	%rdx, %rcx
	movl	%ecx, %r8d
	shrq	$32, %rcx
	movq	%r11, %rbx
	imulq	%rdx, %rbx
	movabsq	$-4294967296, %r13              # imm = 0xFFFFFFFF00000000
	movq	%rbx, %r9
	movq	%rbx, %r14
	movl	%ebx, %r15d
	andq	%r13, %rbx
	orq	%rcx, %rbx
	movl	8(%rsi), %r12d
	imulq	%r12, %rdx
	movl	%edx, %r10d
	shrq	$32, %rdx
	shlq	$32, %r9
	orq	%r8, %r9
	movq	%rdx, %rax
	shldq	$32, %rbx, %rax
	shlq	$32, %rbx
	addq	%r9, %rbx
	adcq	%r10, %rax
	movl	%ebx, (%rdi)
	movq	%rax, %r8
	shrq	$32, %r8
	shldq	$32, %rbx, %rax
	shrq	$32, %r14
	movq	%r12, %rsi
	imulq	%r11, %rsi
	imulq	%r11, %r11
	movq	%r11, %rbx
	andq	%r13, %rbx
	orq	%r14, %rbx
	movq	%rsi, %rcx
	shrq	$32, %rcx
	shlq	$32, %r11
	orq	%r15, %r11
	movl	%esi, %r9d
	shldq	$32, %rbx, %rcx
	shlq	$32, %rbx
	addq	%r11, %rbx
	adcq	%r9, %rcx
	addq	%rax, %rbx
	adcq	%r8, %rcx
	movl	%ebx, 4(%rdi)
	movq	%rcx, %rax
	shrq	$32, %rax
	shldq	$32, %rbx, %rcx
	andq	%rsi, %r13
	imulq	%r12, %r12
	movl	%r12d, %ebx
	shrq	$32, %r12
	shlq	$32, %rsi
	orq	%r10, %rsi
	orq	%rdx, %r13
	shldq	$32, %r13, %r12
	shlq	$32, %r13
	addq	%rsi, %r13
	adcq	%rbx, %r12
	addq	%rcx, %r13
	adcq	%rax, %r12
	movl	%r13d, 8(%rdi)
	shrq	$32, %r13
	movl	%r13d, 12(%rdi)
	movl	%r12d, 16(%rdi)
	shrq	$32, %r12
	movl	%r12d, 20(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end142:
	.size	mclb_sqr3, .Lfunc_end142-mclb_sqr3
                                        # -- End function
	.globl	mulUnit_inner128                # -- Begin function mulUnit_inner128
	.p2align	4, 0x90
	.type	mulUnit_inner128,@function
mulUnit_inner128:                       # @mulUnit_inner128
# %bb.0:
	movl	(%rdi), %eax
	movl	4(%rdi), %r9d
	movl	%esi, %edx
	imulq	%rdx, %rax
	movl	%eax, %r8d
	movq	%rax, %rsi
	shrq	$32, %rsi
	imulq	%rdx, %r9
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%r9, %rax
	orq	%rsi, %rax
	movl	8(%rdi), %esi
	imulq	%rdx, %rsi
	movl	12(%rdi), %ecx
	imulq	%rdx, %rcx
	movq	%rcx, %rdi
	shrq	$32, %rdi
	shlq	$32, %r9
	orq	%r8, %r9
	movl	%esi, %edx
	shlq	$32, %rcx
	shldq	$32, %rsi, %rdi
	orq	%rdx, %rcx
	movq	%rdi, %rdx
	shldq	$32, %rax, %rdx
	shrq	$32, %rdi
	shlq	$32, %rax
	addq	%r9, %rax
	adcq	%rcx, %rdx
	adcq	$0, %rdi
	movl	%edi, %ecx
	retq
.Lfunc_end143:
	.size	mulUnit_inner128, .Lfunc_end143-mulUnit_inner128
                                        # -- End function
	.globl	mclb_mulUnit4                   # -- Begin function mclb_mulUnit4
	.p2align	4, 0x90
	.type	mclb_mulUnit4,@function
mclb_mulUnit4:                          # @mclb_mulUnit4
# %bb.0:
	movl	(%rsi), %eax
	movl	4(%rsi), %r10d
	movl	%edx, %r9d
	imulq	%r9, %rax
	movl	%eax, %r8d
	shrq	$32, %rax
	imulq	%r9, %r10
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%r10, %rdx
	orq	%rax, %rdx
	movl	8(%rsi), %ecx
	imulq	%r9, %rcx
	movl	12(%rsi), %esi
	imulq	%r9, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	shlq	$32, %r10
	orq	%r8, %r10
	movl	%ecx, %r8d
	shlq	$32, %rsi
	shldq	$32, %rcx, %rax
	orq	%r8, %rsi
	movq	%rax, %rcx
	shldq	$32, %rdx, %rcx
	shrq	$32, %rax
	shlq	$32, %rdx
	addq	%r10, %rdx
	adcq	%rsi, %rcx
	adcq	$0, %rax
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end144:
	.size	mclb_mulUnit4, .Lfunc_end144-mclb_mulUnit4
                                        # -- End function
	.globl	mclb_mulUnitAdd4                # -- Begin function mclb_mulUnitAdd4
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd4,@function
mclb_mulUnitAdd4:                       # @mclb_mulUnitAdd4
# %bb.0:
	movl	(%rsi), %eax
	movl	4(%rsi), %ecx
	movl	%edx, %r8d
	imulq	%r8, %rax
	movl	%eax, %r9d
	shrq	$32, %rax
	imulq	%r8, %rcx
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %r10
	orq	%rax, %r10
	movl	8(%rsi), %eax
	imulq	%r8, %rax
	movl	12(%rsi), %edx
	imulq	%r8, %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	shlq	$32, %rcx
	orq	%r9, %rcx
	movl	%eax, %r8d
	shlq	$32, %rdx
	orq	%r8, %rdx
	shldq	$32, %rax, %rsi
	movq	%rsi, %r8
	shldq	$32, %r10, %r8
	shrq	$32, %rsi
	shlq	$32, %r10
	addq	(%rdi), %rcx
	adcq	8(%rdi), %rdx
	setb	%al
	movzbl	%al, %eax
	addq	%r10, %rcx
	adcq	%r8, %rdx
	adcq	%rsi, %rax
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%edx, 8(%rdi)
	shrq	$32, %rdx
	movl	%edx, 12(%rdi)
                                        # kill: def $eax killed $eax killed $rax
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
	movl	(%rdx), %ebx
	movq	%rdx, %r12
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movl	(%rsi), %edx
	movl	4(%rsi), %r11d
	movq	%rdx, %rax
	imulq	%rbx, %rax
	movl	%eax, %r8d
	shrq	$32, %rax
	movq	%r11, %rbp
	imulq	%rbx, %rbp
	movabsq	$-4294967296, %r15              # imm = 0xFFFFFFFF00000000
	movq	%rbp, %r14
	andq	%r15, %r14
	orq	%rax, %r14
	movl	8(%rsi), %r10d
	movq	%r10, %rcx
	imulq	%rbx, %rcx
	movl	12(%rsi), %eax
	imulq	%rax, %rbx
	movq	%rax, %r9
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	shrq	$32, %rax
	shlq	$32, %rbp
	orq	%r8, %rbp
	movl	%ecx, %esi
	shlq	$32, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, %rcx
	shldq	$32, %r14, %rcx
	orq	%rsi, %rbx
	shrq	$32, %rax
	shlq	$32, %r14
	addq	%rbp, %r14
	adcq	%rbx, %rcx
	adcq	$0, %rax
	shldq	$32, %rcx, %rax
	shldq	$32, %r14, %rcx
	movl	4(%r12), %ebx
	movq	%rbx, %rsi
	imulq	%rdx, %rsi
	movl	%esi, %ebp
	shrq	$32, %rsi
	movq	%rbx, %r8
	imulq	%r11, %r8
	movq	%r8, %r12
	andq	%r15, %r12
	orq	%rsi, %r12
	movq	%rbx, %rsi
	imulq	%r10, %rsi
	imulq	%r9, %rbx
	shlq	$32, %r8
	orq	%rbp, %r8
	movq	%rbx, %rbp
	shrq	$32, %rbp
	shldq	$32, %rsi, %rbp
	movl	%esi, %esi
	shlq	$32, %rbx
	orq	%rsi, %rbx
	movq	%rbp, %rsi
	shldq	$32, %r12, %rsi
	shrq	$32, %rbp
	shlq	$32, %r12
	addq	%rcx, %r8
	adcq	%rax, %rbx
	movq	%rdi, %r9
	setb	%al
	movzbl	%al, %r13d
	addq	%r12, %r8
	adcq	%rsi, %rbx
	adcq	%rbp, %r13
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	8(%rax), %ebp
	movq	%rbp, %rcx
	imulq	%rdx, %rcx
	movq	%rcx, %rsi
	shrq	$32, %rsi
	movq	%rbp, %rax
	imulq	%r11, %rax
	movq	%rax, %rdi
	andq	%r15, %rdi
	orq	%rsi, %rdi
	shldq	$32, %rbx, %r13
	movl	%ecx, %ecx
	shldq	$32, %r8, %rbx
	shlq	$32, %rax
	orq	%rcx, %rax
	movq	%rbp, %rsi
	imulq	%r10, %rsi
	movq	-8(%rsp), %r12                  # 8-byte Reload
	imulq	%r12, %rbp
	movq	%rbp, %rcx
	shrq	$32, %rcx
	shldq	$32, %rsi, %rcx
	movl	%esi, %esi
	shlq	$32, %rbp
	orq	%rsi, %rbp
	movq	%rcx, %rsi
	shldq	$32, %rdi, %rsi
	shrq	$32, %rcx
	shlq	$32, %rdi
	addq	%rax, %rdi
	adcq	%rbp, %rsi
	movl	%r14d, (%r9)
	adcq	$0, %rcx
	addq	%rbx, %rdi
	adcq	%r13, %rsi
	adcq	$0, %rcx
	shldq	$32, %rsi, %rcx
	shldq	$32, %rdi, %rsi
	movq	-16(%rsp), %rax                 # 8-byte Reload
	movl	12(%rax), %ebx
	imulq	%rbx, %rdx
	movl	%edx, %eax
	shrq	$32, %rdx
	imulq	%rbx, %r11
	andq	%r11, %r15
	orq	%rdx, %r15
	imulq	%rbx, %r10
	imulq	%r12, %rbx
	movq	%rbx, %rdx
	shrq	$32, %rdx
	shlq	$32, %r11
	orq	%rax, %r11
	movl	%r10d, %eax
	shlq	$32, %rbx
	shldq	$32, %r10, %rdx
	orq	%rax, %rbx
	movq	%rdx, %rax
	shldq	$32, %r15, %rax
	shrq	$32, %rdx
	shlq	$32, %r15
	addq	%r11, %r15
	adcq	%rbx, %rax
	movl	%r8d, 4(%r9)
	adcq	$0, %rdx
	addq	%rsi, %r15
	adcq	%rcx, %rax
	adcq	$0, %rdx
	movl	%edi, 8(%r9)
	movl	%r15d, 12(%r9)
	shrq	$32, %r15
	movl	%r15d, 16(%r9)
	movl	%eax, 20(%r9)
	shrq	$32, %rax
	movl	%eax, 24(%r9)
	movl	%edx, 28(%r9)
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
	movl	(%rsi), %r9d
	movl	4(%rsi), %r12d
	movq	%r9, %rax
	imulq	%r9, %rax
	movl	%eax, %r8d
	movq	%rax, %rdx
	shrq	$32, %rdx
	movq	%r12, %r14
	imulq	%r9, %r14
	movabsq	$-4294967296, %rbx              # imm = 0xFFFFFFFF00000000
	movq	%r14, %rax
	movq	%r14, %rbp
	andq	%rbx, %rbp
	movq	%rbx, %r11
	orq	%rdx, %rbp
	movl	8(%rsi), %r10d
	movq	%r10, %rbx
	imulq	%r9, %rbx
	movq	%rbx, %r15
	shrq	$32, %r15
	movl	12(%rsi), %r13d
	imulq	%r13, %r9
	movq	%r9, -16(%rsp)                  # 8-byte Spill
	movq	%r9, %rdx
	movq	%r9, %rsi
	shrq	$32, %rsi
	movq	%rsi, -8(%rsp)                  # 8-byte Spill
	shlq	$32, %rax
	orq	%r8, %rax
	shlq	$32, %rdx
	movl	%ebx, %ecx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	orq	%rcx, %rdx
	shrdq	$32, %rsi, %rbx
	movq	%rbx, %r8
	shrq	$32, %r8
	shldq	$32, %rbp, %rbx
	shlq	$32, %rbp
	addq	%rax, %rbp
	movq	%r14, %rax
	adcq	%rdx, %rbx
	adcq	$0, %r8
	shrq	$32, %rax
	movq	%r12, %rsi
	imulq	%r12, %rsi
	movq	%rsi, %r9
	andq	%r11, %r9
	orq	%rax, %r9
	shldq	$32, %rbx, %r8
	shldq	$32, %rbp, %rbx
	movl	%r14d, %eax
	shlq	$32, %rsi
	orq	%rax, %rsi
	movq	%r10, %r11
	imulq	%r12, %r11
	imulq	%r13, %r12
	movq	%r12, %rax
	shrq	$32, %rax
	shldq	$32, %r11, %rax
	movq	%r12, %r14
	shlq	$32, %r14
	movq	%rax, %rdx
	shldq	$32, %r9, %rdx
	movl	%r11d, %ecx
	orq	%r14, %rcx
	shrq	$32, %rax
	shlq	$32, %r9
	addq	%rsi, %r9
	adcq	%rcx, %rdx
	adcq	$0, %rax
	addq	%rbx, %r9
	adcq	%r8, %rdx
	adcq	$0, %rax
	shldq	$32, %rdx, %rax
	shldq	$32, %r9, %rdx
	movq	%r11, %rbx
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rbx
	orq	%r15, %rbx
	shlq	$32, %r11
	addq	-24(%rsp), %r11                 # 8-byte Folded Reload
	movq	%r13, %r15
	imulq	%r10, %r15
	imulq	%r10, %r10
	movq	%r15, %rcx
	shrq	$32, %rcx
	shldq	$32, %r10, %rcx
	movl	%r10d, %r10d
	movq	%r15, %rsi
	shlq	$32, %rsi
	movq	%rcx, %r8
	shldq	$32, %rbx, %r8
	orq	%r10, %rsi
	shlq	$32, %rbx
	shrq	$32, %rcx
	addq	%r11, %rbx
	adcq	%rsi, %r8
	adcq	$0, %rcx
	movl	%ebp, (%rdi)
	addq	%rdx, %rbx
	adcq	%rax, %r8
	movl	-16(%rsp), %edx                 # 4-byte Reload
	adcq	$0, %rcx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rax, %r12
	imulq	%r13, %r13
	movq	%r13, %rax
	orq	%r14, %rdx
	movl	%r15d, %esi
	shlq	$32, %r13
	orq	%rsi, %r13
	shrq	$32, %rax
	shldq	$32, %r15, %rax
	shldq	$32, %r8, %rcx
	shldq	$32, %rbx, %r8
	addq	-8(%rsp), %r12                  # 8-byte Folded Reload
	movq	%rax, %rsi
	shldq	$32, %r12, %rsi
	shlq	$32, %r12
	shrq	$32, %rax
	addq	%rdx, %r12
	adcq	%r13, %rsi
	movl	%r9d, 4(%rdi)
	adcq	$0, %rax
	addq	%r8, %r12
	adcq	%rcx, %rsi
	adcq	$0, %rax
	movl	%ebx, 8(%rdi)
	movl	%r12d, 12(%rdi)
	shrq	$32, %r12
	movl	%r12d, 16(%rdi)
	movl	%esi, 20(%rdi)
	shrq	$32, %rsi
	movl	%esi, 24(%rdi)
	movl	%eax, 28(%rdi)
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
	.globl	mulUnit_inner160                # -- Begin function mulUnit_inner160
	.p2align	4, 0x90
	.type	mulUnit_inner160,@function
mulUnit_inner160:                       # @mulUnit_inner160
# %bb.0:
	movl	(%rdi), %eax
	movl	4(%rdi), %r8d
	movl	%esi, %ecx
	imulq	%rcx, %rax
	movl	%eax, %r9d
	movq	%rax, %rdx
	shrq	$32, %rdx
	imulq	%rcx, %r8
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%r8, %rax
	orq	%rdx, %rax
	movl	8(%rdi), %r10d
	imulq	%rcx, %r10
	movl	12(%rdi), %esi
	imulq	%rcx, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movl	16(%rdi), %edi
	imulq	%rcx, %rdi
	movl	%edi, %r11d
	movq	%rdi, %rcx
	shrq	$32, %rcx
	shlq	$32, %r8
	orq	%r9, %r8
	movl	%r10d, %edi
	shlq	$32, %rsi
	orq	%rdi, %rsi
	shldq	$32, %r10, %rdx
	shldq	$32, %rdx, %rcx
	shldq	$32, %rax, %rdx
	shlq	$32, %rax
	addq	%r8, %rax
	adcq	%rsi, %rdx
	adcq	%r11, %rcx
	retq
.Lfunc_end148:
	.size	mulUnit_inner160, .Lfunc_end148-mulUnit_inner160
                                        # -- End function
	.globl	mclb_mulUnit5                   # -- Begin function mclb_mulUnit5
	.p2align	4, 0x90
	.type	mclb_mulUnit5,@function
mclb_mulUnit5:                          # @mclb_mulUnit5
# %bb.0:
	movl	(%rsi), %ecx
	movl	4(%rsi), %r10d
	movl	%edx, %r8d
	imulq	%r8, %rcx
	movl	%ecx, %r9d
	shrq	$32, %rcx
	imulq	%r8, %r10
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%r10, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %r11d
	imulq	%r8, %r11
	movl	12(%rsi), %eax
	imulq	%r8, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %esi
	imulq	%r8, %rsi
	movl	%esi, %r8d
	shrq	$32, %rsi
	shlq	$32, %r10
	orq	%r9, %r10
	movl	%r11d, %r9d
	shlq	$32, %rax
	orq	%r9, %rax
	shldq	$32, %r11, %rcx
	shldq	$32, %rcx, %rsi
	shldq	$32, %rdx, %rcx
	shlq	$32, %rdx
	addq	%r10, %rdx
	adcq	%rax, %rcx
	adcq	%r8, %rsi
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%esi, 16(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	retq
.Lfunc_end149:
	.size	mclb_mulUnit5, .Lfunc_end149-mclb_mulUnit5
                                        # -- End function
	.globl	mclb_mulUnitAdd5                # -- Begin function mclb_mulUnitAdd5
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd5,@function
mclb_mulUnitAdd5:                       # @mclb_mulUnitAdd5
# %bb.0:
	pushq	%rbx
	movl	(%rsi), %ecx
	movl	4(%rsi), %r11d
	movl	%edx, %r9d
	imulq	%r9, %rcx
	movl	%ecx, %r8d
	shrq	$32, %rcx
	imulq	%r9, %r11
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%r11, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %r10d
	imulq	%r9, %r10
	movl	12(%rsi), %ecx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	16(%rsi), %ebx
	imulq	%r9, %rbx
	movq	%rbx, %rsi
	shrq	$32, %rsi
	shlq	$32, %r11
	orq	%r8, %r11
	movl	%r10d, %r8d
	shlq	$32, %rcx
	shldq	$32, %r10, %rax
	shldq	$32, %rax, %rsi
	shldq	$32, %rdx, %rax
	orq	%r8, %rcx
	shlq	$32, %rdx
	addq	(%rdi), %r11
	movl	%ebx, %r8d
	adcq	8(%rdi), %rcx
	movl	16(%rdi), %ebx
	adcq	%r8, %rbx
	addq	%rdx, %r11
	adcq	%rax, %rcx
	adcq	%rsi, %rbx
	movl	%r11d, (%rdi)
	shrq	$32, %r11
	movl	%r11d, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	movq	%rbx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
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
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rdx), %eax
	movl	(%rsi), %r9d
	movl	4(%rsi), %ebp
	movq	%r9, %rcx
	movq	%r9, -32(%rsp)                  # 8-byte Spill
	imulq	%rax, %rcx
	movl	%ecx, %r15d
	shrq	$32, %rcx
	movq	%rbp, %rbx
	movq	%rbp, %r10
	movq	%rbp, -48(%rsp)                 # 8-byte Spill
	imulq	%rax, %rbx
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	movq	%rbx, %rdx
	andq	%r12, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %ebp
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	imulq	%rax, %rbp
	movl	12(%rsi), %r14d
	movq	%r14, %rcx
	imulq	%rax, %rcx
	movq	%rcx, %r8
	shrq	$32, %r8
	movl	16(%rsi), %r11d
	imulq	%r11, %rax
	shlq	$32, %rbx
	orq	%r15, %rbx
	movl	%ebp, %esi
	shlq	$32, %rcx
	orq	%rsi, %rcx
	movq	%rax, %rsi
	shrq	$32, %rsi
	shldq	$32, %rbp, %r8
	shldq	$32, %r8, %rsi
	shldq	$32, %rdx, %r8
	shlq	$32, %rdx
	addq	%rbx, %rdx
	adcq	%rcx, %r8
	movl	%eax, %eax
	adcq	%rax, %rsi
	movl	%edx, (%rdi)
	movq	%rsi, %r13
	shldq	$32, %r8, %r13
	shldq	$32, %rdx, %r8
	movq	-40(%rsp), %rdi                 # 8-byte Reload
	movl	4(%rdi), %r15d
	movq	%r15, %rax
	imulq	%r9, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%r15, %r9
	imulq	%r10, %r9
	movq	%r9, %rdx
	andq	%r12, %rdx
	orq	%rcx, %rdx
	movl	%eax, %eax
	shlq	$32, %r9
	orq	%rax, %r9
	movq	%r15, %rcx
	movq	-24(%rsp), %r10                 # 8-byte Reload
	imulq	%r10, %rcx
	movq	%r15, %rax
	imulq	%r14, %rax
	movq	%rax, %rbx
	shrq	$32, %rbx
	shldq	$32, %rcx, %rbx
	movl	%ecx, %ecx
	shlq	$32, %rax
	orq	%rcx, %rax
	shrq	$32, %rsi
	movq	%r11, -16(%rsp)                 # 8-byte Spill
	imulq	%r11, %r15
	movq	%r15, %rbp
	shrq	$32, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %rdx, %rbx
	shlq	$32, %rdx
	addq	%r8, %r9
	adcq	%r13, %rax
	movl	%r15d, %r15d
	adcq	%rsi, %r15
	addq	%rdx, %r9
	adcq	%rbx, %rax
	adcq	%rbp, %r15
	movl	8(%rdi), %ecx
	movq	%rcx, %rsi
	movq	-32(%rsp), %r11                 # 8-byte Reload
	imulq	%r11, %rsi
	movq	%rsi, %rdi
	shrq	$32, %rdi
	movq	%rcx, %rdx
	imulq	-48(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, %r13
	andq	%r12, %r13
	orq	%rdi, %r13
	movl	%esi, %esi
	shlq	$32, %rdx
	orq	%rsi, %rdx
	movq	%rcx, %rdi
	imulq	%r10, %rdi
	movq	%rcx, %rbp
	imulq	%r14, %rbp
	movq	%rbp, %rsi
	shrq	$32, %rsi
	shldq	$32, %rdi, %rsi
	movl	%edi, %edi
	shlq	$32, %rbp
	orq	%rdi, %rbp
	movq	%r15, %rdi
	shrq	$32, %rdi
	shldq	$32, %rax, %r15
	shldq	$32, %r9, %rax
	movq	-16(%rsp), %r10                 # 8-byte Reload
	imulq	%r10, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rbx
	shldq	$32, %rsi, %rbx
	shldq	$32, %r13, %rsi
	shlq	$32, %r13
	addq	%rdx, %r13
	adcq	%rbp, %rsi
	movl	%ecx, %ecx
	adcq	%rcx, %rbx
	addq	%rax, %r13
	adcq	%r15, %rsi
	adcq	%rdi, %rbx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	12(%rax), %r8d
	movq	%r8, %rbp
	imulq	%r11, %rbp
	movq	%rbp, %rcx
	shrq	$32, %rcx
	movq	%r8, %rax
	imulq	-48(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r15
	andq	%r12, %r15
	orq	%rcx, %r15
	movl	%ebp, %ecx
	shlq	$32, %rax
	orq	%rcx, %rax
	movq	%r8, %rdx
	movq	-24(%rsp), %r11                 # 8-byte Reload
	imulq	%r11, %rdx
	movq	%r8, %rdi
	imulq	%r14, %rdi
	movq	%rdi, %rcx
	shrq	$32, %rcx
	shldq	$32, %rdx, %rcx
	movl	%edx, %edx
	shlq	$32, %rdi
	orq	%rdx, %rdi
	movq	%rbx, %rdx
	shrq	$32, %rdx
	shldq	$32, %rsi, %rbx
	shldq	$32, %r13, %rsi
	imulq	%r10, %r8
	movq	%r8, %rbp
	shrq	$32, %rbp
	shldq	$32, %rcx, %rbp
	shldq	$32, %r15, %rcx
	shlq	$32, %r15
	addq	%rax, %r15
	adcq	%rdi, %rcx
	movl	%r8d, %eax
	adcq	%rax, %rbp
	addq	%rsi, %r15
	adcq	%rbx, %rcx
	adcq	%rdx, %rbp
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %eax
	movq	-32(%rsp), %rsi                 # 8-byte Reload
	imulq	%rax, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	imulq	%rax, %rbx
	andq	%rbx, %r12
	orq	%rdx, %r12
	movl	%esi, %edx
	imulq	%rax, %r11
	imulq	%rax, %r14
	imulq	%r10, %rax
	movq	%r14, %rsi
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movl	%r11d, %edx
	shlq	$32, %r14
	orq	%rdx, %r14
	movq	%rbp, %rdi
	shrq	$32, %rdi
	shldq	$32, %rcx, %rbp
	shldq	$32, %r15, %rcx
	shrq	$32, %rsi
	shldq	$32, %r11, %rsi
	movq	%rax, %rdx
	shrq	$32, %rdx
	shldq	$32, %rsi, %rdx
	shldq	$32, %r12, %rsi
	shlq	$32, %r12
	addq	%rbx, %r12
	adcq	%r14, %rsi
	movq	-8(%rsp), %rbx                  # 8-byte Reload
	movl	%r9d, 4(%rbx)
	movl	%eax, %eax
	adcq	%rax, %rdx
	movl	%r13d, 8(%rbx)
	addq	%rcx, %r12
	adcq	%rbp, %rsi
	movl	%r15d, 12(%rbx)
	adcq	%rdi, %rdx
	movl	%r12d, 16(%rbx)
	shrq	$32, %r12
	movl	%r12d, 20(%rbx)
	movl	%esi, 24(%rbx)
	shrq	$32, %rsi
	movl	%esi, 28(%rbx)
	movl	%edx, 32(%rbx)
	shrq	$32, %rdx
	movl	%edx, 36(%rbx)
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
	movl	(%rsi), %r15d
	movl	4(%rsi), %r11d
	movq	%r15, %rax
	imulq	%r15, %rax
	movl	%eax, %r8d
	shrq	$32, %rax
	movq	%r11, %r10
	imulq	%r15, %r10
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	movq	%r10, %r12
	movq	%r10, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movl	8(%rsi), %edx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	imulq	%r15, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r9d
	movq	%r9, %r13
	movq	%r9, -80(%rsp)                  # 8-byte Spill
	imulq	%r15, %r13
	movq	%r13, %rbx
	movq	%r13, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rbx
	movq	%rbx, -24(%rsp)                 # 8-byte Spill
	movl	16(%rsi), %eax
	imulq	%rax, %r15
	movq	%rax, %r14
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	shlq	$32, %r12
	orq	%r8, %r12
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	shlq	$32, %r13
	movl	%edx, %ebp
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	shrdq	$32, %rbx, %rdx
	shldq	$32, %rdx, %rax
	orq	%rbp, %r13
	shldq	$32, %rcx, %rdx
	shlq	$32, %rcx
	addq	%r12, %rcx
	movq	%rcx, %r8
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	adcq	%r13, %rdx
	movl	%r15d, %ecx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	adcq	%rcx, %rax
	movq	%r10, %rbx
	shrq	$32, %rbx
	movq	%r11, %rcx
	imulq	%r11, %rcx
	movq	%rcx, %r15
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	andq	%rsi, %r15
	orq	%rbx, %r15
	movl	%r10d, %ebx
	shlq	$32, %rcx
	orq	%rbx, %rcx
	movq	%rax, %rsi
	shldq	$32, %rdx, %rsi
	shrq	$32, %rax
	shldq	$32, %r8, %rdx
	movq	-96(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %r10
	imulq	%r11, %r10
	movq	%r9, %r12
	imulq	%r11, %r12
	movq	%r12, %rbx
	shrq	$32, %rbx
	imulq	%r14, %r11
	movq	%r11, %r14
	movq	%r11, %r8
	movq	%r11, -48(%rsp)                 # 8-byte Spill
	shrq	$32, %r14
	movq	%r12, %rbp
	shlq	$32, %rbp
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	movl	%r10d, %r11d
	orq	%rbp, %r11
	shldq	$32, %r10, %rbx
	shldq	$32, %rbx, %r14
	shldq	$32, %r15, %rbx
	shlq	$32, %r15
	addq	%rcx, %r15
	adcq	%r11, %rbx
	movl	%r8d, %ecx
	adcq	%rcx, %r14
	addq	%rdx, %r15
	adcq	%rsi, %rbx
	adcq	%rax, %r14
	movq	%r10, %r9
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rax, %r9
	addq	-56(%rsp), %r9                  # 8-byte Folded Reload
	shlq	$32, %r10
	addq	-72(%rsp), %r10                 # 8-byte Folded Reload
	movq	%r13, %rdx
	movq	%r13, %rsi
	imulq	%r13, %rsi
	movq	-80(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %r13
	imulq	%rdx, %r13
	movq	%r13, %rax
	shrq	$32, %rax
	shldq	$32, %rsi, %rax
	movl	%esi, %esi
	movq	%r13, %rcx
	shlq	$32, %rcx
	orq	%rsi, %rcx
	movq	%r14, %rsi
	shldq	$32, %rbx, %rsi
	shrq	$32, %r14
	shldq	$32, %r15, %rbx
	movq	-88(%rsp), %r8                  # 8-byte Reload
	imulq	%r8, %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	movq	%rdx, %r11
	shrq	$32, %r11
	shldq	$32, %rax, %r11
	shldq	$32, %r9, %rax
	shlq	$32, %r9
	addq	%r10, %r9
	adcq	%rcx, %rax
	movl	%edx, %r10d
	adcq	%r10, %r11
	addq	%rbx, %r9
	adcq	%rsi, %rax
	adcq	%r14, %r11
	movl	-32(%rsp), %esi                 # 4-byte Reload
	addq	-64(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%r8, %r14
	imulq	%rbp, %r14
	imulq	%rbp, %rbp
	movq	%rbp, %rbx
	shlq	$32, %rbp
	movl	%r13d, %ecx
	orq	%rcx, %rbp
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rdx, %r12
	addq	-24(%rsp), %r12                 # 8-byte Folded Reload
	shrq	$32, %rbx
	shldq	$32, %r13, %rbx
	movq	%r11, %r13
	shldq	$32, %rax, %r13
	shrq	$32, %r11
	shldq	$32, %r9, %rax
	movq	%r14, %r8
	shrq	$32, %r8
	movq	%r8, %rcx
	shldq	$32, %rbx, %rcx
	shldq	$32, %r12, %rbx
	shlq	$32, %r12
	addq	%rsi, %r12
	adcq	%rbp, %rbx
	movl	%r14d, %esi
	adcq	%rsi, %rcx
	addq	%rax, %r12
	adcq	%r13, %rbx
	adcq	%r11, %rcx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	movl	%eax, (%rdi)
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movq	%rdx, %rsi
	andq	%rax, %rsi
	shlq	$32, %rax
	addq	-16(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %rbp
	shlq	$32, %r14
	orq	%r10, %r14
	movq	%rcx, %r10
	shldq	$32, %rbx, %r10
	addq	-8(%rsp), %rsi                  # 8-byte Folded Reload
	shrq	$32, %rcx
	shldq	$32, %r12, %rbx
	movq	-88(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rax
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	shldq	$32, %rdx, %r8
	movq	%rax, %rdx
	shrq	$32, %rdx
	shldq	$32, %r8, %rdx
	shldq	$32, %rsi, %r8
	shlq	$32, %rsi
	addq	%rbp, %rsi
	adcq	%r14, %r8
	movl	%r15d, 4(%rdi)
	movl	%eax, %ebp
	adcq	%rbp, %rdx
	movl	%r9d, 8(%rdi)
	addq	%rbx, %rsi
	adcq	%r10, %r8
	movl	%r12d, 12(%rdi)
	adcq	%rcx, %rdx
	movl	%esi, 16(%rdi)
	shrq	$32, %rsi
	movl	%esi, 20(%rdi)
	movl	%r8d, 24(%rdi)
	shrq	$32, %r8
	movl	%r8d, 28(%rdi)
	movl	%edx, 32(%rdi)
	movq	%rdx, %rax
	shrq	$32, %rax
	movl	%eax, 36(%rdi)
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
	.globl	mulUnit_inner192                # -- Begin function mulUnit_inner192
	.p2align	4, 0x90
	.type	mulUnit_inner192,@function
mulUnit_inner192:                       # @mulUnit_inner192
# %bb.0:
	pushq	%rbx
	movq	%rdi, %rax
	movl	(%rsi), %edi
	movl	4(%rsi), %r8d
	movl	%edx, %edx
	imulq	%rdx, %rdi
	movl	%edi, %r9d
	movq	%rdi, %rcx
	shrq	$32, %rcx
	imulq	%rdx, %r8
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	andq	%r8, %rdi
	orq	%rcx, %rdi
	movl	8(%rsi), %r10d
	imulq	%rdx, %r10
	movl	12(%rsi), %r11d
	imulq	%rdx, %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %ebx
	imulq	%rdx, %rbx
	movl	20(%rsi), %esi
	imulq	%rdx, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	shlq	$32, %r8
	orq	%r9, %r8
	movl	%r10d, %r9d
	shlq	$32, %r11
	orq	%r9, %r11
	movl	%ebx, %r9d
	shlq	$32, %rsi
	shldq	$32, %r10, %rcx
	shldq	$32, %rbx, %rdx
	movq	%rdx, %rbx
	shldq	$32, %rcx, %rbx
	orq	%r9, %rsi
	shldq	$32, %rdi, %rcx
	shrq	$32, %rdx
	shlq	$32, %rdi
	addq	%r8, %rdi
	adcq	%r11, %rcx
	adcq	%rsi, %rbx
	adcq	$0, %rdx
	movq	%rdi, (%rax)
	movq	%rcx, 8(%rax)
	movq	%rbx, 16(%rax)
	movl	%edx, 24(%rax)
	popq	%rbx
	retq
.Lfunc_end153:
	.size	mulUnit_inner192, .Lfunc_end153-mulUnit_inner192
                                        # -- End function
	.globl	mclb_mulUnit6                   # -- Begin function mclb_mulUnit6
	.p2align	4, 0x90
	.type	mclb_mulUnit6,@function
mclb_mulUnit6:                          # @mclb_mulUnit6
# %bb.0:
	pushq	%rbx
	movl	(%rsi), %ecx
	movl	4(%rsi), %r8d
	movl	%edx, %eax
	imulq	%rax, %rcx
	movl	%ecx, %r9d
	shrq	$32, %rcx
	imulq	%rax, %r8
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%r8, %rdx
	orq	%rcx, %rdx
	movl	8(%rsi), %r10d
	imulq	%rax, %r10
	movl	12(%rsi), %r11d
	imulq	%rax, %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %ebx
	imulq	%rax, %rbx
	movl	20(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rsi, %rax
	shrq	$32, %rax
	shlq	$32, %r8
	orq	%r9, %r8
	movl	%r10d, %r9d
	shlq	$32, %r11
	orq	%r9, %r11
	movl	%ebx, %r9d
	shlq	$32, %rsi
	shldq	$32, %r10, %rcx
	shldq	$32, %rbx, %rax
	movq	%rax, %rbx
	shldq	$32, %rcx, %rbx
	shldq	$32, %rdx, %rcx
	orq	%r9, %rsi
	shrq	$32, %rax
	shlq	$32, %rdx
	addq	%r8, %rdx
	adcq	%r11, %rcx
	adcq	%rsi, %rbx
	adcq	$0, %rax
	movl	%edx, (%rdi)
	shrq	$32, %rdx
	movl	%edx, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	retq
.Lfunc_end154:
	.size	mclb_mulUnit6, .Lfunc_end154-mclb_mulUnit6
                                        # -- End function
	.globl	mclb_mulUnitAdd6                # -- Begin function mclb_mulUnitAdd6
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd6,@function
mclb_mulUnitAdd6:                       # @mclb_mulUnitAdd6
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movl	(%rsi), %eax
	movl	4(%rsi), %r8d
	movl	%edx, %r9d
	imulq	%r9, %rax
	movl	%eax, %r11d
	shrq	$32, %rax
	imulq	%r9, %r8
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	andq	%r8, %r10
	orq	%rax, %r10
	movl	8(%rsi), %r14d
	imulq	%r9, %r14
	movl	12(%rsi), %ecx
	imulq	%r9, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	16(%rsi), %ebx
	imulq	%r9, %rbx
	movl	20(%rsi), %edx
	imulq	%r9, %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	shlq	$32, %r8
	orq	%r11, %r8
	movl	%r14d, %r9d
	shlq	$32, %rcx
	orq	%r9, %rcx
	movl	%ebx, %r9d
	shlq	$32, %rdx
	orq	%r9, %rdx
	shldq	$32, %r14, %rax
	shldq	$32, %rbx, %rsi
	movq	%rsi, %rbx
	shldq	$32, %rax, %rbx
	shldq	$32, %r10, %rax
	shrq	$32, %rsi
	shlq	$32, %r10
	addq	(%rdi), %r8
	adcq	8(%rdi), %rcx
	adcq	16(%rdi), %rdx
	setb	%r9b
	addq	%r10, %r8
	adcq	%rax, %rcx
	adcq	%rbx, %rdx
	movzbl	%r9b, %eax
	adcq	%rsi, %rax
	movl	%r8d, (%rdi)
	shrq	$32, %r8
	movl	%r8d, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
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
	movq	%rdi, -64(%rsp)                 # 8-byte Spill
	movl	(%rdx), %ecx
	movq	%rdx, %r14
	movl	(%rsi), %r8d
	movl	4(%rsi), %ebp
	movq	%r8, %rax
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	imulq	%rcx, %rax
	movl	%eax, %r10d
	shrq	$32, %rax
	movq	%rbp, %rbx
	movq	%rbp, %r13
	movq	%rbp, -48(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rbx
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	movq	%rbx, %r9
	andq	%r12, %r9
	orq	%rax, %r9
	movl	8(%rsi), %r11d
	movq	%r11, %rax
	movq	%r11, -16(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rax
	movl	12(%rsi), %edi
	movq	%rdi, %rdx
	movq	%rdi, %r15
	movq	%rdi, -56(%rsp)                 # 8-byte Spill
	imulq	%rcx, %rdx
	movq	%rdx, %rbp
	shrq	$32, %rbp
	shlq	$32, %rbx
	orq	%r10, %rbx
	movl	%eax, %r10d
	shlq	$32, %rdx
	orq	%r10, %rdx
	movl	16(%rsi), %edi
	movq	%rdi, -40(%rsp)                 # 8-byte Spill
	shldq	$32, %rax, %rbp
	movq	%rdi, %rax
	imulq	%rcx, %rax
	movl	20(%rsi), %edi
	imulq	%rdi, %rcx
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movq	%rcx, %rsi
	shrq	$32, %rsi
	shldq	$32, %rax, %rsi
	movl	%eax, %eax
	shlq	$32, %rcx
	movq	%rsi, %r10
	shldq	$32, %rbp, %r10
	shldq	$32, %r9, %rbp
	orq	%rax, %rcx
	shrq	$32, %rsi
	shlq	$32, %r9
	addq	%rbx, %r9
	adcq	%rdx, %rbp
	adcq	%rcx, %r10
	adcq	$0, %rsi
	movq	%r14, -32(%rsp)                 # 8-byte Spill
	movl	4(%r14), %r14d
	movq	%r14, %rax
	imulq	%r8, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%r14, %r8
	imulq	%r13, %r8
	movq	%r8, %r13
	andq	%r12, %r13
	orq	%rcx, %r13
	shldq	$32, %r10, %rsi
	shldq	$32, %rbp, %r10
	movl	%eax, %eax
	shldq	$32, %r9, %rbp
	shlq	$32, %r8
	orq	%rax, %r8
	movq	%r14, %rdx
	imulq	%r11, %rdx
	movq	%r14, %rcx
	imulq	%r15, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	shldq	$32, %rdx, %rax
	movl	%edx, %edx
	shlq	$32, %rcx
	orq	%rdx, %rcx
	movq	%r14, %rdx
	movq	-40(%rsp), %r15                 # 8-byte Reload
	imulq	%r15, %rdx
	imulq	%rdi, %r14
	movq	%r14, %rbx
	shrq	$32, %rbx
	shldq	$32, %rdx, %rbx
	movl	%edx, %r11d
	shlq	$32, %r14
	movq	%rbx, %rdx
	shldq	$32, %rax, %rdx
	shldq	$32, %r13, %rax
	orq	%r11, %r14
	shrq	$32, %rbx
	shlq	$32, %r13
	addq	%rbp, %r8
	adcq	%r10, %rcx
	adcq	%rsi, %r14
	setb	%sil
	addq	%r13, %r8
	adcq	%rax, %rcx
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%r9d, (%rax)
	movzbl	%sil, %r10d
	adcq	%rdx, %r14
	adcq	%rbx, %r10
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	movl	8(%rdi), %edx
	movq	%rdx, %rax
	imulq	-24(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %rsi
	shrq	$32, %rsi
	movq	%rdx, %r13
	imulq	-48(%rsp), %r13                 # 8-byte Folded Reload
	movq	%r13, %r9
	andq	%r12, %r9
	orq	%rsi, %r9
	shldq	$32, %r14, %r10
	shldq	$32, %rcx, %r14
	movl	%eax, %eax
	shldq	$32, %r8, %rcx
	shlq	$32, %r13
	orq	%rax, %r13
	movq	%rdx, %rsi
	imulq	-16(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rdx, %rax
	imulq	-56(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r11
	shrq	$32, %r11
	shldq	$32, %rsi, %r11
	movl	%esi, %esi
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rdx, %rsi
	imulq	%r15, %rsi
	imulq	-8(%rsp), %rdx                  # 8-byte Folded Reload
	movq	%rdx, %rbp
	shrq	$32, %rbp
	shldq	$32, %rsi, %rbp
	movl	%esi, %ebx
	shlq	$32, %rdx
	movq	%rbp, %rsi
	shldq	$32, %r11, %rsi
	shldq	$32, %r9, %r11
	orq	%rbx, %rdx
	shrq	$32, %rbp
	shlq	$32, %r9
	addq	%r13, %r9
	adcq	%rax, %r11
	adcq	%rdx, %rsi
	movq	-64(%rsp), %rax                 # 8-byte Reload
	movl	%r8d, 4(%rax)
	adcq	$0, %rbp
	addq	%rcx, %r9
	adcq	%r14, %r11
	adcq	%r10, %rsi
	adcq	$0, %rbp
	movl	12(%rdi), %ebx
	movq	%rbx, %rax
	movq	-24(%rsp), %r15                 # 8-byte Reload
	imulq	%r15, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%rbx, %r13
	imulq	-48(%rsp), %r13                 # 8-byte Folded Reload
	movq	%r13, %r8
	andq	%r12, %r8
	orq	%rcx, %r8
	shldq	$32, %rsi, %rbp
	shldq	$32, %r11, %rsi
	movl	%eax, %eax
	shldq	$32, %r9, %r11
	shlq	$32, %r13
	orq	%rax, %r13
	movq	%rbx, %rax
	movq	-16(%rsp), %r14                 # 8-byte Reload
	imulq	%r14, %rax
	movq	%rbx, %rdx
	imulq	-56(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, %rcx
	shrq	$32, %rcx
	shldq	$32, %rax, %rcx
	movl	%eax, %eax
	shlq	$32, %rdx
	orq	%rax, %rdx
	movq	%rbx, %rdi
	imulq	-40(%rsp), %rdi                 # 8-byte Folded Reload
	imulq	-8(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rbx, %rax
	shrq	$32, %rax
	shldq	$32, %rdi, %rax
	movl	%edi, %r10d
	shlq	$32, %rbx
	movq	%rax, %rdi
	shldq	$32, %rcx, %rdi
	shldq	$32, %r8, %rcx
	orq	%r10, %rbx
	shrq	$32, %rax
	shlq	$32, %r8
	addq	%r13, %r8
	adcq	%rdx, %rcx
	adcq	%rbx, %rdi
	movq	-64(%rsp), %rdx                 # 8-byte Reload
	movl	%r9d, 8(%rdx)
	adcq	$0, %rax
	addq	%r11, %r8
	adcq	%rsi, %rcx
	adcq	%rbp, %rdi
	adcq	$0, %rax
	movq	-32(%rsp), %rdx                 # 8-byte Reload
	movl	16(%rdx), %esi
	movq	%rsi, %rbp
	imulq	%r15, %rbp
	movq	%rbp, %rdx
	shrq	$32, %rdx
	movq	%rsi, %r11
	imulq	-48(%rsp), %r11                 # 8-byte Folded Reload
	movq	%r11, %r13
	andq	%r12, %r13
	orq	%rdx, %r13
	shldq	$32, %rdi, %rax
	shldq	$32, %rcx, %rdi
	movl	%ebp, %edx
	shldq	$32, %r8, %rcx
	shlq	$32, %r11
	orq	%rdx, %r11
	movq	%rsi, %rbp
	imulq	%r14, %rbp
	movq	%rsi, %rdx
	imulq	-56(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, %r10
	shrq	$32, %r10
	shldq	$32, %rbp, %r10
	movl	%ebp, %ebp
	shlq	$32, %rdx
	orq	%rbp, %rdx
	movq	%rsi, %rbx
	movq	-40(%rsp), %r14                 # 8-byte Reload
	imulq	%r14, %rbx
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	imulq	%rbp, %rsi
	movq	%rsi, %r15
	shrq	$32, %r15
	shldq	$32, %rbx, %r15
	movl	%ebx, %ebx
	shlq	$32, %rsi
	movq	%r15, %r9
	shldq	$32, %r10, %r9
	shldq	$32, %r13, %r10
	orq	%rbx, %rsi
	shrq	$32, %r15
	shlq	$32, %r13
	addq	%r11, %r13
	adcq	%rdx, %r10
	adcq	%rsi, %r9
	movq	-64(%rsp), %r11                 # 8-byte Reload
	movl	%r8d, 12(%r11)
	adcq	$0, %r15
	addq	%rcx, %r13
	adcq	%rdi, %r10
	adcq	%rax, %r9
	adcq	$0, %r15
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movl	20(%rax), %eax
	movq	-24(%rsp), %rdx                 # 8-byte Reload
	imulq	%rax, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	imulq	%rax, %rbx
	andq	%rbx, %r12
	orq	%rcx, %r12
	shldq	$32, %r9, %r15
	shldq	$32, %r10, %r9
	movl	%edx, %edx
	shldq	$32, %r13, %r10
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	imulq	%rax, %rsi
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	imulq	%rax, %rcx
	movq	%r14, %rdi
	imulq	%rax, %rdi
	imulq	%rbp, %rax
	movq	%rcx, %rbp
	shrq	$32, %rbp
	shlq	$32, %rbx
	orq	%rdx, %rbx
	movl	%esi, %edx
	shlq	$32, %rcx
	orq	%rdx, %rcx
	movq	%rax, %rdx
	shrq	$32, %rdx
	shldq	$32, %rsi, %rbp
	movl	%edi, %esi
	shlq	$32, %rax
	shldq	$32, %rdi, %rdx
	movq	%rdx, %rdi
	shldq	$32, %rbp, %rdi
	shldq	$32, %r12, %rbp
	orq	%rsi, %rax
	shrq	$32, %rdx
	shlq	$32, %r12
	addq	%rbx, %r12
	adcq	%rcx, %rbp
	adcq	%rax, %rdi
	movl	%r13d, 16(%r11)
	adcq	$0, %rdx
	addq	%r10, %r12
	adcq	%r9, %rbp
	adcq	%r15, %rdi
	adcq	$0, %rdx
	movl	%r12d, 20(%r11)
	shrq	$32, %r12
	movl	%r12d, 24(%r11)
	movl	%ebp, 28(%r11)
	movq	%rbp, %rcx
	shrq	$32, %rcx
	movl	%ecx, 32(%r11)
	movl	%edi, 36(%r11)
	shrq	$32, %rdi
	movl	%edi, 40(%r11)
	movl	%edx, 44(%r11)
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
	subq	$32, %rsp
	movl	(%rsi), %edx
	movl	4(%rsi), %r15d
	movq	%r15, -80(%rsp)                 # 8-byte Spill
	movq	%rdx, %rax
	imulq	%rdx, %rax
	movl	%eax, %r10d
	shrq	$32, %rax
	imulq	%rdx, %r15
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	%r15, %rbx
	movq	%r15, %r9
	andq	%rcx, %r9
	orq	%rax, %r9
	movl	8(%rsi), %eax
	movq	%rax, -120(%rsp)                # 8-byte Spill
	imulq	%rdx, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	movl	12(%rsi), %r8d
	movq	%r8, -128(%rsp)                 # 8-byte Spill
	imulq	%rdx, %r8
	movq	%r8, %rbp
	movq	%r8, -32(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	movq	%rbp, %r12
	movq	%rbp, -16(%rsp)                 # 8-byte Spill
	shlq	$32, %rbx
	orq	%r10, %rbx
	movl	16(%rsi), %ebp
	movq	%rbp, %r14
	movq	%rbp, %r13
	movq	%rbp, -88(%rsp)                 # 8-byte Spill
	imulq	%rdx, %r14
	movq	%r14, %rcx
	shrq	$32, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movl	20(%rsi), %esi
	imulq	%rsi, %rdx
	movq	%rsi, %r10
	movq	%rdx, %rsi
	movq	%rdx, %rbp
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %rsi
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	shlq	$32, %r8
	movl	%eax, %ecx
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	orq	%rcx, %r8
	shrdq	$32, %r12, %rax
	shlq	$32, %rbp
	movl	%r14d, %ecx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shrdq	$32, %rsi, %r14
	orq	%rcx, %rbp
	movq	%r14, %rcx
	shldq	$32, %rax, %rcx
	shrq	$32, %r14
	shldq	$32, %r9, %rax
	shlq	$32, %r9
	addq	%rbx, %r9
	movq	%r9, -56(%rsp)                  # 8-byte Spill
	adcq	%r8, %rax
	adcq	%rbp, %rcx
	adcq	$0, %r14
	movq	%r15, %rdx
	shrq	$32, %rdx
	movq	-80(%rsp), %rbp                 # 8-byte Reload
	movq	%rbp, %rsi
	imulq	%rbp, %rsi
	movq	%rsi, %r8
	movabsq	$-4294967296, %rbx              # imm = 0xFFFFFFFF00000000
	andq	%rbx, %r8
	orq	%rdx, %r8
	shldq	$32, %rcx, %r14
	movl	%r15d, %edx
	shldq	$32, %rax, %rcx
	shlq	$32, %rsi
	orq	%rdx, %rsi
	shldq	$32, %r9, %rax
	movq	-120(%rsp), %r12                # 8-byte Reload
	movq	%rbp, %r9
	imulq	%rbp, %r12
	movq	-128(%rsp), %rbx                # 8-byte Reload
	imulq	%rbp, %rbx
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	movq	%rbx, %r15
	shrq	$32, %r15
	movq	%r13, %rdx
	imulq	%r9, %rdx
	movq	%r10, %rbp
	movq	%r10, -96(%rsp)                 # 8-byte Spill
	imulq	%r10, %r9
	movq	%r9, %r13
	movq	%r9, -80(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shlq	$32, %rbx
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	movl	%r12d, %r10d
	orq	%rbx, %r10
	shldq	$32, %r12, %r15
	shldq	$32, %rdx, %r13
	movq	%rdx, -24(%rsp)                 # 8-byte Spill
	movq	%r9, %rbx
	shlq	$32, %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	movq	%r13, %r11
	shldq	$32, %r15, %r11
	movl	%edx, %r9d
	orq	%rbx, %r9
	shldq	$32, %r8, %r15
	shrq	$32, %r13
	shlq	$32, %r8
	addq	%rsi, %r8
	adcq	%r10, %r15
	adcq	%r9, %r11
	adcq	$0, %r13
	addq	%rax, %r8
	movq	%r8, %rdx
	movq	%r8, -64(%rsp)                  # 8-byte Spill
	adcq	%rcx, %r15
	adcq	%r14, %r11
	adcq	$0, %r13
	shldq	$32, %r11, %r13
	movq	%r12, %r14
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rax, %r14
	addq	-104(%rsp), %r14                # 8-byte Folded Reload
	shldq	$32, %r15, %r11
	shlq	$32, %r12
	addq	-112(%rsp), %r12                # 8-byte Folded Reload
	movq	-120(%rsp), %r8                 # 8-byte Reload
	movq	%r8, %rcx
	imulq	%r8, %rcx
	movq	-128(%rsp), %rbx                # 8-byte Reload
	imulq	%r8, %rbx
	movq	%rbx, %rax
	shrq	$32, %rax
	shldq	$32, %rcx, %rax
	movl	%ecx, %ecx
	movq	%rbx, %rsi
	shlq	$32, %rsi
	orq	%rcx, %rsi
	shldq	$32, %rdx, %r15
	movq	-88(%rsp), %rdx                 # 8-byte Reload
	imulq	%r8, %rdx
	movq	%rdx, -112(%rsp)                # 8-byte Spill
	imulq	%rbp, %r8
	movq	%r8, -120(%rsp)                 # 8-byte Spill
	movq	%r8, %r10
	shrq	$32, %r10
	shlq	$32, %r8
	movl	%edx, %ecx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	orq	%rcx, %r8
	shldq	$32, %rdx, %r10
	movq	%r10, %r9
	shrq	$32, %r9
	shldq	$32, %rax, %r10
	shldq	$32, %r14, %rax
	shlq	$32, %r14
	addq	%r12, %r14
	adcq	%rsi, %rax
	adcq	%r8, %r10
	adcq	$0, %r9
	addq	%r15, %r14
	adcq	%r11, %rax
	movq	-56(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, (%rdi)
	adcq	%r13, %r10
	movl	-32(%rsp), %r8d                 # 4-byte Reload
	adcq	$0, %r9
	addq	-48(%rsp), %r8                  # 8-byte Folded Reload
	movq	-128(%rsp), %r13                # 8-byte Reload
	movq	%r13, %rsi
	imulq	%r13, %rsi
	movq	%rsi, %rdx
	shlq	$32, %rsi
	movl	%ebx, %ebp
	orq	%rbp, %rsi
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	-40(%rsp), %r12                 # 8-byte Reload
	andq	%rcx, %r12
	addq	-16(%rsp), %r12                 # 8-byte Folded Reload
	shrq	$32, %rdx
	shldq	$32, %rbx, %rdx
	shldq	$32, %r10, %r9
	shldq	$32, %rax, %r10
	shldq	$32, %r14, %rax
	movq	-88(%rsp), %rbp                 # 8-byte Reload
	imulq	%r13, %rbp
	movq	%rbp, %r15
	shrq	$32, %r15
	imulq	-96(%rsp), %r13                 # 8-byte Folded Reload
	movq	%r13, %r11
	shrq	$32, %r11
	shlq	$32, %r13
	movq	%r13, -128(%rsp)                # 8-byte Spill
	movl	%ebp, %ecx
	orq	%r13, %rcx
	movq	%r11, %rbx
	shldq	$32, %rbp, %rbx
	movq	%rbx, %r13
	shrq	$32, %r13
	shldq	$32, %rdx, %rbx
	shldq	$32, %r12, %rdx
	shlq	$32, %r12
	addq	%r8, %r12
	adcq	%rsi, %rdx
	adcq	%rcx, %rbx
	adcq	$0, %r13
	movq	-64(%rsp), %rcx                 # 8-byte Reload
	movl	%ecx, 4(%rdi)
	addq	%rax, %r12
	movq	%r12, %rsi
	adcq	%r10, %rdx
	adcq	%r9, %rbx
	adcq	$0, %r13
	movl	%r14d, 8(%rdi)
	movq	%rdi, %r12
	movq	%rdi, -72(%rsp)                 # 8-byte Spill
	movq	-112(%rsp), %rax                # 8-byte Reload
	shldq	$32, %rax, %r15
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rcx
	movabsq	$-4294967296, %r14              # imm = 0xFFFFFFFF00000000
	andq	%r14, %rcx
	addq	8(%rsp), %rcx                   # 8-byte Folded Reload
	shldq	$32, %rbx, %r13
	shlq	$32, %rax
	addq	(%rsp), %rax                    # 8-byte Folded Reload
	movq	%rax, %r14
	shldq	$32, %rdx, %rbx
	shlq	$32, %rbp
	addq	-104(%rsp), %rbp                # 8-byte Folded Reload
	movq	%rsi, %rdi
	shldq	$32, %rsi, %rdx
	movq	-96(%rsp), %r8                  # 8-byte Reload
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	imulq	%rsi, %r8
	imulq	%rsi, %rsi
	movq	%r8, %rax
	shrq	$32, %rax
	shldq	$32, %rsi, %rax
	movl	%esi, %r9d
	movq	%r8, %rsi
	shlq	$32, %rsi
	movq	%rax, %r10
	shldq	$32, %r15, %r10
	orq	%r9, %rsi
	shldq	$32, %rcx, %r15
	shlq	$32, %rcx
	shrq	$32, %rax
	addq	%r14, %rcx
	adcq	%rbp, %r15
	adcq	%rsi, %r10
	adcq	$0, %rax
	movl	%edi, 12(%r12)
	addq	%rdx, %rcx
	adcq	%rbx, %r15
	adcq	%r13, %r10
	adcq	$0, %rax
	movq	-80(%rsp), %rbx                 # 8-byte Reload
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rdx, %rbx
	movl	16(%rsp), %r14d                 # 4-byte Reload
	shldq	$32, %r10, %rax
	shldq	$32, %r15, %r10
	addq	-8(%rsp), %r14                  # 8-byte Folded Reload
	movq	-120(%rsp), %rdi                # 8-byte Reload
	movl	%edi, %r12d
	addq	-128(%rsp), %r12                # 8-byte Folded Reload
	shldq	$32, %rcx, %r15
	movq	-96(%rsp), %rdx                 # 8-byte Reload
	imulq	%rdx, %rdx
	addq	24(%rsp), %rbx                  # 8-byte Folded Reload
	movq	%rdx, %rsi
	shrq	$32, %rsi
	shldq	$32, %rdi, %r11
	movl	%r8d, %r9d
	shlq	$32, %rdx
	shldq	$32, %r8, %rsi
	movq	%rsi, %rbp
	shldq	$32, %r11, %rbp
	shldq	$32, %rbx, %r11
	orq	%r9, %rdx
	shlq	$32, %rbx
	shrq	$32, %rsi
	addq	%r14, %rbx
	adcq	%r12, %r11
	adcq	%rdx, %rbp
	movq	-72(%rsp), %rdx                 # 8-byte Reload
	movl	%ecx, 16(%rdx)
	adcq	$0, %rsi
	movq	%rbx, %rcx
	addq	%r15, %rcx
	adcq	%r10, %r11
	adcq	%rax, %rbp
	adcq	$0, %rsi
	movl	%ecx, 20(%rdx)
	shrq	$32, %rcx
	movl	%ecx, 24(%rdx)
	movl	%r11d, 28(%rdx)
	shrq	$32, %r11
	movl	%r11d, 32(%rdx)
	movl	%ebp, 36(%rdx)
	shrq	$32, %rbp
	movl	%ebp, 40(%rdx)
	movl	%esi, 44(%rdx)
	addq	$32, %rsp
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
	.globl	mulUnit_inner224                # -- Begin function mulUnit_inner224
	.p2align	4, 0x90
	.type	mulUnit_inner224,@function
mulUnit_inner224:                       # @mulUnit_inner224
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rax
	movl	(%rsi), %edi
	movl	4(%rsi), %r8d
	movl	%edx, %r9d
	imulq	%r9, %rdi
	movl	%edi, %r14d
	movq	%rdi, %rcx
	shrq	$32, %rcx
	imulq	%r9, %r8
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	andq	%r8, %rdi
	orq	%rcx, %rdi
	movl	8(%rsi), %r15d
	imulq	%r9, %r15
	movl	12(%rsi), %r10d
	imulq	%r9, %r10
	movq	%r10, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %ebx
	imulq	%r9, %rbx
	movl	20(%rsi), %r11d
	imulq	%r9, %r11
	movq	%r11, %rdx
	shrq	$32, %rdx
	movl	24(%rsi), %esi
	imulq	%r9, %rsi
	movl	%esi, %r9d
	shrq	$32, %rsi
	shlq	$32, %r8
	orq	%r14, %r8
	movl	%r15d, %r14d
	shlq	$32, %r10
	orq	%r14, %r10
	movl	%ebx, %r14d
	shlq	$32, %r11
	orq	%r14, %r11
	shldq	$32, %r15, %rcx
	shldq	$32, %rbx, %rdx
	shldq	$32, %rdx, %rsi
	shldq	$32, %rcx, %rdx
	shldq	$32, %rdi, %rcx
	shlq	$32, %rdi
	addq	%r8, %rdi
	adcq	%r10, %rcx
	adcq	%r11, %rdx
	adcq	%r9, %rsi
	movq	%rdi, (%rax)
	movq	%rcx, 8(%rax)
	movq	%rdx, 16(%rax)
	movq	%rsi, 24(%rax)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end158:
	.size	mulUnit_inner224, .Lfunc_end158-mulUnit_inner224
                                        # -- End function
	.globl	mclb_mulUnit7                   # -- Begin function mclb_mulUnit7
	.p2align	4, 0x90
	.type	mclb_mulUnit7,@function
mclb_mulUnit7:                          # @mclb_mulUnit7
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movl	(%rsi), %eax
	movl	4(%rsi), %r8d
	movl	%edx, %r9d
	imulq	%r9, %rax
	movl	%eax, %r14d
	shrq	$32, %rax
	imulq	%r9, %r8
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	andq	%r8, %rcx
	orq	%rax, %rcx
	movl	8(%rsi), %r15d
	imulq	%r9, %r15
	movl	12(%rsi), %r10d
	imulq	%r9, %r10
	movq	%r10, %rax
	shrq	$32, %rax
	movl	16(%rsi), %ebx
	imulq	%r9, %rbx
	movl	20(%rsi), %r11d
	imulq	%r9, %r11
	movq	%r11, %rdx
	shrq	$32, %rdx
	movl	24(%rsi), %esi
	imulq	%r9, %rsi
	movl	%esi, %r9d
	shrq	$32, %rsi
	shlq	$32, %r8
	orq	%r14, %r8
	movl	%r15d, %r14d
	shlq	$32, %r10
	orq	%r14, %r10
	movl	%ebx, %r14d
	shlq	$32, %r11
	orq	%r14, %r11
	shldq	$32, %r15, %rax
	shldq	$32, %rbx, %rdx
	shldq	$32, %rdx, %rsi
	shldq	$32, %rax, %rdx
	shldq	$32, %rcx, %rax
	shlq	$32, %rcx
	addq	%r8, %rcx
	adcq	%r10, %rax
	adcq	%r11, %rdx
	adcq	%r9, %rsi
	movl	%ecx, (%rdi)
	shrq	$32, %rcx
	movl	%ecx, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
	movl	%esi, 24(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end159:
	.size	mclb_mulUnit7, .Lfunc_end159-mclb_mulUnit7
                                        # -- End function
	.globl	mclb_mulUnitAdd7                # -- Begin function mclb_mulUnitAdd7
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd7,@function
mclb_mulUnitAdd7:                       # @mclb_mulUnitAdd7
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %eax
	movl	4(%rsi), %r9d
	movl	%edx, %r8d
	imulq	%r8, %rax
	movl	%eax, %r14d
	shrq	$32, %rax
	imulq	%r8, %r9
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	andq	%r9, %r10
	orq	%rax, %r10
	movl	8(%rsi), %r12d
	imulq	%r8, %r12
	movl	12(%rsi), %edx
	imulq	%r8, %rdx
	movq	%rdx, %r11
	shrq	$32, %r11
	movl	16(%rsi), %ebx
	imulq	%r8, %rbx
	movl	20(%rsi), %ecx
	imulq	%r8, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	24(%rsi), %r15d
	imulq	%r8, %r15
	movq	%r15, %rsi
	shrq	$32, %rsi
	shlq	$32, %r9
	orq	%r14, %r9
	movl	%r12d, %r8d
	shlq	$32, %rdx
	orq	%r8, %rdx
	movl	%ebx, %r8d
	shlq	$32, %rcx
	shldq	$32, %r12, %r11
	shldq	$32, %rbx, %rax
	shldq	$32, %rax, %rsi
	shldq	$32, %r11, %rax
	shldq	$32, %r10, %r11
	orq	%r8, %rcx
	shlq	$32, %r10
	addq	(%rdi), %r9
	adcq	8(%rdi), %rdx
	adcq	16(%rdi), %rcx
	movl	%r15d, %r8d
	movl	24(%rdi), %ebx
	adcq	%r8, %rbx
	addq	%r10, %r9
	adcq	%r11, %rdx
	adcq	%rax, %rcx
	adcq	%rsi, %rbx
	movl	%r9d, (%rdi)
	shrq	$32, %r9
	movl	%r9d, 4(%rdi)
	movl	%edx, 8(%rdi)
	shrq	$32, %rdx
	movl	%edx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%ebx, 24(%rdi)
	movq	%rbx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movl	(%rdx), %r9d
	movl	(%rsi), %ecx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	4(%rsi), %r13d
	imulq	%r9, %rcx
	movl	%ecx, %ebp
	shrq	$32, %rcx
	movq	%r13, %rbx
	movq	%r13, -32(%rsp)                 # 8-byte Spill
	imulq	%r9, %rbx
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	movq	%rbx, %r15
	andq	%rax, %r15
	orq	%rcx, %r15
	movl	8(%rsi), %eax
	movq	%rax, %r8
	movq	%rax, %r12
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	imulq	%r9, %r8
	movl	12(%rsi), %ecx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	imulq	%r9, %rcx
	movq	%rcx, %r11
	shlq	$32, %rbx
	orq	%rbp, %rbx
	movl	%r8d, %ebp
	shlq	$32, %rcx
	orq	%rbp, %rcx
	movl	16(%rsi), %eax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	imulq	%r9, %rax
	movl	20(%rsi), %edx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	imulq	%r9, %rdx
	movq	%rdx, %r10
	shlq	$32, %rdx
	movl	%eax, %ebp
	orq	%rbp, %rdx
	shrq	$32, %r11
	shldq	$32, %r8, %r11
	shrq	$32, %r10
	shldq	$32, %rax, %r10
	movl	24(%rsi), %eax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	imulq	%rax, %r9
	movq	%r9, %r14
	shrq	$32, %r14
	shldq	$32, %r10, %r14
	shldq	$32, %r11, %r10
	shldq	$32, %r15, %r11
	shlq	$32, %r15
	addq	%rbx, %r15
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	adcq	%rcx, %r11
	movq	%rdi, -16(%rsp)                 # 8-byte Spill
	adcq	%rdx, %r10
	movl	%r9d, %eax
	adcq	%rax, %r14
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	4(%rax), %eax
	movq	%rax, %rsi
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	imulq	%rbx, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rax, %r15
	imulq	%r13, %r15
	movq	%r15, %rcx
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	andq	%rdi, %rcx
	orq	%rdx, %rcx
	movl	%esi, %edx
	movq	%r14, %r9
	shldq	$32, %r10, %r9
	shlq	$32, %r15
	orq	%rdx, %r15
	movq	%rax, %rdx
	imulq	%r12, %rdx
	movq	%rax, %r8
	movq	-56(%rsp), %r13                 # 8-byte Reload
	imulq	%r13, %r8
	movq	%r8, %rsi
	shrq	$32, %rsi
	shldq	$32, %rdx, %rsi
	movl	%edx, %edx
	shlq	$32, %r8
	orq	%rdx, %r8
	movq	%rax, %rbp
	movq	-24(%rsp), %r12                 # 8-byte Reload
	imulq	%r12, %rbp
	movq	%rax, %rdi
	imulq	-64(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rdi, %rdx
	shrq	$32, %rdx
	shldq	$32, %rbp, %rdx
	movl	%ebp, %ebp
	shlq	$32, %rdi
	orq	%rbp, %rdi
	shldq	$32, %r11, %r10
	shrq	$32, %r14
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	shldq	$32, %rbp, %r11
	imulq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %rbp
	shrq	$32, %rbp
	shldq	$32, %rdx, %rbp
	shldq	$32, %rsi, %rdx
	shldq	$32, %rcx, %rsi
	shlq	$32, %rcx
	addq	%r11, %r15
	adcq	%r10, %r8
	adcq	%r9, %rdi
	movl	%eax, %r9d
	adcq	%r14, %r9
	addq	%rcx, %r15
	adcq	%rsi, %r8
	adcq	%rdx, %rdi
	adcq	%rbp, %r9
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	8(%rax), %eax
	movq	%rax, %rsi
	imulq	%rbx, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movq	%rax, %r11
	imulq	-32(%rsp), %r11                 # 8-byte Folded Reload
	movq	%r11, %rbx
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	andq	%rcx, %rbx
	orq	%rdx, %rbx
	movl	%esi, %edx
	shlq	$32, %r11
	orq	%rdx, %r11
	movq	%rax, %r10
	imulq	-40(%rsp), %r10                 # 8-byte Folded Reload
	movq	%rax, %rsi
	imulq	%r13, %rsi
	movq	%rsi, %r14
	shlq	$32, %rsi
	movl	%r10d, %ebp
	orq	%rbp, %rsi
	movq	%rax, %rdx
	imulq	%r12, %rdx
	movq	%rax, %rcx
	movq	-64(%rsp), %r12                 # 8-byte Reload
	imulq	%r12, %rcx
	movq	%rcx, %rbp
	shlq	$32, %rcx
	movl	%edx, %r13d
	orq	%r13, %rcx
	shrq	$32, %r14
	shldq	$32, %r10, %r14
	shrq	$32, %rbp
	shldq	$32, %rdx, %rbp
	movq	%r9, %rdx
	shrq	$32, %rdx
	shldq	$32, %rdi, %r9
	shldq	$32, %r8, %rdi
	shldq	$32, %r15, %r8
	imulq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r10
	shrq	$32, %r10
	shldq	$32, %rbp, %r10
	shldq	$32, %r14, %rbp
	shldq	$32, %rbx, %r14
	shlq	$32, %rbx
	addq	%r11, %rbx
	adcq	%rsi, %r14
	adcq	%rcx, %rbp
	movl	%eax, %eax
	adcq	%rax, %r10
	addq	%r8, %rbx
	adcq	%rdi, %r14
	adcq	%r9, %rbp
	adcq	%rdx, %r10
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	12(%rax), %r11d
	movq	%r11, %rcx
	imulq	-48(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	%r11, %r9
	imulq	-32(%rsp), %r9                  # 8-byte Folded Reload
	movq	%r9, %rax
	movabsq	$-4294967296, %rsi              # imm = 0xFFFFFFFF00000000
	andq	%rsi, %rax
	orq	%rdx, %rax
	movl	%ecx, %ecx
	shlq	$32, %r9
	orq	%rcx, %r9
	movq	%r11, %rcx
	imulq	-40(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%r11, %rdi
	imulq	-56(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rdi, %r8
	shlq	$32, %rdi
	movl	%ecx, %edx
	orq	%rdx, %rdi
	movq	%r11, %rsi
	imulq	-24(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%r11, %r13
	imulq	%r12, %r13
	movq	%r13, %rdx
	shlq	$32, %r13
	movl	%esi, %r12d
	orq	%r12, %r13
	shrq	$32, %r8
	shldq	$32, %rcx, %r8
	shrq	$32, %rdx
	shldq	$32, %rsi, %rdx
	movq	%r10, %rcx
	shrq	$32, %rcx
	shldq	$32, %rbp, %r10
	shldq	$32, %r14, %rbp
	shldq	$32, %rbx, %r14
	imulq	-72(%rsp), %r11                 # 8-byte Folded Reload
	movq	%r11, %r12
	shrq	$32, %r12
	shldq	$32, %rdx, %r12
	shldq	$32, %r8, %rdx
	shldq	$32, %rax, %r8
	shlq	$32, %rax
	addq	%r9, %rax
	adcq	%rdi, %r8
	adcq	%r13, %rdx
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movq	-8(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, (%rsi)
	movl	%r11d, %edi
	adcq	%rdi, %r12
	movl	%r15d, 4(%rsi)
	addq	%r14, %rax
	adcq	%rbp, %r8
	adcq	%r10, %rdx
	adcq	%rcx, %r12
	movl	%ebx, 8(%rsi)
	movl	%eax, 12(%rsi)
	movq	%r12, %r10
	shldq	$32, %rdx, %r12
	shldq	$32, %r8, %rdx
	shldq	$32, %rax, %r8
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	16(%rax), %esi
	movq	%rsi, %rax
	imulq	-48(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%rsi, %r9
	imulq	-32(%rsp), %r9                  # 8-byte Folded Reload
	movq	%r9, %r11
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	andq	%rdi, %r11
	orq	%rcx, %r11
	movl	%eax, %eax
	shlq	$32, %r9
	orq	%rax, %r9
	movq	%rsi, %rax
	imulq	-40(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rsi, %rdi
	imulq	-56(%rsp), %rdi                 # 8-byte Folded Reload
	movq	%rdi, %r15
	shrq	$32, %r15
	shldq	$32, %rax, %r15
	movl	%eax, %eax
	shlq	$32, %rdi
	orq	%rax, %rdi
	movq	%rsi, %rax
	movq	-24(%rsp), %r13                 # 8-byte Reload
	imulq	%r13, %rax
	movq	%rsi, %rbp
	imulq	-64(%rsp), %rbp                 # 8-byte Folded Reload
	movq	%rbp, %rbx
	shrq	$32, %rbx
	shldq	$32, %rax, %rbx
	movl	%eax, %eax
	shlq	$32, %rbp
	orq	%rax, %rbp
	shrq	$32, %r10
	imulq	-72(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, %r14
	shrq	$32, %r14
	shldq	$32, %rbx, %r14
	shldq	$32, %r15, %rbx
	shldq	$32, %r11, %r15
	shlq	$32, %r11
	addq	%r9, %r11
	adcq	%rdi, %r15
	adcq	%rbp, %rbx
	movl	%esi, %esi
	adcq	%rsi, %r14
	addq	%r8, %r11
	adcq	%rdx, %r15
	adcq	%r12, %rbx
	adcq	%r10, %r14
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	20(%rax), %ecx
	movq	%rcx, %rbp
	imulq	-48(%rsp), %rbp                 # 8-byte Folded Reload
	movq	%rbp, %rdi
	shrq	$32, %rdi
	movq	%rcx, %r12
	imulq	-32(%rsp), %r12                 # 8-byte Folded Reload
	movq	%r12, %r9
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rax, %r9
	orq	%rdi, %r9
	movl	%ebp, %edi
	shlq	$32, %r12
	orq	%rdi, %r12
	movq	%rcx, %rbp
	imulq	-40(%rsp), %rbp                 # 8-byte Folded Reload
	movq	%rcx, %rdx
	imulq	-56(%rsp), %rdx                 # 8-byte Folded Reload
	movq	%rdx, %r10
	shlq	$32, %rdx
	movl	%ebp, %edi
	orq	%rdi, %rdx
	movq	%rcx, %rsi
	imulq	%r13, %rsi
	movq	%rcx, %rax
	imulq	-64(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r13
	shlq	$32, %rax
	movl	%esi, %edi
	orq	%rdi, %rax
	shrq	$32, %r10
	shldq	$32, %rbp, %r10
	shrq	$32, %r13
	shldq	$32, %rsi, %r13
	movq	%r14, %rsi
	shrq	$32, %rsi
	shldq	$32, %rbx, %r14
	shldq	$32, %r15, %rbx
	shldq	$32, %r11, %r15
	imulq	-72(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, %r8
	shrq	$32, %r8
	shldq	$32, %r13, %r8
	shldq	$32, %r10, %r13
	shldq	$32, %r9, %r10
	shlq	$32, %r9
	addq	%r12, %r9
	adcq	%rdx, %r10
	adcq	%rax, %r13
	movl	%ecx, %eax
	adcq	%rax, %r8
	addq	%r15, %r9
	adcq	%rbx, %r10
	adcq	%r14, %r13
	adcq	%rsi, %r8
	movq	-80(%rsp), %rax                 # 8-byte Reload
	movl	24(%rax), %r15d
	movq	-48(%rsp), %rcx                 # 8-byte Reload
	imulq	%r15, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movq	-32(%rsp), %rdi                 # 8-byte Reload
	imulq	%r15, %rdi
	movabsq	$-4294967296, %rbx              # imm = 0xFFFFFFFF00000000
	andq	%rdi, %rbx
	orq	%rax, %rbx
	movl	%ecx, %r14d
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	imulq	%r15, %rbp
	movq	-56(%rsp), %rdx                 # 8-byte Reload
	imulq	%r15, %rdx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	imulq	%r15, %rax
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	imulq	%r15, %rsi
	imulq	-72(%rsp), %r15                 # 8-byte Folded Reload
	movq	%rdx, %rcx
	shrq	$32, %rcx
	shlq	$32, %rdi
	orq	%r14, %rdi
	movl	%ebp, %r12d
	movq	%rbp, %r14
	shlq	$32, %rdx
	orq	%r12, %rdx
	movq	%rsi, %rbp
	shldq	$32, %r14, %rcx
	movl	%eax, %r14d
	shlq	$32, %rsi
	orq	%r14, %rsi
	movq	%r8, %r14
	shrq	$32, %r14
	shldq	$32, %r13, %r8
	shldq	$32, %r10, %r13
	shldq	$32, %r9, %r10
	shrq	$32, %rbp
	shldq	$32, %rax, %rbp
	movq	%r15, %rax
	shrq	$32, %rax
	shldq	$32, %rbp, %rax
	shldq	$32, %rcx, %rbp
	shldq	$32, %rbx, %rcx
	shlq	$32, %rbx
	addq	%rdi, %rbx
	adcq	%rdx, %rcx
	adcq	%rsi, %rbp
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movl	%r11d, 16(%rdx)
	movl	%r15d, %edi
	adcq	%rdi, %rax
	movl	%r9d, 20(%rdx)
	addq	%r10, %rbx
	adcq	%r13, %rcx
	adcq	%r8, %rbp
	adcq	%r14, %rax
	movl	%ebx, 24(%rdx)
	shrq	$32, %rbx
	movl	%ebx, 28(%rdx)
	movl	%ecx, 32(%rdx)
	shrq	$32, %rcx
	movl	%ecx, 36(%rdx)
	movl	%ebp, 40(%rdx)
	movq	%rbp, %rsi
	shrq	$32, %rsi
	movl	%esi, 44(%rdx)
	movl	%eax, 48(%rdx)
	shrq	$32, %rax
	movl	%eax, 52(%rdx)
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
	subq	$88, %rsp
	movl	(%rsi), %r10d
	movl	4(%rsi), %r8d
	movq	%r8, -24(%rsp)                  # 8-byte Spill
	movq	%r10, %rax
	imulq	%r10, %rax
	movl	%eax, %edx
	shrq	$32, %rax
	imulq	%r10, %r8
	movabsq	$-4294967296, %rcx              # imm = 0xFFFFFFFF00000000
	movq	%r8, %r13
	movq	%r8, %r15
	andq	%rcx, %r15
	orq	%rax, %r15
	movl	8(%rsi), %r14d
	movq	%r14, %rax
	movq	%r14, -32(%rsp)                 # 8-byte Spill
	imulq	%r10, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	movq	%rcx, -128(%rsp)                # 8-byte Spill
	movl	12(%rsi), %ecx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	movq	%rcx, %rbp
	imulq	%r10, %rbp
	movq	%rbp, %r9
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	shrq	$32, %r9
	movq	%r9, -64(%rsp)                  # 8-byte Spill
	shlq	$32, %r13
	orq	%rdx, %r13
	movl	16(%rsi), %edx
	movq	%rdx, -120(%rsp)                # 8-byte Spill
	imulq	%r10, %rdx
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movl	20(%rsi), %ecx
	movq	%rcx, -96(%rsp)                 # 8-byte Spill
	movq	%rcx, %rbx
	imulq	%r10, %rbx
	movq	%rbx, %rcx
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	shrq	$32, %rcx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movl	24(%rsi), %esi
	imulq	%rsi, %r10
	movq	%rsi, %r11
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movq	%r10, %r12
	shrq	$32, %r12
	movq	%r12, 80(%rsp)                  # 8-byte Spill
	movq	%rbp, %rsi
	shlq	$32, %rsi
	movl	%eax, %ebp
	movq	%rbp, -56(%rsp)                 # 8-byte Spill
	orq	%rbp, %rsi
	shlq	$32, %rbx
	movl	%edx, %ebp
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	orq	%rbp, %rbx
	shrdq	$32, %r9, %rax
	shrdq	$32, %rcx, %rdx
	shldq	$32, %rdx, %r12
	shldq	$32, %rax, %rdx
	shldq	$32, %r15, %rax
	shlq	$32, %r15
	addq	%r13, %r15
	movq	%r15, %rbp
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	adcq	%rsi, %rax
	adcq	%rbx, %rdx
	movl	%r10d, %ecx
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	adcq	%rcx, %r12
	movq	%r8, %rsi
	shrq	$32, %rsi
	movq	-24(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %r15
	imulq	%r9, %r15
	movq	%r15, %rcx
	movabsq	$-4294967296, %rbx              # imm = 0xFFFFFFFF00000000
	andq	%rbx, %rcx
	orq	%rsi, %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movl	%r8d, %esi
	movq	%r12, %rcx
	shldq	$32, %rdx, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	shlq	$32, %r15
	orq	%rsi, %r15
	shldq	$32, %rax, %rdx
	shrq	$32, %r12
	shldq	$32, %rbp, %rax
	imulq	%r9, %r14
	movq	-104(%rsp), %rsi                # 8-byte Reload
	imulq	%r9, %rsi
	movq	%rsi, %r13
	movq	%rsi, %r10
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	shrq	$32, %r13
	movq	-120(%rsp), %rcx                # 8-byte Reload
	imulq	%r9, %rcx
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	imulq	%r9, %rsi
	movq	%rsi, %rbx
	movq	%rsi, %rbp
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	shrq	$32, %rbx
	imulq	%r11, %r9
	movq	%r9, %r8
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	shrq	$32, %r8
	shlq	$32, %r10
	movq	%r10, (%rsp)                    # 8-byte Spill
	movl	%r14d, %r11d
	orq	%r10, %r11
	shlq	$32, %rbp
	movq	%rbp, 24(%rsp)                  # 8-byte Spill
	movq	%rcx, -112(%rsp)                # 8-byte Spill
	movl	%ecx, %r10d
	orq	%rbp, %r10
	shldq	$32, %r14, %r13
	shldq	$32, %rcx, %rbx
	shldq	$32, %rbx, %r8
	shldq	$32, %r13, %rbx
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	shldq	$32, %rcx, %r13
	shlq	$32, %rcx
	addq	%r15, %rcx
	movq	%rcx, %rbp
	adcq	%r11, %r13
	adcq	%r10, %rbx
	movl	%r9d, %ecx
	adcq	%rcx, %r8
	addq	%rax, %rbp
	movq	%rbp, -40(%rsp)                 # 8-byte Spill
	adcq	%rdx, %r13
	adcq	-80(%rsp), %rbx                 # 8-byte Folded Reload
	adcq	%r12, %r8
	movq	%r14, %r10
	movabsq	$-4294967296, %rax              # imm = 0xFFFFFFFF00000000
	andq	%rax, %r10
	addq	-128(%rsp), %r10                # 8-byte Folded Reload
	movq	%r8, %rax
	shldq	$32, %rbx, %rax
	movq	%rax, -128(%rsp)                # 8-byte Spill
	shlq	$32, %r14
	addq	-56(%rsp), %r14                 # 8-byte Folded Reload
	movq	%r14, %rsi
	movq	-32(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %rax
	imulq	%r9, %rax
	movq	-104(%rsp), %r14                # 8-byte Reload
	imulq	%r9, %r14
	movq	%r14, %r11
	shrq	$32, %r11
	shldq	$32, %rax, %r11
	movl	%eax, %eax
	movq	%r14, %rdx
	shlq	$32, %rdx
	orq	%rax, %rdx
	shrq	$32, %r8
	shldq	$32, %r13, %rbx
	shldq	$32, %rbp, %r13
	movq	-120(%rsp), %r15                # 8-byte Reload
	imulq	%r9, %r15
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	imulq	%r9, %rcx
	movq	%rcx, %rax
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	imulq	-88(%rsp), %r9                  # 8-byte Folded Reload
	movq	%r9, %r12
	movq	%r9, -32(%rsp)                  # 8-byte Spill
	shrq	$32, %r12
	movq	%rcx, %rbp
	shlq	$32, %rbp
	movq	%r15, -8(%rsp)                  # 8-byte Spill
	movl	%r15d, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	orq	%rcx, %rbp
	shldq	$32, %r15, %rax
	shldq	$32, %rax, %r12
	shldq	$32, %r11, %rax
	shldq	$32, %r10, %r11
	shlq	$32, %r10
	addq	%rsi, %r10
	adcq	%rdx, %r11
	adcq	%rbp, %rax
	movl	%r9d, %ecx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	adcq	%rcx, %r12
	addq	%r13, %r10
	movq	%r10, %r15
	movq	%r10, -16(%rsp)                 # 8-byte Spill
	adcq	%rbx, %r11
	adcq	-128(%rsp), %rax                # 8-byte Folded Reload
	movq	%rdi, -128(%rsp)                # 8-byte Spill
	adcq	%r8, %r12
	movl	-72(%rsp), %r10d                # 4-byte Reload
	addq	(%rsp), %r10                    # 8-byte Folded Reload
	movq	-104(%rsp), %r8                 # 8-byte Reload
	movq	%r8, %rdx
	imulq	%r8, %rdx
	movq	%rdx, %rcx
	shlq	$32, %rdx
	movl	%r14d, %esi
	orq	%rsi, %rdx
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	andq	%rdi, %rsi
	addq	-64(%rsp), %rsi                 # 8-byte Folded Reload
	movq	%rsi, %rbx
	shrq	$32, %rcx
	shldq	$32, %r14, %rcx
	movq	%r12, %r9
	shldq	$32, %rax, %r9
	shldq	$32, %r11, %rax
	shldq	$32, %r15, %r11
	shrq	$32, %r12
	movq	-120(%rsp), %rsi                # 8-byte Reload
	imulq	%r8, %rsi
	movq	%rsi, %rdi
	shrq	$32, %rdi
	movq	-96(%rsp), %r14                 # 8-byte Reload
	imulq	%r8, %r14
	movq	%r14, %r13
	shrq	$32, %r13
	imulq	-88(%rsp), %r8                  # 8-byte Folded Reload
	movq	%r8, %r15
	movq	%r8, -104(%rsp)                 # 8-byte Spill
	shrq	$32, %r15
	movq	%r15, -64(%rsp)                 # 8-byte Spill
	shlq	$32, %r14
	movq	%r14, %rbp
	movq	%r14, -72(%rsp)                 # 8-byte Spill
	movl	%esi, %r14d
	orq	%rbp, %r14
	movq	%r13, %rbp
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbp, %r15
	shldq	$32, %rcx, %rbp
	shldq	$32, %rbx, %rcx
	shlq	$32, %rbx
	addq	%r10, %rbx
	adcq	%rdx, %rcx
	adcq	%r14, %rbp
	movl	%r8d, %edx
	adcq	%rdx, %r15
	addq	%r11, %rbx
	movq	%rbx, %r8
	movq	%rbx, -48(%rsp)                 # 8-byte Spill
	adcq	%rax, %rcx
	adcq	%r9, %rbp
	movq	16(%rsp), %rax                  # 8-byte Reload
	movq	-128(%rsp), %r10                # 8-byte Reload
	movl	%eax, (%r10)
	adcq	%r12, %r15
	movq	-112(%rsp), %rax                # 8-byte Reload
	movq	%rax, %r14
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rdx, %r14
	addq	32(%rsp), %r14                  # 8-byte Folded Reload
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	shldq	$32, %rdx, %rdi
	shlq	$32, %rax
	addq	48(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, -112(%rsp)                # 8-byte Spill
	movq	%r15, %rbx
	shldq	$32, %rbp, %rbx
	shlq	$32, %rsi
	addq	8(%rsp), %rsi                   # 8-byte Folded Reload
	movq	-120(%rsp), %r12                # 8-byte Reload
	movq	%r12, %rdx
	imulq	%r12, %rdx
	movq	-96(%rsp), %r9                  # 8-byte Reload
	imulq	%r12, %r9
	movq	%r9, %rax
	shrq	$32, %rax
	shldq	$32, %rdx, %rax
	movl	%edx, %r11d
	movq	%r9, %rdx
	shlq	$32, %rdx
	orq	%r11, %rdx
	shrq	$32, %r15
	shldq	$32, %rcx, %rbp
	shldq	$32, %r8, %rcx
	movq	-88(%rsp), %r8                  # 8-byte Reload
	imulq	%r8, %r12
	movq	%r12, %r11
	movq	%r12, -120(%rsp)                # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %rax, %r12
	shldq	$32, %rdi, %rax
	shldq	$32, %r14, %rdi
	shlq	$32, %r14
	addq	-112(%rsp), %r14                # 8-byte Folded Reload
	adcq	%rsi, %rdi
	adcq	%rdx, %rax
	movq	-40(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, 4(%r10)
	movl	%r11d, %esi
	movq	%rsi, -112(%rsp)                # 8-byte Spill
	adcq	%rsi, %r12
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	movl	%esi, 8(%r10)
	movq	%r10, %r11
	addq	%rcx, %r14
	adcq	%rbp, %rdi
	adcq	%rbx, %rax
	adcq	%r15, %r12
	movl	56(%rsp), %r10d                 # 4-byte Reload
	addq	24(%rsp), %r10                  # 8-byte Folded Reload
	movq	-80(%rsp), %rbp                 # 8-byte Reload
	movl	%ebp, %r15d
	addq	-72(%rsp), %r15                 # 8-byte Folded Reload
	movq	%r8, %rbx
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	imulq	%rsi, %rbx
	imulq	%rsi, %rsi
	movq	%rsi, %rcx
	shlq	$32, %rsi
	movl	%r9d, %edx
	orq	%rdx, %rsi
	shldq	$32, %rbp, %r13
	movq	40(%rsp), %r8                   # 8-byte Reload
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	andq	%rdx, %r8
	addq	64(%rsp), %r8                   # 8-byte Folded Reload
	shrq	$32, %rcx
	shldq	$32, %r9, %rcx
	movq	%r12, %r9
	shldq	$32, %rax, %r9
	shldq	$32, %rdi, %rax
	shrq	$32, %r12
	shldq	$32, %r14, %rdi
	movq	%rbx, %rdx
	shrq	$32, %rdx
	movq	%rdx, %rbp
	shldq	$32, %rcx, %rbp
	shldq	$32, %r13, %rcx
	shldq	$32, %r8, %r13
	shlq	$32, %r8
	addq	%r10, %r8
	adcq	%r15, %r13
	adcq	%rsi, %rcx
	movl	%ebx, %esi
	adcq	%rsi, %rbp
	addq	%rdi, %r8
	adcq	%rax, %r13
	adcq	%r9, %rcx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movl	%eax, 12(%r11)
	adcq	%r12, %rbp
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	movq	-24(%rsp), %rax                 # 8-byte Reload
	andq	%rax, %r12
	shlq	$32, %rax
	addq	72(%rsp), %rax                  # 8-byte Folded Reload
	movq	%rax, %r15
	movq	-104(%rsp), %r11                # 8-byte Reload
	shlq	$32, %r11
	addq	-56(%rsp), %r11                 # 8-byte Folded Reload
	shlq	$32, %rbx
	addq	-112(%rsp), %rbx                # 8-byte Folded Reload
	movq	-32(%rsp), %rax                 # 8-byte Reload
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rax, %rsi
	addq	80(%rsp), %r12                  # 8-byte Folded Reload
	movq	%rbp, %r9
	shldq	$32, %rcx, %r9
	shrq	$32, %rbp
	shldq	$32, %r13, %rcx
	shldq	$32, %r8, %r13
	movq	-88(%rsp), %rax                 # 8-byte Reload
	imulq	%rax, %rax
	movq	-120(%rsp), %rdi                # 8-byte Reload
	shldq	$32, %rdi, %rdx
	movq	%rax, %r10
	shrq	$32, %r10
	shldq	$32, %rdx, %r10
	shldq	$32, %rsi, %rdx
	shldq	$32, %r12, %rsi
	shlq	$32, %r12
	addq	%r15, %r12
	adcq	%r11, %rsi
	adcq	%rbx, %rdx
	movq	-128(%rsp), %rbx                # 8-byte Reload
	movl	%r14d, 16(%rbx)
	movl	%eax, %edi
	adcq	%rdi, %r10
	movl	%r8d, 20(%rbx)
	addq	%r13, %r12
	adcq	%rcx, %rsi
	movq	%rsi, %r14
	adcq	%r9, %rdx
	adcq	%rbp, %r10
	movl	%r12d, 24(%rbx)
	shrq	$32, %r12
	movl	%r12d, 28(%rbx)
	movl	%r14d, 32(%rbx)
	shrq	$32, %r14
	movl	%r14d, 36(%rbx)
	movl	%edx, 40(%rbx)
	shrq	$32, %rdx
	movl	%edx, 44(%rbx)
	movl	%r10d, 48(%rbx)
	movq	%r10, %rax
	shrq	$32, %rax
	movl	%eax, 52(%rbx)
	addq	$88, %rsp
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
	.globl	mulUnit_inner256                # -- Begin function mulUnit_inner256
	.p2align	4, 0x90
	.type	mulUnit_inner256,@function
mulUnit_inner256:                       # @mulUnit_inner256
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %ecx
	movl	4(%rsi), %r8d
	movl	%edx, %r10d
	imulq	%r10, %rcx
	movl	%ecx, %r14d
	shrq	$32, %rcx
	imulq	%r10, %r8
	movabsq	$-4294967296, %r9               # imm = 0xFFFFFFFF00000000
	andq	%r8, %r9
	orq	%rcx, %r9
	movl	8(%rsi), %r15d
	imulq	%r10, %r15
	movl	12(%rsi), %r11d
	imulq	%r10, %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %r12d
	imulq	%r10, %r12
	movl	20(%rsi), %eax
	imulq	%r10, %rax
	movq	%rax, %rdx
	shrq	$32, %rdx
	movl	24(%rsi), %r13d
	imulq	%r10, %r13
	movl	28(%rsi), %ebx
	imulq	%r10, %rbx
	movq	%rbx, %rsi
	shrq	$32, %rsi
	shlq	$32, %r8
	orq	%r14, %r8
	movl	%r15d, %r10d
	shlq	$32, %r11
	orq	%r10, %r11
	movl	%r12d, %r10d
	shlq	$32, %rax
	orq	%r10, %rax
	movl	%r13d, %r10d
	shlq	$32, %rbx
	shldq	$32, %r15, %rcx
	shldq	$32, %r12, %rdx
	shldq	$32, %r13, %rsi
	movq	%rsi, %r14
	shldq	$32, %rdx, %r14
	shldq	$32, %rcx, %rdx
	orq	%r10, %rbx
	shldq	$32, %r9, %rcx
	shrq	$32, %rsi
	shlq	$32, %r9
	addq	%r8, %r9
	adcq	%r11, %rcx
	adcq	%rax, %rdx
	adcq	%rbx, %r14
	movq	%rdi, %rax
	adcq	$0, %rsi
	movq	%r9, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	movq	%r14, 24(%rdi)
	movl	%esi, 32(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	retq
.Lfunc_end163:
	.size	mulUnit_inner256, .Lfunc_end163-mulUnit_inner256
                                        # -- End function
	.globl	mclb_mulUnit8                   # -- Begin function mclb_mulUnit8
	.p2align	4, 0x90
	.type	mclb_mulUnit8,@function
mclb_mulUnit8:                          # @mclb_mulUnit8
# %bb.0:
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner256@PLT
	movl	40(%rsp), %eax
	movq	24(%rsp), %rcx
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	%esi, (%rbx)
	shrq	$32, %rsi
	movl	%esi, 4(%rbx)
	movl	%edi, 8(%rbx)
	shrq	$32, %rdi
	movl	%edi, 12(%rbx)
	movl	%ecx, 16(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 20(%rbx)
	movl	%edx, 24(%rbx)
	shrq	$32, %rdx
	movl	%edx, 28(%rbx)
	addq	$48, %rsp
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %ecx
	movl	4(%rsi), %r8d
	movl	%edx, %eax
	imulq	%rax, %rcx
	movl	%ecx, %r14d
	shrq	$32, %rcx
	imulq	%rax, %r8
	movabsq	$-4294967296, %r9               # imm = 0xFFFFFFFF00000000
	andq	%r8, %r9
	orq	%rcx, %r9
	movl	8(%rsi), %r15d
	imulq	%rax, %r15
	movl	12(%rsi), %edx
	imulq	%rax, %rdx
	movq	%rdx, %r10
	shrq	$32, %r10
	movl	16(%rsi), %r12d
	imulq	%rax, %r12
	movl	20(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rbx
	movl	24(%rsi), %r13d
	imulq	%rax, %r13
	movl	28(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rsi, %r11
	shrq	$32, %r11
	shlq	$32, %r8
	orq	%r14, %r8
	movl	%r15d, %eax
	shlq	$32, %rdx
	orq	%rax, %rdx
	movl	%r12d, %eax
	shlq	$32, %rcx
	orq	%rax, %rcx
	movl	%r13d, %eax
	shlq	$32, %rsi
	orq	%rax, %rsi
	shldq	$32, %r15, %r10
	shldq	$32, %r12, %rbx
	shldq	$32, %r13, %r11
	movq	%r11, %r14
	shldq	$32, %rbx, %r14
	shldq	$32, %r10, %rbx
	shldq	$32, %r9, %r10
	shrq	$32, %r11
	shlq	$32, %r9
	addq	(%rdi), %r8
	adcq	8(%rdi), %rdx
	adcq	16(%rdi), %rcx
	adcq	24(%rdi), %rsi
	setb	%al
	movzbl	%al, %eax
	addq	%r9, %r8
	adcq	%r10, %rdx
	adcq	%rbx, %rcx
	adcq	%r14, %rsi
	adcq	%r11, %rax
	movl	%r8d, (%rdi)
	shrq	$32, %r8
	movl	%r8d, 4(%rdi)
	movl	%edx, 8(%rdi)
	shrq	$32, %rdx
	movl	%edx, 12(%rdi)
	movl	%ecx, 16(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 20(%rdi)
	movl	%esi, 24(%rdi)
	shrq	$32, %rsi
	movl	%esi, 28(%rdi)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	subq	$344, %rsp                      # imm = 0x158
	movq	%rdx, (%rsp)                    # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	(%rdx), %edx
	leaq	304(%rsp), %rdi
	movq	%rsi, %r12
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	callq	mulUnit_inner256@PLT
	movl	336(%rsp), %r13d
	movq	320(%rsp), %rbx
	movq	328(%rsp), %r15
	movq	304(%rsp), %rax
	movq	312(%rsp), %r14
	shldq	$32, %r15, %r13
	shldq	$32, %rbx, %r15
	shldq	$32, %r14, %rbx
	movl	%eax, (%rbp)
	shldq	$32, %rax, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	4(%rax), %edx
	leaq	264(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner256@PLT
	addq	264(%rsp), %r14
	adcq	272(%rsp), %rbx
	adcq	280(%rsp), %r15
	movl	296(%rsp), %ebp
	adcq	288(%rsp), %r13
	adcq	$0, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %r15, %r13
	shldq	$32, %rbx, %r15
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	%r14d, 4(%r12)
	shldq	$32, %r14, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	8(%rax), %edx
	leaq	224(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	mulUnit_inner256@PLT
	addq	224(%rsp), %rbx
	adcq	232(%rsp), %r15
	adcq	240(%rsp), %r13
	movl	256(%rsp), %r14d
	adcq	248(%rsp), %rbp
	adcq	$0, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %r15, %r13
	movl	%ebx, 8(%r12)
	shldq	$32, %rbx, %r15
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	12(%rax), %edx
	leaq	184(%rsp), %rdi
	movq	8(%rsp), %r12                   # 8-byte Reload
	movq	%r12, %rsi
	callq	mulUnit_inner256@PLT
	addq	184(%rsp), %r15
	adcq	192(%rsp), %r13
	adcq	200(%rsp), %rbp
	movl	216(%rsp), %ebx
	adcq	208(%rsp), %r14
	adcq	$0, %rbx
	shldq	$32, %r14, %rbx
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 12(%rax)
	shldq	$32, %r15, %r13
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	16(%rax), %edx
	leaq	144(%rsp), %rdi
	movq	%r12, %rsi
	callq	mulUnit_inner256@PLT
	addq	144(%rsp), %r13
	adcq	152(%rsp), %rbp
	adcq	160(%rsp), %r14
	movl	176(%rsp), %r15d
	adcq	168(%rsp), %rbx
	adcq	$0, %r15
	shldq	$32, %rbx, %r15
	shldq	$32, %r14, %rbx
	shldq	$32, %rbp, %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r13d, 16(%rax)
	shldq	$32, %r13, %rbp
	movq	(%rsp), %r12                    # 8-byte Reload
	movl	20(%r12), %edx
	leaq	104(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	mulUnit_inner256@PLT
	addq	104(%rsp), %rbp
	adcq	112(%rsp), %r14
	adcq	120(%rsp), %rbx
	movl	136(%rsp), %r13d
	adcq	128(%rsp), %r15
	adcq	$0, %r13
	shldq	$32, %r15, %r13
	shldq	$32, %rbx, %r15
	shldq	$32, %r14, %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 20(%rax)
	shldq	$32, %rbp, %r14
	movl	24(%r12), %edx
	leaq	64(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	mulUnit_inner256@PLT
	addq	64(%rsp), %r14
	adcq	72(%rsp), %rbx
	adcq	80(%rsp), %r15
	movl	96(%rsp), %ebp
	adcq	88(%rsp), %r13
	adcq	$0, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %r15, %r13
	shldq	$32, %rbx, %r15
	movq	16(%rsp), %r12                  # 8-byte Reload
	movl	%r14d, 24(%r12)
	shldq	$32, %r14, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	28(%rax), %edx
	leaq	24(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	callq	mulUnit_inner256@PLT
	addq	24(%rsp), %rbx
	adcq	32(%rsp), %r15
	adcq	40(%rsp), %r13
	adcq	48(%rsp), %rbp
	movl	56(%rsp), %eax
	adcq	$0, %rax
	movl	%ebx, 28(%r12)
	movq	%rbp, %rcx
	shrq	$32, %rcx
	movq	%r13, %rdx
	shrq	$32, %rdx
	movq	%r15, %rsi
	shrq	$32, %rsi
	shrq	$32, %rbx
	movl	%ebx, 32(%r12)
	movl	%r15d, 36(%r12)
	movl	%esi, 40(%r12)
	movl	%r13d, 44(%r12)
	movl	%edx, 48(%r12)
	movl	%ebp, 52(%r12)
	movl	%ecx, 56(%r12)
	movl	%eax, 60(%r12)
	addq	$344, %rsp                      # imm = 0x158
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
	subq	$328, %rsp                      # imm = 0x148
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movl	(%rsi), %edx
	leaq	288(%rsp), %rdi
	callq	mulUnit_inner256@PLT
	movl	320(%rsp), %r12d
	movq	304(%rsp), %rbx
	movq	312(%rsp), %r14
	movq	288(%rsp), %rax
	movq	296(%rsp), %rbp
	shldq	$32, %r14, %r12
	shldq	$32, %rbx, %r14
	shldq	$32, %rbp, %rbx
	movl	%eax, (%r13)
	shldq	$32, %rax, %rbp
	movl	4(%r15), %edx
	leaq	248(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	248(%rsp), %rbp
	adcq	256(%rsp), %rbx
	adcq	264(%rsp), %r14
	movl	280(%rsp), %r13d
	adcq	272(%rsp), %r12
	adcq	$0, %r13
	shldq	$32, %r12, %r13
	shldq	$32, %r14, %r12
	shldq	$32, %rbx, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ebp, 4(%rax)
	shldq	$32, %rbp, %rbx
	movl	8(%r15), %edx
	leaq	208(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	208(%rsp), %rbx
	adcq	216(%rsp), %r14
	adcq	224(%rsp), %r12
	movl	240(%rsp), %ebp
	adcq	232(%rsp), %r13
	adcq	$0, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %r12, %r13
	shldq	$32, %r14, %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ebx, 8(%rax)
	shldq	$32, %rbx, %r14
	movl	12(%r15), %edx
	leaq	168(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	168(%rsp), %r14
	adcq	176(%rsp), %r12
	adcq	184(%rsp), %r13
	movl	200(%rsp), %ebx
	adcq	192(%rsp), %rbp
	adcq	$0, %rbx
	shldq	$32, %rbp, %rbx
	shldq	$32, %r13, %rbp
	shldq	$32, %r12, %r13
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r14d, 12(%rax)
	shldq	$32, %r14, %r12
	movl	16(%r15), %edx
	leaq	128(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	128(%rsp), %r12
	adcq	136(%rsp), %r13
	adcq	144(%rsp), %rbp
	movl	160(%rsp), %r14d
	adcq	152(%rsp), %rbx
	adcq	$0, %r14
	shldq	$32, %rbx, %r14
	shldq	$32, %rbp, %rbx
	shldq	$32, %r13, %rbp
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r12d, 16(%rax)
	shldq	$32, %r12, %r13
	movl	20(%r15), %edx
	leaq	88(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	88(%rsp), %r13
	adcq	96(%rsp), %rbp
	adcq	104(%rsp), %rbx
	movl	120(%rsp), %r12d
	adcq	112(%rsp), %r14
	adcq	$0, %r12
	shldq	$32, %r14, %r12
	shldq	$32, %rbx, %r14
	shldq	$32, %rbp, %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r13d, 20(%rax)
	shldq	$32, %r13, %rbp
	movl	24(%r15), %edx
	leaq	48(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	48(%rsp), %rbp
	adcq	56(%rsp), %rbx
	adcq	64(%rsp), %r14
	movl	80(%rsp), %r13d
	adcq	72(%rsp), %r12
	adcq	$0, %r13
	shldq	$32, %r12, %r13
	shldq	$32, %r14, %r12
	shldq	$32, %rbx, %r14
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ebp, 24(%rax)
	shldq	$32, %rbp, %rbx
	movl	28(%r15), %edx
	leaq	8(%rsp), %rdi
	movq	%r15, %rsi
	callq	mulUnit_inner256@PLT
	addq	8(%rsp), %rbx
	adcq	16(%rsp), %r14
	adcq	24(%rsp), %r12
	adcq	32(%rsp), %r13
	movl	40(%rsp), %eax
	adcq	$0, %rax
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	%ebx, 28(%rdi)
	movq	%r13, %rcx
	shrq	$32, %rcx
	movq	%r12, %rdx
	shrq	$32, %rdx
	movq	%r14, %rsi
	shrq	$32, %rsi
	shrq	$32, %rbx
	movl	%ebx, 32(%rdi)
	movl	%r14d, 36(%rdi)
	movl	%esi, 40(%rdi)
	movl	%r12d, 44(%rdi)
	movl	%edx, 48(%rdi)
	movl	%r13d, 52(%rdi)
	movl	%ecx, 56(%rdi)
	movl	%eax, 60(%rdi)
	addq	$328, %rsp                      # imm = 0x148
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
	.globl	mulUnit_inner288                # -- Begin function mulUnit_inner288
	.p2align	4, 0x90
	.type	mulUnit_inner288,@function
mulUnit_inner288:                       # @mulUnit_inner288
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r12
	movl	(%rsi), %edi
	movl	4(%rsi), %r8d
	movl	%edx, %r9d
	imulq	%r9, %rdi
	movl	%edi, %eax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	shrq	$32, %rdi
	imulq	%r9, %r8
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	andq	%r8, %r10
	orq	%rdi, %r10
	movl	8(%rsi), %r13d
	imulq	%r9, %r13
	movl	12(%rsi), %r11d
	imulq	%r9, %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	movl	16(%rsi), %ebp
	imulq	%r9, %rbp
	movl	20(%rsi), %r14d
	imulq	%r9, %r14
	movq	%r14, %rdx
	shrq	$32, %rdx
	movl	24(%rsi), %eax
	imulq	%r9, %rax
	movl	28(%rsi), %ebx
	imulq	%r9, %rbx
	movq	%rbx, %rdi
	shrq	$32, %rdi
	movl	32(%rsi), %r15d
	imulq	%r9, %r15
	movq	%r15, %rsi
	shrq	$32, %rsi
	shlq	$32, %r8
	addq	-8(%rsp), %r8                   # 8-byte Folded Reload
	movl	%r13d, %r9d
	shlq	$32, %r11
	orq	%r9, %r11
	movl	%ebp, %r9d
	shlq	$32, %r14
	orq	%r9, %r14
	movl	%eax, %r9d
	shlq	$32, %rbx
	orq	%r9, %rbx
	shldq	$32, %r13, %rcx
	shldq	$32, %rbp, %rdx
	shldq	$32, %rax, %rdi
	shldq	$32, %rdi, %rsi
	shldq	$32, %rdx, %rdi
	shldq	$32, %rcx, %rdx
	shldq	$32, %r10, %rcx
	shlq	$32, %r10
	addq	%r8, %r10
	adcq	%r11, %rcx
	adcq	%r14, %rdx
	adcq	%rbx, %rdi
	movl	%r15d, %eax
	adcq	%rax, %rsi
	movq	%r10, (%r12)
	movq	%rcx, 8(%r12)
	movq	%rdx, 16(%r12)
	movq	%rdi, 24(%r12)
	movq	%rsi, 32(%r12)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end168:
	.size	mulUnit_inner288, .Lfunc_end168-mulUnit_inner288
                                        # -- End function
	.globl	mclb_mulUnit9                   # -- Begin function mclb_mulUnit9
	.p2align	4, 0x90
	.type	mclb_mulUnit9,@function
mclb_mulUnit9:                          # @mclb_mulUnit9
# %bb.0:
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	movq	24(%rsp), %rax
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	%esi, (%rbx)
	shrq	$32, %rsi
	movl	%esi, 4(%rbx)
	movl	%edi, 8(%rbx)
	shrq	$32, %rdi
	movl	%edi, 12(%rbx)
	movl	%eax, 16(%rbx)
	shrq	$32, %rax
	movl	%eax, 20(%rbx)
	movl	%ecx, 24(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 28(%rbx)
	movl	%edx, 32(%rbx)
	movq	%rdx, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$48, %rsp
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
	movl	(%rsi), %eax
	movl	4(%rsi), %r8d
	movl	%edx, %r9d
	imulq	%r9, %rax
	movl	%eax, %r12d
	shrq	$32, %rax
	imulq	%r9, %r8
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	andq	%r8, %r10
	orq	%rax, %r10
	movl	8(%rsi), %r13d
	imulq	%r9, %r13
	movl	12(%rsi), %eax
	imulq	%r9, %rax
	movq	%rax, %r11
	shrq	$32, %r11
	movl	16(%rsi), %ebp
	imulq	%r9, %rbp
	movl	20(%rsi), %edx
	imulq	%r9, %rdx
	movq	%rdx, %r14
	shrq	$32, %r14
	movl	24(%rsi), %r15d
	imulq	%r9, %r15
	movl	28(%rsi), %ecx
	imulq	%r9, %rcx
	movq	%rcx, %rbx
	shrq	$32, %rbx
	movl	32(%rsi), %esi
	imulq	%r9, %rsi
	movq	%rsi, %r9
	shrq	$32, %r9
	shlq	$32, %r8
	orq	%r12, %r8
	movl	%r13d, %r12d
	shlq	$32, %rax
	orq	%r12, %rax
	movl	%ebp, %r12d
	shlq	$32, %rdx
	orq	%r12, %rdx
	movl	%r15d, %r12d
	shlq	$32, %rcx
	shldq	$32, %r13, %r11
	shldq	$32, %rbp, %r14
	shldq	$32, %r15, %rbx
	shldq	$32, %rbx, %r9
	shldq	$32, %r14, %rbx
	shldq	$32, %r11, %r14
	shldq	$32, %r10, %r11
	orq	%r12, %rcx
	shlq	$32, %r10
	addq	(%rdi), %r8
	adcq	8(%rdi), %rax
	adcq	16(%rdi), %rdx
	adcq	24(%rdi), %rcx
	movl	%esi, %ebp
	movl	32(%rdi), %esi
	adcq	%rbp, %rsi
	addq	%r10, %r8
	adcq	%r11, %rax
	adcq	%r14, %rdx
	adcq	%rbx, %rcx
	adcq	%r9, %rsi
	movl	%r8d, (%rdi)
	shrq	$32, %r8
	movl	%r8d, 4(%rdi)
	movl	%eax, 8(%rdi)
	shrq	$32, %rax
	movl	%eax, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%esi, 32(%rdi)
	movq	%rsi, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$392, %rsp                      # imm = 0x188
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rdi, 8(%rsp)                   # 8-byte Spill
	movl	(%rdx), %edx
	leaq	352(%rsp), %rdi
	movq	%rsi, %r14
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	callq	mulUnit_inner288@PLT
	movq	368(%rsp), %r12
	movq	376(%rsp), %rbx
	movq	384(%rsp), %r13
	movq	352(%rsp), %rax
	movq	360(%rsp), %r15
	movl	%eax, (%rbp)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %r12, %rbx
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %rax, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %edx
	leaq	312(%rsp), %rdi
	movq	%r14, %rsi
	callq	mulUnit_inner288@PLT
	addq	312(%rsp), %r15
	adcq	320(%rsp), %r12
	adcq	328(%rsp), %rbx
	adcq	336(%rsp), %rbp
	adcq	344(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r15d, 4(%rax)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shldq	$32, %r12, %rbx
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %edx
	leaq	272(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	272(%rsp), %r12
	adcq	280(%rsp), %rbx
	adcq	288(%rsp), %rbp
	adcq	296(%rsp), %r14
	adcq	304(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r12d, 8(%rax)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shrq	$32, %r13
	shldq	$32, %r12, %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	12(%rax), %edx
	leaq	232(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	232(%rsp), %rbx
	adcq	240(%rsp), %rbp
	adcq	248(%rsp), %r14
	adcq	256(%rsp), %r15
	adcq	264(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%ebx, 12(%rax)
	movq	%r13, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r13
	shldq	$32, %rbx, %rbp
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	16(%rax), %edx
	leaq	192(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	192(%rsp), %rbp
	adcq	200(%rsp), %r14
	adcq	208(%rsp), %r15
	adcq	216(%rsp), %r12
	adcq	224(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%ebp, 16(%rax)
	movq	%r13, %rbx
	shldq	$32, %r12, %rbx
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %rbp, %r14
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %edx
	leaq	152(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	152(%rsp), %r14
	adcq	160(%rsp), %r15
	adcq	168(%rsp), %r12
	adcq	176(%rsp), %rbx
	adcq	184(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r14d, 20(%rax)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %r12, %rbx
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	leaq	112(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	112(%rsp), %r15
	adcq	120(%rsp), %r12
	adcq	128(%rsp), %rbx
	adcq	136(%rsp), %rbp
	adcq	144(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r15d, 24(%rax)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shldq	$32, %r12, %rbx
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edx
	leaq	72(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	72(%rsp), %r12
	adcq	80(%rsp), %rbx
	adcq	88(%rsp), %rbp
	adcq	96(%rsp), %r14
	adcq	104(%rsp), %r13
	movq	8(%rsp), %rax                   # 8-byte Reload
	movl	%r12d, 28(%rax)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shrq	$32, %r13
	shldq	$32, %r12, %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	32(%rax), %edx
	leaq	32(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner288@PLT
	addq	32(%rsp), %rbx
	adcq	40(%rsp), %rbp
	adcq	48(%rsp), %r14
	adcq	56(%rsp), %r15
	adcq	64(%rsp), %r13
	movq	8(%rsp), %rdi                   # 8-byte Reload
	movl	%ebx, 32(%rdi)
	movq	%r13, %rax
	shrq	$32, %rax
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	%r14, %rdx
	shrq	$32, %rdx
	movq	%rbp, %rsi
	shrq	$32, %rsi
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%ebp, 40(%rdi)
	movl	%esi, 44(%rdi)
	movl	%r14d, 48(%rdi)
	movl	%edx, 52(%rdi)
	movl	%r15d, 56(%rdi)
	movl	%ecx, 60(%rdi)
	movl	%r13d, 64(%rdi)
	movl	%eax, 68(%rdi)
	addq	$392, %rsp                      # imm = 0x188
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
	subq	$376, %rsp                      # imm = 0x178
	movq	%rsi, %rbp
	movq	%rdi, %r13
	movq	%rdi, (%rsp)                    # 8-byte Spill
	movl	(%rsi), %edx
	leaq	336(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	movq	352(%rsp), %r15
	movq	360(%rsp), %rbx
	movq	368(%rsp), %r12
	movq	336(%rsp), %rax
	movq	344(%rsp), %r14
	movl	%eax, (%r13)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	shldq	$32, %r15, %rbx
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rax, %r14
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	movl	4(%rbp), %edx
	leaq	296(%rsp), %rdi
	movq	%rbp, %rsi
	callq	mulUnit_inner288@PLT
	addq	296(%rsp), %r14
	adcq	304(%rsp), %r15
	adcq	312(%rsp), %rbx
	adcq	320(%rsp), %r13
	adcq	328(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r14d, 4(%rax)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %r15, %rbx
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	8(%rsi), %edx
	leaq	256(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	256(%rsp), %r15
	adcq	264(%rsp), %rbx
	adcq	272(%rsp), %r13
	adcq	280(%rsp), %rbp
	adcq	288(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r15d, 8(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %r15, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	12(%rsi), %edx
	leaq	216(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	216(%rsp), %rbx
	adcq	224(%rsp), %r13
	adcq	232(%rsp), %rbp
	adcq	240(%rsp), %r14
	adcq	248(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ebx, 12(%rax)
	movq	%r12, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shrq	$32, %r12
	shldq	$32, %rbx, %r13
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	16(%rsi), %edx
	leaq	176(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	176(%rsp), %r13
	adcq	184(%rsp), %rbp
	adcq	192(%rsp), %r14
	adcq	200(%rsp), %r15
	adcq	208(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r13d, 16(%rax)
	movq	%r12, %rbx
	shldq	$32, %r15, %rbx
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r12
	shldq	$32, %r13, %rbp
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	20(%rsi), %edx
	leaq	136(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	136(%rsp), %rbp
	adcq	144(%rsp), %r14
	adcq	152(%rsp), %r15
	adcq	160(%rsp), %rbx
	adcq	168(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%ebp, 20(%rax)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	shldq	$32, %r15, %rbx
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rbp, %r14
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	24(%rsi), %edx
	leaq	96(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	96(%rsp), %r14
	adcq	104(%rsp), %r15
	adcq	112(%rsp), %rbx
	adcq	120(%rsp), %r13
	adcq	128(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r14d, 24(%rax)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %r15, %rbx
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	28(%rsi), %edx
	leaq	56(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	56(%rsp), %r15
	adcq	64(%rsp), %rbx
	adcq	72(%rsp), %r13
	adcq	80(%rsp), %rbp
	adcq	88(%rsp), %r12
	movq	(%rsp), %rax                    # 8-byte Reload
	movl	%r15d, 28(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %r15, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	32(%rsi), %edx
	leaq	16(%rsp), %rdi
	callq	mulUnit_inner288@PLT
	addq	16(%rsp), %rbx
	adcq	24(%rsp), %r13
	adcq	32(%rsp), %rbp
	adcq	40(%rsp), %r14
	adcq	48(%rsp), %r12
	movq	(%rsp), %rdi                    # 8-byte Reload
	movl	%ebx, 32(%rdi)
	movq	%r12, %rax
	shrq	$32, %rax
	movq	%r14, %rcx
	shrq	$32, %rcx
	movq	%rbp, %rdx
	shrq	$32, %rdx
	movq	%r13, %rsi
	shrq	$32, %rsi
	shrq	$32, %rbx
	movl	%ebx, 36(%rdi)
	movl	%r13d, 40(%rdi)
	movl	%esi, 44(%rdi)
	movl	%ebp, 48(%rdi)
	movl	%edx, 52(%rdi)
	movl	%r14d, 56(%rdi)
	movl	%ecx, 60(%rdi)
	movl	%r12d, 64(%rdi)
	movl	%eax, 68(%rdi)
	addq	$376, %rsp                      # imm = 0x178
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
	.globl	mulUnit_inner320                # -- Begin function mulUnit_inner320
	.p2align	4, 0x90
	.type	mulUnit_inner320,@function
mulUnit_inner320:                       # @mulUnit_inner320
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edi
	movl	4(%rsi), %ebp
	movl	%edx, %r9d
	imulq	%r9, %rdi
	movl	%edi, %ebx
	movq	%rdi, %rdx
	shrq	$32, %rdx
	imulq	%r9, %rbp
	movabsq	$-4294967296, %rdi              # imm = 0xFFFFFFFF00000000
	movq	%rbp, %rcx
	andq	%rdi, %rcx
	orq	%rdx, %rcx
	movl	8(%rsi), %r12d
	imulq	%r9, %r12
	movl	12(%rsi), %r10d
	imulq	%r9, %r10
	movq	%r10, %rdx
	movl	16(%rsi), %r13d
	imulq	%r9, %r13
	movl	20(%rsi), %r11d
	imulq	%r9, %r11
	movl	24(%rsi), %r8d
	imulq	%r9, %r8
	movl	28(%rsi), %r15d
	imulq	%r9, %r15
	movl	32(%rsi), %eax
	imulq	%r9, %rax
	movl	36(%rsi), %r14d
	imulq	%r9, %r14
	movq	%rax, %rsi
	shrq	$32, %rsi
	andq	%r14, %rdi
	orq	%rsi, %rdi
	movq	%r11, %rsi
	shlq	$32, %rbp
	orq	%rbx, %rbp
	movq	%rbp, %r9
	movl	%r12d, %ebx
	shlq	$32, %r10
	orq	%rbx, %r10
	movl	%r13d, %ebx
	shlq	$32, %r11
	orq	%rbx, %r11
	movq	%r15, %rbx
	shlq	$32, %r15
	movl	%r8d, %ebp
	orq	%rbp, %r15
	shrq	$32, %rdx
	shldq	$32, %r12, %rdx
	shrq	$32, %rsi
	shldq	$32, %r13, %rsi
	movl	%eax, %eax
	shrq	$32, %rbx
	shlq	$32, %r14
	shldq	$32, %r8, %rbx
	movq	%rdi, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %rsi, %rbx
	shldq	$32, %rdx, %rsi
	shldq	$32, %rcx, %rdx
	orq	%rax, %r14
	shrq	$32, %rdi
	shlq	$32, %rcx
	addq	%r9, %rcx
	adcq	%r10, %rdx
	adcq	%r11, %rsi
	adcq	%r15, %rbx
	adcq	%r14, %rbp
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rcx, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	movq	%rbp, 32(%rax)
	adcq	$0, %rdi
	movl	%edi, 40(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end173:
	.size	mulUnit_inner320, .Lfunc_end173-mulUnit_inner320
                                        # -- End function
	.globl	mclb_mulUnit10                  # -- Begin function mclb_mulUnit10
	.p2align	4, 0x90
	.type	mclb_mulUnit10,@function
mclb_mulUnit10:                         # @mclb_mulUnit10
# %bb.0:
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner320@PLT
	movl	40(%rsp), %eax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	32(%rsp), %r8
	movq	(%rsp), %rdi
	movq	8(%rsp), %rsi
	movl	%edi, (%rbx)
	shrq	$32, %rdi
	movl	%edi, 4(%rbx)
	movl	%esi, 8(%rbx)
	shrq	$32, %rsi
	movl	%esi, 12(%rbx)
	movl	%ecx, 16(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 20(%rbx)
	movl	%edx, 24(%rbx)
	shrq	$32, %rdx
	movl	%edx, 28(%rbx)
	movl	%r8d, 32(%rbx)
	shrq	$32, %r8
	movl	%r8d, 36(%rbx)
	addq	$48, %rsp
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
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %ecx
	movl	4(%rsi), %r8d
	movl	%edx, %eax
	imulq	%rax, %rcx
	movl	%ecx, %ebx
	shrq	$32, %rcx
	imulq	%rax, %r8
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	movq	%r8, %r11
	andq	%r10, %r11
	orq	%rcx, %r11
	movl	8(%rsi), %edi
	imulq	%rax, %rdi
	movl	12(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %r14
	movl	16(%rsi), %r12d
	imulq	%rax, %r12
	movl	20(%rsi), %edx
	imulq	%rax, %rdx
	movl	24(%rsi), %r13d
	imulq	%rax, %r13
	movl	28(%rsi), %r9d
	imulq	%rax, %r9
	movl	32(%rsi), %ebp
	imulq	%rax, %rbp
	movl	36(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rbp, %rax
	shrq	$32, %rax
	andq	%rsi, %r10
	orq	%rax, %r10
	movq	%rdx, %rax
	shlq	$32, %r8
	orq	%rbx, %r8
	movl	%edi, %ebx
	shlq	$32, %rcx
	orq	%rbx, %rcx
	movl	%r12d, %ebx
	shlq	$32, %rdx
	orq	%rbx, %rdx
	movq	%r9, %rbx
	shlq	$32, %r9
	movl	%r13d, %r15d
	orq	%r15, %r9
	shrq	$32, %r14
	shldq	$32, %rdi, %r14
	shrq	$32, %rax
	shldq	$32, %r12, %rax
	movl	%ebp, %edi
	shlq	$32, %rsi
	orq	%rdi, %rsi
	shrq	$32, %rbx
	shldq	$32, %r13, %rbx
	movq	%r10, %rdi
	shldq	$32, %rbx, %rdi
	shldq	$32, %rax, %rbx
	shldq	$32, %r14, %rax
	shldq	$32, %r11, %r14
	shrq	$32, %r10
	shlq	$32, %r11
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	addq	(%rbp), %r8
	adcq	8(%rbp), %rcx
	adcq	16(%rbp), %rdx
	adcq	24(%rbp), %r9
	adcq	32(%rbp), %rsi
	setb	%r15b
	addq	%r11, %r8
	adcq	%r14, %rcx
	adcq	%rax, %rdx
	adcq	%rbx, %r9
	adcq	%rdi, %rsi
	movzbl	%r15b, %eax
	adcq	%r10, %rax
	movl	%r8d, (%rbp)
	shrq	$32, %r8
	movl	%r8d, 4(%rbp)
	movl	%ecx, 8(%rbp)
	shrq	$32, %rcx
	movl	%ecx, 12(%rbp)
	movl	%edx, 16(%rbp)
	shrq	$32, %rdx
	movl	%edx, 20(%rbp)
	movl	%r9d, 24(%rbp)
	shrq	$32, %r9
	movl	%r9d, 28(%rbp)
	movl	%esi, 32(%rbp)
	shrq	$32, %rsi
	movl	%esi, 36(%rbp)
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$136, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	20(%rsi), %r12
	leaq	20(%rdx), %r13
	leaq	40(%rdi), %rbp
	callq	mclb_mul5@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul5@PLT
	movl	36(%rbx), %eax
	movl	16(%rbx), %ecx
	movq	(%rbx), %rdx
	movq	8(%rbx), %r12
	addq	20(%rbx), %rdx
	movq	%rdx, 80(%rsp)                  # 8-byte Spill
	movq	(%r14), %rdi
	adcq	28(%rbx), %r12
	adcq	%rax, %rcx
	addq	20(%r14), %rdi
	movq	8(%r14), %rax
	adcq	28(%r14), %rax
	movq	%rax, %r8
	movl	36(%r14), %eax
	movl	16(%r14), %ebx
	adcq	%rax, %rbx
	movq	%rcx, %r14
	shlq	$31, %r14
	movq	%r14, %rax
	sarq	$63, %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	shrdq	$63, %rax, %r14
	movq	%rbx, %rbp
	shlq	$31, %rbp
	movq	%rbp, %r13
	sarq	$63, %r13
	shrdq	$63, %r13, %rbp
	movq	%rbx, %rax
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	andq	%rcx, %rax
	movq	%rax, 64(%rsp)                  # 8-byte Spill
	movq	%rcx, %rsi
	movq	%rcx, 72(%rsp)                  # 8-byte Spill
	movl	%edx, 20(%rsp)
	movq	%r12, %rax
	shrq	$32, %rax
	movq	%rdx, %rcx
	shrq	$32, %rcx
	movl	%ecx, 24(%rsp)
	movl	%r12d, 28(%rsp)
	movl	%eax, 32(%rsp)
	movl	%esi, 36(%rsp)
	movq	%rdi, %rcx
	movq	%rdi, 56(%rsp)                  # 8-byte Spill
	movl	%ecx, (%rsp)
	movq	%r8, 40(%rsp)                   # 8-byte Spill
	movq	%r8, %rax
	shrq	$32, %rax
	shrq	$32, %rcx
	movl	%ecx, 4(%rsp)
	movl	%r8d, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	%ebx, 16(%rsp)
	leaq	96(%rsp), %rdi
	leaq	20(%rsp), %rsi
	movq	%rsp, %rdx
	callq	mclb_mul5@PLT
	movq	64(%rsp), %rcx                  # 8-byte Reload
	shrq	$32, %rcx
	movq	88(%rsp), %rax                  # 8-byte Reload
	movq	40(%rsp), %rbx                  # 8-byte Reload
	andq	%rax, %rbx
	andq	56(%rsp), %r14                  # 8-byte Folded Reload
	andl	48(%rsp), %eax                  # 4-byte Folded Reload
	andq	%r13, %r12
	andq	80(%rsp), %rbp                  # 8-byte Folded Reload
	andl	72(%rsp), %r13d                 # 4-byte Folded Reload
	addq	%r14, %rbp
	adcq	%rbx, %r12
	adcq	%rax, %r13
	setb	%al
	movzbl	%al, %edx
	shldq	$32, %r13, %rdx
	shldq	$32, %r12, %r13
	shldq	$32, %rbp, %r12
	shlq	$32, %rbp
	addq	112(%rsp), %rbp
	adcq	120(%rsp), %r12
	movq	96(%rsp), %rax
	adcq	128(%rsp), %r13
	adcq	%rcx, %rdx
	subq	(%r15), %rax
	movq	104(%rsp), %rcx
	sbbq	8(%r15), %rcx
	sbbq	16(%r15), %rbp
	sbbq	24(%r15), %r12
	sbbq	32(%r15), %r13
	sbbq	$0, %rdx
	subq	40(%r15), %rax
	sbbq	48(%r15), %rcx
	sbbq	56(%r15), %rbp
	sbbq	64(%r15), %r12
	sbbq	72(%r15), %r13
	sbbq	$0, %rdx
	addq	20(%r15), %rax
	adcq	28(%r15), %rcx
	adcq	36(%r15), %rbp
	adcq	44(%r15), %r12
	adcq	52(%r15), %r13
	movl	%edx, %r10d
	adcq	60(%r15), %r10
	movl	76(%r15), %r8d
	movq	68(%r15), %r9
	adcq	$0, %r9
	adcq	$0, %r8
	movl	%eax, 20(%r15)
	movq	%r13, %rdx
	shrq	$32, %rdx
	movq	%r12, %rsi
	shrq	$32, %rsi
	movq	%rbp, %rdi
	shrq	$32, %rdi
	shrq	$32, %rax
	movl	%eax, 24(%r15)
	movl	%ecx, 28(%r15)
	shrq	$32, %rcx
	movl	%ecx, 32(%r15)
	movl	%ebp, 36(%r15)
	movl	%edi, 40(%r15)
	movl	%r12d, 44(%r15)
	movl	%esi, 48(%r15)
	movl	%r13d, 52(%r15)
	movl	%edx, 56(%r15)
	movl	%r10d, 60(%r15)
	shrq	$32, %r10
	movl	%r10d, 64(%r15)
	movl	%r9d, 68(%r15)
	shrq	$32, %r9
	movl	%r9d, 72(%r15)
	movl	%r8d, 76(%r15)
	addq	$136, %rsp
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
	subq	$88, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	20(%rsi), %r15
	leaq	40(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul5@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul5@PLT
	movl	36(%rbx), %eax
	movq	(%rbx), %rbp
	addq	20(%rbx), %rbp
	movq	8(%rbx), %r15
	adcq	28(%rbx), %r15
	movl	16(%rbx), %r13d
	adcq	%rax, %r13
	movq	%r13, %r12
	shlq	$31, %r12
	movq	%r12, %rbx
	sarq	$63, %rbx
	shrdq	$63, %rbx, %r12
	movl	%ebp, 20(%rsp)
	movq	%r13, %rax
	shrq	$32, %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rbp, %rcx
	shrq	$32, %rcx
	movl	%ecx, 24(%rsp)
	movl	%r15d, 28(%rsp)
	movl	%eax, 32(%rsp)
	movl	%r13d, 36(%rsp)
	movl	%ebp, (%rsp)
	movl	%ecx, 4(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%eax, 12(%rsp)
	movl	%r13d, 16(%rsp)
	leaq	48(%rsp), %rdi
	leaq	20(%rsp), %rsi
	movq	%rsp, %rdx
	callq	mclb_mul5@PLT
	andq	%rbp, %r12
	andq	%rbx, %r15
	andl	%r13d, %ebx
	movq	%rbx, %rax
	shldq	$33, %r15, %rax
	shldq	$33, %r12, %r15
	shrq	$31, %rbx
	shlq	$33, %r12
	addq	64(%rsp), %r12
	adcq	72(%rsp), %r15
	movq	48(%rsp), %rcx
	adcq	80(%rsp), %rax
	adcq	40(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rcx
	movq	56(%rsp), %rdx
	sbbq	8(%r14), %rdx
	sbbq	16(%r14), %r12
	sbbq	24(%r14), %r15
	sbbq	32(%r14), %rax
	sbbq	$0, %rbx
	subq	40(%r14), %rcx
	sbbq	48(%r14), %rdx
	sbbq	56(%r14), %r12
	sbbq	64(%r14), %r15
	sbbq	72(%r14), %rax
	sbbq	$0, %rbx
	addq	20(%r14), %rcx
	adcq	28(%r14), %rdx
	adcq	36(%r14), %r12
	adcq	44(%r14), %r15
	adcq	52(%r14), %rax
	movl	%ebx, %ebp
	adcq	60(%r14), %rbp
	movl	76(%r14), %r8d
	movq	68(%r14), %rdi
	adcq	$0, %rdi
	adcq	$0, %r8
	movl	%ecx, 20(%r14)
	movq	%r15, %rbx
	shrq	$32, %rbx
	movq	%r12, %rsi
	shrq	$32, %rsi
	shrq	$32, %rcx
	movl	%ecx, 24(%r14)
	movl	%edx, 28(%r14)
	shrq	$32, %rdx
	movl	%edx, 32(%r14)
	movl	%r12d, 36(%r14)
	movl	%esi, 40(%r14)
	movl	%r15d, 44(%r14)
	movl	%ebx, 48(%r14)
	movl	%eax, 52(%r14)
	shrq	$32, %rax
	movl	%eax, 56(%r14)
	movl	%ebp, 60(%r14)
	shrq	$32, %rbp
	movl	%ebp, 64(%r14)
	movl	%edi, 68(%r14)
	shrq	$32, %rdi
	movl	%edi, 72(%r14)
	movl	%r8d, 76(%r14)
	addq	$88, %rsp
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
	.globl	mulUnit_inner352                # -- Begin function mulUnit_inner352
	.p2align	4, 0x90
	.type	mulUnit_inner352,@function
mulUnit_inner352:                       # @mulUnit_inner352
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %r8d
	movl	4(%rsi), %eax
	movl	%edx, %r10d
	imulq	%r10, %r8
	movl	%r8d, %ecx
	shrq	$32, %r8
	imulq	%r10, %rax
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	movq	%rax, %r12
	movq	%rax, %rbx
	andq	%rdx, %r12
	orq	%r8, %r12
	movl	8(%rsi), %r13d
	imulq	%r10, %r13
	movl	12(%rsi), %r15d
	imulq	%r10, %r15
	movl	16(%rsi), %eax
	imulq	%r10, %rax
	movq	%rax, %rbp
	movl	20(%rsi), %r8d
	imulq	%r10, %r8
	movl	24(%rsi), %r9d
	imulq	%r10, %r9
	movl	32(%rsi), %r14d
	imulq	%r10, %r14
	movq	%r14, %rax
	shrq	$32, %rax
	movl	36(%rsi), %r11d
	imulq	%r10, %r11
	andq	%r11, %rdx
	orq	%rax, %rdx
	movl	28(%rsi), %eax
	imulq	%r10, %rax
	movl	40(%rsi), %esi
	imulq	%r10, %rsi
	movq	%rsi, -16(%rsp)                 # 8-byte Spill
	movq	%r15, %rsi
	shlq	$32, %rbx
	orq	%rcx, %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	movl	%r13d, %ecx
	shlq	$32, %r15
	orq	%rcx, %r15
	movq	%r8, %rbx
	shlq	$32, %r8
	movl	%ebp, %ecx
	movq	%rbp, %r10
	orq	%rcx, %r8
	movq	%rax, %rcx
	shlq	$32, %rax
	movl	%r9d, %ebp
	orq	%rbp, %rax
	shrq	$32, %rsi
	shldq	$32, %r13, %rsi
	shrq	$32, %rbx
	shldq	$32, %r10, %rbx
	shrq	$32, %rcx
	shldq	$32, %r9, %rcx
	movl	%r14d, %ebp
	shlq	$32, %r11
	orq	%rbp, %r11
	movq	-16(%rsp), %r9                  # 8-byte Reload
	movq	%r9, %rbp
	shrq	$32, %rbp
	shldq	$32, %rdx, %rbp
	shldq	$32, %rcx, %rdx
	shldq	$32, %rbx, %rcx
	shldq	$32, %rsi, %rbx
	shldq	$32, %r12, %rsi
	shlq	$32, %r12
	addq	-8(%rsp), %r12                  # 8-byte Folded Reload
	adcq	%r15, %rsi
	adcq	%r8, %rbx
	adcq	%rax, %rcx
	movq	%rdi, %rax
	adcq	%r11, %rdx
	movl	%r9d, %edi
	adcq	%rdi, %rbp
	movq	%r12, (%rax)
	movq	%rsi, 8(%rax)
	movq	%rbx, 16(%rax)
	movq	%rcx, 24(%rax)
	movq	%rdx, 32(%rax)
	movq	%rbp, 40(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end178:
	.size	mulUnit_inner352, .Lfunc_end178-mulUnit_inner352
                                        # -- End function
	.globl	mclb_mulUnit11                  # -- Begin function mclb_mulUnit11
	.p2align	4, 0x90
	.type	mclb_mulUnit11,@function
mclb_mulUnit11:                         # @mclb_mulUnit11
# %bb.0:
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner352@PLT
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %r8
	movq	40(%rsp), %rax
	movq	(%rsp), %rdi
	movq	8(%rsp), %rcx
	movl	%edi, (%rbx)
	shrq	$32, %rdi
	movl	%edi, 4(%rbx)
	movl	%ecx, 8(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 12(%rbx)
	movl	%edx, 16(%rbx)
	shrq	$32, %rdx
	movl	%edx, 20(%rbx)
	movl	%esi, 24(%rbx)
	shrq	$32, %rsi
	movl	%esi, 28(%rbx)
	movl	%r8d, 32(%rbx)
	shrq	$32, %r8
	movl	%r8d, 36(%rbx)
	movl	%eax, 40(%rbx)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$48, %rsp
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
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %eax
	movl	4(%rsi), %edi
	movl	%edx, %r10d
	imulq	%r10, %rax
	movl	%eax, %edx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	imulq	%r10, %rdi
	movabsq	$-4294967296, %r11              # imm = 0xFFFFFFFF00000000
	movq	%rdi, %r14
	andq	%r11, %r14
	orq	%rax, %r14
	movl	8(%rsi), %ecx
	imulq	%r10, %rcx
	movl	12(%rsi), %eax
	imulq	%r10, %rax
	movl	16(%rsi), %r13d
	imulq	%r10, %r13
	movl	20(%rsi), %edx
	imulq	%r10, %rdx
	movl	24(%rsi), %r8d
	imulq	%r10, %r8
	movl	32(%rsi), %r15d
	imulq	%r10, %r15
	movq	%r15, %rbx
	shrq	$32, %rbx
	movl	36(%rsi), %r9d
	imulq	%r10, %r9
	andq	%r9, %r11
	orq	%rbx, %r11
	movl	28(%rsi), %ebx
	imulq	%r10, %rbx
	movl	40(%rsi), %esi
	imulq	%r10, %rsi
	movq	%rsi, %r10
	movq	%rax, %r12
	shlq	$32, %rdi
	addq	-16(%rsp), %rdi                 # 8-byte Folded Reload
	movl	%ecx, %esi
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rdx, %rsi
	shlq	$32, %rdx
	movl	%r13d, %ebp
	orq	%rbp, %rdx
	shrq	$32, %r12
	shldq	$32, %rcx, %r12
	movq	%rbx, %rcx
	shlq	$32, %rbx
	movl	%r8d, %ebp
	orq	%rbp, %rbx
	shrq	$32, %rsi
	shldq	$32, %r13, %rsi
	movl	%r15d, %ebp
	shrq	$32, %rcx
	shldq	$32, %r8, %rcx
	movq	%r10, %r13
	shrq	$32, %r13
	shlq	$32, %r9
	shldq	$32, %r11, %r13
	shldq	$32, %rcx, %r11
	shldq	$32, %rsi, %rcx
	shldq	$32, %r12, %rsi
	shldq	$32, %r14, %r12
	orq	%rbp, %r9
	shlq	$32, %r14
	movq	-8(%rsp), %rbp                  # 8-byte Reload
	addq	(%rbp), %rdi
	adcq	8(%rbp), %rax
	adcq	16(%rbp), %rdx
	adcq	24(%rbp), %rbx
	movl	%r10d, %r8d
	adcq	32(%rbp), %r9
	movl	40(%rbp), %r10d
	adcq	%r8, %r10
	addq	%r14, %rdi
	adcq	%r12, %rax
	adcq	%rsi, %rdx
	adcq	%rcx, %rbx
	adcq	%r11, %r9
	adcq	%r13, %r10
	movl	%edi, (%rbp)
	shrq	$32, %rdi
	movl	%edi, 4(%rbp)
	movl	%eax, 8(%rbp)
	shrq	$32, %rax
	movl	%eax, 12(%rbp)
	movl	%edx, 16(%rbp)
	shrq	$32, %rdx
	movl	%edx, 20(%rbp)
	movl	%ebx, 24(%rbp)
	shrq	$32, %rbx
	movl	%ebx, 28(%rbp)
	movl	%r9d, 32(%rbp)
	shrq	$32, %r9
	movl	%r9d, 36(%rbp)
	movl	%r10d, 40(%rbp)
	movq	%r10, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$568, %rsp                      # imm = 0x238
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	(%rdx), %edx
	leaq	520(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	movq	536(%rsp), %r12
	movq	544(%rsp), %r14
	movq	560(%rsp), %r13
	movq	552(%rsp), %rbx
	movq	520(%rsp), %rax
	movq	528(%rsp), %r15
	movl	%eax, (%rbp)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %r14, %rbx
	shldq	$32, %r12, %r14
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %rax, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %edx
	leaq	472(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	472(%rsp), %r15
	adcq	480(%rsp), %r12
	movq	%r14, %rax
	adcq	488(%rsp), %rax
	adcq	496(%rsp), %rbx
	adcq	504(%rsp), %rbp
	adcq	512(%rsp), %r13
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%r15d, 4(%rcx)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shldq	$32, %rax, %rbx
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %edx
	leaq	424(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	424(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	432(%rsp), %rcx
	adcq	440(%rsp), %rbx
	adcq	448(%rsp), %rbp
	adcq	456(%rsp), %r14
	adcq	464(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 8(%rax)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shrq	$32, %r13
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	12(%rax), %edx
	leaq	376(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	376(%rsp), %r12
	adcq	384(%rsp), %rbx
	adcq	392(%rsp), %rbp
	adcq	400(%rsp), %r14
	adcq	408(%rsp), %r15
	adcq	416(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 12(%rax)
	movq	%r12, %rax
	movq	%r13, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shrq	$32, %r13
	shldq	$32, %rax, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	16(%rax), %edx
	leaq	328(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	328(%rsp), %rbx
	adcq	336(%rsp), %rbp
	adcq	344(%rsp), %r14
	adcq	352(%rsp), %r15
	adcq	360(%rsp), %r12
	adcq	368(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 16(%rax)
	movq	%r13, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r13
	shldq	$32, %rbx, %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %edx
	leaq	280(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	280(%rsp), %rbp
	adcq	288(%rsp), %r14
	adcq	296(%rsp), %r15
	adcq	304(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	312(%rsp), %rcx
	adcq	320(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 20(%rax)
	movq	%r13, %rbx
	shldq	$32, %rcx, %rbx
	shldq	$32, %r12, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %rbp, %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	leaq	232(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	232(%rsp), %r14
	adcq	240(%rsp), %r15
	adcq	248(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	256(%rsp), %rcx
	adcq	264(%rsp), %rbx
	adcq	272(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 24(%rax)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edx
	leaq	184(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	184(%rsp), %r15
	adcq	192(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	200(%rsp), %rcx
	adcq	208(%rsp), %rbx
	adcq	216(%rsp), %rbp
	adcq	224(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 28(%rax)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	32(%rax), %edx
	leaq	136(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	136(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	144(%rsp), %rcx
	adcq	152(%rsp), %rbx
	adcq	160(%rsp), %rbp
	adcq	168(%rsp), %r14
	adcq	176(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 32(%rax)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shrq	$32, %r13
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %edx
	leaq	88(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	88(%rsp), %r12
	adcq	96(%rsp), %rbx
	adcq	104(%rsp), %rbp
	adcq	112(%rsp), %r14
	adcq	120(%rsp), %r15
	adcq	128(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 36(%rax)
	movq	%r13, %rax
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shrq	$32, %r13
	shldq	$32, %r12, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %edx
	leaq	40(%rsp), %rdi
	movq	24(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner352@PLT
	addq	40(%rsp), %rbx
	adcq	48(%rsp), %rbp
	adcq	56(%rsp), %r14
	adcq	64(%rsp), %r15
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	72(%rsp), %rdx
	adcq	80(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 40(%rax)
	movq	%r13, %r8
	shrq	$32, %r8
	movq	%rdx, %rcx
	movq	%rdx, %r9
	shrq	$32, %rcx
	movq	%r15, %rdx
	shrq	$32, %rdx
	movq	%r14, %rsi
	shrq	$32, %rsi
	movq	%rbp, %rdi
	shrq	$32, %rdi
	shrq	$32, %rbx
	movl	%ebx, 44(%rax)
	movl	%ebp, 48(%rax)
	movl	%edi, 52(%rax)
	movl	%r14d, 56(%rax)
	movl	%esi, 60(%rax)
	movl	%r15d, 64(%rax)
	movl	%edx, 68(%rax)
	movl	%r9d, 72(%rax)
	movl	%ecx, 76(%rax)
	movl	%r13d, 80(%rax)
	movl	%r8d, 84(%rax)
	addq	$568, %rsp                      # imm = 0x238
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
	subq	$552, %rsp                      # imm = 0x228
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r13
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edx
	leaq	504(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	movq	520(%rsp), %r15
	movq	528(%rsp), %rbp
	movq	544(%rsp), %r12
	movq	536(%rsp), %rbx
	movq	504(%rsp), %rax
	movq	512(%rsp), %r14
	movl	%eax, (%r13)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	shldq	$32, %rbp, %rbx
	shldq	$32, %r15, %rbp
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rax, %r14
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	4(%rsi), %edx
	leaq	456(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	456(%rsp), %r14
	adcq	464(%rsp), %r15
	movq	%rbp, %rax
	adcq	472(%rsp), %rax
	adcq	480(%rsp), %rbx
	adcq	488(%rsp), %r13
	adcq	496(%rsp), %r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%r14d, 4(%rcx)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %rax, %rbx
	shldq	$32, %r15, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	8(%rsi), %edx
	leaq	408(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	408(%rsp), %r15
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	416(%rsp), %rcx
	adcq	424(%rsp), %rbx
	adcq	432(%rsp), %r13
	adcq	440(%rsp), %rbp
	adcq	448(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 8(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shrq	$32, %r12
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	12(%rsi), %edx
	leaq	360(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	360(%rsp), %r15
	adcq	368(%rsp), %rbx
	adcq	376(%rsp), %r13
	adcq	384(%rsp), %rbp
	adcq	392(%rsp), %r14
	adcq	400(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 12(%rax)
	movq	%r15, %rax
	movq	%r12, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %rax, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	16(%rsi), %edx
	leaq	312(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	312(%rsp), %rbx
	adcq	320(%rsp), %r13
	adcq	328(%rsp), %rbp
	adcq	336(%rsp), %r14
	adcq	344(%rsp), %r15
	adcq	352(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 16(%rax)
	movq	%r12, %rax
	shldq	$32, %r15, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shrq	$32, %r12
	shldq	$32, %rbx, %r13
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	20(%rsi), %edx
	leaq	264(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	264(%rsp), %r13
	adcq	272(%rsp), %rbp
	adcq	280(%rsp), %r14
	adcq	288(%rsp), %r15
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	296(%rsp), %rcx
	adcq	304(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r13d, 20(%rax)
	movq	%r12, %rbx
	shldq	$32, %rcx, %rbx
	shldq	$32, %r15, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r12
	shldq	$32, %r13, %rbp
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	24(%rsi), %edx
	leaq	216(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	216(%rsp), %rbp
	adcq	224(%rsp), %r14
	adcq	232(%rsp), %r15
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	240(%rsp), %rcx
	adcq	248(%rsp), %rbx
	adcq	256(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 24(%rax)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shldq	$32, %r15, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rbp, %r14
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	28(%rsi), %edx
	leaq	168(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	168(%rsp), %r14
	adcq	176(%rsp), %r15
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	184(%rsp), %rcx
	adcq	192(%rsp), %rbx
	adcq	200(%rsp), %r13
	adcq	208(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 28(%rax)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shldq	$32, %r15, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	32(%rsi), %edx
	leaq	120(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	120(%rsp), %r15
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	128(%rsp), %rcx
	adcq	136(%rsp), %rbx
	adcq	144(%rsp), %r13
	adcq	152(%rsp), %rbp
	adcq	160(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 32(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	movq	%rcx, %rax
	shldq	$32, %rcx, %rbx
	shrq	$32, %r12
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	36(%rsi), %edx
	leaq	72(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	72(%rsp), %r15
	adcq	80(%rsp), %rbx
	adcq	88(%rsp), %r13
	adcq	96(%rsp), %rbp
	adcq	104(%rsp), %r14
	adcq	112(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 36(%rax)
	movq	%r12, %rax
	shldq	$32, %r14, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %r15, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	40(%rsi), %edx
	leaq	24(%rsp), %rdi
	callq	mulUnit_inner352@PLT
	addq	24(%rsp), %rbx
	adcq	32(%rsp), %r13
	adcq	40(%rsp), %rbp
	adcq	48(%rsp), %r14
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	56(%rsp), %rdx
	adcq	64(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 40(%rax)
	movq	%r12, %r8
	shrq	$32, %r8
	movq	%rdx, %rcx
	movq	%rdx, %r9
	shrq	$32, %rcx
	movq	%r14, %rdx
	shrq	$32, %rdx
	movq	%rbp, %rsi
	shrq	$32, %rsi
	movq	%r13, %rdi
	shrq	$32, %rdi
	shrq	$32, %rbx
	movl	%ebx, 44(%rax)
	movl	%r13d, 48(%rax)
	movl	%edi, 52(%rax)
	movl	%ebp, 56(%rax)
	movl	%esi, 60(%rax)
	movl	%r14d, 64(%rax)
	movl	%edx, 68(%rax)
	movl	%r9d, 72(%rax)
	movl	%ecx, 76(%rax)
	movl	%r12d, 80(%rax)
	movl	%r8d, 84(%rax)
	addq	$552, %rsp                      # imm = 0x228
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
	movl	(%rsi), %ebp
	movl	4(%rsi), %ebx
	movl	%edx, %ecx
	imulq	%rcx, %rbp
	movq	%rbp, %rax
	shrq	$32, %rax
	imulq	%rcx, %rbx
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	movq	%rbx, %r11
	andq	%r10, %r11
	orq	%rax, %r11
	movl	8(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, %r13
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r9d
	imulq	%rcx, %r9
	movl	16(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %r15d
	imulq	%rcx, %r15
	movl	32(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -8(%rsp)                  # 8-byte Spill
	shrq	$32, %rax
	movl	36(%rsi), %r8d
	imulq	%rcx, %r8
	movq	%r8, %rdx
	andq	%r10, %rdx
	orq	%rax, %rdx
	movl	24(%rsi), %r14d
	imulq	%rcx, %r14
	movl	28(%rsi), %eax
	imulq	%rcx, %rax
	movl	40(%rsi), %r12d
	imulq	%rcx, %r12
	movl	44(%rsi), %esi
	imulq	%rcx, %rsi
	movq	%r12, %rcx
	shrq	$32, %rcx
	andq	%rsi, %r10
	orq	%rcx, %r10
	movl	%ebp, %ecx
	shlq	$32, %rbx
	orq	%rcx, %rbx
	movq	%rbx, -16(%rsp)                 # 8-byte Spill
	movq	%r9, %rcx
	shlq	$32, %r9
	movl	%r13d, %ebp
	orq	%rbp, %r9
	movq	%r15, %rbp
	shlq	$32, %r15
	movl	-32(%rsp), %ebx                 # 4-byte Reload
	orq	%rbx, %r15
	movq	%rax, %r13
	shlq	$32, %rax
	movl	%r14d, %ebx
	orq	%rbx, %rax
	shrq	$32, %rcx
	movq	-24(%rsp), %rbx                 # 8-byte Reload
	shldq	$32, %rbx, %rcx
	shrq	$32, %rbp
	movq	-32(%rsp), %rbx                 # 8-byte Reload
	shldq	$32, %rbx, %rbp
	movl	-8(%rsp), %ebx                  # 4-byte Reload
	shlq	$32, %r8
	orq	%rbx, %r8
	movl	%r12d, %r12d
	shrq	$32, %r13
	shlq	$32, %rsi
	shldq	$32, %r14, %r13
	movq	%r10, %rbx
	shldq	$32, %rdx, %rbx
	shldq	$32, %r13, %rdx
	shldq	$32, %rbp, %r13
	shldq	$32, %rcx, %rbp
	shldq	$32, %r11, %rcx
	orq	%r12, %rsi
	shrq	$32, %r10
	shlq	$32, %r11
	addq	-16(%rsp), %r11                 # 8-byte Folded Reload
	adcq	%r9, %rcx
	adcq	%r15, %rbp
	adcq	%rax, %r13
	adcq	%r8, %rdx
	movq	%rdi, %rax
	adcq	%rsi, %rbx
	movq	%r11, (%rdi)
	movq	%rcx, 8(%rdi)
	movq	%rbp, 16(%rdi)
	movq	%r13, 24(%rdi)
	movq	%rdx, 32(%rdi)
	movq	%rbx, 40(%rdi)
	adcq	$0, %r10
	movl	%r10d, 48(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end183:
	.size	mulUnit_inner384, .Lfunc_end183-mulUnit_inner384
                                        # -- End function
	.globl	mclb_mulUnit12                  # -- Begin function mclb_mulUnit12
	.p2align	4, 0x90
	.type	mclb_mulUnit12,@function
mclb_mulUnit12:                         # @mclb_mulUnit12
# %bb.0:
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner384@PLT
	movl	56(%rsp), %eax
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rdi
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rdx
	movl	%ecx, (%rbx)
	shrq	$32, %rcx
	movl	%ecx, 4(%rbx)
	movl	%edx, 8(%rbx)
	shrq	$32, %rdx
	movl	%edx, 12(%rbx)
	movl	%esi, 16(%rbx)
	shrq	$32, %rsi
	movl	%esi, 20(%rbx)
	movl	%edi, 24(%rbx)
	shrq	$32, %rdi
	movl	%edi, 28(%rbx)
	movl	%r9d, 32(%rbx)
	shrq	$32, %r9
	movl	%r9d, 36(%rbx)
	movl	%r8d, 40(%rbx)
	shrq	$32, %r8
	movl	%r8d, 44(%rbx)
	addq	$64, %rsp
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
	movl	(%rsi), %r12d
	movl	4(%rsi), %r11d
	movl	%edx, %eax
	imulq	%rax, %r12
	movq	%r12, %rcx
	shrq	$32, %rcx
	imulq	%rax, %r11
	movabsq	$-4294967296, %r14              # imm = 0xFFFFFFFF00000000
	movq	%r11, %rdx
	andq	%r14, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	8(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %rbx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r8d
	imulq	%rax, %r8
	movl	16(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %r13
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %r10d
	imulq	%rax, %r10
	movl	32(%rsi), %r15d
	imulq	%rax, %r15
	movq	%r15, %rcx
	shrq	$32, %rcx
	movl	36(%rsi), %edx
	imulq	%rax, %rdx
	movq	%rdx, %r9
	andq	%r14, %r9
	orq	%rcx, %r9
	movl	24(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %ecx
	imulq	%rax, %rcx
	movl	40(%rsi), %ebp
	imulq	%rax, %rbp
	movl	44(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rbp, %rax
	shrq	$32, %rax
	andq	%rsi, %r14
	orq	%rax, %r14
	movl	%r12d, %eax
	shlq	$32, %r11
	orq	%rax, %r11
	movq	%r8, %r12
	shlq	$32, %r8
	movl	%ebx, %eax
	orq	%rax, %r8
	movq	%r10, %rbx
	shlq	$32, %r10
	movl	%r13d, %eax
	orq	%rax, %r10
	movq	%rcx, %rax
	shlq	$32, %rcx
	movl	-32(%rsp), %r13d                # 4-byte Reload
	orq	%r13, %rcx
	movl	%r15d, %r15d
	shlq	$32, %rdx
	orq	%r15, %rdx
	movl	%ebp, %ebp
	shlq	$32, %rsi
	orq	%rbp, %rsi
	shrq	$32, %r12
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %r12
	shrq	$32, %rbx
	movq	-24(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rbx
	shrq	$32, %rax
	movq	-32(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rax
	movq	%r14, %rbp
	shldq	$32, %r9, %rbp
	shldq	$32, %rax, %r9
	shldq	$32, %rbx, %rax
	shldq	$32, %r12, %rbx
	movq	-8(%rsp), %r15                  # 8-byte Reload
	shldq	$32, %r15, %r12
	shrq	$32, %r14
	shlq	$32, %r15
	movq	%r15, %r13
	addq	(%rdi), %r11
	adcq	8(%rdi), %r8
	adcq	16(%rdi), %r10
	adcq	24(%rdi), %rcx
	adcq	32(%rdi), %rdx
	adcq	40(%rdi), %rsi
	setb	%r15b
	addq	%r13, %r11
	adcq	%r12, %r8
	adcq	%rbx, %r10
	adcq	%rax, %rcx
	adcq	%r9, %rdx
	adcq	%rbp, %rsi
	movzbl	%r15b, %eax
	adcq	%r14, %rax
	movl	%r11d, (%rdi)
	shrq	$32, %r11
	movl	%r11d, 4(%rdi)
	movl	%r8d, 8(%rdi)
	shrq	$32, %r8
	movl	%r8d, 12(%rdi)
	movl	%r10d, 16(%rdi)
	shrq	$32, %r10
	movl	%r10d, 20(%rdi)
	movl	%ecx, 24(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 28(%rdi)
	movl	%edx, 32(%rdi)
	shrq	$32, %rdx
	movl	%edx, 36(%rdi)
	movl	%esi, 40(%rdi)
	shrq	$32, %rsi
	movl	%esi, 44(%rdi)
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$152, %rsp
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	24(%rsi), %r12
	leaq	24(%rdx), %r13
	leaq	48(%rdi), %rbp
	callq	mclb_mul6@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul6@PLT
	movq	(%rbx), %rax
	addq	24(%rbx), %rax
	movq	%rax, %rsi
	movq	8(%rbx), %rax
	adcq	32(%rbx), %rax
	movq	%rax, %r8
	movq	16(%rbx), %r12
	adcq	40(%rbx), %r12
	movq	(%r15), %r9
	setb	%al
	addq	24(%r15), %r9
	movq	8(%r15), %r10
	adcq	32(%r15), %r10
	movq	16(%r15), %r13
	adcq	40(%r15), %r13
	setb	%cl
	movq	%r12, %rdx
	shrq	$33, %rdx
	movzbl	%al, %eax
	movzbl	%cl, %edi
	movl	%edi, %ecx
	andl	%eax, %edi
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	shll	$31, %eax
	orl	%edx, %eax
	movslq	%eax, %r15
	movq	%r15, %rax
	sarq	$31, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	sarq	$63, %r15
	movq	%r13, %rax
	shrq	$33, %rax
	shll	$31, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rbx
	movq	%rbx, %rbp
	sarq	$31, %rbp
	sarq	$63, %rbx
	movq	%rsi, %rdx
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movl	%edx, 48(%rsp)
	movq	%r12, %rax
	shrq	$32, %rax
	movq	%r8, 88(%rsp)                   # 8-byte Spill
	movq	%r8, %rcx
	shrq	$32, %rcx
	shrq	$32, %rdx
	movl	%edx, 52(%rsp)
	movl	%r8d, 56(%rsp)
	movl	%ecx, 60(%rsp)
	movl	%r12d, 64(%rsp)
	movl	%eax, 68(%rsp)
	movq	%r9, %rdx
	movq	%r9, 80(%rsp)                   # 8-byte Spill
	movl	%edx, 24(%rsp)
	movq	%r13, %rax
	shrq	$32, %rax
	movq	%r10, 72(%rsp)                  # 8-byte Spill
	movq	%r10, %rcx
	shrq	$32, %rcx
	shrq	$32, %rdx
	movl	%edx, 28(%rsp)
	movl	%r10d, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%eax, 44(%rsp)
	leaq	104(%rsp), %rdi
	leaq	48(%rsp), %rsi
	leaq	24(%rsp), %rdx
	callq	mclb_mul6@PLT
	movq	120(%rsp), %rax
	movq	104(%rsp), %rdx
	movq	112(%rsp), %rcx
	andq	%r15, %r13
	andq	72(%rsp), %r15                  # 8-byte Folded Reload
	movq	16(%rsp), %rsi                  # 8-byte Reload
	andq	80(%rsp), %rsi                  # 8-byte Folded Reload
	andq	%rbx, %r12
	andq	88(%rsp), %rbx                  # 8-byte Folded Reload
	andq	8(%rsp), %rbp                   # 8-byte Folded Reload
	movq	40(%r14), %r10
	movq	%r10, 16(%rsp)                  # 8-byte Spill
	movq	24(%r14), %r8
	movq	%r8, 8(%rsp)                    # 8-byte Spill
	addq	%rsi, %rbp
	adcq	%r15, %rbx
	adcq	%r13, %r12
	movq	32(%r14), %r15
	setb	%sil
	addq	128(%rsp), %rbp
	movq	72(%r14), %rdi
	adcq	136(%rsp), %rbx
	movzbl	%sil, %esi
	adcq	144(%rsp), %r12
	adcq	96(%rsp), %rsi                  # 8-byte Folded Reload
	subq	(%r14), %rdx
	movq	64(%r14), %r13
	sbbq	8(%r14), %rcx
	movq	56(%r14), %r9
	sbbq	16(%r14), %rax
	sbbq	%r8, %rbp
	sbbq	%r15, %rbx
	sbbq	%r10, %r12
	sbbq	$0, %rsi
	movq	48(%r14), %r8
	subq	%r8, %rdx
	sbbq	%r9, %rcx
	sbbq	%r13, %rax
	sbbq	%rdi, %rbp
	movq	%rdi, %r10
	movq	80(%r14), %rdi
	sbbq	%rdi, %rbx
	movq	88(%r14), %r11
	sbbq	%r11, %r12
	sbbq	$0, %rsi
	addq	8(%rsp), %rdx                   # 8-byte Folded Reload
	adcq	%r15, %rcx
	adcq	16(%rsp), %rax                  # 8-byte Folded Reload
	adcq	%r8, %rbp
	adcq	%r9, %rbx
	adcq	%r13, %r12
	movl	%esi, %esi
	adcq	%r10, %rsi
	adcq	$0, %rdi
	adcq	$0, %r11
	movl	%edx, 24(%r14)
	shrq	$32, %rdx
	movl	%edx, 28(%r14)
	movl	%ecx, 32(%r14)
	shrq	$32, %rcx
	movl	%ecx, 36(%r14)
	movl	%eax, 40(%r14)
	shrq	$32, %rax
	movl	%eax, 44(%r14)
	movl	%ebp, 48(%r14)
	shrq	$32, %rbp
	movl	%ebp, 52(%r14)
	movl	%ebx, 56(%r14)
	shrq	$32, %rbx
	movl	%ebx, 60(%r14)
	movl	%r12d, 64(%r14)
	shrq	$32, %r12
	movl	%r12d, 68(%r14)
	movl	%esi, 72(%r14)
	shrq	$32, %rsi
	movl	%esi, 76(%r14)
	movl	%edi, 80(%r14)
	shrq	$32, %rdi
	movl	%edi, 84(%r14)
	movl	%r11d, 88(%r14)
	shrq	$32, %r11
	movl	%r11d, 92(%r14)
	addq	$152, %rsp
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
	subq	$120, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	24(%rsi), %r15
	leaq	48(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul6@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul6@PLT
	movq	(%rbx), %rbp
	addq	24(%rbx), %rbp
	movq	8(%rbx), %r15
	adcq	32(%rbx), %r15
	movq	16(%rbx), %r13
	adcq	40(%rbx), %r13
	setb	%al
	movzbl	%al, %ecx
	movq	%rcx, 64(%rsp)                  # 8-byte Spill
	movq	%r13, %rax
	shrq	$33, %rax
                                        # kill: def $ecx killed $ecx killed $rcx
	shll	$31, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %r12
	movq	%r12, %rbx
	sarq	$63, %rbx
	sarq	$31, %r12
	movl	%ebp, 24(%rsp)
	movq	%r13, %rax
	shrq	$32, %rax
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	%rbp, %rdx
	shrq	$32, %rdx
	movl	%edx, 28(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%r13d, 40(%rsp)
	movl	%eax, 44(%rsp)
	movl	%ebp, (%rsp)
	movl	%edx, 4(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movl	%r13d, 16(%rsp)
	movl	%eax, 20(%rsp)
	leaq	72(%rsp), %rdi
	leaq	24(%rsp), %rsi
	movq	%rsp, %rdx
	callq	mclb_mul6@PLT
	movq	88(%rsp), %rcx
	movq	72(%rsp), %rsi
	movq	80(%rsp), %rdx
	andq	%rbp, %r12
	andq	%rbx, %r15
	andq	%r13, %rbx
	movq	%rbx, %rax
	shldq	$1, %r15, %rax
	shldq	$1, %r12, %r15
	shrq	$63, %rbx
	addq	%r12, %r12
	movq	40(%r14), %r8
	movq	%r8, 56(%rsp)                   # 8-byte Spill
	movq	24(%r14), %rdi
	movq	%rdi, 48(%rsp)                  # 8-byte Spill
	addq	96(%rsp), %r12
	movq	32(%r14), %rbp
	adcq	104(%rsp), %r15
	movq	72(%r14), %r11
	adcq	112(%rsp), %rax
	adcq	64(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rsi
	movq	64(%r14), %r13
	sbbq	8(%r14), %rdx
	movq	56(%r14), %r10
	sbbq	16(%r14), %rcx
	sbbq	%rdi, %r12
	sbbq	%rbp, %r15
	sbbq	%r8, %rax
	sbbq	$0, %rbx
	movq	48(%r14), %r8
	subq	%r8, %rsi
	sbbq	%r10, %rdx
	sbbq	%r13, %rcx
	sbbq	%r11, %r12
	movq	80(%r14), %rdi
	sbbq	%rdi, %r15
	movq	88(%r14), %r9
	sbbq	%r9, %rax
	sbbq	$0, %rbx
	addq	48(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	%rbp, %rdx
	adcq	56(%rsp), %rcx                  # 8-byte Folded Reload
	adcq	%r8, %r12
	adcq	%r10, %r15
	adcq	%r13, %rax
	movl	%ebx, %ebp
	adcq	%r11, %rbp
	adcq	$0, %rdi
	adcq	$0, %r9
	movl	%esi, 24(%r14)
	shrq	$32, %rsi
	movl	%esi, 28(%r14)
	movl	%edx, 32(%r14)
	shrq	$32, %rdx
	movl	%edx, 36(%r14)
	movl	%ecx, 40(%r14)
	shrq	$32, %rcx
	movl	%ecx, 44(%r14)
	movl	%r12d, 48(%r14)
	shrq	$32, %r12
	movl	%r12d, 52(%r14)
	movl	%r15d, 56(%r14)
	shrq	$32, %r15
	movl	%r15d, 60(%r14)
	movl	%eax, 64(%r14)
	shrq	$32, %rax
	movl	%eax, 68(%r14)
	movl	%ebp, 72(%r14)
	shrq	$32, %rbp
	movl	%ebp, 76(%r14)
	movl	%edi, 80(%r14)
	shrq	$32, %rdi
	movl	%edi, 84(%r14)
	movl	%r9d, 88(%r14)
	shrq	$32, %r9
	movl	%r9d, 92(%r14)
	addq	$120, %rsp
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
	.globl	mulUnit_inner416                # -- Begin function mulUnit_inner416
	.p2align	4, 0x90
	.type	mulUnit_inner416,@function
mulUnit_inner416:                       # @mulUnit_inner416
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %ecx
	movl	4(%rsi), %r10d
	movl	%edx, %eax
	imulq	%rax, %rcx
	movq	%rcx, %rdx
	shrq	$32, %rdx
	imulq	%rax, %r10
	movq	%r10, -40(%rsp)                 # 8-byte Spill
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	andq	%r12, %r10
	orq	%rdx, %r10
	movl	8(%rsi), %edx
	imulq	%rax, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r11d
	imulq	%rax, %r11
	movl	32(%rsi), %ebp
	imulq	%rax, %rbp
	movq	%rbp, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rbp
	movl	36(%rsi), %r15d
	imulq	%rax, %r15
	movq	%r15, %rdx
	andq	%r12, %rdx
	orq	%rbp, %rdx
	movl	40(%rsi), %ebx
	imulq	%rax, %rbx
	movq	%rbx, -8(%rsp)                  # 8-byte Spill
	shrq	$32, %rbx
	movl	44(%rsi), %r13d
	imulq	%rax, %r13
	andq	%r13, %r12
	orq	%rbx, %r12
	movl	16(%rsi), %r14d
	imulq	%rax, %r14
	movl	20(%rsi), %r9d
	imulq	%rax, %r9
	movl	24(%rsi), %ebp
	imulq	%rax, %rbp
	movl	28(%rsi), %r8d
	imulq	%rax, %r8
	movl	48(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rsi, -24(%rsp)                 # 8-byte Spill
	movl	%ecx, %eax
	movq	-40(%rsp), %rcx                 # 8-byte Reload
	shlq	$32, %rcx
	orq	%rax, %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movq	%r11, %rsi
	shlq	$32, %r11
	movl	-32(%rsp), %eax                 # 4-byte Reload
	orq	%rax, %r11
	movq	%r9, %rcx
	shlq	$32, %r9
	movl	%r14d, %eax
	orq	%rax, %r9
	movq	%r8, %rbx
	shlq	$32, %r8
	movl	%ebp, %eax
	orq	%rax, %r8
	movl	-16(%rsp), %eax                 # 4-byte Reload
	shlq	$32, %r15
	orq	%rax, %r15
	shrq	$32, %rsi
	movq	-32(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rsi
	movl	-8(%rsp), %eax                  # 4-byte Reload
	shlq	$32, %r13
	orq	%rax, %r13
	shrq	$32, %rcx
	shldq	$32, %r14, %rcx
	shrq	$32, %rbx
	shldq	$32, %rbp, %rbx
	movq	-24(%rsp), %rax                 # 8-byte Reload
	movq	%rax, %rbp
	shrq	$32, %rbp
	shldq	$32, %r12, %rbp
	shldq	$32, %rdx, %r12
	shldq	$32, %rbx, %rdx
	shldq	$32, %rcx, %rbx
	shldq	$32, %rsi, %rcx
	shldq	$32, %r10, %rsi
	shlq	$32, %r10
	addq	-40(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%r11, %rsi
	adcq	%r9, %rcx
	adcq	%r8, %rbx
	adcq	%r15, %rdx
	adcq	%r13, %r12
	movl	%eax, %eax
	adcq	%rax, %rbp
	movq	%rdi, %rax
	movq	%r10, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rcx, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	%rdx, 32(%rdi)
	movq	%r12, 40(%rdi)
	movq	%rbp, 48(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end188:
	.size	mulUnit_inner416, .Lfunc_end188-mulUnit_inner416
                                        # -- End function
	.globl	mclb_mulUnit13                  # -- Begin function mclb_mulUnit13
	.p2align	4, 0x90
	.type	mclb_mulUnit13,@function
mclb_mulUnit13:                         # @mclb_mulUnit13
# %bb.0:
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	movq	24(%rsp), %rdi
	movq	32(%rsp), %rsi
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %rax
	movq	8(%rsp), %rcx
	movq	16(%rsp), %rdx
	movl	%ecx, (%rbx)
	shrq	$32, %rcx
	movl	%ecx, 4(%rbx)
	movl	%edx, 8(%rbx)
	shrq	$32, %rdx
	movl	%edx, 12(%rbx)
	movl	%edi, 16(%rbx)
	shrq	$32, %rdi
	movl	%edi, 20(%rbx)
	movl	%esi, 24(%rbx)
	shrq	$32, %rsi
	movl	%esi, 28(%rbx)
	movl	%r9d, 32(%rbx)
	shrq	$32, %r9
	movl	%r9d, 36(%rbx)
	movl	%r8d, 40(%rbx)
	shrq	$32, %r8
	movl	%r8d, 44(%rbx)
	movl	%eax, 48(%rbx)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$64, %rsp
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
	movl	(%rsi), %ebp
	movl	4(%rsi), %r11d
	movl	%edx, %eax
	imulq	%rax, %rbp
	movq	%rbp, -8(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	imulq	%rax, %r11
	movabsq	$-4294967296, %r13              # imm = 0xFFFFFFFF00000000
	movq	%r11, %rdx
	andq	%r13, %rdx
	orq	%rbp, %rdx
	movq	%rdx, -40(%rsp)                 # 8-byte Spill
	movl	8(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %rbp
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r10d
	imulq	%rax, %r10
	movl	32(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	36(%rsi), %r14d
	imulq	%rax, %r14
	movq	%r14, %r9
	andq	%r13, %r9
	orq	%rcx, %r9
	movl	40(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	44(%rsi), %r8d
	imulq	%rax, %r8
	andq	%r8, %r13
	orq	%rcx, %r13
	movl	16(%rsi), %r15d
	imulq	%rax, %r15
	movl	20(%rsi), %ebx
	imulq	%rax, %rbx
	movl	24(%rsi), %r12d
	imulq	%rax, %r12
	movl	28(%rsi), %edx
	imulq	%rax, %rdx
	movl	48(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	movl	-8(%rsp), %eax                  # 4-byte Reload
	shlq	$32, %r11
	orq	%rax, %r11
	movq	%r10, %rsi
	shlq	$32, %r10
	movl	%ebp, %eax
	orq	%rax, %r10
	movq	%rbx, %rax
	shlq	$32, %rbx
	movl	%r15d, %ecx
	orq	%rcx, %rbx
	movq	%rdx, %rcx
	shlq	$32, %rdx
	movl	%r12d, %ebp
	orq	%rbp, %rdx
	shrq	$32, %rsi
	movq	-32(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rsi
	shrq	$32, %rax
	shldq	$32, %r15, %rax
	shrq	$32, %rcx
	shldq	$32, %r12, %rcx
	movl	-48(%rsp), %ebp                 # 4-byte Reload
	shlq	$32, %r14
	orq	%rbp, %r14
	movl	-16(%rsp), %ebp                 # 4-byte Reload
	movq	%rbp, -48(%rsp)                 # 8-byte Spill
	movq	-24(%rsp), %r12                 # 8-byte Reload
	movq	%r12, %r15
	shrq	$32, %r15
	shlq	$32, %r8
	shldq	$32, %r13, %r15
	shldq	$32, %r9, %r13
	shldq	$32, %rcx, %r9
	shldq	$32, %rax, %rcx
	shldq	$32, %rsi, %rax
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rsi
	addq	-48(%rsp), %r8                  # 8-byte Folded Reload
	shlq	$32, %rbp
	movq	%rbp, -40(%rsp)                 # 8-byte Spill
	addq	(%rdi), %r11
	adcq	8(%rdi), %r10
	adcq	16(%rdi), %rbx
	adcq	24(%rdi), %rdx
	adcq	32(%rdi), %r14
	movl	%r12d, %r12d
	adcq	40(%rdi), %r8
	movl	48(%rdi), %ebp
	adcq	%r12, %rbp
	addq	-40(%rsp), %r11                 # 8-byte Folded Reload
	adcq	%rsi, %r10
	adcq	%rax, %rbx
	adcq	%rcx, %rdx
	adcq	%r9, %r14
	adcq	%r13, %r8
	adcq	%r15, %rbp
	movl	%r11d, (%rdi)
	shrq	$32, %r11
	movl	%r11d, 4(%rdi)
	movl	%r10d, 8(%rdi)
	shrq	$32, %r10
	movl	%r10d, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%edx, 24(%rdi)
	shrq	$32, %rdx
	movl	%edx, 28(%rdi)
	movl	%r14d, 32(%rdi)
	shrq	$32, %r14
	movl	%r14d, 36(%rdi)
	movl	%r8d, 40(%rdi)
	shrq	$32, %r8
	movl	%r8d, 44(%rdi)
	movl	%ebp, 48(%rdi)
	movq	%rbp, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$776, %rsp                      # imm = 0x308
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, %rbp
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movl	(%rdx), %edx
	leaq	720(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	movq	736(%rsp), %r12
	movq	744(%rsp), %r14
	movq	752(%rsp), %rcx
	movq	760(%rsp), %rbx
	movq	768(%rsp), %r13
	movq	720(%rsp), %rax
	movq	728(%rsp), %r15
	movl	%eax, (%rbp)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %rcx, %rbx
	shldq	$32, %r14, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %r14
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %rax, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %edx
	leaq	664(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	664(%rsp), %r15
	adcq	672(%rsp), %r12
	movq	%r14, %rcx
	adcq	680(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	688(%rsp), %rdx
	adcq	696(%rsp), %rbx
	adcq	704(%rsp), %rbp
	adcq	712(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 4(%rax)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %edx
	leaq	608(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	608(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	616(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	624(%rsp), %rcx
	adcq	632(%rsp), %rbx
	adcq	640(%rsp), %rbp
	adcq	648(%rsp), %r14
	adcq	656(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 8(%rax)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	12(%rax), %edx
	leaq	552(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	552(%rsp), %r12
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	560(%rsp), %rdx
	adcq	568(%rsp), %rbx
	adcq	576(%rsp), %rbp
	adcq	584(%rsp), %r14
	adcq	592(%rsp), %r15
	adcq	600(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 12(%rax)
	movq	%r12, %rcx
	movq	%r13, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	16(%rax), %edx
	leaq	496(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	496(%rsp), %rcx
	adcq	504(%rsp), %rbx
	adcq	512(%rsp), %rbp
	adcq	520(%rsp), %r14
	adcq	528(%rsp), %r15
	adcq	536(%rsp), %r12
	adcq	544(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 16(%rax)
	movq	%r13, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	shrq	$32, %r13
	shldq	$32, %rcx, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %edx
	leaq	440(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	440(%rsp), %rbx
	adcq	448(%rsp), %rbp
	adcq	456(%rsp), %r14
	adcq	464(%rsp), %r15
	adcq	472(%rsp), %r12
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	480(%rsp), %rcx
	adcq	488(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 20(%rax)
	movq	%r13, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r13
	shldq	$32, %rbx, %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	leaq	384(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	384(%rsp), %rbp
	adcq	392(%rsp), %r14
	adcq	400(%rsp), %r15
	adcq	408(%rsp), %r12
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	416(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	adcq	432(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 24(%rax)
	movq	%r13, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %rbp, %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edx
	leaq	328(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	328(%rsp), %r14
	adcq	336(%rsp), %r15
	adcq	344(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	352(%rsp), %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	360(%rsp), %rcx
	adcq	368(%rsp), %rbx
	adcq	376(%rsp), %r13
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%r14d, 28(%rdx)
	movq	%r13, %rbp
	shldq	$32, %rbx, %rbp
	shldq	$32, %rcx, %rbx
	shldq	$32, %rax, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	32(%rax), %edx
	leaq	272(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	272(%rsp), %r15
	adcq	280(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	288(%rsp), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	296(%rsp), %rdx
	adcq	304(%rsp), %rbx
	adcq	312(%rsp), %rbp
	adcq	320(%rsp), %r13
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%r15d, 32(%rcx)
	movq	%r13, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %rbx, %rbp
	movq	%rbp, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rbp
	shldq	$32, %rdx, %rbx
	shldq	$32, %rax, %rbp
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %edx
	leaq	216(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	216(%rsp), %r12
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	224(%rsp), %rdx
	adcq	232(%rsp), %rbp
	adcq	240(%rsp), %rbx
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	248(%rsp), %rax
	adcq	256(%rsp), %r14
	adcq	264(%rsp), %r13
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%r12d, 36(%rcx)
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rax, %r14
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %rbp, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shrq	$32, %r13
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %edx
	leaq	160(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	160(%rsp), %r12
	adcq	168(%rsp), %rbp
	adcq	176(%rsp), %rbx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	184(%rsp), %rdx
	adcq	192(%rsp), %r14
	adcq	200(%rsp), %r15
	adcq	208(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 40(%rax)
	movq	%r12, %rcx
	movq	%r13, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	movq	%rdx, %rax
	shldq	$32, %rdx, %r14
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %rbp, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rbp
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	44(%rax), %edx
	leaq	104(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	104(%rsp), %rbp
	adcq	112(%rsp), %rbx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	120(%rsp), %rcx
	adcq	128(%rsp), %r14
	adcq	136(%rsp), %r15
	adcq	144(%rsp), %r12
	adcq	152(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 44(%rax)
	movq	%r13, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	movq	%rcx, %rax
	shldq	$32, %rcx, %r14
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rbp, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	48(%rax), %edx
	leaq	48(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner416@PLT
	addq	48(%rsp), %rbx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	56(%rsp), %rcx
	adcq	64(%rsp), %r14
	adcq	72(%rsp), %r15
	adcq	80(%rsp), %r12
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	88(%rsp), %rdx
	adcq	96(%rsp), %r13
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 48(%rax)
	movq	%r13, %r8
	shrq	$32, %r8
	movq	%rdx, %r10
	movq	%rdx, %r9
	shrq	$32, %r10
	movq	%r12, %rdx
	shrq	$32, %rdx
	movq	%r15, %rsi
	shrq	$32, %rsi
	movq	%r14, %rdi
	shrq	$32, %rdi
	movq	%rcx, %rbp
	shrq	$32, %rbp
	shrq	$32, %rbx
	movl	%ebx, 52(%rax)
	movl	%ecx, 56(%rax)
	movl	%ebp, 60(%rax)
	movl	%r14d, 64(%rax)
	movl	%edi, 68(%rax)
	movl	%r15d, 72(%rax)
	movl	%esi, 76(%rax)
	movl	%r12d, 80(%rax)
	movl	%edx, 84(%rax)
	movl	%r9d, 88(%rax)
	movl	%r10d, 92(%rax)
	movl	%r13d, 96(%rax)
	movl	%r8d, 100(%rax)
	addq	$776, %rsp                      # imm = 0x308
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
	subq	$760, %rsp                      # imm = 0x2F8
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %r13
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edx
	leaq	704(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	movq	720(%rsp), %r15
	movq	728(%rsp), %rbp
	movq	736(%rsp), %rcx
	movq	744(%rsp), %rbx
	movq	752(%rsp), %r12
	movq	704(%rsp), %rax
	movq	712(%rsp), %r14
	movl	%eax, (%r13)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	shldq	$32, %rcx, %rbx
	shldq	$32, %rbp, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rbp
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rax, %r14
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	4(%rsi), %edx
	leaq	648(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	648(%rsp), %r14
	adcq	656(%rsp), %r15
	movq	%rbp, %rcx
	adcq	664(%rsp), %rcx
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	672(%rsp), %rax
	adcq	680(%rsp), %rbx
	adcq	688(%rsp), %r13
	adcq	696(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%r14d, 4(%rdx)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %rax, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	8(%rsi), %edx
	leaq	592(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	592(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	600(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	608(%rsp), %rcx
	adcq	616(%rsp), %rbx
	adcq	624(%rsp), %r13
	adcq	632(%rsp), %rbp
	adcq	640(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 8(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	12(%rsi), %edx
	leaq	536(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	536(%rsp), %r15
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	544(%rsp), %rdx
	adcq	552(%rsp), %rbx
	adcq	560(%rsp), %r13
	adcq	568(%rsp), %rbp
	adcq	576(%rsp), %r14
	adcq	584(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 12(%rax)
	movq	%r15, %rcx
	movq	%r12, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r12
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	16(%rsi), %edx
	leaq	480(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	480(%rsp), %rcx
	adcq	488(%rsp), %rbx
	adcq	496(%rsp), %r13
	adcq	504(%rsp), %rbp
	adcq	512(%rsp), %r14
	adcq	520(%rsp), %r15
	adcq	528(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 16(%rax)
	movq	%r12, %rax
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %rcx, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	20(%rsi), %edx
	leaq	424(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	424(%rsp), %rbx
	adcq	432(%rsp), %r13
	adcq	440(%rsp), %rbp
	adcq	448(%rsp), %r14
	adcq	456(%rsp), %r15
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	464(%rsp), %rcx
	adcq	472(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 20(%rax)
	movq	%r12, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shrq	$32, %r12
	shldq	$32, %rbx, %r13
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	24(%rsi), %edx
	leaq	368(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	368(%rsp), %r13
	adcq	376(%rsp), %rbp
	adcq	384(%rsp), %r14
	adcq	392(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	400(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	408(%rsp), %rcx
	adcq	416(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r13d, 24(%rax)
	movq	%r12, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shrq	$32, %r12
	shldq	$32, %r13, %rbp
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	28(%rsi), %edx
	leaq	312(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	312(%rsp), %rbp
	adcq	320(%rsp), %r14
	adcq	328(%rsp), %r15
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	336(%rsp), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	344(%rsp), %rdx
	adcq	352(%rsp), %rbx
	adcq	360(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 28(%rax)
	movq	%r12, %r13
	shldq	$32, %rbx, %r13
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %r12
	shldq	$32, %rbp, %r14
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	32(%rsi), %edx
	leaq	256(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	256(%rsp), %r14
	adcq	264(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	272(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	280(%rsp), %rcx
	adcq	288(%rsp), %rbx
	adcq	296(%rsp), %r13
	adcq	304(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 32(%rax)
	movq	%r12, %rbp
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r14, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	36(%rsi), %edx
	leaq	200(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	200(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	208(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	216(%rsp), %rcx
	adcq	224(%rsp), %rbx
	adcq	232(%rsp), %r13
	adcq	240(%rsp), %rbp
	adcq	248(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 36(%rax)
	movq	%r12, %r14
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shrq	$32, %r12
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	40(%rsi), %edx
	leaq	144(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	144(%rsp), %r15
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	152(%rsp), %rdx
	adcq	160(%rsp), %rbx
	adcq	168(%rsp), %r13
	adcq	176(%rsp), %rbp
	adcq	184(%rsp), %r14
	adcq	192(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 40(%rax)
	movq	%r15, %rcx
	movq	%r12, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r12
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	44(%rsi), %edx
	leaq	88(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	88(%rsp), %rcx
	adcq	96(%rsp), %rbx
	adcq	104(%rsp), %r13
	adcq	112(%rsp), %rbp
	adcq	120(%rsp), %r14
	adcq	128(%rsp), %r15
	adcq	136(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 44(%rax)
	movq	%r12, %rax
	shldq	$32, %r15, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %rbp, %r14
	shldq	$32, %r13, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %r12
	shldq	$32, %rcx, %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	movl	48(%rsi), %edx
	leaq	32(%rsp), %rdi
	callq	mulUnit_inner416@PLT
	addq	32(%rsp), %rbx
	adcq	40(%rsp), %r13
	adcq	48(%rsp), %rbp
	adcq	56(%rsp), %r14
	adcq	64(%rsp), %r15
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	72(%rsp), %rax
	adcq	80(%rsp), %r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ebx, 48(%rcx)
	movq	%r12, %r8
	shrq	$32, %r8
	movq	%rax, %r9
	movq	%rax, %r10
	shrq	$32, %r9
	movq	%r15, %rdx
	shrq	$32, %rdx
	movq	%r14, %rsi
	shrq	$32, %rsi
	movq	%rbp, %rdi
	shrq	$32, %rdi
	movq	%r13, %rax
	shrq	$32, %rax
	shrq	$32, %rbx
	movl	%ebx, 52(%rcx)
	movl	%r13d, 56(%rcx)
	movl	%eax, 60(%rcx)
	movl	%ebp, 64(%rcx)
	movl	%edi, 68(%rcx)
	movl	%r14d, 72(%rcx)
	movl	%esi, 76(%rcx)
	movl	%r15d, 80(%rcx)
	movl	%edx, 84(%rcx)
	movl	%r10d, 88(%rcx)
	movl	%r9d, 92(%rcx)
	movl	%r12d, 96(%rcx)
	movl	%r8d, 100(%rcx)
	addq	$760, %rsp                      # imm = 0x2F8
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
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %r14d
	movl	4(%rsi), %r9d
	movl	%edx, %edi
	imulq	%rdi, %r14
	movq	%r14, %rax
	shrq	$32, %rax
	imulq	%rdi, %r9
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	movq	%r9, %rcx
	andq	%r12, %rcx
	orq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	movl	8(%rsi), %eax
	imulq	%rdi, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %eax
	imulq	%rdi, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	36(%rsi), %r11d
	imulq	%rdi, %r11
	movq	%r11, %r13
	andq	%r12, %r13
	orq	%rax, %r13
	movl	40(%rsi), %eax
	imulq	%rdi, %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	44(%rsi), %r15d
	imulq	%rdi, %r15
	movq	%r15, %rdx
	andq	%r12, %rdx
	orq	%rax, %rdx
	movl	12(%rsi), %ebp
	imulq	%rdi, %rbp
	movl	16(%rsi), %eax
	imulq	%rdi, %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %ebx
	imulq	%rdi, %rbx
	movl	24(%rsi), %eax
	imulq	%rdi, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %eax
	imulq	%rdi, %rax
	movl	48(%rsi), %r8d
	imulq	%rdi, %r8
	movl	52(%rsi), %r10d
	imulq	%rdi, %r10
	movq	%r8, %rcx
	shrq	$32, %rcx
	andq	%r10, %r12
	orq	%rcx, %r12
	movl	%r14d, %ecx
	shlq	$32, %r9
	orq	%rcx, %r9
	movq	%r9, -40(%rsp)                  # 8-byte Spill
	movq	%rbp, %r14
	shlq	$32, %rbp
	movl	-48(%rsp), %ecx                 # 4-byte Reload
	orq	%rcx, %rbp
	movq	%rbx, %rdi
	shlq	$32, %rbx
	movl	-64(%rsp), %ecx                 # 4-byte Reload
	orq	%rcx, %rbx
	movq	%rax, %rcx
	shlq	$32, %rax
	movl	-56(%rsp), %r9d                 # 4-byte Reload
	orq	%r9, %rax
	movl	-32(%rsp), %r9d                 # 4-byte Reload
	shlq	$32, %r11
	orq	%r9, %r11
	shrq	$32, %r14
	movq	-48(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %r14
	shrq	$32, %rdi
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %rdi
	movl	-24(%rsp), %r9d                 # 4-byte Reload
	shlq	$32, %r15
	orq	%r9, %r15
	shrq	$32, %rcx
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %rcx
	movl	%r8d, %r9d
	shlq	$32, %r10
	movq	%r12, %r8
	shldq	$32, %rdx, %r8
	shldq	$32, %r13, %rdx
	shldq	$32, %rcx, %r13
	shldq	$32, %rdi, %rcx
	shldq	$32, %r14, %rdi
	orq	%r9, %r10
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %r14
	shrq	$32, %r12
	shlq	$32, %rsi
	addq	-40(%rsp), %rsi                 # 8-byte Folded Reload
	adcq	%rbp, %r14
	adcq	%rbx, %rdi
	adcq	%rax, %rcx
	adcq	%r11, %r13
	adcq	%r15, %rdx
	adcq	%r10, %r8
	movq	-8(%rsp), %rax                  # 8-byte Reload
	movq	%rsi, (%rax)
	movq	%r14, 8(%rax)
	movq	%rdi, 16(%rax)
	movq	%rcx, 24(%rax)
	movq	%r13, 32(%rax)
	movq	%rdx, 40(%rax)
	movq	%r8, 48(%rax)
	adcq	$0, %r12
	movl	%r12d, 56(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end193:
	.size	mulUnit_inner448, .Lfunc_end193-mulUnit_inner448
                                        # -- End function
	.globl	mclb_mulUnit14                  # -- Begin function mclb_mulUnit14
	.p2align	4, 0x90
	.type	mclb_mulUnit14,@function
mclb_mulUnit14:                         # @mclb_mulUnit14
# %bb.0:
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner448@PLT
	movl	56(%rsp), %eax
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdi
	movq	32(%rsp), %r10
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	movl	%edx, (%rbx)
	shrq	$32, %rdx
	movl	%edx, 4(%rbx)
	movl	%esi, 8(%rbx)
	shrq	$32, %rsi
	movl	%esi, 12(%rbx)
	movl	%ecx, 16(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 20(%rbx)
	movl	%edi, 24(%rbx)
	shrq	$32, %rdi
	movl	%edi, 28(%rbx)
	movl	%r10d, 32(%rbx)
	shrq	$32, %r10
	movl	%r10d, 36(%rbx)
	movl	%r9d, 40(%rbx)
	shrq	$32, %r9
	movl	%r9d, 44(%rbx)
	movl	%r8d, 48(%rbx)
	shrq	$32, %r8
	movl	%r8d, 52(%rbx)
	addq	$64, %rsp
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
	movq	%rdi, %r9
	movl	(%rsi), %r13d
	movl	4(%rsi), %r14d
	movl	%edx, %eax
	imulq	%rax, %r13
	movq	%r13, %rcx
	shrq	$32, %rcx
	imulq	%rax, %r14
	movabsq	$-4294967296, %r12              # imm = 0xFFFFFFFF00000000
	movq	%r14, %rdx
	andq	%r12, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	8(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -64(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	36(%rsi), %r10d
	imulq	%rax, %r10
	movq	%r10, %rdx
	andq	%r12, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -56(%rsp)                 # 8-byte Spill
	movl	40(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	44(%rsi), %r11d
	imulq	%rax, %r11
	movq	%r11, %rbp
	andq	%r12, %rbp
	orq	%rcx, %rbp
	movl	12(%rsi), %ebx
	imulq	%rax, %rbx
	movl	16(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %rdx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %edi
	imulq	%rax, %rdi
	movl	24(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %r8d
	imulq	%rax, %r8
	movl	48(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	movl	52(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rcx, %rax
	shrq	$32, %rax
	andq	%rsi, %r12
	orq	%rax, %r12
	movl	%r13d, %eax
	shlq	$32, %r14
	orq	%rax, %r14
	movq	%rbx, %r13
	shlq	$32, %rbx
	movl	-64(%rsp), %eax                 # 4-byte Reload
	orq	%rax, %rbx
	movq	%rdi, %rcx
	shlq	$32, %rdi
	movl	%edx, %edx
	orq	%rdx, %rdi
	movq	%r8, %rdx
	shlq	$32, %r8
	movl	-48(%rsp), %r15d                # 4-byte Reload
	orq	%r15, %r8
	movl	-16(%rsp), %r15d                # 4-byte Reload
	shlq	$32, %r10
	orq	%r15, %r10
	movl	-24(%rsp), %r15d                # 4-byte Reload
	shlq	$32, %r11
	orq	%r15, %r11
	shrq	$32, %r13
	movq	-64(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %r13
	shrq	$32, %rcx
	movq	-40(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rcx
	movl	-32(%rsp), %r15d                # 4-byte Reload
	shlq	$32, %rsi
	orq	%r15, %rsi
	shrq	$32, %rdx
	movq	-48(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rdx
	movq	%r12, %r15
	shldq	$32, %rbp, %r15
	movq	-56(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rbp
	shldq	$32, %rdx, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	shldq	$32, %rcx, %rdx
	shldq	$32, %r13, %rcx
	movq	-8(%rsp), %rax                  # 8-byte Reload
	shldq	$32, %rax, %r13
	shrq	$32, %r12
	shlq	$32, %rax
	addq	(%r9), %r14
	adcq	8(%r9), %rbx
	adcq	16(%r9), %rdi
	adcq	24(%r9), %r8
	adcq	32(%r9), %r10
	adcq	40(%r9), %r11
	adcq	48(%r9), %rsi
	setb	-64(%rsp)                       # 1-byte Folded Spill
	addq	%rax, %r14
	adcq	%r13, %rbx
	adcq	%rcx, %rdi
	adcq	%rdx, %r8
	adcq	-56(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%rbp, %r11
	adcq	%r15, %rsi
	movzbl	-64(%rsp), %eax                 # 1-byte Folded Reload
	adcq	%r12, %rax
	movl	%r14d, (%r9)
	shrq	$32, %r14
	movl	%r14d, 4(%r9)
	movl	%ebx, 8(%r9)
	shrq	$32, %rbx
	movl	%ebx, 12(%r9)
	movl	%edi, 16(%r9)
	shrq	$32, %rdi
	movl	%edi, 20(%r9)
	movl	%r8d, 24(%r9)
	shrq	$32, %r8
	movl	%r8d, 28(%r9)
	movl	%r10d, 32(%r9)
	shrq	$32, %r10
	movl	%r10d, 36(%r9)
	movl	%r11d, 40(%r9)
	shrq	$32, %r11
	movl	%r11d, 44(%r9)
	movl	%esi, 48(%r9)
	shrq	$32, %rsi
	movl	%esi, 52(%r9)
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$168, %rsp
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	28(%rsi), %r12
	leaq	28(%rdx), %r13
	leaq	56(%rdi), %rbp
	callq	mclb_mul7@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul7@PLT
	movl	52(%rbx), %eax
	movl	24(%rbx), %edx
	movq	16(%rbx), %r12
	movq	(%rbx), %rbp
	movq	8(%rbx), %r13
	addq	28(%rbx), %rbp
	movl	52(%r14), %ecx
	adcq	36(%rbx), %r13
	movq	(%r14), %rsi
	adcq	44(%rbx), %r12
	adcq	%rax, %rdx
	addq	28(%r14), %rsi
	movq	%rsi, 88(%rsp)                  # 8-byte Spill
	movq	8(%r14), %rax
	adcq	36(%r14), %rax
	movq	%rax, %r8
	movq	16(%r14), %rax
	adcq	44(%r14), %rax
	movq	%rax, %r9
	movl	24(%r14), %edi
	adcq	%rcx, %rdi
	movq	%rdx, %r14
	shlq	$31, %r14
	sarq	$63, %r14
	movq	%rdi, %rbx
	shlq	$31, %rbx
	sarq	$63, %rbx
	movq	%rdi, %rax
	movq	%rdi, %r10
	movq	%rdi, 72(%rsp)                  # 8-byte Spill
	andq	%rdx, %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rdx, 96(%rsp)                  # 8-byte Spill
	movl	%ebp, 36(%rsp)
	movq	%r12, %rax
	shrq	$32, %rax
	movq	%r13, %rcx
	shrq	$32, %rcx
	movq	%rbp, %rdx
	shrq	$32, %rdx
	movl	%edx, 40(%rsp)
	movl	%r13d, 44(%rsp)
	movl	%ecx, 48(%rsp)
	movl	%r12d, 52(%rsp)
	movl	%eax, 56(%rsp)
	movl	%edi, 60(%rsp)
	movl	%esi, 8(%rsp)
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	movq	%r9, %rax
	shrq	$32, %rax
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%r8, %rcx
	shrq	$32, %rcx
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movl	%edx, 12(%rsp)
	movl	%r8d, 16(%rsp)
	movl	%ecx, 20(%rsp)
	movl	%r9d, 24(%rsp)
	movl	%eax, 28(%rsp)
	movl	%r10d, 32(%rsp)
	leaq	112(%rsp), %rdi
	leaq	36(%rsp), %rsi
	leaq	8(%rsp), %rdx
	callq	mclb_mul7@PLT
	movq	104(%rsp), %rdx                 # 8-byte Reload
	shrq	$32, %rdx
	movq	64(%rsp), %rcx                  # 8-byte Reload
	andq	%r14, %rcx
	movq	80(%rsp), %rsi                  # 8-byte Reload
	andq	%r14, %rsi
	movq	88(%rsp), %rax                  # 8-byte Reload
	andq	%r14, %rax
	andl	72(%rsp), %r14d                 # 4-byte Folded Reload
	andq	%rbx, %r12
	andq	%rbx, %r13
	andq	%rbx, %rbp
	andl	96(%rsp), %ebx                  # 4-byte Folded Reload
	addq	%rax, %rbp
	adcq	%rsi, %r13
	adcq	%rcx, %r12
	adcq	%r14, %rbx
	movq	%rbx, %rax
	shldq	$32, %r12, %rax
	shldq	$32, %r13, %r12
	shldq	$32, %rbp, %r13
	shrq	$32, %rbx
	shlq	$32, %rbp
	addq	136(%rsp), %rbp
	adcq	144(%rsp), %r13
	adcq	152(%rsp), %r12
	movq	112(%rsp), %rcx
	adcq	160(%rsp), %rax
	adcq	%rdx, %rbx
	subq	(%r15), %rcx
	movq	120(%rsp), %rsi
	sbbq	8(%r15), %rsi
	movq	128(%rsp), %rdx
	sbbq	16(%r15), %rdx
	sbbq	24(%r15), %rbp
	sbbq	32(%r15), %r13
	sbbq	40(%r15), %r12
	sbbq	48(%r15), %rax
	sbbq	$0, %rbx
	subq	56(%r15), %rcx
	sbbq	64(%r15), %rsi
	sbbq	72(%r15), %rdx
	sbbq	80(%r15), %rbp
	sbbq	88(%r15), %r13
	sbbq	96(%r15), %r12
	sbbq	104(%r15), %rax
	sbbq	$0, %rbx
	addq	28(%r15), %rcx
	adcq	36(%r15), %rsi
	adcq	44(%r15), %rdx
	adcq	52(%r15), %rbp
	adcq	60(%r15), %r13
	adcq	68(%r15), %r12
	movl	%ebx, %ebx
	adcq	76(%r15), %rax
	movl	108(%r15), %r8d
	adcq	84(%r15), %rbx
	movq	92(%r15), %rdi
	movq	100(%r15), %r9
	adcq	$0, %rdi
	adcq	$0, %r9
	adcq	$0, %r8
	movl	%ecx, 28(%r15)
	shrq	$32, %rcx
	movl	%ecx, 32(%r15)
	movl	%esi, 36(%r15)
	shrq	$32, %rsi
	movl	%esi, 40(%r15)
	movl	%edx, 44(%r15)
	shrq	$32, %rdx
	movl	%edx, 48(%r15)
	movl	%ebp, 52(%r15)
	shrq	$32, %rbp
	movl	%ebp, 56(%r15)
	movl	%r13d, 60(%r15)
	shrq	$32, %r13
	movl	%r13d, 64(%r15)
	movl	%r12d, 68(%r15)
	shrq	$32, %r12
	movl	%r12d, 72(%r15)
	movl	%eax, 76(%r15)
	shrq	$32, %rax
	movl	%eax, 80(%r15)
	movl	%ebx, 84(%r15)
	shrq	$32, %rbx
	movl	%ebx, 88(%r15)
	movl	%edi, 92(%r15)
	shrq	$32, %rdi
	movl	%edi, 96(%r15)
	movl	%r9d, 100(%r15)
	shrq	$32, %r9
	movl	%r9d, 104(%r15)
	movl	%r8d, 108(%r15)
	addq	$168, %rsp
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
	subq	$120, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	28(%rsi), %r15
	leaq	56(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul7@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul7@PLT
	movq	(%rbx), %r13
	addq	28(%rbx), %r13
	movq	8(%rbx), %r12
	adcq	36(%rbx), %r12
	movq	16(%rbx), %r15
	adcq	44(%rbx), %r15
	movl	52(%rbx), %eax
	movl	24(%rbx), %ebp
	adcq	%rax, %rbp
	movq	%rbp, %rbx
	shlq	$31, %rbx
	sarq	$63, %rbx
	movl	%r13d, 28(%rsp)
	movq	%rbp, %rax
	shrq	$32, %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%r12, %rcx
	shrq	$32, %rcx
	movq	%r13, %rdx
	shrq	$32, %rdx
	movl	%edx, 32(%rsp)
	movl	%r12d, 36(%rsp)
	movl	%ecx, 40(%rsp)
	movl	%r15d, 44(%rsp)
	movl	%eax, 48(%rsp)
	movl	%ebp, 52(%rsp)
	movl	%r13d, (%rsp)
	movl	%edx, 4(%rsp)
	movl	%r12d, 8(%rsp)
	movl	%ecx, 12(%rsp)
	movl	%r15d, 16(%rsp)
	movl	%eax, 20(%rsp)
	movl	%ebp, 24(%rsp)
	leaq	64(%rsp), %rdi
	leaq	28(%rsp), %rsi
	movq	%rsp, %rdx
	callq	mclb_mul7@PLT
	andq	%rbx, %r13
	andq	%rbx, %r12
	andq	%rbx, %r15
	andl	%ebp, %ebx
	movq	%rbx, %rax
	shldq	$33, %r15, %rax
	shldq	$33, %r12, %r15
	shldq	$33, %r13, %r12
	shrq	$31, %rbx
	shlq	$33, %r13
	addq	88(%rsp), %r13
	adcq	96(%rsp), %r12
	adcq	104(%rsp), %r15
	movq	64(%rsp), %rcx
	adcq	112(%rsp), %rax
	adcq	56(%rsp), %rbx                  # 8-byte Folded Reload
	subq	(%r14), %rcx
	movq	72(%rsp), %rsi
	sbbq	8(%r14), %rsi
	movq	80(%rsp), %rdx
	sbbq	16(%r14), %rdx
	sbbq	24(%r14), %r13
	sbbq	32(%r14), %r12
	sbbq	40(%r14), %r15
	sbbq	48(%r14), %rax
	sbbq	$0, %rbx
	subq	56(%r14), %rcx
	sbbq	64(%r14), %rsi
	sbbq	72(%r14), %rdx
	sbbq	80(%r14), %r13
	sbbq	88(%r14), %r12
	sbbq	96(%r14), %r15
	sbbq	104(%r14), %rax
	sbbq	$0, %rbx
	addq	28(%r14), %rcx
	adcq	36(%r14), %rsi
	adcq	44(%r14), %rdx
	adcq	52(%r14), %r13
	adcq	60(%r14), %r12
	adcq	68(%r14), %r15
	movl	%ebx, %edi
	adcq	76(%r14), %rax
	movl	108(%r14), %r8d
	adcq	84(%r14), %rdi
	movq	92(%r14), %rbx
	movq	100(%r14), %rbp
	adcq	$0, %rbx
	adcq	$0, %rbp
	adcq	$0, %r8
	movl	%ecx, 28(%r14)
	shrq	$32, %rcx
	movl	%ecx, 32(%r14)
	movl	%esi, 36(%r14)
	shrq	$32, %rsi
	movl	%esi, 40(%r14)
	movl	%edx, 44(%r14)
	shrq	$32, %rdx
	movl	%edx, 48(%r14)
	movl	%r13d, 52(%r14)
	shrq	$32, %r13
	movl	%r13d, 56(%r14)
	movl	%r12d, 60(%r14)
	shrq	$32, %r12
	movl	%r12d, 64(%r14)
	movl	%r15d, 68(%r14)
	shrq	$32, %r15
	movl	%r15d, 72(%r14)
	movl	%eax, 76(%r14)
	shrq	$32, %rax
	movl	%eax, 80(%r14)
	movl	%edi, 84(%r14)
	shrq	$32, %rdi
	movl	%edi, 88(%r14)
	movl	%ebx, 92(%r14)
	shrq	$32, %rbx
	movl	%ebx, 96(%r14)
	movl	%ebp, 100(%r14)
	shrq	$32, %rbp
	movl	%ebp, 104(%r14)
	movl	%r8d, 108(%r14)
	addq	$120, %rsp
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
	.globl	mulUnit_inner480                # -- Begin function mulUnit_inner480
	.p2align	4, 0x90
	.type	mulUnit_inner480,@function
mulUnit_inner480:                       # @mulUnit_inner480
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movl	(%rsi), %ebp
	movl	4(%rsi), %r14d
	movl	%edx, %eax
	imulq	%rax, %rbp
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	shrq	$32, %rbp
	imulq	%rax, %r14
	movabsq	$-4294967296, %r10              # imm = 0xFFFFFFFF00000000
	movq	%r14, %rdx
	andq	%r10, %rdx
	orq	%rbp, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	32(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	36(%rsi), %r13d
	imulq	%rax, %r13
	movq	%r13, -64(%rsp)                 # 8-byte Spill
	andq	%r10, %r13
	orq	%rcx, %r13
	movl	40(%rsi), %edx
	imulq	%rax, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rdx
	movl	44(%rsi), %r15d
	imulq	%rax, %r15
	movq	%r15, %rcx
	andq	%r10, %rcx
	orq	%rdx, %rcx
	movl	48(%rsi), %ebp
	imulq	%rax, %rbp
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rbp
	movl	52(%rsi), %r11d
	imulq	%rax, %r11
	andq	%r11, %r10
	orq	%rbp, %r10
	movl	8(%rsi), %r8d
	imulq	%rax, %r8
	movl	12(%rsi), %edx
	imulq	%rax, %rdx
	movl	16(%rsi), %ebx
	imulq	%rax, %rbx
	movq	%rbx, -40(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %r12d
	imulq	%rax, %r12
	movl	24(%rsi), %ebp
	imulq	%rax, %rbp
	movq	%rbp, -56(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %r9d
	imulq	%rax, %r9
	movl	56(%rsi), %esi
	imulq	%rax, %rsi
	movq	%rsi, -48(%rsp)                 # 8-byte Spill
	movl	-72(%rsp), %eax                 # 4-byte Reload
	shlq	$32, %r14
	orq	%rax, %r14
	movq	%r14, -72(%rsp)                 # 8-byte Spill
	movq	%rdx, %rsi
	shlq	$32, %rdx
	movl	%r8d, %eax
	orq	%rax, %rdx
	movq	%r12, %rbp
	shlq	$32, %r12
	movl	%ebx, %eax
	orq	%rax, %r12
	movq	%r9, %r14
	shlq	$32, %r9
	movl	-56(%rsp), %eax                 # 4-byte Reload
	orq	%rax, %r9
	movl	-16(%rsp), %eax                 # 4-byte Reload
	movq	-64(%rsp), %rbx                 # 8-byte Reload
	shlq	$32, %rbx
	orq	%rax, %rbx
	movq	%rbx, -64(%rsp)                 # 8-byte Spill
	movl	-32(%rsp), %eax                 # 4-byte Reload
	shlq	$32, %r15
	orq	%rax, %r15
	shrq	$32, %rsi
	shldq	$32, %r8, %rsi
	movl	-24(%rsp), %eax                 # 4-byte Reload
	shlq	$32, %r11
	orq	%rax, %r11
	shrq	$32, %rbp
	movq	-40(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rbp
	shrq	$32, %r14
	movq	-56(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %r14
	movq	-48(%rsp), %rbx                 # 8-byte Reload
	shrq	$32, %rbx
	shldq	$32, %r10, %rbx
	shldq	$32, %rcx, %r10
	shldq	$32, %r13, %rcx
	shldq	$32, %r14, %r13
	shldq	$32, %rbp, %r14
	shldq	$32, %rsi, %rbp
	movq	-8(%rsp), %rax                  # 8-byte Reload
	shldq	$32, %rax, %rsi
	shlq	$32, %rax
	addq	-72(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, %r8
	adcq	%rdx, %rsi
	adcq	%r12, %rbp
	adcq	%r9, %r14
	adcq	-64(%rsp), %r13                 # 8-byte Folded Reload
	adcq	%r15, %rcx
	adcq	%r11, %r10
	movq	%rdi, %rax
	movl	-48(%rsp), %edx                 # 4-byte Reload
	adcq	%rdx, %rbx
	movq	%r8, (%rdi)
	movq	%rsi, 8(%rdi)
	movq	%rbp, 16(%rdi)
	movq	%r14, 24(%rdi)
	movq	%r13, 32(%rdi)
	movq	%rcx, 40(%rdi)
	movq	%r10, 48(%rdi)
	movq	%rbx, 56(%rdi)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end198:
	.size	mulUnit_inner480, .Lfunc_end198-mulUnit_inner480
                                        # -- End function
	.globl	mclb_mulUnit15                  # -- Begin function mclb_mulUnit15
	.p2align	4, 0x90
	.type	mclb_mulUnit15,@function
mclb_mulUnit15:                         # @mclb_mulUnit15
# %bb.0:
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	movq	%rsp, %rdi
	callq	mulUnit_inner480@PLT
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rdi
	movq	32(%rsp), %r10
	movq	40(%rsp), %r9
	movq	48(%rsp), %r8
	movq	56(%rsp), %rax
	movq	(%rsp), %rdx
	movq	8(%rsp), %rsi
	movl	%edx, (%rbx)
	shrq	$32, %rdx
	movl	%edx, 4(%rbx)
	movl	%esi, 8(%rbx)
	shrq	$32, %rsi
	movl	%esi, 12(%rbx)
	movl	%ecx, 16(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 20(%rbx)
	movl	%edi, 24(%rbx)
	shrq	$32, %rdi
	movl	%edi, 28(%rbx)
	movl	%r10d, 32(%rbx)
	shrq	$32, %r10
	movl	%r10d, 36(%rbx)
	movl	%r9d, 40(%rbx)
	shrq	$32, %r9
	movl	%r9d, 44(%rbx)
	movl	%r8d, 48(%rbx)
	shrq	$32, %r8
	movl	%r8d, 52(%rbx)
	movl	%eax, 56(%rbx)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$64, %rsp
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
	movl	(%rsi), %r13d
	movl	4(%rsi), %r8d
	movl	%edx, %ebp
	imulq	%rbp, %r13
	movq	%r13, %rax
	shrq	$32, %rax
	imulq	%rbp, %r8
	movabsq	$-4294967296, %rdx              # imm = 0xFFFFFFFF00000000
	movq	%r8, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movl	32(%rsi), %eax
	imulq	%rbp, %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	36(%rsi), %r11d
	imulq	%rbp, %r11
	movq	%r11, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	40(%rsi), %eax
	imulq	%rbp, %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	44(%rsi), %r15d
	imulq	%rbp, %r15
	movq	%r15, %rcx
	andq	%rdx, %rcx
	orq	%rax, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	48(%rsi), %eax
	imulq	%rbp, %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	52(%rsi), %r10d
	imulq	%rbp, %r10
	andq	%r10, %rdx
	orq	%rax, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	8(%rsi), %r9d
	imulq	%rbp, %r9
	movl	12(%rsi), %ecx
	imulq	%rbp, %rcx
	movl	16(%rsi), %r12d
	imulq	%rbp, %r12
	movl	20(%rsi), %ebx
	imulq	%rbp, %rbx
	movl	24(%rsi), %r14d
	imulq	%rbp, %r14
	movl	28(%rsi), %eax
	imulq	%rbp, %rax
	movl	56(%rsi), %edx
	imulq	%rbp, %rdx
	movq	%rdx, -32(%rsp)                 # 8-byte Spill
	movl	%r13d, %edx
	shlq	$32, %r8
	orq	%rdx, %r8
	movq	%r8, -40(%rsp)                  # 8-byte Spill
	movq	%rcx, %r8
	shlq	$32, %rcx
	movl	%r9d, %edx
	orq	%rdx, %rcx
	movq	%rbx, %rsi
	shlq	$32, %rbx
	movl	%r12d, %edx
	orq	%rdx, %rbx
	movq	%rax, %rdx
	shlq	$32, %rax
	movl	%r14d, %r13d
	orq	%r13, %rax
	movl	-16(%rsp), %r13d                # 4-byte Reload
	shlq	$32, %r11
	orq	%r13, %r11
	shrq	$32, %r8
	shldq	$32, %r9, %r8
	movl	-72(%rsp), %r9d                 # 4-byte Reload
	shlq	$32, %r15
	orq	%r9, %r15
	shrq	$32, %rsi
	shldq	$32, %r12, %rsi
	shrq	$32, %rdx
	shldq	$32, %r14, %rdx
	movl	-24(%rsp), %ebp                 # 4-byte Reload
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	movq	-32(%rsp), %r14                 # 8-byte Reload
	movq	%r14, %r9
	shrq	$32, %r9
	shlq	$32, %r10
	movq	-64(%rsp), %r12                 # 8-byte Reload
	shldq	$32, %r12, %r9
	movq	-56(%rsp), %r13                 # 8-byte Reload
	shldq	$32, %r13, %r12
	movq	%r12, -64(%rsp)                 # 8-byte Spill
	movq	-48(%rsp), %r12                 # 8-byte Reload
	shldq	$32, %r12, %r13
	movq	%r13, -56(%rsp)                 # 8-byte Spill
	shldq	$32, %rdx, %r12
	movq	%r12, -48(%rsp)                 # 8-byte Spill
	shldq	$32, %rsi, %rdx
	shldq	$32, %r8, %rsi
	movq	-8(%rsp), %r12                  # 8-byte Reload
	shldq	$32, %r12, %r8
	addq	-72(%rsp), %r10                 # 8-byte Folded Reload
	shlq	$32, %r12
	movq	-40(%rsp), %rbp                 # 8-byte Reload
	addq	(%rdi), %rbp
	adcq	8(%rdi), %rcx
	adcq	16(%rdi), %rbx
	adcq	24(%rdi), %rax
	adcq	32(%rdi), %r11
	adcq	40(%rdi), %r15
	adcq	48(%rdi), %r10
	movl	%r14d, %r14d
	movl	56(%rdi), %r13d
	adcq	%r14, %r13
	addq	%r12, %rbp
	adcq	%r8, %rcx
	adcq	%rsi, %rbx
	adcq	%rdx, %rax
	adcq	-48(%rsp), %r11                 # 8-byte Folded Reload
	adcq	-56(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-64(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%r9, %r13
	movl	%ebp, (%rdi)
	shrq	$32, %rbp
	movl	%ebp, 4(%rdi)
	movl	%ecx, 8(%rdi)
	shrq	$32, %rcx
	movl	%ecx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%eax, 24(%rdi)
	shrq	$32, %rax
	movl	%eax, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r10d, 48(%rdi)
	shrq	$32, %r10
	movl	%r10d, 52(%rdi)
	movl	%r13d, 56(%rdi)
	movq	%r13, %rax
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$1016, %rsp                     # imm = 0x3F8
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 24(%rsp)                  # 8-byte Spill
	movl	(%rdx), %edx
	leaq	952(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	movq	968(%rsp), %r15
	movq	976(%rsp), %r12
	movq	984(%rsp), %r13
	movq	992(%rsp), %rcx
	movq	1008(%rsp), %rbp
	movq	1000(%rsp), %rbx
	movq	952(%rsp), %rax
	movq	960(%rsp), %r14
	movq	24(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, (%rdx)
	movq	%rbp, %rdx
	shldq	$32, %rbx, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rcx, %rbx
	shldq	$32, %r13, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %r13
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %rbp
	shldq	$32, %rax, %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %edx
	leaq	888(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	888(%rsp), %r14
	adcq	896(%rsp), %r15
	adcq	904(%rsp), %r12
	movq	%r13, %rcx
	adcq	912(%rsp), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	920(%rsp), %rdx
	adcq	928(%rsp), %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	936(%rsp), %rax
	adcq	944(%rsp), %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	%r14d, 4(%rsi)
	movq	%rbp, %r13
	shldq	$32, %rax, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shrq	$32, %rbp
	shldq	$32, %r14, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %edx
	leaq	824(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	824(%rsp), %r15
	adcq	832(%rsp), %r12
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	840(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	848(%rsp), %rcx
	adcq	856(%rsp), %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	864(%rsp), %rsi
	adcq	872(%rsp), %r13
	adcq	880(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 8(%rax)
	movq	%rbp, %r14
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	12(%rax), %edx
	leaq	760(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	760(%rsp), %r12
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	768(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	776(%rsp), %rcx
	adcq	784(%rsp), %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	792(%rsp), %rsi
	adcq	800(%rsp), %r13
	adcq	808(%rsp), %r14
	adcq	816(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 12(%rax)
	movq	%rbp, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	16(%rax), %edx
	leaq	696(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	696(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	704(%rsp), %rdx
	adcq	712(%rsp), %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	720(%rsp), %rsi
	adcq	728(%rsp), %r13
	adcq	736(%rsp), %r14
	adcq	744(%rsp), %r15
	adcq	752(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 16(%rax)
	movq	%r12, %rcx
	movq	%rbp, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %rbp
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %edx
	leaq	632(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	632(%rsp), %rcx
	adcq	640(%rsp), %rbx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	648(%rsp), %rdx
	adcq	656(%rsp), %r13
	adcq	664(%rsp), %r14
	adcq	672(%rsp), %r15
	adcq	680(%rsp), %r12
	adcq	688(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 20(%rax)
	movq	%rbp, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %rcx, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	leaq	568(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	568(%rsp), %rbx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	576(%rsp), %rdx
	adcq	584(%rsp), %r13
	adcq	592(%rsp), %r14
	adcq	600(%rsp), %r15
	adcq	608(%rsp), %r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	616(%rsp), %rcx
	adcq	624(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 24(%rax)
	movq	%rbp, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shrq	$32, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edx
	leaq	504(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	504(%rsp), %rbx
	adcq	512(%rsp), %r13
	adcq	520(%rsp), %r14
	adcq	528(%rsp), %r15
	adcq	536(%rsp), %r12
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	544(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	552(%rsp), %rcx
	adcq	560(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 28(%rax)
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	shrq	$32, %rbp
	shldq	$32, %rdx, %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	32(%rax), %edx
	leaq	440(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	440(%rsp), %r13
	adcq	448(%rsp), %r14
	adcq	456(%rsp), %r15
	adcq	464(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	472(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	480(%rsp), %rcx
	adcq	488(%rsp), %rbx
	adcq	496(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r13d, 32(%rax)
	movq	%rbp, %rax
	shldq	$32, %rbx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %rbp
	shldq	$32, %r13, %r14
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %edx
	leaq	376(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	376(%rsp), %r14
	adcq	384(%rsp), %r15
	adcq	392(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	400(%rsp), %rdx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	408(%rsp), %rsi
	adcq	416(%rsp), %rbx
	movq	48(%rsp), %rcx                  # 8-byte Reload
	adcq	424(%rsp), %rcx
	adcq	432(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 36(%rax)
	movq	%rbp, %r13
	shldq	$32, %rcx, %r13
	shldq	$32, %rbx, %rcx
	movq	%rcx, 48(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbx
	movq	%rdx, %rcx
	shldq	$32, %rdx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shrq	$32, %rbp
	shldq	$32, %r14, %r15
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %edx
	leaq	312(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	312(%rsp), %r15
	adcq	320(%rsp), %r12
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	328(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	336(%rsp), %rcx
	adcq	344(%rsp), %rbx
	movq	48(%rsp), %rdx                  # 8-byte Reload
	adcq	352(%rsp), %rdx
	adcq	360(%rsp), %r13
	adcq	368(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 40(%rax)
	movq	%rbp, %r14
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r15, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	44(%rax), %edx
	leaq	248(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	248(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	256(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	264(%rsp), %rcx
	adcq	272(%rsp), %rbx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	adcq	280(%rsp), %rsi
	adcq	288(%rsp), %r13
	adcq	296(%rsp), %r14
	adcq	304(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 44(%rax)
	movq	%rbp, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	48(%rax), %edx
	leaq	184(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	184(%rsp), %r12
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	192(%rsp), %rdx
	adcq	200(%rsp), %rbx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	adcq	208(%rsp), %rsi
	adcq	216(%rsp), %r13
	adcq	224(%rsp), %r14
	adcq	232(%rsp), %r15
	adcq	240(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 48(%rax)
	movq	%r12, %rcx
	movq	%rbp, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %rbp
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	52(%rax), %edx
	leaq	120(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	120(%rsp), %rcx
	adcq	128(%rsp), %rbx
	movq	48(%rsp), %rsi                  # 8-byte Reload
	adcq	136(%rsp), %rsi
	adcq	144(%rsp), %r13
	adcq	152(%rsp), %r14
	adcq	160(%rsp), %r15
	adcq	168(%rsp), %r12
	adcq	176(%rsp), %rbp
	movq	24(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 52(%rax)
	movq	%rcx, %rdx
	movq	%rbp, %rcx
	movq	%rbp, %rax
	shldq	$32, %r12, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rbp
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rbp
	shrq	$32, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %rdx, %rbx
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	56(%rax), %edx
	leaq	56(%rsp), %rdi
	movq	40(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner480@PLT
	addq	56(%rsp), %rbx
	adcq	64(%rsp), %rbp
	adcq	72(%rsp), %r13
	adcq	80(%rsp), %r14
	adcq	88(%rsp), %r15
	adcq	96(%rsp), %r12
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	104(%rsp), %rax
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	112(%rsp), %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	movl	%ebx, 56(%rcx)
	shrq	$32, %rbx
	movl	%ebx, 60(%rcx)
	movl	%ebp, 64(%rcx)
	shrq	$32, %rbp
	movl	%ebp, 68(%rcx)
	movl	%r13d, 72(%rcx)
	shrq	$32, %r13
	movl	%r13d, 76(%rcx)
	movl	%r14d, 80(%rcx)
	shrq	$32, %r14
	movl	%r14d, 84(%rcx)
	movl	%r15d, 88(%rcx)
	shrq	$32, %r15
	movl	%r15d, 92(%rcx)
	movl	%r12d, 96(%rcx)
	shrq	$32, %r12
	movl	%r12d, 100(%rcx)
	movl	%eax, 104(%rcx)
	shrq	$32, %rax
	movl	%eax, 108(%rcx)
	movq	%rdx, %rax
	movl	%eax, 112(%rcx)
	shrq	$32, %rax
	movl	%eax, 116(%rcx)
	addq	$1016, %rsp                     # imm = 0x3F8
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
	subq	$1000, %rsp                     # imm = 0x3E8
	movq	%rsi, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, 16(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edx
	leaq	936(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	movq	952(%rsp), %r14
	movq	960(%rsp), %r15
	movq	968(%rsp), %rbp
	movq	976(%rsp), %rcx
	movq	992(%rsp), %r13
	movq	984(%rsp), %rbx
	movq	936(%rsp), %rax
	movq	944(%rsp), %r12
	movq	16(%rsp), %rdx                  # 8-byte Reload
	movl	%eax, (%rdx)
	movq	%r13, %rdx
	shldq	$32, %rbx, %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	shldq	$32, %rcx, %rbx
	shldq	$32, %rbp, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rbp
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shrq	$32, %r13
	shldq	$32, %rax, %r12
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	4(%rsi), %edx
	leaq	872(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	872(%rsp), %r12
	adcq	880(%rsp), %r14
	adcq	888(%rsp), %r15
	movq	%rbp, %rcx
	adcq	896(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	904(%rsp), %rdx
	adcq	912(%rsp), %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	920(%rsp), %rax
	adcq	928(%rsp), %r13
	movq	16(%rsp), %rsi                  # 8-byte Reload
	movl	%r12d, 4(%rsi)
	movq	%r13, %rbp
	shldq	$32, %rax, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %r12, %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	8(%rsi), %edx
	leaq	808(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	808(%rsp), %r14
	adcq	816(%rsp), %r15
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	824(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	832(%rsp), %rcx
	adcq	840(%rsp), %rbx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	848(%rsp), %rsi
	adcq	856(%rsp), %rbp
	adcq	864(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 8(%rax)
	movq	%r13, %r12
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	12(%rsi), %edx
	leaq	744(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	744(%rsp), %r15
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	752(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	760(%rsp), %rcx
	adcq	768(%rsp), %rbx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	776(%rsp), %rsi
	adcq	784(%rsp), %rbp
	adcq	792(%rsp), %r12
	adcq	800(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 12(%rax)
	movq	%r13, %r14
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rsi), %edx
	leaq	680(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	680(%rsp), %r15
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	688(%rsp), %rdx
	adcq	696(%rsp), %rbx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	704(%rsp), %rsi
	adcq	712(%rsp), %rbp
	adcq	720(%rsp), %r12
	adcq	728(%rsp), %r14
	adcq	736(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 16(%rax)
	movq	%r15, %rcx
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	20(%rsi), %edx
	leaq	616(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	616(%rsp), %rcx
	adcq	624(%rsp), %rbx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	632(%rsp), %rdx
	adcq	640(%rsp), %rbp
	adcq	648(%rsp), %r12
	adcq	656(%rsp), %r14
	adcq	664(%rsp), %r15
	adcq	672(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 20(%rax)
	movq	%r13, %rax
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rcx, %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsi), %edx
	leaq	552(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	552(%rsp), %rbx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	560(%rsp), %rdx
	adcq	568(%rsp), %rbp
	adcq	576(%rsp), %r12
	adcq	584(%rsp), %r14
	adcq	592(%rsp), %r15
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	600(%rsp), %rcx
	adcq	608(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 24(%rax)
	movq	%r13, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shrq	$32, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	28(%rsi), %edx
	leaq	488(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	488(%rsp), %rbx
	adcq	496(%rsp), %rbp
	adcq	504(%rsp), %r12
	adcq	512(%rsp), %r14
	adcq	520(%rsp), %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	528(%rsp), %rsi
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	536(%rsp), %rcx
	adcq	544(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 28(%rax)
	movq	%rbx, %rdx
	movq	%r13, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	shrq	$32, %r13
	shldq	$32, %rdx, %rbp
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	32(%rsi), %edx
	leaq	424(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	424(%rsp), %rbp
	adcq	432(%rsp), %r12
	adcq	440(%rsp), %r14
	adcq	448(%rsp), %r15
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	456(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	464(%rsp), %rcx
	adcq	472(%rsp), %rbx
	adcq	480(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 32(%rax)
	movq	%r13, %rax
	shldq	$32, %rbx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shrq	$32, %r13
	shldq	$32, %rbp, %r12
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	36(%rsi), %edx
	leaq	360(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	360(%rsp), %r12
	adcq	368(%rsp), %r14
	adcq	376(%rsp), %r15
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	384(%rsp), %rdx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	392(%rsp), %rsi
	adcq	400(%rsp), %rbx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	408(%rsp), %rcx
	adcq	416(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 36(%rax)
	movq	%r13, %rbp
	shldq	$32, %rcx, %rbp
	shldq	$32, %rbx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbx
	movq	%rdx, %rcx
	shldq	$32, %rdx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %r12, %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	40(%rsi), %edx
	leaq	296(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	296(%rsp), %r14
	adcq	304(%rsp), %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	312(%rsp), %rsi
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	320(%rsp), %rcx
	adcq	328(%rsp), %rbx
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	336(%rsp), %rdx
	adcq	344(%rsp), %rbp
	adcq	352(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 40(%rax)
	movq	%r13, %r12
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	44(%rsi), %edx
	leaq	232(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	232(%rsp), %r15
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	240(%rsp), %rdx
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	248(%rsp), %rcx
	adcq	256(%rsp), %rbx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	264(%rsp), %rsi
	adcq	272(%rsp), %rbp
	adcq	280(%rsp), %r12
	adcq	288(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 44(%rax)
	movq	%r13, %r14
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	48(%rsi), %edx
	leaq	168(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	168(%rsp), %r15
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	176(%rsp), %rdx
	adcq	184(%rsp), %rbx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	192(%rsp), %rsi
	adcq	200(%rsp), %rbp
	adcq	208(%rsp), %r12
	adcq	216(%rsp), %r14
	adcq	224(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 48(%rax)
	movq	%r15, %rcx
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	52(%rsi), %edx
	leaq	104(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	movq	(%rsp), %rcx                    # 8-byte Reload
	addq	104(%rsp), %rcx
	adcq	112(%rsp), %rbx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	120(%rsp), %rsi
	adcq	128(%rsp), %rbp
	adcq	136(%rsp), %r12
	adcq	144(%rsp), %r14
	adcq	152(%rsp), %r15
	adcq	160(%rsp), %r13
	movq	16(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 52(%rax)
	movq	%rcx, %rdx
	movq	%r13, %rcx
	movq	%r13, %rax
	shldq	$32, %r15, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %r13
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rdx, %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	movl	56(%rsi), %edx
	leaq	40(%rsp), %rdi
	callq	mulUnit_inner480@PLT
	addq	40(%rsp), %rbx
	adcq	48(%rsp), %r13
	adcq	56(%rsp), %rbp
	adcq	64(%rsp), %r12
	adcq	72(%rsp), %r14
	adcq	80(%rsp), %r15
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	88(%rsp), %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	96(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	movl	%ebx, 56(%rcx)
	shrq	$32, %rbx
	movl	%ebx, 60(%rcx)
	movl	%r13d, 64(%rcx)
	shrq	$32, %r13
	movl	%r13d, 68(%rcx)
	movl	%ebp, 72(%rcx)
	shrq	$32, %rbp
	movl	%ebp, 76(%rcx)
	movl	%r12d, 80(%rcx)
	shrq	$32, %r12
	movl	%r12d, 84(%rcx)
	movl	%r14d, 88(%rcx)
	shrq	$32, %r14
	movl	%r14d, 92(%rcx)
	movl	%r15d, 96(%rcx)
	shrq	$32, %r15
	movl	%r15d, 100(%rcx)
	movl	%eax, 104(%rcx)
	shrq	$32, %rax
	movl	%eax, 108(%rcx)
	movq	%rdx, %rax
	movl	%eax, 112(%rcx)
	shrq	$32, %rax
	movl	%eax, 116(%rcx)
	addq	$1000, %rsp                     # imm = 0x3E8
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
	movl	(%rsi), %ecx
	movl	4(%rsi), %ebp
	movl	%edx, %r15d
	imulq	%r15, %rcx
	movq	%rcx, %rax
	movq	%rcx, %rdx
	shrq	$32, %rax
	imulq	%r15, %rbp
	movabsq	$-4294967296, %r13              # imm = 0xFFFFFFFF00000000
	movq	%rbp, %rcx
	andq	%r13, %rcx
	orq	%rax, %rcx
	movq	%rcx, -72(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	36(%rsi), %ecx
	imulq	%r15, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	andq	%r13, %rcx
	orq	%rax, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	movl	40(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	44(%rsi), %r14d
	imulq	%r15, %r14
	movq	%r14, -88(%rsp)                 # 8-byte Spill
	andq	%r13, %r14
	orq	%rax, %r14
	movl	48(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	52(%rsi), %r12d
	imulq	%r15, %r12
	movq	%r12, %rbx
	andq	%r13, %rbx
	orq	%rax, %rbx
	movl	8(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %r10d
	imulq	%r15, %r10
	movl	16(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %r8d
	imulq	%r15, %r8
	movl	24(%rsi), %eax
	imulq	%r15, %rax
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %r11d
	imulq	%r15, %r11
	movl	56(%rsi), %ecx
	imulq	%r15, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	60(%rsi), %r9d
	imulq	%r15, %r9
	shrq	$32, %rcx
	andq	%r9, %r13
	orq	%rcx, %r13
	movl	%edx, %ecx
	shlq	$32, %rbp
	orq	%rcx, %rbp
	movq	%rbp, -24(%rsp)                 # 8-byte Spill
	movq	%r10, %rdx
	shlq	$32, %r10
	movl	-96(%rsp), %ecx                 # 4-byte Reload
	orq	%rcx, %r10
	movq	%r8, %rcx
	shlq	$32, %r8
	movq	-64(%rsp), %r15                 # 8-byte Reload
	movl	%r15d, %esi
	orq	%rsi, %r8
	movq	%r11, %rbp
	shlq	$32, %r11
	movl	%eax, %esi
	orq	%rsi, %r11
	movl	-16(%rsp), %esi                 # 4-byte Reload
	movq	-80(%rsp), %rax                 # 8-byte Reload
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movl	-32(%rsp), %esi                 # 4-byte Reload
	movq	-88(%rsp), %rax                 # 8-byte Reload
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movl	-40(%rsp), %esi                 # 4-byte Reload
	shlq	$32, %r12
	orq	%rsi, %r12
	shrq	$32, %rdx
	movq	-96(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rdx
	shrq	$32, %rcx
	shldq	$32, %r15, %rcx
	shrq	$32, %rbp
	movq	-56(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rbp
	movl	-48(%rsp), %eax                 # 4-byte Reload
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	shlq	$32, %r9
	movq	%r13, %rsi
	shldq	$32, %rbx, %rsi
	shldq	$32, %r14, %rbx
	movq	-8(%rsp), %r15                  # 8-byte Reload
	shldq	$32, %r15, %r14
	shldq	$32, %rbp, %r15
	shldq	$32, %rcx, %rbp
	shldq	$32, %rdx, %rcx
	addq	-96(%rsp), %r9                  # 8-byte Folded Reload
	movq	-72(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rdx
	shrq	$32, %r13
	shlq	$32, %rax
	addq	-24(%rsp), %rax                 # 8-byte Folded Reload
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	adcq	%r10, %rdx
	adcq	%r8, %rcx
	adcq	%r11, %rbp
	adcq	-80(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r14                 # 8-byte Folded Reload
	adcq	%r12, %rbx
	adcq	%r9, %rsi
	movq	%rdi, %rax
	movq	-72(%rsp), %rdi                 # 8-byte Reload
	movq	%rdi, (%rax)
	movq	%rdx, 8(%rax)
	movq	%rcx, 16(%rax)
	movq	%rbp, 24(%rax)
	movq	%r15, 32(%rax)
	movq	%r14, 40(%rax)
	movq	%rbx, 48(%rax)
	movq	%rsi, 56(%rax)
	adcq	$0, %r13
	movl	%r13d, 64(%rax)
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end203:
	.size	mulUnit_inner512, .Lfunc_end203-mulUnit_inner512
                                        # -- End function
	.globl	mclb_mulUnit16                  # -- Begin function mclb_mulUnit16
	.p2align	4, 0x90
	.type	mclb_mulUnit16,@function
mclb_mulUnit16:                         # @mclb_mulUnit16
# %bb.0:
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner512@PLT
	movl	72(%rsp), %eax
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	40(%rsp), %r11
	movq	48(%rsp), %r10
	movq	56(%rsp), %r9
	movq	64(%rsp), %r8
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	%esi, (%rbx)
	shrq	$32, %rsi
	movl	%esi, 4(%rbx)
	movl	%edi, 8(%rbx)
	shrq	$32, %rdi
	movl	%edi, 12(%rbx)
	movl	%edx, 16(%rbx)
	shrq	$32, %rdx
	movl	%edx, 20(%rbx)
	movl	%ecx, 24(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 28(%rbx)
	movl	%r11d, 32(%rbx)
	shrq	$32, %r11
	movl	%r11d, 36(%rbx)
	movl	%r10d, 40(%rbx)
	shrq	$32, %r10
	movl	%r10d, 44(%rbx)
	movl	%r9d, 48(%rbx)
	shrq	$32, %r9
	movl	%r9d, 52(%rbx)
	movl	%r8d, 56(%rbx)
	shrq	$32, %r8
	movl	%r8d, 60(%rbx)
	addq	$80, %rsp
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
	movl	(%rsi), %r9d
	movl	4(%rsi), %r12d
	movl	%edx, %eax
	imulq	%rax, %r9
	movq	%r9, %rcx
	shrq	$32, %rcx
	imulq	%rax, %r12
	movabsq	$-4294967296, %rbp              # imm = 0xFFFFFFFF00000000
	movq	%r12, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	36(%rsi), %r10d
	imulq	%rax, %r10
	movq	%r10, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movl	40(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	44(%rsi), %r11d
	imulq	%rax, %r11
	movq	%r11, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	movl	48(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	52(%rsi), %r15d
	imulq	%rax, %r15
	movq	%r15, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movl	8(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %edx
	imulq	%rax, %rdx
	movl	16(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -88(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %ebx
	imulq	%rax, %rbx
	movl	24(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %r8d
	imulq	%rax, %r8
	movl	56(%rsi), %r13d
	imulq	%rax, %r13
	movl	60(%rsi), %r14d
	imulq	%rax, %r14
	movq	%r13, %rax
	shrq	$32, %rax
	andq	%r14, %rbp
	orq	%rax, %rbp
	movq	%rbp, -40(%rsp)                 # 8-byte Spill
	movl	%r9d, %eax
	shlq	$32, %r12
	orq	%rax, %r12
	movq	%rdx, %r9
	shlq	$32, %rdx
	movl	-56(%rsp), %eax                 # 4-byte Reload
	orq	%rax, %rdx
	movq	%rbx, %rsi
	shlq	$32, %rbx
	movl	-88(%rsp), %ecx                 # 4-byte Reload
	orq	%rcx, %rbx
	movq	%r8, %rcx
	shlq	$32, %r8
	movq	-48(%rsp), %rax                 # 8-byte Reload
	movl	%eax, %ebp
	orq	%rbp, %r8
	movl	-16(%rsp), %ebp                 # 4-byte Reload
	shlq	$32, %r10
	orq	%rbp, %r10
	movl	-24(%rsp), %ebp                 # 4-byte Reload
	shlq	$32, %r11
	orq	%rbp, %r11
	movl	-32(%rsp), %ebp                 # 4-byte Reload
	shlq	$32, %r15
	orq	%rbp, %r15
	movl	%r13d, %ebp
	shlq	$32, %r14
	orq	%rbp, %r14
	shrq	$32, %r9
	movq	-56(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %r9
	shrq	$32, %rsi
	movq	-88(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rsi
	shrq	$32, %rcx
	shldq	$32, %rax, %rcx
	movq	-40(%rsp), %r13                 # 8-byte Reload
	movq	%r13, %rax
	movq	-80(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	-8(%rsp), %rax                  # 8-byte Reload
	shldq	$32, %rax, %rbp
	movq	%rbp, -80(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %rax
	shldq	$32, %rcx, %rbp
	movq	%rbp, -72(%rsp)                 # 8-byte Spill
	shldq	$32, %rsi, %rcx
	shldq	$32, %r9, %rsi
	movq	-64(%rsp), %rbp                 # 8-byte Reload
	shldq	$32, %rbp, %r9
	shrq	$32, %r13
	shlq	$32, %rbp
	movq	%rbp, -64(%rsp)                 # 8-byte Spill
	addq	(%rdi), %r12
	adcq	8(%rdi), %rdx
	adcq	16(%rdi), %rbx
	adcq	24(%rdi), %r8
	adcq	32(%rdi), %r10
	adcq	40(%rdi), %r11
	adcq	48(%rdi), %r15
	adcq	56(%rdi), %r14
	setb	%bpl
	addq	-64(%rsp), %r12                 # 8-byte Folded Reload
	adcq	%r9, %rdx
	adcq	%rsi, %rbx
	adcq	%rcx, %r8
	adcq	-72(%rsp), %r10                 # 8-byte Folded Reload
	adcq	%rax, %r11
	adcq	-80(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r14                 # 8-byte Folded Reload
	movzbl	%bpl, %eax
	adcq	%r13, %rax
	movl	%r12d, (%rdi)
	shrq	$32, %r12
	movl	%r12d, 4(%rdi)
	movl	%edx, 8(%rdi)
	shrq	$32, %rdx
	movl	%edx, 12(%rdi)
	movl	%ebx, 16(%rdi)
	shrq	$32, %rbx
	movl	%ebx, 20(%rdi)
	movl	%r8d, 24(%rdi)
	shrq	$32, %r8
	movl	%r8d, 28(%rdi)
	movl	%r10d, 32(%rdi)
	shrq	$32, %r10
	movl	%r10d, 36(%rdi)
	movl	%r11d, 40(%rdi)
	shrq	$32, %r11
	movl	%r11d, 44(%rdi)
	movl	%r15d, 48(%rdi)
	shrq	$32, %r15
	movl	%r15d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
                                        # kill: def $eax killed $eax killed $rax
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
	subq	$200, %rsp
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	32(%rsi), %r12
	leaq	32(%rdx), %r13
	leaq	64(%rdi), %rbp
	callq	mclb_mul8@PLT
	movq	%rbp, %rdi
	movq	%r12, %rsi
	movq	%r13, %rdx
	callq	mclb_mul8@PLT
	movq	(%rbx), %rdi
	addq	32(%rbx), %rdi
	movq	8(%rbx), %r9
	adcq	40(%rbx), %r9
	movq	16(%rbx), %r12
	adcq	48(%rbx), %r12
	movq	24(%rbx), %r13
	adcq	56(%rbx), %r13
	movq	(%r15), %r11
	setb	%al
	addq	32(%r15), %r11
	movq	8(%r15), %r10
	adcq	40(%r15), %r10
	movq	16(%r15), %r8
	adcq	48(%r15), %r8
	movq	24(%r15), %rbx
	adcq	56(%r15), %rbx
	setb	%cl
	movq	%r13, %rdx
	shrq	$33, %rdx
	movzbl	%al, %eax
	movl	%eax, %esi
	shll	$31, %esi
	orl	%edx, %esi
	movslq	%esi, %rdx
	movq	%rdx, %r15
	sarq	$63, %r15
	shrdq	$31, %r15, %rdx
	movq	%rdx, 56(%rsp)                  # 8-byte Spill
	movzbl	%cl, %edx
	movl	%edx, %ecx
	andl	%eax, %edx
	movq	%rdx, 64(%rsp)                  # 8-byte Spill
	movq	%rbx, %rax
	shrq	$33, %rax
	shll	$31, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %rbp
	movq	%rdi, %rax
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movl	%eax, 104(%rsp)
	shrq	$32, %rax
	movl	%eax, 108(%rsp)
	movq	%r9, 48(%rsp)                   # 8-byte Spill
	movq	%r9, %rax
	shrq	$32, %rax
	movl	%r9d, 112(%rsp)
	movl	%eax, 116(%rsp)
	movq	%r12, %rax
	shrq	$32, %rax
	movl	%r12d, 120(%rsp)
	movl	%eax, 124(%rsp)
	movq	%r13, %rax
	shrq	$32, %rax
	movl	%r13d, 128(%rsp)
	movl	%eax, 132(%rsp)
	movq	%r11, %rax
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	movl	%eax, 72(%rsp)
	shrq	$32, %rax
	movl	%eax, 76(%rsp)
	movq	%r10, 32(%rsp)                  # 8-byte Spill
	movq	%r10, %rax
	shrq	$32, %rax
	movl	%r10d, 80(%rsp)
	movl	%eax, 84(%rsp)
	movq	%r8, 16(%rsp)                   # 8-byte Spill
	movq	%r8, %rax
	shrq	$32, %rax
	movl	%r8d, 88(%rsp)
	movl	%eax, 92(%rsp)
	movq	%rbx, 8(%rsp)                   # 8-byte Spill
	movq	%rbx, %rax
	shrq	$32, %rax
	movl	%ebx, 96(%rsp)
	movl	%eax, 100(%rsp)
	movq	%rbp, %rbx
	sarq	$63, %rbx
	shrdq	$31, %rbx, %rbp
	leaq	136(%rsp), %rdi
	leaq	104(%rsp), %rsi
	leaq	72(%rsp), %rdx
	callq	mclb_mul8@PLT
	movq	56(%rsp), %rax                  # 8-byte Reload
	andq	24(%rsp), %rax                  # 8-byte Folded Reload
	movq	8(%rsp), %rdx                   # 8-byte Reload
	andq	%r15, %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	andq	%r15, %rcx
	andq	32(%rsp), %r15                  # 8-byte Folded Reload
	andq	40(%rsp), %rbp                  # 8-byte Folded Reload
	andq	%rbx, %r13
	andq	%rbx, %r12
	andq	48(%rsp), %rbx                  # 8-byte Folded Reload
	addq	%rax, %rbp
	adcq	%r15, %rbx
	adcq	%rcx, %r12
	adcq	%rdx, %r13
	setb	%al
	addq	168(%rsp), %rbp
	adcq	176(%rsp), %rbx
	movq	136(%rsp), %rdx
	adcq	184(%rsp), %r12
	movzbl	%al, %ecx
	adcq	192(%rsp), %r13
	adcq	64(%rsp), %rcx                  # 8-byte Folded Reload
	subq	(%r14), %rdx
	movq	144(%rsp), %rsi
	sbbq	8(%r14), %rsi
	movq	152(%rsp), %rdi
	sbbq	16(%r14), %rdi
	movq	160(%rsp), %r8
	sbbq	24(%r14), %r8
	movq	64(%r14), %r9
	movq	%r9, 32(%rsp)                   # 8-byte Spill
	movq	32(%r14), %rax
	movq	%rax, 56(%rsp)                  # 8-byte Spill
	movq	40(%r14), %r10
	movq	%r10, 64(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rbp
	sbbq	%r10, %rbx
	movq	48(%r14), %rax
	movq	%rax, 48(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r12
	movq	56(%r14), %rax
	movq	%rax, 40(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r13
	sbbq	$0, %rcx
	subq	%r9, %rdx
	movq	72(%r14), %r15
	sbbq	%r15, %rsi
	movq	80(%r14), %r9
	sbbq	%r9, %rdi
	movq	88(%r14), %r10
	sbbq	%r10, %r8
	movq	96(%r14), %r11
	sbbq	%r11, %rbp
	movq	104(%r14), %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	sbbq	%rax, %rbx
	movq	112(%r14), %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r12
	movq	120(%r14), %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	sbbq	%rax, %r13
	sbbq	$0, %rcx
	addq	56(%rsp), %rdx                  # 8-byte Folded Reload
	adcq	64(%rsp), %rsi                  # 8-byte Folded Reload
	adcq	48(%rsp), %rdi                  # 8-byte Folded Reload
	adcq	40(%rsp), %r8                   # 8-byte Folded Reload
	adcq	32(%rsp), %rbp                  # 8-byte Folded Reload
	adcq	%r15, %rbx
	adcq	%r9, %r12
	adcq	%r10, %r13
	movl	%ecx, %eax
	adcq	%r11, %rax
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	$0, %rcx
	movq	24(%rsp), %r10                  # 8-byte Reload
	adcq	$0, %r10
	movq	8(%rsp), %r9                    # 8-byte Reload
	adcq	$0, %r9
	movl	%edx, 32(%r14)
	shrq	$32, %rdx
	movl	%edx, 36(%r14)
	movl	%esi, 40(%r14)
	shrq	$32, %rsi
	movl	%esi, 44(%r14)
	movl	%edi, 48(%r14)
	shrq	$32, %rdi
	movl	%edi, 52(%r14)
	movl	%r8d, 56(%r14)
	shrq	$32, %r8
	movl	%r8d, 60(%r14)
	movl	%ebp, 64(%r14)
	shrq	$32, %rbp
	movl	%ebp, 68(%r14)
	movl	%ebx, 72(%r14)
	shrq	$32, %rbx
	movl	%ebx, 76(%r14)
	movl	%r12d, 80(%r14)
	shrq	$32, %r12
	movl	%r12d, 84(%r14)
	movl	%r13d, 88(%r14)
	shrq	$32, %r13
	movl	%r13d, 92(%r14)
	movl	%eax, 96(%r14)
	shrq	$32, %rax
	movl	%eax, 100(%r14)
	movq	%rcx, %rax
	movl	%eax, 104(%r14)
	shrq	$32, %rax
	movl	%eax, 108(%r14)
	movq	%r10, %rax
	movl	%eax, 112(%r14)
	shrq	$32, %rax
	movl	%eax, 116(%r14)
	movq	%r9, %rax
	movl	%eax, 120(%r14)
	shrq	$32, %rax
	movl	%eax, 124(%r14)
	addq	$200, %rsp
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
	subq	$184, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	32(%rsi), %r15
	leaq	64(%rdi), %r12
	movq	%rsi, %rdx
	callq	mclb_mul8@PLT
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%r15, %rdx
	callq	mclb_mul8@PLT
	movq	24(%rbx), %rbp
	movq	(%rbx), %rax
	addq	32(%rbx), %rax
	movq	%rax, %rdi
	movq	8(%rbx), %r12
	adcq	40(%rbx), %r12
	movq	16(%rbx), %r15
	adcq	48(%rbx), %r15
	adcq	56(%rbx), %rbp
	setb	%al
	movzbl	%al, %ecx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rbp, %rax
	shrq	$33, %rax
                                        # kill: def $ecx killed $ecx killed $rcx
	shll	$31, %ecx
	orl	%eax, %ecx
	movslq	%ecx, %r13
	movq	%r13, %rbx
	sarq	$63, %rbx
	shrdq	$31, %rbx, %r13
	movl	%edi, 48(%rsp)
	movq	%rbp, %rax
	shrq	$32, %rax
	movq	%r15, %rcx
	shrq	$32, %rcx
	movq	%r12, %rdx
	shrq	$32, %rdx
	movq	%rdi, %rsi
	movq	%rdi, (%rsp)                    # 8-byte Spill
	shrq	$32, %rsi
	movl	%esi, 52(%rsp)
	movl	%r12d, 56(%rsp)
	movl	%edx, 60(%rsp)
	movl	%r15d, 64(%rsp)
	movl	%ecx, 68(%rsp)
	movl	%ebp, 72(%rsp)
	movl	%eax, 76(%rsp)
	movl	%edi, 16(%rsp)
	movl	%esi, 20(%rsp)
	movl	%r12d, 24(%rsp)
	movl	%edx, 28(%rsp)
	movl	%r15d, 32(%rsp)
	movl	%ecx, 36(%rsp)
	movl	%ebp, 40(%rsp)
	movl	%eax, 44(%rsp)
	leaq	120(%rsp), %rdi
	leaq	48(%rsp), %rsi
	leaq	16(%rsp), %rdx
	callq	mclb_mul8@PLT
	andq	(%rsp), %r13                    # 8-byte Folded Reload
	andq	%rbx, %r12
	andq	%rbx, %r15
	andq	%rbp, %rbx
	movq	%rbx, %r8
	shldq	$1, %r15, %r8
	shldq	$1, %r12, %r15
	shldq	$1, %r13, %r12
	addq	%r13, %r13
	shrq	$63, %rbx
	addq	152(%rsp), %r13
	adcq	160(%rsp), %r12
	adcq	168(%rsp), %r15
	movq	120(%rsp), %rdi
	adcq	176(%rsp), %r8
	adcq	8(%rsp), %rbx                   # 8-byte Folded Reload
	subq	(%r14), %rdi
	movq	128(%rsp), %rsi
	sbbq	8(%r14), %rsi
	movq	136(%rsp), %rcx
	sbbq	16(%r14), %rcx
	movq	144(%rsp), %rdx
	sbbq	24(%r14), %rdx
	movq	64(%r14), %r9
	movq	%r9, 96(%rsp)                   # 8-byte Spill
	movq	32(%r14), %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	40(%r14), %rbp
	movq	%rbp, 8(%rsp)                   # 8-byte Spill
	sbbq	%rax, %r13
	sbbq	%rbp, %r12
	movq	48(%r14), %rax
	movq	%rax, 112(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r15
	movq	56(%r14), %rax
	movq	%rax, 104(%rsp)                 # 8-byte Spill
	sbbq	%rax, %r8
	sbbq	$0, %rbx
	subq	%r9, %rdi
	movq	72(%r14), %rbp
	sbbq	%rbp, %rsi
	movq	80(%r14), %r9
	sbbq	%r9, %rcx
	movq	88(%r14), %r10
	sbbq	%r10, %rdx
	movq	96(%r14), %r11
	sbbq	%r11, %r13
	movq	104(%r14), %rax
	movq	%rax, 80(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r12
	movq	112(%r14), %rax
	movq	%rax, 88(%rsp)                  # 8-byte Spill
	sbbq	%rax, %r15
	movq	120(%r14), %rax
	sbbq	%rax, %r8
	sbbq	$0, %rbx
	addq	(%rsp), %rdi                    # 8-byte Folded Reload
	adcq	8(%rsp), %rsi                   # 8-byte Folded Reload
	adcq	112(%rsp), %rcx                 # 8-byte Folded Reload
	adcq	104(%rsp), %rdx                 # 8-byte Folded Reload
	adcq	96(%rsp), %r13                  # 8-byte Folded Reload
	adcq	%rbp, %r12
	adcq	%r9, %r15
	adcq	%r10, %r8
	movl	%ebx, %ebp
	adcq	%r11, %rbp
	movq	80(%rsp), %rbx                  # 8-byte Reload
	adcq	$0, %rbx
	movq	88(%rsp), %r10                  # 8-byte Reload
	adcq	$0, %r10
	adcq	$0, %rax
	movq	%rax, %r9
	movl	%edi, 32(%r14)
	shrq	$32, %rdi
	movl	%edi, 36(%r14)
	movl	%esi, 40(%r14)
	shrq	$32, %rsi
	movl	%esi, 44(%r14)
	movl	%ecx, 48(%r14)
	shrq	$32, %rcx
	movl	%ecx, 52(%r14)
	movl	%edx, 56(%r14)
	shrq	$32, %rdx
	movl	%edx, 60(%r14)
	movl	%r13d, 64(%r14)
	shrq	$32, %r13
	movl	%r13d, 68(%r14)
	movl	%r12d, 72(%r14)
	shrq	$32, %r12
	movl	%r12d, 76(%r14)
	movl	%r15d, 80(%r14)
	shrq	$32, %r15
	movl	%r15d, 84(%r14)
	movl	%r8d, 88(%r14)
	shrq	$32, %r8
	movl	%r8d, 92(%r14)
	movl	%ebp, 96(%r14)
	shrq	$32, %rbp
	movl	%ebp, 100(%r14)
	movq	%rbx, %rax
	movl	%eax, 104(%r14)
	shrq	$32, %rax
	movl	%eax, 108(%r14)
	movq	%r10, %rax
	movl	%eax, 112(%r14)
	shrq	$32, %rax
	movl	%eax, 116(%r14)
	movq	%r9, %rax
	movl	%eax, 120(%r14)
	shrq	$32, %rax
	movl	%eax, 124(%r14)
	addq	$184, %rsp
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
	.globl	mulUnit_inner544                # -- Begin function mulUnit_inner544
	.p2align	4, 0x90
	.type	mulUnit_inner544,@function
mulUnit_inner544:                       # @mulUnit_inner544
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	movq	%rdi, -8(%rsp)                  # 8-byte Spill
	movl	(%rsi), %eax
	movl	4(%rsi), %r12d
	movl	%edx, %ecx
	imulq	%rcx, %rax
	movq	%rax, -104(%rsp)                # 8-byte Spill
	shrq	$32, %rax
	imulq	%rcx, %r12
	movabsq	$-4294967296, %r13              # imm = 0xFFFFFFFF00000000
	movq	%r12, %rdx
	andq	%r13, %rdx
	orq	%rax, %rdx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	36(%rsi), %r15d
	imulq	%rcx, %r15
	movq	%r15, -88(%rsp)                 # 8-byte Spill
	andq	%r13, %r15
	orq	%rax, %r15
	movl	40(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -32(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	44(%rsi), %r11d
	imulq	%rcx, %r11
	movq	%r11, -96(%rsp)                 # 8-byte Spill
	andq	%r13, %r11
	orq	%rax, %r11
	movl	48(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -48(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	52(%rsi), %r14d
	imulq	%rcx, %r14
	movq	%r14, %rbx
	andq	%r13, %rbx
	orq	%rax, %rbx
	movl	56(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -40(%rsp)                 # 8-byte Spill
	shrq	$32, %rax
	movl	60(%rsi), %r9d
	imulq	%rcx, %r9
	andq	%r9, %r13
	orq	%rax, %r13
	movl	8(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, %rdx
	movq	%rax, -56(%rsp)                 # 8-byte Spill
	movl	12(%rsi), %ebp
	imulq	%rcx, %rbp
	movl	16(%rsi), %r10d
	imulq	%rcx, %r10
	movq	%r10, -64(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %edi
	imulq	%rcx, %rdi
	movl	24(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	movl	28(%rsi), %r8d
	imulq	%rcx, %r8
	movl	64(%rsi), %eax
	imulq	%rcx, %rax
	movq	%rax, -80(%rsp)                 # 8-byte Spill
	movl	-104(%rsp), %eax                # 4-byte Reload
	shlq	$32, %r12
	orq	%rax, %r12
	movq	%r12, -104(%rsp)                # 8-byte Spill
	movq	%rbp, %rcx
	shlq	$32, %rbp
	movl	%edx, %eax
	orq	%rax, %rbp
	movq	%rdi, %rax
	shlq	$32, %rdi
	movl	%r10d, %edx
	orq	%rdx, %rdi
	movq	%r8, %rdx
	shlq	$32, %r8
	movq	-72(%rsp), %r10                 # 8-byte Reload
	movl	%r10d, %esi
	orq	%rsi, %r8
	movl	-24(%rsp), %r12d                # 4-byte Reload
	movq	-88(%rsp), %rsi                 # 8-byte Reload
	shlq	$32, %rsi
	orq	%r12, %rsi
	movq	%rsi, -88(%rsp)                 # 8-byte Spill
	movl	-32(%rsp), %r12d                # 4-byte Reload
	movq	-96(%rsp), %rsi                 # 8-byte Reload
	shlq	$32, %rsi
	orq	%r12, %rsi
	movq	%rsi, -96(%rsp)                 # 8-byte Spill
	movl	-48(%rsp), %esi                 # 4-byte Reload
	shlq	$32, %r14
	orq	%rsi, %r14
	shrq	$32, %rcx
	movq	-56(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %rcx
	movl	-40(%rsp), %esi                 # 4-byte Reload
	shlq	$32, %r9
	orq	%rsi, %r9
	shrq	$32, %rax
	movq	-64(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %rax
	shrq	$32, %rdx
	shldq	$32, %r10, %rdx
	movq	-80(%rsp), %r12                 # 8-byte Reload
	shrq	$32, %r12
	shldq	$32, %r13, %r12
	shldq	$32, %rbx, %r13
	shldq	$32, %r11, %rbx
	shldq	$32, %r15, %r11
	shldq	$32, %rdx, %r15
	shldq	$32, %rax, %rdx
	shldq	$32, %rcx, %rax
	movq	-16(%rsp), %rsi                 # 8-byte Reload
	shldq	$32, %rsi, %rcx
	shlq	$32, %rsi
	addq	-104(%rsp), %rsi                # 8-byte Folded Reload
	movq	%rsi, %r10
	adcq	%rbp, %rcx
	adcq	%rdi, %rax
	adcq	%r8, %rdx
	adcq	-88(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-96(%rsp), %r11                 # 8-byte Folded Reload
	adcq	%r14, %rbx
	adcq	%r9, %r13
	movl	-80(%rsp), %esi                 # 4-byte Reload
	adcq	%rsi, %r12
	movq	-8(%rsp), %rsi                  # 8-byte Reload
	movq	%r10, (%rsi)
	movq	%rcx, 8(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rdx, 24(%rsi)
	movq	%r15, 32(%rsi)
	movq	%r11, 40(%rsi)
	movq	%rbx, 48(%rsi)
	movq	%r13, 56(%rsi)
	movq	%r12, 64(%rsi)
	movq	%rsi, %rax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end208:
	.size	mulUnit_inner544, .Lfunc_end208-mulUnit_inner544
                                        # -- End function
	.globl	mclb_mulUnit17                  # -- Begin function mclb_mulUnit17
	.p2align	4, 0x90
	.type	mclb_mulUnit17,@function
mclb_mulUnit17:                         # @mclb_mulUnit17
# %bb.0:
	pushq	%rbx
	subq	$80, %rsp
	movq	%rdi, %rbx
	leaq	8(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	40(%rsp), %r11
	movq	48(%rsp), %r10
	movq	56(%rsp), %r9
	movq	64(%rsp), %r8
	movq	72(%rsp), %rax
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rdi
	movl	%esi, (%rbx)
	shrq	$32, %rsi
	movl	%esi, 4(%rbx)
	movl	%edi, 8(%rbx)
	shrq	$32, %rdi
	movl	%edi, 12(%rbx)
	movl	%edx, 16(%rbx)
	shrq	$32, %rdx
	movl	%edx, 20(%rbx)
	movl	%ecx, 24(%rbx)
	shrq	$32, %rcx
	movl	%ecx, 28(%rbx)
	movl	%r11d, 32(%rbx)
	shrq	$32, %r11
	movl	%r11d, 36(%rbx)
	movl	%r10d, 40(%rbx)
	shrq	$32, %r10
	movl	%r10d, 44(%rbx)
	movl	%r9d, 48(%rbx)
	shrq	$32, %r9
	movl	%r9d, 52(%rbx)
	movl	%r8d, 56(%rbx)
	shrq	$32, %r8
	movl	%r8d, 60(%rbx)
	movl	%eax, 64(%rbx)
	shrq	$32, %rax
                                        # kill: def $eax killed $eax killed $rax
	addq	$80, %rsp
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
	movl	(%rsi), %r11d
	movl	4(%rsi), %r9d
	movl	%edx, %eax
	imulq	%rax, %r11
	movq	%r11, %rcx
	shrq	$32, %rcx
	imulq	%rax, %r9
	movabsq	$-4294967296, %rbp              # imm = 0xFFFFFFFF00000000
	movq	%r9, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -64(%rsp)                 # 8-byte Spill
	movl	32(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	36(%rsi), %edx
	imulq	%rax, %rdx
	movq	%rdx, -96(%rsp)                 # 8-byte Spill
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -72(%rsp)                 # 8-byte Spill
	movl	40(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	44(%rsi), %r15d
	imulq	%rax, %r15
	movq	%r15, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -80(%rsp)                 # 8-byte Spill
	movl	48(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	shrq	$32, %rcx
	movl	52(%rsi), %r13d
	imulq	%rax, %r13
	movq	%r13, %rdx
	andq	%rbp, %rdx
	orq	%rcx, %rdx
	movq	%rdx, -88(%rsp)                 # 8-byte Spill
	movl	56(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -40(%rsp)                 # 8-byte Spill
	shrq	$32, %rcx
	movl	60(%rsi), %r14d
	imulq	%rax, %r14
	andq	%r14, %rbp
	orq	%rcx, %rbp
	movq	%rbp, -104(%rsp)                # 8-byte Spill
	movl	8(%rsi), %r12d
	imulq	%rax, %r12
	movl	12(%rsi), %r10d
	imulq	%rax, %r10
	movl	16(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, %rbx
	movq	%rcx, -48(%rsp)                 # 8-byte Spill
	movl	20(%rsi), %edx
	imulq	%rax, %rdx
	movl	24(%rsi), %ebp
	imulq	%rax, %rbp
	movl	28(%rsi), %r8d
	imulq	%rax, %r8
	movl	64(%rsi), %ecx
	imulq	%rax, %rcx
	movq	%rcx, -56(%rsp)                 # 8-byte Spill
	movl	%r11d, %eax
	shlq	$32, %r9
	orq	%rax, %r9
	movq	%r9, -32(%rsp)                  # 8-byte Spill
	movq	%r10, %r11
	shlq	$32, %r10
	movl	%r12d, %eax
	orq	%rax, %r10
	movq	%rdx, %r9
	shlq	$32, %rdx
	movl	%ebx, %esi
	orq	%rsi, %rdx
	movq	%r8, %rbx
	shlq	$32, %r8
	movl	%ebp, %esi
	orq	%rsi, %r8
	movl	-16(%rsp), %esi                 # 4-byte Reload
	movq	-96(%rsp), %rax                 # 8-byte Reload
	shlq	$32, %rax
	orq	%rsi, %rax
	movq	%rax, -96(%rsp)                 # 8-byte Spill
	movl	-24(%rsp), %esi                 # 4-byte Reload
	shlq	$32, %r15
	orq	%rsi, %r15
	shrq	$32, %r11
	shldq	$32, %r12, %r11
	shrq	$32, %r9
	movq	-48(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %r9
	shrq	$32, %rbx
	shldq	$32, %rbp, %rbx
	movl	-8(%rsp), %esi                  # 4-byte Reload
	shlq	$32, %r13
	orq	%rsi, %r13
	movl	-40(%rsp), %r12d                # 4-byte Reload
	movq	%rcx, %rbp
	shrq	$32, %rbp
	shlq	$32, %r14
	movq	-104(%rsp), %rcx                # 8-byte Reload
	shldq	$32, %rcx, %rbp
	movq	-88(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rcx
	movq	%rcx, -104(%rsp)                # 8-byte Spill
	movq	-80(%rsp), %rcx                 # 8-byte Reload
	shldq	$32, %rcx, %rax
	movq	%rax, -88(%rsp)                 # 8-byte Spill
	movq	-72(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %rcx
	movq	%rcx, -80(%rsp)                 # 8-byte Spill
	shldq	$32, %rbx, %rax
	movq	%rax, -72(%rsp)                 # 8-byte Spill
	shldq	$32, %r9, %rbx
	shldq	$32, %r11, %r9
	movq	-64(%rsp), %rax                 # 8-byte Reload
	shldq	$32, %rax, %r11
	orq	%r12, %r14
	shlq	$32, %rax
	movq	%rax, -64(%rsp)                 # 8-byte Spill
	movq	-32(%rsp), %rax                 # 8-byte Reload
	addq	(%rdi), %rax
	adcq	8(%rdi), %r10
	adcq	16(%rdi), %rdx
	adcq	24(%rdi), %r8
	movq	-96(%rsp), %rcx                 # 8-byte Reload
	adcq	32(%rdi), %rcx
	adcq	40(%rdi), %r15
	adcq	48(%rdi), %r13
	adcq	56(%rdi), %r14
	movl	-56(%rsp), %esi                 # 4-byte Reload
	movl	64(%rdi), %r12d
	adcq	%rsi, %r12
	addq	-64(%rsp), %rax                 # 8-byte Folded Reload
	adcq	%r11, %r10
	adcq	%r9, %rdx
	adcq	%rbx, %r8
	adcq	-72(%rsp), %rcx                 # 8-byte Folded Reload
	movq	%rcx, %r11
	adcq	-80(%rsp), %r15                 # 8-byte Folded Reload
	adcq	-88(%rsp), %r13                 # 8-byte Folded Reload
	adcq	-104(%rsp), %r14                # 8-byte Folded Reload
	adcq	%rbp, %r12
	movl	%eax, (%rdi)
	shrq	$32, %rax
	movl	%eax, 4(%rdi)
	movl	%r10d, 8(%rdi)
	shrq	$32, %r10
	movl	%r10d, 12(%rdi)
	movl	%edx, 16(%rdi)
	shrq	$32, %rdx
	movl	%edx, 20(%rdi)
	movl	%r8d, 24(%rdi)
	shrq	$32, %r8
	movl	%r8d, 28(%rdi)
	movl	%r11d, 32(%rdi)
	shrq	$32, %r11
	movl	%r11d, 36(%rdi)
	movl	%r15d, 40(%rdi)
	shrq	$32, %r15
	movl	%r15d, 44(%rdi)
	movl	%r13d, 48(%rdi)
	shrq	$32, %r13
	movl	%r13d, 52(%rdi)
	movl	%r14d, 56(%rdi)
	shrq	$32, %r14
	movl	%r14d, 60(%rdi)
	movl	%r12d, 64(%rdi)
	shrq	$32, %r12
	movl	%r12d, %eax
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
	subq	$1288, %rsp                     # imm = 0x508
	movq	%rdx, 48(%rsp)                  # 8-byte Spill
	movq	%rsi, 56(%rsp)                  # 8-byte Spill
	movq	%rdi, 40(%rsp)                  # 8-byte Spill
	movl	(%rdx), %edx
	leaq	1216(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	1232(%rsp), %r15
	movq	1240(%rsp), %rcx
	movq	1248(%rsp), %r13
	movq	1256(%rsp), %rdx
	movq	1264(%rsp), %r12
	movq	1272(%rsp), %rbx
	movq	1280(%rsp), %rbp
	movq	1216(%rsp), %rax
	movq	1224(%rsp), %r14
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%rbp, %rsi
	shldq	$32, %rbx, %rsi
	movq	%rsi, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rbx
	shldq	$32, %rdx, %r12
	shldq	$32, %r13, %rdx
	movq	%rdx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %r13
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %rbp
	shldq	$32, %rax, %r14
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	4(%rax), %edx
	leaq	1144(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	1144(%rsp), %r14
	adcq	1152(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	1160(%rsp), %rdx
	movq	%r13, %rcx
	adcq	1168(%rsp), %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	1176(%rsp), %rsi
	adcq	1184(%rsp), %r12
	adcq	1192(%rsp), %rbx
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	1200(%rsp), %rax
	adcq	1208(%rsp), %rbp
	movq	40(%rsp), %rdi                  # 8-byte Reload
	movl	%r14d, 4(%rdi)
	movq	%rbp, %r13
	shldq	$32, %rax, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %r12
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r14, %r15
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	8(%rax), %edx
	leaq	1072(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	1072(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	1080(%rsp), %rdx
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	1088(%rsp), %rcx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	1096(%rsp), %rsi
	adcq	1104(%rsp), %r12
	adcq	1112(%rsp), %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	1120(%rsp), %rdi
	adcq	1128(%rsp), %r13
	adcq	1136(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 8(%rax)
	movq	%rbp, %r14
	shldq	$32, %r13, %r14
	movq	%rdi, %rax
	shldq	$32, %rdi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %r12
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	12(%rax), %edx
	leaq	1000(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	1000(%rsp), %r15
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	1008(%rsp), %rsi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	1016(%rsp), %rcx
	adcq	1024(%rsp), %r12
	adcq	1032(%rsp), %rbx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	1040(%rsp), %rdi
	adcq	1048(%rsp), %r13
	adcq	1056(%rsp), %r14
	adcq	1064(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 12(%rax)
	movq	%r15, %rdx
	movq	%rbp, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdi, %rax
	shldq	$32, %rdi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rbx
	shldq	$32, %rcx, %r12
	movq	%r12, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, %r12
	shldq	$32, %rsi, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %rdx, %r12
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	16(%rax), %edx
	leaq	928(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	928(%rsp), %r12
	movq	16(%rsp), %rdi                  # 8-byte Reload
	adcq	936(%rsp), %rdi
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	944(%rsp), %rcx
	adcq	952(%rsp), %rbx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	960(%rsp), %rdx
	adcq	968(%rsp), %r13
	adcq	976(%rsp), %r14
	adcq	984(%rsp), %r15
	adcq	992(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 16(%rax)
	movq	%r12, %rsi
	movq	%rbp, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdi, %rax
	shldq	$32, %rdi, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %rsi, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	20(%rax), %edx
	leaq	856(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	856(%rsp), %rcx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	864(%rsp), %rdx
	adcq	872(%rsp), %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	880(%rsp), %rsi
	adcq	888(%rsp), %r13
	adcq	896(%rsp), %r14
	adcq	904(%rsp), %r15
	adcq	912(%rsp), %r12
	adcq	920(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 20(%rax)
	movq	%rbp, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %rbp
	shldq	$32, %rcx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	24(%rax), %edx
	leaq	784(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	movq	24(%rsp), %rdx                  # 8-byte Reload
	addq	784(%rsp), %rdx
	adcq	792(%rsp), %rbx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	800(%rsp), %rsi
	adcq	808(%rsp), %r13
	adcq	816(%rsp), %r14
	adcq	824(%rsp), %r15
	adcq	832(%rsp), %r12
	movq	32(%rsp), %rcx                  # 8-byte Reload
	adcq	840(%rsp), %rcx
	adcq	848(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%edx, 24(%rax)
	movq	%rbp, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %rdx, %rbx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	28(%rax), %edx
	leaq	712(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	712(%rsp), %rbx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	720(%rsp), %rdx
	adcq	728(%rsp), %r13
	adcq	736(%rsp), %r14
	adcq	744(%rsp), %r15
	adcq	752(%rsp), %r12
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	760(%rsp), %rsi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	768(%rsp), %rcx
	adcq	776(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 28(%rax)
	movq	%rbp, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shrq	$32, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, %rbx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	32(%rax), %edx
	leaq	640(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	640(%rsp), %rbx
	adcq	648(%rsp), %r13
	adcq	656(%rsp), %r14
	adcq	664(%rsp), %r15
	adcq	672(%rsp), %r12
	movq	32(%rsp), %rdi                  # 8-byte Reload
	adcq	680(%rsp), %rdi
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	688(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	696(%rsp), %rcx
	adcq	704(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 32(%rax)
	movq	%rbx, %rdx
	movq	%rbp, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdi, %rcx
	shldq	$32, %rdi, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	shrq	$32, %rbp
	shldq	$32, %rdx, %r13
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	36(%rax), %edx
	leaq	568(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	568(%rsp), %r13
	adcq	576(%rsp), %r14
	adcq	584(%rsp), %r15
	adcq	592(%rsp), %r12
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	600(%rsp), %rsi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	608(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	616(%rsp), %rdx
	adcq	624(%rsp), %rbx
	adcq	632(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r13d, 36(%rax)
	movq	%rbp, %rax
	shldq	$32, %rbx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shrq	$32, %rbp
	shldq	$32, %r13, %r14
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	40(%rax), %edx
	leaq	496(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	496(%rsp), %r14
	adcq	504(%rsp), %r15
	adcq	512(%rsp), %r12
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	520(%rsp), %rdx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	528(%rsp), %rsi
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	536(%rsp), %rdi
	adcq	544(%rsp), %rbx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	552(%rsp), %rcx
	adcq	560(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 40(%rax)
	movq	%rbp, %r13
	shldq	$32, %rcx, %r13
	shldq	$32, %rbx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rcx
	shldq	$32, %rdi, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rcx
	shldq	$32, %rdx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shrq	$32, %rbp
	shldq	$32, %r14, %r15
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	44(%rax), %edx
	leaq	424(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	424(%rsp), %r15
	adcq	432(%rsp), %r12
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	440(%rsp), %rsi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	448(%rsp), %rcx
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	456(%rsp), %rdi
	adcq	464(%rsp), %rbx
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	472(%rsp), %rdx
	adcq	480(%rsp), %r13
	adcq	488(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 44(%rax)
	movq	%rbp, %r14
	shldq	$32, %r13, %r14
	movq	%rdx, %rax
	shldq	$32, %rdx, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r15, %r12
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	48(%rax), %edx
	leaq	352(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	352(%rsp), %r12
	movq	32(%rsp), %rdx                  # 8-byte Reload
	adcq	360(%rsp), %rdx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	368(%rsp), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	376(%rsp), %rsi
	adcq	384(%rsp), %rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	392(%rsp), %rdi
	adcq	400(%rsp), %r13
	adcq	408(%rsp), %r14
	adcq	416(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 48(%rax)
	movq	%rbp, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdi, %rax
	shldq	$32, %rdi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %r12, %rax
	movq	%rax, %r12
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	52(%rax), %edx
	leaq	280(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	280(%rsp), %r12
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	288(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	296(%rsp), %rcx
	adcq	304(%rsp), %rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	312(%rsp), %rdi
	adcq	320(%rsp), %r13
	adcq	328(%rsp), %r14
	adcq	336(%rsp), %r15
	adcq	344(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 52(%rax)
	movq	%r12, %rdx
	movq	%rbp, %r12
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdi, %rax
	shldq	$32, %rdi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %rbp
	shldq	$32, %rdx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	56(%rax), %edx
	leaq	208(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	movq	16(%rsp), %rcx                  # 8-byte Reload
	addq	208(%rsp), %rcx
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	216(%rsp), %rdx
	adcq	224(%rsp), %rbx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	232(%rsp), %rsi
	adcq	240(%rsp), %r13
	adcq	248(%rsp), %r14
	adcq	256(%rsp), %r15
	adcq	264(%rsp), %r12
	adcq	272(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 56(%rax)
	movq	%rbp, %rax
	shldq	$32, %r12, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rsi, %rax
	shldq	$32, %rsi, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %rbp
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	60(%rax), %edx
	leaq	136(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	movq	8(%rsp), %rdx                   # 8-byte Reload
	addq	136(%rsp), %rdx
	adcq	144(%rsp), %rbx
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	152(%rsp), %rdi
	adcq	160(%rsp), %r13
	adcq	168(%rsp), %r14
	adcq	176(%rsp), %r15
	adcq	184(%rsp), %r12
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	192(%rsp), %rcx
	adcq	200(%rsp), %rbp
	movq	40(%rsp), %rax                  # 8-byte Reload
	movl	%edx, 60(%rax)
	movq	%rdx, %rsi
	movq	%rbp, %rdx
	movq	%rbp, %rax
	shldq	$32, %rcx, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r12, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r15, %r12
	shldq	$32, %r14, %r15
	shldq	$32, %r13, %r14
	movq	%rdi, %rbp
	shldq	$32, %rdi, %r13
	shldq	$32, %rbx, %rbp
	shrq	$32, %rax
	movq	%rax, 32(%rsp)                  # 8-byte Spill
	shldq	$32, %rsi, %rbx
	movq	48(%rsp), %rax                  # 8-byte Reload
	movl	64(%rax), %edx
	leaq	64(%rsp), %rdi
	movq	56(%rsp), %rsi                  # 8-byte Reload
	callq	mulUnit_inner544@PLT
	addq	64(%rsp), %rbx
	adcq	72(%rsp), %rbp
	adcq	80(%rsp), %r13
	adcq	88(%rsp), %r14
	adcq	96(%rsp), %r15
	adcq	104(%rsp), %r12
	movq	16(%rsp), %rax                  # 8-byte Reload
	adcq	112(%rsp), %rax
	movq	8(%rsp), %rdx                   # 8-byte Reload
	adcq	120(%rsp), %rdx
	movq	32(%rsp), %rsi                  # 8-byte Reload
	adcq	128(%rsp), %rsi
	movq	40(%rsp), %rcx                  # 8-byte Reload
	movl	%ebx, 64(%rcx)
	shrq	$32, %rbx
	movl	%ebx, 68(%rcx)
	movl	%ebp, 72(%rcx)
	shrq	$32, %rbp
	movl	%ebp, 76(%rcx)
	movl	%r13d, 80(%rcx)
	shrq	$32, %r13
	movl	%r13d, 84(%rcx)
	movl	%r14d, 88(%rcx)
	shrq	$32, %r14
	movl	%r14d, 92(%rcx)
	movl	%r15d, 96(%rcx)
	shrq	$32, %r15
	movl	%r15d, 100(%rcx)
	movl	%r12d, 104(%rcx)
	shrq	$32, %r12
	movl	%r12d, 108(%rcx)
	movl	%eax, 112(%rcx)
	shrq	$32, %rax
	movl	%eax, 116(%rcx)
	movq	%rdx, %rax
	movl	%eax, 120(%rcx)
	shrq	$32, %rax
	movl	%eax, 124(%rcx)
	movq	%rsi, %rax
	movl	%eax, 128(%rcx)
	shrq	$32, %rax
	movl	%eax, 132(%rcx)
	addq	$1288, %rsp                     # imm = 0x508
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
	subq	$1272, %rsp                     # imm = 0x4F8
	movq	%rsi, 40(%rsp)                  # 8-byte Spill
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movl	(%rsi), %edx
	leaq	1200(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	1216(%rsp), %r14
	movq	1224(%rsp), %rcx
	movq	1232(%rsp), %rbp
	movq	1240(%rsp), %rdx
	movq	1248(%rsp), %r15
	movq	1256(%rsp), %rbx
	movq	1264(%rsp), %r13
	movq	1200(%rsp), %rax
	movq	1208(%rsp), %r12
	movq	32(%rsp), %rsi                  # 8-byte Reload
	movl	%eax, (%rsi)
	movq	%r13, %rsi
	shldq	$32, %rbx, %rsi
	movq	%rsi, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rbx
	shldq	$32, %rdx, %r15
	shldq	$32, %rbp, %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %rcx, %rbp
	shldq	$32, %r14, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %r12, %r14
	shrq	$32, %r13
	shldq	$32, %rax, %r12
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	4(%rsi), %edx
	leaq	1128(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	1128(%rsp), %r12
	adcq	1136(%rsp), %r14
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	1144(%rsp), %rdx
	movq	%rbp, %rcx
	adcq	1152(%rsp), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	1160(%rsp), %rsi
	adcq	1168(%rsp), %r15
	adcq	1176(%rsp), %rbx
	movq	(%rsp), %rax                    # 8-byte Reload
	adcq	1184(%rsp), %rax
	adcq	1192(%rsp), %r13
	movq	32(%rsp), %rdi                  # 8-byte Reload
	movl	%r12d, 4(%rdi)
	movq	%r13, %rbp
	shldq	$32, %rax, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %r15
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r12, %r14
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	8(%rsi), %edx
	leaq	1056(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	1056(%rsp), %r14
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	1064(%rsp), %rdx
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	1072(%rsp), %rcx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	1080(%rsp), %rsi
	adcq	1088(%rsp), %r15
	adcq	1096(%rsp), %rbx
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	1104(%rsp), %rdi
	adcq	1112(%rsp), %rbp
	adcq	1120(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 8(%rax)
	movq	%r13, %r12
	shldq	$32, %rbp, %r12
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %r15
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r14, %rax
	movq	%rax, %r14
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	12(%rsi), %edx
	leaq	984(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	984(%rsp), %r14
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	992(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	1000(%rsp), %rcx
	adcq	1008(%rsp), %r15
	adcq	1016(%rsp), %rbx
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	1024(%rsp), %rdi
	adcq	1032(%rsp), %rbp
	adcq	1040(%rsp), %r12
	adcq	1048(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 12(%rax)
	movq	%r14, %rdx
	movq	%r13, %r14
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rbx
	shldq	$32, %rcx, %r15
	movq	%r15, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %r15
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rdx, %r15
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	16(%rsi), %edx
	leaq	912(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	912(%rsp), %r15
	movq	8(%rsp), %rdi                   # 8-byte Reload
	adcq	920(%rsp), %rdi
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	928(%rsp), %rcx
	adcq	936(%rsp), %rbx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	944(%rsp), %rdx
	adcq	952(%rsp), %rbp
	adcq	960(%rsp), %r12
	adcq	968(%rsp), %r14
	adcq	976(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 16(%rax)
	movq	%r15, %rsi
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rdi, %rax
	shldq	$32, %rdi, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rsi, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	20(%rsi), %edx
	leaq	840(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	840(%rsp), %rcx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	848(%rsp), %rdx
	adcq	856(%rsp), %rbx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	864(%rsp), %rsi
	adcq	872(%rsp), %rbp
	adcq	880(%rsp), %r12
	adcq	888(%rsp), %r14
	adcq	896(%rsp), %r15
	adcq	904(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 20(%rax)
	movq	%r13, %rax
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	24(%rsi), %edx
	leaq	768(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	16(%rsp), %rdx                  # 8-byte Reload
	addq	768(%rsp), %rdx
	adcq	776(%rsp), %rbx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	784(%rsp), %rsi
	adcq	792(%rsp), %rbp
	adcq	800(%rsp), %r12
	adcq	808(%rsp), %r14
	adcq	816(%rsp), %r15
	movq	24(%rsp), %rcx                  # 8-byte Reload
	adcq	824(%rsp), %rcx
	adcq	832(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%edx, 24(%rax)
	movq	%r13, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rdx, %rbx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	28(%rsi), %edx
	leaq	696(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	696(%rsp), %rbx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	704(%rsp), %rdx
	adcq	712(%rsp), %rbp
	adcq	720(%rsp), %r12
	adcq	728(%rsp), %r14
	adcq	736(%rsp), %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	744(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	752(%rsp), %rcx
	adcq	760(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 28(%rax)
	movq	%r13, %rax
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shrq	$32, %r13
	shldq	$32, %rbx, %rax
	movq	%rax, %rbx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	32(%rsi), %edx
	leaq	624(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	624(%rsp), %rbx
	adcq	632(%rsp), %rbp
	adcq	640(%rsp), %r12
	adcq	648(%rsp), %r14
	adcq	656(%rsp), %r15
	movq	24(%rsp), %rdi                  # 8-byte Reload
	adcq	664(%rsp), %rdi
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	672(%rsp), %rsi
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	680(%rsp), %rcx
	adcq	688(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ebx, 32(%rax)
	movq	%rbx, %rdx
	movq	%r13, %rbx
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdi, %rcx
	shldq	$32, %rdi, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	shrq	$32, %r13
	shldq	$32, %rdx, %rbp
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	36(%rsi), %edx
	leaq	552(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	552(%rsp), %rbp
	adcq	560(%rsp), %r12
	adcq	568(%rsp), %r14
	adcq	576(%rsp), %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	584(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	592(%rsp), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	600(%rsp), %rdx
	adcq	608(%rsp), %rbx
	adcq	616(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ebp, 36(%rax)
	movq	%r13, %rax
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shrq	$32, %r13
	shldq	$32, %rbp, %r12
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	40(%rsi), %edx
	leaq	480(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	480(%rsp), %r12
	adcq	488(%rsp), %r14
	adcq	496(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	504(%rsp), %rdx
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	512(%rsp), %rsi
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	520(%rsp), %rdi
	adcq	528(%rsp), %rbx
	movq	16(%rsp), %rcx                  # 8-byte Reload
	adcq	536(%rsp), %rcx
	adcq	544(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r12d, 40(%rax)
	movq	%r13, %rbp
	shldq	$32, %rcx, %rbp
	shldq	$32, %rbx, %rcx
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rcx
	shldq	$32, %rdi, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rcx
	shldq	$32, %rdx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %r14, %r15
	shrq	$32, %r13
	shldq	$32, %r12, %r14
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	44(%rsi), %edx
	leaq	408(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	408(%rsp), %r14
	adcq	416(%rsp), %r15
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	424(%rsp), %rsi
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	432(%rsp), %rcx
	movq	(%rsp), %rdi                    # 8-byte Reload
	adcq	440(%rsp), %rdi
	adcq	448(%rsp), %rbx
	movq	16(%rsp), %rdx                  # 8-byte Reload
	adcq	456(%rsp), %rdx
	adcq	464(%rsp), %rbp
	adcq	472(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r14d, 44(%rax)
	movq	%r13, %r12
	shldq	$32, %rbp, %r12
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r15, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r14, %r15
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	48(%rsi), %edx
	leaq	336(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	336(%rsp), %r15
	movq	24(%rsp), %rdx                  # 8-byte Reload
	adcq	344(%rsp), %rdx
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	352(%rsp), %rcx
	movq	(%rsp), %rsi                    # 8-byte Reload
	adcq	360(%rsp), %rsi
	adcq	368(%rsp), %rbx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	adcq	376(%rsp), %rdi
	adcq	384(%rsp), %rbp
	adcq	392(%rsp), %r12
	adcq	400(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 48(%rax)
	movq	%r13, %r14
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbx
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %r15, %rax
	movq	%rax, %r15
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	52(%rsi), %edx
	leaq	264(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	264(%rsp), %r15
	movq	8(%rsp), %rsi                   # 8-byte Reload
	adcq	272(%rsp), %rsi
	movq	(%rsp), %rcx                    # 8-byte Reload
	adcq	280(%rsp), %rcx
	adcq	288(%rsp), %rbx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	adcq	296(%rsp), %rdi
	adcq	304(%rsp), %rbp
	adcq	312(%rsp), %r12
	adcq	320(%rsp), %r14
	adcq	328(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%r15d, 52(%rax)
	movq	%r15, %rdx
	movq	%r13, %r15
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdi, %rax
	shldq	$32, %rdi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	shldq	$32, %rcx, %rbx
	movq	%rsi, %rax
	shldq	$32, %rsi, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	shrq	$32, %r13
	shldq	$32, %rdx, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	56(%rsi), %edx
	leaq	192(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	8(%rsp), %rcx                   # 8-byte Reload
	addq	192(%rsp), %rcx
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	200(%rsp), %rdx
	adcq	208(%rsp), %rbx
	movq	16(%rsp), %rsi                  # 8-byte Reload
	adcq	216(%rsp), %rsi
	adcq	224(%rsp), %rbp
	adcq	232(%rsp), %r12
	adcq	240(%rsp), %r14
	adcq	248(%rsp), %r15
	adcq	256(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%ecx, 56(%rax)
	movq	%r13, %rax
	shldq	$32, %r15, %rax
	movq	%rax, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rsi, %rax
	shldq	$32, %rsi, %rbp
	shldq	$32, %rbx, %rax
	movq	%rax, 16(%rsp)                  # 8-byte Spill
	movq	%rdx, %rax
	shldq	$32, %rdx, %rbx
	shrq	$32, %r13
	shldq	$32, %rcx, %rax
	movq	%rax, (%rsp)                    # 8-byte Spill
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	60(%rsi), %edx
	leaq	120(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	movq	(%rsp), %rdx                    # 8-byte Reload
	addq	120(%rsp), %rdx
	adcq	128(%rsp), %rbx
	movq	16(%rsp), %rdi                  # 8-byte Reload
	adcq	136(%rsp), %rdi
	adcq	144(%rsp), %rbp
	adcq	152(%rsp), %r12
	adcq	160(%rsp), %r14
	adcq	168(%rsp), %r15
	movq	8(%rsp), %rcx                   # 8-byte Reload
	adcq	176(%rsp), %rcx
	adcq	184(%rsp), %r13
	movq	32(%rsp), %rax                  # 8-byte Reload
	movl	%edx, 60(%rax)
	movq	%rdx, %rsi
	movq	%r13, %rdx
	movq	%r13, %rax
	shldq	$32, %rcx, %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	shldq	$32, %r15, %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	shldq	$32, %r14, %r15
	shldq	$32, %r12, %r14
	shldq	$32, %rbp, %r12
	movq	%rdi, %r13
	shldq	$32, %rdi, %rbp
	shldq	$32, %rbx, %r13
	shrq	$32, %rax
	movq	%rax, 24(%rsp)                  # 8-byte Spill
	shldq	$32, %rsi, %rbx
	movq	40(%rsp), %rsi                  # 8-byte Reload
	movl	64(%rsi), %edx
	leaq	48(%rsp), %rdi
	callq	mulUnit_inner544@PLT
	addq	48(%rsp), %rbx
	adcq	56(%rsp), %r13
	adcq	64(%rsp), %rbp
	adcq	72(%rsp), %r12
	adcq	80(%rsp), %r14
	adcq	88(%rsp), %r15
	movq	8(%rsp), %rax                   # 8-byte Reload
	adcq	96(%rsp), %rax
	movq	(%rsp), %rdx                    # 8-byte Reload
	adcq	104(%rsp), %rdx
	movq	24(%rsp), %rsi                  # 8-byte Reload
	adcq	112(%rsp), %rsi
	movq	32(%rsp), %rcx                  # 8-byte Reload
	movl	%ebx, 64(%rcx)
	shrq	$32, %rbx
	movl	%ebx, 68(%rcx)
	movl	%r13d, 72(%rcx)
	shrq	$32, %r13
	movl	%r13d, 76(%rcx)
	movl	%ebp, 80(%rcx)
	shrq	$32, %rbp
	movl	%ebp, 84(%rcx)
	movl	%r12d, 88(%rcx)
	shrq	$32, %r12
	movl	%r12d, 92(%rcx)
	movl	%r14d, 96(%rcx)
	shrq	$32, %r14
	movl	%r14d, 100(%rcx)
	movl	%r15d, 104(%rcx)
	shrq	$32, %r15
	movl	%r15d, 108(%rcx)
	movl	%eax, 112(%rcx)
	shrq	$32, %rax
	movl	%eax, 116(%rcx)
	movq	%rdx, %rax
	movl	%eax, 120(%rcx)
	shrq	$32, %rax
	movl	%eax, 124(%rcx)
	movq	%rsi, %rax
	movl	%eax, 128(%rcx)
	shrq	$32, %rax
	movl	%eax, 132(%rcx)
	addq	$1272, %rsp                     # imm = 0x4F8
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
