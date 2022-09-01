	.text
	.file	"bint32.ll"
	.globl	mclb_add1               # -- Begin function mclb_add1
	.p2align	4, 0x90
	.type	mclb_add1,@function
mclb_add1:                              # @mclb_add1
# %bb.0:
	pushl	%esi
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	movl	16(%esp), %eax
	movl	(%eax), %esi
	xorl	%eax, %eax
	addl	(%edx), %esi
	setb	%al
	movl	%esi, (%ecx)
	popl	%esi
	retl
.Lfunc_end0:
	.size	mclb_add1, .Lfunc_end0-mclb_add1
                                        # -- End function
	.globl	mclb_sub1               # -- Begin function mclb_sub1
	.p2align	4, 0x90
	.type	mclb_sub1,@function
mclb_sub1:                              # @mclb_sub1
# %bb.0:
	pushl	%esi
	movl	8(%esp), %ecx
	movl	16(%esp), %edx
	movl	12(%esp), %eax
	movl	(%eax), %esi
	xorl	%eax, %eax
	subl	(%edx), %esi
	sbbl	%eax, %eax
	movl	%esi, (%ecx)
	andl	$1, %eax
	popl	%esi
	retl
.Lfunc_end1:
	.size	mclb_sub1, .Lfunc_end1-mclb_sub1
                                        # -- End function
	.globl	mclb_addNF1             # -- Begin function mclb_addNF1
	.p2align	4, 0x90
	.type	mclb_addNF1,@function
mclb_addNF1:                            # @mclb_addNF1
# %bb.0:
	movl	4(%esp), %eax
	movl	8(%esp), %ecx
	movl	12(%esp), %edx
	movl	(%edx), %edx
	addl	(%ecx), %edx
	movl	%edx, (%eax)
	retl
.Lfunc_end2:
	.size	mclb_addNF1, .Lfunc_end2-mclb_addNF1
                                        # -- End function
	.globl	mclb_subNF1             # -- Begin function mclb_subNF1
	.p2align	4, 0x90
	.type	mclb_subNF1,@function
mclb_subNF1:                            # @mclb_subNF1
# %bb.0:
	movl	4(%esp), %ecx
	movl	12(%esp), %edx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	subl	(%edx), %eax
	movl	%eax, (%ecx)
	shrl	$31, %eax
	retl
.Lfunc_end3:
	.size	mclb_subNF1, .Lfunc_end3-mclb_subNF1
                                        # -- End function
	.globl	mclb_add2               # -- Begin function mclb_add2
	.p2align	4, 0x90
	.type	mclb_add2,@function
mclb_add2:                              # @mclb_add2
# %bb.0:
	pushl	%esi
	movl	8(%esp), %ecx
	movl	12(%esp), %eax
	movl	16(%esp), %edx
	movl	(%edx), %esi
	movl	4(%edx), %edx
	addl	(%eax), %esi
	adcl	4(%eax), %edx
	setb	%al
	movzbl	%al, %eax
	movl	%esi, (%ecx)
	movl	%edx, 4(%ecx)
	popl	%esi
	retl
.Lfunc_end4:
	.size	mclb_add2, .Lfunc_end4-mclb_add2
                                        # -- End function
	.globl	mclb_sub2               # -- Begin function mclb_sub2
	.p2align	4, 0x90
	.type	mclb_sub2,@function
mclb_sub2:                              # @mclb_sub2
# %bb.0:
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	xorl	%eax, %eax
	subl	(%edx), %esi
	sbbl	4(%edx), %edi
	sbbl	%eax, %eax
	movl	%esi, (%ecx)
	movl	%edi, 4(%ecx)
	andl	$1, %eax
	popl	%esi
	popl	%edi
	retl
.Lfunc_end5:
	.size	mclb_sub2, .Lfunc_end5-mclb_sub2
                                        # -- End function
	.globl	mclb_addNF2             # -- Begin function mclb_addNF2
	.p2align	4, 0x90
	.type	mclb_addNF2,@function
mclb_addNF2:                            # @mclb_addNF2
# %bb.0:
	pushl	%esi
	movl	8(%esp), %eax
	movl	12(%esp), %ecx
	movl	16(%esp), %edx
	movl	(%edx), %esi
	movl	4(%edx), %edx
	addl	(%ecx), %esi
	adcl	4(%ecx), %edx
	movl	%esi, (%eax)
	movl	%edx, 4(%eax)
	popl	%esi
	retl
.Lfunc_end6:
	.size	mclb_addNF2, .Lfunc_end6-mclb_addNF2
                                        # -- End function
	.globl	mclb_subNF2             # -- Begin function mclb_subNF2
	.p2align	4, 0x90
	.type	mclb_subNF2,@function
mclb_subNF2:                            # @mclb_subNF2
# %bb.0:
	pushl	%esi
	movl	8(%esp), %ecx
	movl	16(%esp), %edx
	movl	12(%esp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %eax
	subl	(%edx), %esi
	sbbl	4(%edx), %eax
	movl	%esi, (%ecx)
	movl	%eax, 4(%ecx)
	shrl	$31, %eax
	popl	%esi
	retl
.Lfunc_end7:
	.size	mclb_subNF2, .Lfunc_end7-mclb_subNF2
                                        # -- End function
	.globl	mclb_add3               # -- Begin function mclb_add3
	.p2align	4, 0x90
	.type	mclb_add3,@function
mclb_add3:                              # @mclb_add3
# %bb.0:
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %ecx
	movl	16(%esp), %eax
	movl	20(%esp), %edx
	movl	8(%edx), %esi
	movl	(%edx), %edi
	movl	4(%edx), %edx
	addl	(%eax), %edi
	adcl	4(%eax), %edx
	adcl	8(%eax), %esi
	setb	%al
	movzbl	%al, %eax
	movl	%edi, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%esi, 8(%ecx)
	popl	%esi
	popl	%edi
	retl
.Lfunc_end8:
	.size	mclb_add3, .Lfunc_end8-mclb_add3
                                        # -- End function
	.globl	mclb_sub3               # -- Begin function mclb_sub3
	.p2align	4, 0x90
	.type	mclb_sub3,@function
mclb_sub3:                              # @mclb_sub3
# %bb.0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %ecx
	movl	24(%esp), %edx
	movl	20(%esp), %eax
	movl	8(%eax), %esi
	movl	(%eax), %edi
	movl	4(%eax), %ebx
	xorl	%eax, %eax
	subl	(%edx), %edi
	sbbl	4(%edx), %ebx
	sbbl	8(%edx), %esi
	sbbl	%eax, %eax
	movl	%edi, (%ecx)
	movl	%ebx, 4(%ecx)
	movl	%esi, 8(%ecx)
	andl	$1, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end9:
	.size	mclb_sub3, .Lfunc_end9-mclb_sub3
                                        # -- End function
	.globl	mclb_addNF3             # -- Begin function mclb_addNF3
	.p2align	4, 0x90
	.type	mclb_addNF3,@function
mclb_addNF3:                            # @mclb_addNF3
# %bb.0:
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %eax
	movl	16(%esp), %ecx
	movl	20(%esp), %edx
	movl	8(%edx), %esi
	movl	(%edx), %edi
	movl	4(%edx), %edx
	addl	(%ecx), %edi
	adcl	4(%ecx), %edx
	adcl	8(%ecx), %esi
	movl	%edi, (%eax)
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	popl	%esi
	popl	%edi
	retl
.Lfunc_end10:
	.size	mclb_addNF3, .Lfunc_end10-mclb_addNF3
                                        # -- End function
	.globl	mclb_subNF3             # -- Begin function mclb_subNF3
	.p2align	4, 0x90
	.type	mclb_subNF3,@function
mclb_subNF3:                            # @mclb_subNF3
# %bb.0:
	pushl	%edi
	pushl	%esi
	movl	12(%esp), %ecx
	movl	20(%esp), %edx
	movl	16(%esp), %esi
	movl	8(%esi), %eax
	movl	(%esi), %edi
	movl	4(%esi), %esi
	subl	(%edx), %edi
	sbbl	4(%edx), %esi
	sbbl	8(%edx), %eax
	movl	%edi, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%eax, 8(%ecx)
	shrl	$31, %eax
	popl	%esi
	popl	%edi
	retl
.Lfunc_end11:
	.size	mclb_subNF3, .Lfunc_end11-mclb_subNF3
                                        # -- End function
	.globl	mclb_add4               # -- Begin function mclb_add4
	.p2align	4, 0x90
	.type	mclb_add4,@function
mclb_add4:                              # @mclb_add4
# %bb.0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %ecx
	movl	20(%esp), %eax
	movl	24(%esp), %edx
	movl	12(%edx), %esi
	movl	8(%edx), %edi
	movl	(%edx), %ebx
	movl	4(%edx), %edx
	addl	(%eax), %ebx
	adcl	4(%eax), %edx
	adcl	8(%eax), %edi
	adcl	12(%eax), %esi
	setb	%al
	movzbl	%al, %eax
	movl	%ebx, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%edi, 8(%ecx)
	movl	%esi, 12(%ecx)
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end12:
	.size	mclb_add4, .Lfunc_end12-mclb_add4
                                        # -- End function
	.globl	mclb_sub4               # -- Begin function mclb_sub4
	.p2align	4, 0x90
	.type	mclb_sub4,@function
mclb_sub4:                              # @mclb_sub4
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ecx
	movl	28(%esp), %edx
	movl	24(%esp), %eax
	movl	12(%eax), %esi
	movl	8(%eax), %edi
	movl	(%eax), %ebx
	movl	4(%eax), %ebp
	xorl	%eax, %eax
	subl	(%edx), %ebx
	sbbl	4(%edx), %ebp
	sbbl	8(%edx), %edi
	sbbl	12(%edx), %esi
	sbbl	%eax, %eax
	movl	%ebx, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%edi, 8(%ecx)
	movl	%esi, 12(%ecx)
	andl	$1, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end13:
	.size	mclb_sub4, .Lfunc_end13-mclb_sub4
                                        # -- End function
	.globl	mclb_addNF4             # -- Begin function mclb_addNF4
	.p2align	4, 0x90
	.type	mclb_addNF4,@function
mclb_addNF4:                            # @mclb_addNF4
# %bb.0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	24(%esp), %edx
	movl	12(%edx), %esi
	movl	8(%edx), %edi
	movl	(%edx), %ebx
	movl	4(%edx), %edx
	addl	(%ecx), %ebx
	adcl	4(%ecx), %edx
	adcl	8(%ecx), %edi
	adcl	12(%ecx), %esi
	movl	%ebx, (%eax)
	movl	%edx, 4(%eax)
	movl	%edi, 8(%eax)
	movl	%esi, 12(%eax)
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end14:
	.size	mclb_addNF4, .Lfunc_end14-mclb_addNF4
                                        # -- End function
	.globl	mclb_subNF4             # -- Begin function mclb_subNF4
	.p2align	4, 0x90
	.type	mclb_subNF4,@function
mclb_subNF4:                            # @mclb_subNF4
# %bb.0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	16(%esp), %ecx
	movl	24(%esp), %edx
	movl	20(%esp), %esi
	movl	12(%esi), %eax
	movl	8(%esi), %edi
	movl	(%esi), %ebx
	movl	4(%esi), %esi
	subl	(%edx), %ebx
	sbbl	4(%edx), %esi
	sbbl	8(%edx), %edi
	sbbl	12(%edx), %eax
	movl	%ebx, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%edi, 8(%ecx)
	movl	%eax, 12(%ecx)
	shrl	$31, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end15:
	.size	mclb_subNF4, .Lfunc_end15-mclb_subNF4
                                        # -- End function
	.globl	mclb_add5               # -- Begin function mclb_add5
	.p2align	4, 0x90
	.type	mclb_add5,@function
mclb_add5:                              # @mclb_add5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ecx
	movl	24(%esp), %eax
	movl	28(%esp), %edx
	movl	16(%edx), %esi
	movl	12(%edx), %edi
	movl	8(%edx), %ebx
	movl	(%edx), %ebp
	movl	4(%edx), %edx
	addl	(%eax), %ebp
	adcl	4(%eax), %edx
	adcl	8(%eax), %ebx
	adcl	12(%eax), %edi
	adcl	16(%eax), %esi
	setb	%al
	movzbl	%al, %eax
	movl	%ebp, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%esi, 16(%ecx)
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end16:
	.size	mclb_add5, .Lfunc_end16-mclb_add5
                                        # -- End function
	.globl	mclb_sub5               # -- Begin function mclb_sub5
	.p2align	4, 0x90
	.type	mclb_sub5,@function
mclb_sub5:                              # @mclb_sub5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	28(%esp), %ecx
	movl	24(%esp), %eax
	movl	16(%eax), %edx
	movl	12(%eax), %esi
	movl	8(%eax), %edi
	movl	(%eax), %ebx
	movl	4(%eax), %ebp
	xorl	%eax, %eax
	subl	(%ecx), %ebx
	sbbl	4(%ecx), %ebp
	sbbl	8(%ecx), %edi
	sbbl	12(%ecx), %esi
	sbbl	16(%ecx), %edx
	movl	20(%esp), %ecx
	movl	%ebx, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%edi, 8(%ecx)
	movl	%esi, 12(%ecx)
	movl	%edx, 16(%ecx)
	sbbl	%eax, %eax
	andl	$1, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end17:
	.size	mclb_sub5, .Lfunc_end17-mclb_sub5
                                        # -- End function
	.globl	mclb_addNF5             # -- Begin function mclb_addNF5
	.p2align	4, 0x90
	.type	mclb_addNF5,@function
mclb_addNF5:                            # @mclb_addNF5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %eax
	movl	24(%esp), %ecx
	movl	28(%esp), %edx
	movl	16(%edx), %esi
	movl	12(%edx), %edi
	movl	8(%edx), %ebx
	movl	(%edx), %ebp
	movl	4(%edx), %edx
	addl	(%ecx), %ebp
	adcl	4(%ecx), %edx
	adcl	8(%ecx), %ebx
	adcl	12(%ecx), %edi
	adcl	16(%ecx), %esi
	movl	%ebp, (%eax)
	movl	%edx, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 16(%eax)
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end18:
	.size	mclb_addNF5, .Lfunc_end18-mclb_addNF5
                                        # -- End function
	.globl	mclb_subNF5             # -- Begin function mclb_subNF5
	.p2align	4, 0x90
	.type	mclb_subNF5,@function
mclb_subNF5:                            # @mclb_subNF5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ecx
	movl	28(%esp), %edx
	movl	24(%esp), %esi
	movl	16(%esi), %eax
	movl	12(%esi), %edi
	movl	8(%esi), %ebx
	movl	(%esi), %ebp
	movl	4(%esi), %esi
	subl	(%edx), %ebp
	sbbl	4(%edx), %esi
	sbbl	8(%edx), %ebx
	sbbl	12(%edx), %edi
	sbbl	16(%edx), %eax
	movl	%ebp, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%eax, 16(%ecx)
	shrl	$31, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end19:
	.size	mclb_subNF5, .Lfunc_end19-mclb_subNF5
                                        # -- End function
	.globl	mclb_add6               # -- Begin function mclb_add6
	.p2align	4, 0x90
	.type	mclb_add6,@function
mclb_add6:                              # @mclb_add6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	20(%ecx), %edx
	movl	16(%ecx), %esi
	movl	12(%ecx), %edi
	movl	8(%ecx), %ebx
	movl	(%ecx), %ebp
	movl	4(%ecx), %ecx
	addl	(%eax), %ebp
	adcl	4(%eax), %ecx
	adcl	8(%eax), %ebx
	adcl	12(%eax), %edi
	adcl	16(%eax), %esi
	adcl	20(%eax), %edx
	movl	20(%esp), %eax
	movl	%ebp, (%eax)
	movl	%ecx, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 16(%eax)
	movl	%edx, 20(%eax)
	setb	%al
	movzbl	%al, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end20:
	.size	mclb_add6, .Lfunc_end20-mclb_add6
                                        # -- End function
	.globl	mclb_sub6               # -- Begin function mclb_sub6
	.p2align	4, 0x90
	.type	mclb_sub6,@function
mclb_sub6:                              # @mclb_sub6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	36(%esp), %ecx
	movl	32(%esp), %eax
	movl	20(%eax), %esi
	movl	16(%eax), %edx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	12(%eax), %edi
	movl	8(%eax), %ebx
	movl	(%eax), %ebp
	movl	4(%eax), %edx
	xorl	%eax, %eax
	subl	(%ecx), %ebp
	sbbl	4(%ecx), %edx
	sbbl	8(%ecx), %ebx
	sbbl	12(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	(%esp), %edi            # 4-byte Reload
	sbbl	16(%ecx), %edi
	movl	%edi, (%esp)            # 4-byte Spill
	sbbl	20(%ecx), %esi
	movl	28(%esp), %ecx
	movl	%ebp, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 12(%ecx)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 16(%ecx)
	movl	%esi, 20(%ecx)
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end21:
	.size	mclb_sub6, .Lfunc_end21-mclb_sub6
                                        # -- End function
	.globl	mclb_addNF6             # -- Begin function mclb_addNF6
	.p2align	4, 0x90
	.type	mclb_addNF6,@function
mclb_addNF6:                            # @mclb_addNF6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	20(%ecx), %edx
	movl	16(%ecx), %esi
	movl	12(%ecx), %edi
	movl	8(%ecx), %ebx
	movl	(%ecx), %ebp
	movl	4(%ecx), %ecx
	addl	(%eax), %ebp
	adcl	4(%eax), %ecx
	adcl	8(%eax), %ebx
	adcl	12(%eax), %edi
	adcl	16(%eax), %esi
	adcl	20(%eax), %edx
	movl	20(%esp), %eax
	movl	%ebp, (%eax)
	movl	%ecx, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 16(%eax)
	movl	%edx, 20(%eax)
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end22:
	.size	mclb_addNF6, .Lfunc_end22-mclb_addNF6
                                        # -- End function
	.globl	mclb_subNF6             # -- Begin function mclb_subNF6
	.p2align	4, 0x90
	.type	mclb_subNF6,@function
mclb_subNF6:                            # @mclb_subNF6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	28(%esp), %ecx
	movl	24(%esp), %edx
	movl	20(%edx), %eax
	movl	16(%edx), %esi
	movl	12(%edx), %edi
	movl	8(%edx), %ebx
	movl	(%edx), %ebp
	movl	4(%edx), %edx
	subl	(%ecx), %ebp
	sbbl	4(%ecx), %edx
	sbbl	8(%ecx), %ebx
	sbbl	12(%ecx), %edi
	sbbl	16(%ecx), %esi
	sbbl	20(%ecx), %eax
	movl	20(%esp), %ecx
	movl	%ebp, (%ecx)
	movl	%edx, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%esi, 16(%ecx)
	movl	%eax, 20(%ecx)
	shrl	$31, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end23:
	.size	mclb_subNF6, .Lfunc_end23-mclb_subNF6
                                        # -- End function
	.globl	mclb_add7               # -- Begin function mclb_add7
	.p2align	4, 0x90
	.type	mclb_add7,@function
mclb_add7:                              # @mclb_add7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	36(%esp), %eax
	movl	24(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%eax), %ecx
	movl	16(%eax), %esi
	movl	12(%eax), %edi
	movl	8(%eax), %ebx
	movl	(%eax), %ebp
	movl	4(%eax), %edx
	movl	32(%esp), %eax
	addl	(%eax), %ebp
	adcl	4(%eax), %edx
	adcl	8(%eax), %ebx
	adcl	12(%eax), %edi
	adcl	16(%eax), %esi
	adcl	20(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	28(%esp), %eax
	movl	%ebp, (%eax)
	movl	%edx, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 16(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 20(%eax)
	movl	%ecx, 24(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end24:
	.size	mclb_add7, .Lfunc_end24-mclb_add7
                                        # -- End function
	.globl	mclb_sub7               # -- Begin function mclb_sub7
	.p2align	4, 0x90
	.type	mclb_sub7,@function
mclb_sub7:                              # @mclb_sub7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	36(%esp), %eax
	movl	24(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	20(%eax), %edx
	movl	16(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%eax), %edi
	movl	8(%eax), %ebx
	movl	(%eax), %ebp
	movl	4(%eax), %esi
	movl	40(%esp), %ecx
	xorl	%eax, %eax
	subl	(%ecx), %ebp
	sbbl	4(%ecx), %esi
	sbbl	8(%ecx), %ebx
	sbbl	12(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	(%esp), %edi            # 4-byte Reload
	sbbl	16(%ecx), %edi
	movl	%edi, (%esp)            # 4-byte Spill
	sbbl	20(%ecx), %edx
	movl	%edx, %edi
	movl	8(%esp), %edx           # 4-byte Reload
	sbbl	24(%ecx), %edx
	movl	32(%esp), %ecx
	movl	%ebp, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 12(%ecx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 16(%ecx)
	movl	%edi, 20(%ecx)
	movl	%edx, 24(%ecx)
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end25:
	.size	mclb_sub7, .Lfunc_end25-mclb_sub7
                                        # -- End function
	.globl	mclb_addNF7             # -- Begin function mclb_addNF7
	.p2align	4, 0x90
	.type	mclb_addNF7,@function
mclb_addNF7:                            # @mclb_addNF7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	36(%esp), %eax
	movl	24(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%eax), %ecx
	movl	16(%eax), %esi
	movl	12(%eax), %edi
	movl	8(%eax), %ebx
	movl	(%eax), %ebp
	movl	4(%eax), %edx
	movl	32(%esp), %eax
	addl	(%eax), %ebp
	adcl	4(%eax), %edx
	adcl	8(%eax), %ebx
	adcl	12(%eax), %edi
	adcl	16(%eax), %esi
	adcl	20(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	28(%esp), %eax
	movl	%ebp, (%eax)
	movl	%edx, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%esi, 16(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 20(%eax)
	movl	%ecx, 24(%eax)
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end26:
	.size	mclb_addNF7, .Lfunc_end26-mclb_addNF7
                                        # -- End function
	.globl	mclb_subNF7             # -- Begin function mclb_subNF7
	.p2align	4, 0x90
	.type	mclb_subNF7,@function
mclb_subNF7:                            # @mclb_subNF7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	32(%esp), %ecx
	movl	24(%ecx), %eax
	movl	20(%ecx), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	16(%ecx), %edx
	movl	12(%ecx), %edi
	movl	8(%ecx), %ebx
	movl	(%ecx), %ebp
	movl	4(%ecx), %esi
	movl	36(%esp), %ecx
	subl	(%ecx), %ebp
	sbbl	4(%ecx), %esi
	sbbl	8(%ecx), %ebx
	sbbl	12(%ecx), %edi
	sbbl	16(%ecx), %edx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	4(%esp), %edx           # 4-byte Reload
	sbbl	20(%ecx), %edx
	sbbl	24(%ecx), %eax
	movl	28(%esp), %ecx
	movl	%ebp, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 16(%ecx)
	movl	%edx, 20(%ecx)
	movl	%eax, 24(%ecx)
	shrl	$31, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end27:
	.size	mclb_subNF7, .Lfunc_end27-mclb_subNF7
                                        # -- End function
	.globl	mclb_add8               # -- Begin function mclb_add8
	.p2align	4, 0x90
	.type	mclb_add8,@function
mclb_add8:                              # @mclb_add8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	44(%esp), %ecx
	movl	28(%ecx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%ecx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	20(%ecx), %edx
	movl	16(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	12(%ecx), %ebx
	movl	8(%ecx), %ebp
	movl	(%ecx), %edi
	movl	4(%ecx), %esi
	movl	40(%esp), %eax
	addl	(%eax), %edi
	adcl	4(%eax), %esi
	adcl	8(%eax), %ebp
	adcl	12(%eax), %ebx
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	16(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	20(%eax), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	24(%eax), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	36(%esp), %eax
	movl	%edi, (%eax)
	movl	%esi, 4(%eax)
	movl	%ebp, 8(%eax)
	movl	%ebx, 12(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%edx, 24(%eax)
	movl	%ecx, 28(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end28:
	.size	mclb_add8, .Lfunc_end28-mclb_add8
                                        # -- End function
	.globl	mclb_sub8               # -- Begin function mclb_sub8
	.p2align	4, 0x90
	.type	mclb_sub8,@function
mclb_sub8:                              # @mclb_sub8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	44(%esp), %eax
	movl	28(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%eax), %esi
	movl	16(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	12(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	8(%eax), %ebp
	movl	(%eax), %ebx
	movl	4(%eax), %edi
	movl	48(%esp), %ecx
	xorl	%edx, %edx
	subl	(%ecx), %ebx
	sbbl	4(%ecx), %edi
	sbbl	8(%ecx), %ebp
	movl	(%esp), %eax            # 4-byte Reload
	sbbl	12(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	sbbl	16(%ecx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	sbbl	20(%ecx), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	sbbl	24(%ecx), %esi
	movl	16(%esp), %eax          # 4-byte Reload
	sbbl	28(%ecx), %eax
	movl	40(%esp), %ecx
	movl	%ebx, (%ecx)
	movl	%edi, 4(%ecx)
	movl	%ebp, 8(%ecx)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 12(%ecx)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 16(%ecx)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%ecx)
	movl	%esi, 24(%ecx)
	movl	%eax, 28(%ecx)
	sbbl	%edx, %edx
	andl	$1, %edx
	movl	%edx, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end29:
	.size	mclb_sub8, .Lfunc_end29-mclb_sub8
                                        # -- End function
	.globl	mclb_addNF8             # -- Begin function mclb_addNF8
	.p2align	4, 0x90
	.type	mclb_addNF8,@function
mclb_addNF8:                            # @mclb_addNF8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	44(%esp), %eax
	movl	28(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebx
	movl	20(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %edx
	movl	12(%eax), %ecx
	movl	8(%eax), %ebp
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	40(%esp), %eax
	addl	(%eax), %esi
	adcl	4(%eax), %edi
	adcl	8(%eax), %ebp
	adcl	12(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	16(%eax), %edx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	20(%eax), %edx
	adcl	24(%eax), %ebx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	36(%esp), %eax
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	%ebp, 8(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%edx, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	%ecx, 28(%eax)
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end30:
	.size	mclb_addNF8, .Lfunc_end30-mclb_addNF8
                                        # -- End function
	.globl	mclb_subNF8             # -- Begin function mclb_subNF8
	.p2align	4, 0x90
	.type	mclb_subNF8,@function
mclb_subNF8:                            # @mclb_subNF8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	36(%esp), %ecx
	movl	28(%ecx), %eax
	movl	24(%ecx), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	20(%ecx), %edx
	movl	16(%ecx), %esi
	movl	%esi, (%esp)            # 4-byte Spill
	movl	12(%ecx), %ebx
	movl	8(%ecx), %ebp
	movl	(%ecx), %edi
	movl	4(%ecx), %esi
	movl	40(%esp), %ecx
	subl	(%ecx), %edi
	sbbl	4(%ecx), %esi
	sbbl	8(%ecx), %ebp
	sbbl	12(%ecx), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movl	(%esp), %ebx            # 4-byte Reload
	sbbl	16(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	sbbl	20(%ecx), %edx
	movl	%edx, %ebx
	movl	8(%esp), %edx           # 4-byte Reload
	sbbl	24(%ecx), %edx
	sbbl	28(%ecx), %eax
	movl	32(%esp), %ecx
	movl	%edi, (%ecx)
	movl	%esi, 4(%ecx)
	movl	%ebp, 8(%ecx)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 12(%ecx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 16(%ecx)
	movl	%ebx, 20(%ecx)
	movl	%edx, 24(%ecx)
	movl	%eax, 28(%ecx)
	shrl	$31, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end31:
	.size	mclb_subNF8, .Lfunc_end31-mclb_subNF8
                                        # -- End function
	.globl	mclb_add9               # -- Begin function mclb_add9
	.p2align	4, 0x90
	.type	mclb_add9,@function
mclb_add9:                              # @mclb_add9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	48(%esp), %esi
	movl	32(%esi), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	28(%esi), %ebx
	movl	24(%esi), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	20(%esi), %edx
	movl	16(%esi), %ecx
	movl	12(%esi), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	8(%esi), %ebp
	movl	(%esi), %edi
	movl	4(%esi), %esi
	movl	44(%esp), %eax
	addl	(%eax), %edi
	adcl	4(%eax), %esi
	adcl	8(%eax), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ebp            # 4-byte Reload
	adcl	12(%eax), %ebp
	movl	%ebp, (%esp)            # 4-byte Spill
	adcl	16(%eax), %ecx
	movl	%ecx, %ebp
	adcl	20(%eax), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	24(%eax), %edx
	adcl	28(%eax), %ebx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	40(%esp), %eax
	movl	%edi, (%eax)
	movl	%esi, 4(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	%ebp, 16(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%edx, 24(%eax)
	movl	%ebx, 28(%eax)
	movl	%ecx, 32(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end32:
	.size	mclb_add9, .Lfunc_end32-mclb_add9
                                        # -- End function
	.globl	mclb_sub9               # -- Begin function mclb_sub9
	.p2align	4, 0x90
	.type	mclb_sub9,@function
mclb_sub9:                              # @mclb_sub9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	movl	48(%esp), %eax
	movl	32(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	52(%esp), %eax
	xorl	%edx, %edx
	subl	(%eax), %esi
	sbbl	4(%eax), %edi
	sbbl	8(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	sbbl	12(%eax), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebx           # 4-byte Reload
	sbbl	16(%eax), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, %ebx
	movl	8(%esp), %ebp           # 4-byte Reload
	sbbl	24(%eax), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	44(%esp), %eax
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%ebx, 20(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	%ecx, 32(%eax)
	sbbl	%edx, %edx
	andl	$1, %edx
	movl	%edx, %eax
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end33:
	.size	mclb_sub9, .Lfunc_end33-mclb_sub9
                                        # -- End function
	.globl	mclb_addNF9             # -- Begin function mclb_addNF9
	.p2align	4, 0x90
	.type	mclb_addNF9,@function
mclb_addNF9:                            # @mclb_addNF9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	44(%esp), %edx
	movl	32(%edx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	28(%edx), %ecx
	movl	24(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	20(%edx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	16(%edx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%edx), %ebp
	movl	8(%edx), %ebx
	movl	(%edx), %esi
	movl	4(%edx), %edi
	movl	40(%esp), %eax
	addl	(%eax), %esi
	adcl	4(%eax), %edi
	adcl	8(%eax), %ebx
	adcl	12(%eax), %ebp
	movl	4(%esp), %edx           # 4-byte Reload
	adcl	16(%eax), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	20(%eax), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	(%esp), %edx            # 4-byte Reload
	adcl	24(%eax), %edx
	adcl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	36(%esp), %eax
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	%ebp, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%edx, 24(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	%ecx, 32(%eax)
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end34:
	.size	mclb_addNF9, .Lfunc_end34-mclb_addNF9
                                        # -- End function
	.globl	mclb_subNF9             # -- Begin function mclb_subNF9
	.p2align	4, 0x90
	.type	mclb_subNF9,@function
mclb_subNF9:                            # @mclb_subNF9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
	movl	40(%esp), %edx
	movl	32(%edx), %esi
	movl	28(%edx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%edx), %ecx
	movl	20(%edx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	16(%edx), %ebp
	movl	12(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	8(%edx), %ebx
	movl	(%edx), %edi
	movl	4(%edx), %edx
	movl	44(%esp), %eax
	subl	(%eax), %edi
	sbbl	4(%eax), %edx
	sbbl	8(%eax), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ebx            # 4-byte Reload
	sbbl	12(%eax), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	sbbl	16(%eax), %ebp
	movl	%ebp, %ebx
	movl	4(%esp), %ebp           # 4-byte Reload
	sbbl	20(%eax), %ebp
	movl	%ebp, 4(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ecx
	movl	%ecx, %ebp
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	28(%eax), %ecx
	sbbl	32(%eax), %esi
	movl	36(%esp), %eax
	movl	%edi, (%eax)
	movl	%edx, 4(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 8(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 20(%eax)
	movl	%ebp, 24(%eax)
	movl	%ecx, 28(%eax)
	movl	%esi, 32(%eax)
	shrl	$31, %esi
	movl	%esi, %eax
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end35:
	.size	mclb_subNF9, .Lfunc_end35-mclb_subNF9
                                        # -- End function
	.globl	mclb_add10              # -- Begin function mclb_add10
	.p2align	4, 0x90
	.type	mclb_add10,@function
mclb_add10:                             # @mclb_add10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	56(%esp), %ebx
	movl	36(%ebx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	32(%ebx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	28(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	24(%ebx), %esi
	movl	20(%ebx), %edx
	movl	16(%ebx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%ebx), %ebp
	movl	8(%ebx), %ecx
	movl	(%ebx), %edi
	movl	4(%ebx), %ebx
	movl	52(%esp), %eax
	addl	(%eax), %edi
	adcl	4(%eax), %ebx
	adcl	8(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	12(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	16(%eax), %ebp
	movl	%ebp, 4(%esp)           # 4-byte Spill
	adcl	20(%eax), %edx
	movl	%edx, %ebp
	adcl	24(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	28(%eax), %edx
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	48(%esp), %eax
	movl	%edi, (%eax)
	movl	%ebx, 4(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	%edx, 28(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	%ecx, 36(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end36:
	.size	mclb_add10, .Lfunc_end36-mclb_add10
                                        # -- End function
	.globl	mclb_sub10              # -- Begin function mclb_sub10
	.p2align	4, 0x90
	.type	mclb_sub10,@function
mclb_sub10:                             # @mclb_sub10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	56(%esp), %eax
	movl	36(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	24(%eax), %ebx
	movl	20(%eax), %edi
	movl	16(%eax), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	12(%eax), %ebp
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	60(%esp), %edx
	subl	(%edx), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	sbbl	4(%edx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	sbbl	8(%edx), %esi
	sbbl	12(%edx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	sbbl	16(%edx), %ebp
	movl	%ebp, 4(%esp)           # 4-byte Spill
	sbbl	20(%edx), %edi
	movl	%edi, %ebp
	sbbl	24(%edx), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebx          # 4-byte Reload
	sbbl	28(%edx), %ebx
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%edx), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	36(%edx), %ecx
	movl	52(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 24(%eax)
	movl	%ebx, 28(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	%ecx, 36(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end37:
	.size	mclb_sub10, .Lfunc_end37-mclb_sub10
                                        # -- End function
	.globl	mclb_addNF10            # -- Begin function mclb_addNF10
	.p2align	4, 0x90
	.type	mclb_addNF10,@function
mclb_addNF10:                           # @mclb_addNF10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	movl	52(%esp), %edi
	movl	36(%edi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	32(%edi), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	28(%edi), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	24(%edi), %edx
	movl	20(%edi), %ecx
	movl	16(%edi), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%edi), %ebp
	movl	8(%edi), %ebx
	movl	(%edi), %esi
	movl	4(%edi), %edi
	movl	48(%esp), %eax
	addl	(%eax), %esi
	adcl	4(%eax), %edi
	adcl	8(%eax), %ebx
	adcl	12(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	16(%eax), %ebp
	movl	%ebp, 4(%esp)           # 4-byte Spill
	adcl	20(%eax), %ecx
	movl	%ecx, %ebp
	adcl	24(%eax), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	28(%eax), %edx
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	44(%esp), %eax
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	%ebx, 8(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	%edx, 28(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	%ecx, 36(%eax)
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end38:
	.size	mclb_addNF10, .Lfunc_end38-mclb_addNF10
                                        # -- End function
	.globl	mclb_subNF10            # -- Begin function mclb_subNF10
	.p2align	4, 0x90
	.type	mclb_subNF10,@function
mclb_subNF10:                           # @mclb_subNF10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$24, %esp
	movl	48(%esp), %edi
	movl	36(%edi), %edx
	movl	32(%edi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	28(%edi), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	24(%edi), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	20(%edi), %ebp
	movl	16(%edi), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%edi), %ebx
	movl	8(%edi), %ecx
	movl	(%edi), %esi
	movl	4(%edi), %edi
	movl	52(%esp), %eax
	subl	(%eax), %esi
	sbbl	4(%eax), %edi
	sbbl	8(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	sbbl	12(%eax), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebx           # 4-byte Reload
	sbbl	16(%eax), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, %ebx
	movl	8(%esp), %ebp           # 4-byte Reload
	sbbl	24(%eax), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	32(%eax), %ecx
	sbbl	36(%eax), %edx
	movl	44(%esp), %eax
	movl	%esi, (%eax)
	movl	%edi, 4(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%ebx, 20(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	%ecx, 32(%eax)
	movl	%edx, 36(%eax)
	shrl	$31, %edx
	movl	%edx, %eax
	addl	$24, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end39:
	.size	mclb_subNF10, .Lfunc_end39-mclb_subNF10
                                        # -- End function
	.globl	mclb_add11              # -- Begin function mclb_add11
	.p2align	4, 0x90
	.type	mclb_add11,@function
mclb_add11:                             # @mclb_add11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	movl	64(%esp), %eax
	movl	40(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %ebx
	movl	20(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebp
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	60(%esp), %edx
	addl	(%edx), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	4(%edx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	8(%edx), %esi
	adcl	12(%edx), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	adcl	16(%edx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	adcl	20(%edx), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	adcl	24(%edx), %ebx
	movl	(%esp), %eax            # 4-byte Reload
	adcl	28(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	32(%edx), %edi
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	36(%edx), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	40(%edx), %ecx
	movl	56(%esp), %eax
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	%edi, 32(%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 36(%eax)
	movl	%ecx, 40(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end40:
	.size	mclb_add11, .Lfunc_end40-mclb_add11
                                        # -- End function
	.globl	mclb_sub11              # -- Begin function mclb_sub11
	.p2align	4, 0x90
	.type	mclb_sub11,@function
mclb_sub11:                             # @mclb_sub11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	movl	60(%esp), %eax
	movl	40(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	16(%eax), %ebp
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	64(%esp), %edx
	xorl	%ebx, %ebx
	subl	(%edx), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	sbbl	4(%edx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	sbbl	8(%edx), %esi
	sbbl	12(%edx), %edi
	sbbl	16(%edx), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	20(%edx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %eax            # 4-byte Reload
	sbbl	24(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%edx), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	sbbl	32(%edx), %ebp
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%edx), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	40(%edx), %ecx
	movl	56(%esp), %eax
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 24(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	%ebp, 32(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 36(%eax)
	movl	%ecx, 40(%eax)
	sbbl	%ebx, %ebx
	andl	$1, %ebx
	movl	%ebx, %eax
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end41:
	.size	mclb_sub11, .Lfunc_end41-mclb_sub11
                                        # -- End function
	.globl	mclb_addNF11            # -- Begin function mclb_addNF11
	.p2align	4, 0x90
	.type	mclb_addNF11,@function
mclb_addNF11:                           # @mclb_addNF11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	60(%esp), %ebp
	movl	40(%ebp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	24(%ebp), %edi
	movl	20(%ebp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	16(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	8(%ebp), %ecx
	movl	(%ebp), %eax
	movl	4(%ebp), %ebp
	movl	56(%esp), %edx
	addl	(%edx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	4(%edx), %ebp
	adcl	8(%edx), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	12(%edx), %esi
	adcl	16(%edx), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	8(%esp), %ebx           # 4-byte Reload
	adcl	20(%edx), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	adcl	24(%edx), %edi
	movl	%edi, %ebx
	movl	(%esp), %eax            # 4-byte Reload
	adcl	28(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	32(%edx), %edi
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	36(%edx), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	40(%edx), %ecx
	movl	52(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	%ebp, 4(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 8(%eax)
	movl	%esi, 12(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	%edi, 32(%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 36(%eax)
	movl	%ecx, 40(%eax)
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end42:
	.size	mclb_addNF11, .Lfunc_end42-mclb_addNF11
                                        # -- End function
	.globl	mclb_subNF11            # -- Begin function mclb_subNF11
	.p2align	4, 0x90
	.type	mclb_subNF11,@function
mclb_subNF11:                           # @mclb_subNF11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	movl	60(%esp), %ebp
	movl	40(%ebp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	36(%ebp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	32(%ebp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	28(%ebp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	24(%ebp), %ebx
	movl	20(%ebp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	16(%ebp), %edi
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	(%ebp), %esi
	movl	4(%ebp), %ebp
	movl	64(%esp), %eax
	subl	(%eax), %esi
	sbbl	4(%eax), %ebp
	sbbl	8(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	sbbl	16(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	sbbl	20(%eax), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	8(%esp), %ebx           # 4-byte Reload
	sbbl	28(%eax), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	28(%esp), %edi          # 4-byte Reload
	sbbl	40(%eax), %edi
	movl	56(%esp), %edx
	movl	%esi, (%edx)
	movl	%ebp, 4(%edx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%edx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%edx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%edx)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%edx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%edx)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 28(%edx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%edx)
	movl	%ecx, 36(%edx)
	movl	%edi, %eax
	movl	%edi, 40(%edx)
	shrl	$31, %eax
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end43:
	.size	mclb_subNF11, .Lfunc_end43-mclb_subNF11
                                        # -- End function
	.globl	mclb_add12              # -- Begin function mclb_add12
	.p2align	4, 0x90
	.type	mclb_add12,@function
mclb_add12:                             # @mclb_add12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	68(%esp), %eax
	movl	44(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	64(%esp), %edx
	addl	(%edx), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	4(%edx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	8(%edx), %esi
	adcl	12(%edx), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	adcl	16(%edx), %ebx
	adcl	20(%edx), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	24(%edx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %eax            # 4-byte Reload
	adcl	28(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%edx), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	36(%edx), %edi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	40(%edx), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	44(%edx), %ecx
	movl	60(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 20(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	%edi, 36(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	%ecx, 44(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end44:
	.size	mclb_add12, .Lfunc_end44-mclb_add12
                                        # -- End function
	.globl	mclb_sub12              # -- Begin function mclb_sub12
	.p2align	4, 0x90
	.type	mclb_sub12,@function
mclb_sub12:                             # @mclb_sub12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	64(%esp), %eax
	movl	44(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %ebx
	movl	24(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	68(%esp), %edx
	subl	(%edx), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	sbbl	4(%edx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	sbbl	8(%edx), %esi
	sbbl	12(%edx), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	sbbl	16(%edx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	sbbl	20(%edx), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	sbbl	24(%edx), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	sbbl	28(%edx), %ebx
	movl	%ebx, %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%edx), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	32(%esp), %ebx          # 4-byte Reload
	sbbl	36(%edx), %ebx
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%edx), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	44(%edx), %ecx
	movl	60(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, (%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 20(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	%ebp, 28(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	%ebx, 36(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	%ecx, 44(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end45:
	.size	mclb_sub12, .Lfunc_end45-mclb_sub12
                                        # -- End function
	.globl	mclb_addNF12            # -- Begin function mclb_addNF12
	.p2align	4, 0x90
	.type	mclb_addNF12,@function
mclb_addNF12:                           # @mclb_addNF12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	movl	64(%esp), %eax
	movl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %edi
	movl	24(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	12(%eax), %ebx
	movl	8(%eax), %ecx
	movl	(%eax), %esi
	movl	4(%eax), %eax
	movl	60(%esp), %edx
	addl	(%edx), %esi
	adcl	4(%edx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	8(%edx), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	12(%edx), %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ebx           # 4-byte Reload
	adcl	16(%edx), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	adcl	20(%edx), %ebp
	movl	%ebp, %ebx
	movl	8(%esp), %ebp           # 4-byte Reload
	adcl	24(%edx), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	adcl	28(%edx), %edi
	movl	%edi, %ebp
	movl	(%esp), %eax            # 4-byte Reload
	adcl	32(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	36(%edx), %edi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%edx), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	44(%edx), %ecx
	movl	56(%esp), %eax
	movl	%esi, (%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 8(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	%ebx, 20(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	%ebp, 28(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	%edi, 36(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	%ecx, 44(%eax)
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end46:
	.size	mclb_addNF12, .Lfunc_end46-mclb_addNF12
                                        # -- End function
	.globl	mclb_subNF12            # -- Begin function mclb_subNF12
	.p2align	4, 0x90
	.type	mclb_subNF12,@function
mclb_subNF12:                           # @mclb_subNF12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	64(%esp), %eax
	movl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %ebx
	movl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebp
	movl	12(%eax), %esi
	movl	8(%eax), %ecx
	movl	(%eax), %edi
	movl	4(%eax), %eax
	movl	68(%esp), %edx
	subl	(%edx), %edi
	sbbl	4(%edx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	sbbl	8(%edx), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	sbbl	12(%edx), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	sbbl	16(%edx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	sbbl	20(%edx), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	sbbl	24(%edx), %ebx
	movl	%ebx, %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	28(%edx), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	sbbl	32(%edx), %ebx
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	36(%edx), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	40(%edx), %ecx
	movl	32(%esp), %eax          # 4-byte Reload
	sbbl	44(%edx), %eax
	movl	60(%esp), %esi
	movl	%edi, (%esi)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%esi)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 8(%esi)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 12(%esi)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%esi)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%esi)
	movl	%ebp, 24(%esi)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 28(%esi)
	movl	%ebx, 32(%esi)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 36(%esi)
	movl	%ecx, 40(%esi)
	movl	%eax, 44(%esi)
	shrl	$31, %eax
	addl	$40, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end47:
	.size	mclb_subNF12, .Lfunc_end47-mclb_subNF12
                                        # -- End function
	.globl	mclb_add13              # -- Begin function mclb_add13
	.p2align	4, 0x90
	.type	mclb_add13,@function
mclb_add13:                             # @mclb_add13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	72(%esp), %eax
	movl	48(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	68(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	adcl	16(%eax), %ebx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ebx           # 4-byte Reload
	adcl	20(%eax), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	adcl	24(%eax), %ebp
	movl	%ebp, %ebx
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	28(%eax), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	40(%eax), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	64(%esp), %eax
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	%edx, 40(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	%ecx, 48(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end48:
	.size	mclb_add13, .Lfunc_end48-mclb_add13
                                        # -- End function
	.globl	mclb_sub13              # -- Begin function mclb_sub13
	.p2align	4, 0x90
	.type	mclb_sub13,@function
mclb_sub13:                             # @mclb_sub13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	72(%esp), %eax
	movl	48(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	76(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	8(%esp), %edi           # 4-byte Reload
	sbbl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	sbbl	40(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	68(%esp), %eax
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	%edx, 40(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	%ecx, 48(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end49:
	.size	mclb_sub13, .Lfunc_end49-mclb_sub13
                                        # -- End function
	.globl	mclb_addNF13            # -- Begin function mclb_addNF13
	.p2align	4, 0x90
	.type	mclb_addNF13,@function
mclb_addNF13:                           # @mclb_addNF13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	72(%esp), %eax
	movl	48(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	68(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	adcl	16(%eax), %ebx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ebx           # 4-byte Reload
	adcl	20(%eax), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	adcl	24(%eax), %ebp
	movl	%ebp, %ebx
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	40(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	64(%esp), %eax
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 16(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	%ebx, 24(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	%edx, 40(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	%ecx, 48(%eax)
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end50:
	.size	mclb_addNF13, .Lfunc_end50-mclb_addNF13
                                        # -- End function
	.globl	mclb_subNF13            # -- Begin function mclb_subNF13
	.p2align	4, 0x90
	.type	mclb_subNF13,@function
mclb_subNF13:                           # @mclb_subNF13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	72(%esp), %eax
	movl	48(%eax), %ebx
	movl	44(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	76(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %edi           # 4-byte Reload
	sbbl	16(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	24(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	sbbl	36(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	sbbl	48(%eax), %ebx
	movl	68(%esp), %eax
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	%edx, 36(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	%ecx, 44(%eax)
	movl	%ebx, 48(%eax)
	shrl	$31, %ebx
	movl	%ebx, %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end51:
	.size	mclb_subNF13, .Lfunc_end51-mclb_subNF13
                                        # -- End function
	.globl	mclb_add14              # -- Begin function mclb_add14
	.p2align	4, 0x90
	.type	mclb_add14,@function
mclb_add14:                             # @mclb_add14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	76(%esp), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	72(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	44(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	68(%esp), %eax
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 40(%eax)
	movl	%edx, 44(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	%ecx, 52(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end52:
	.size	mclb_add14, .Lfunc_end52-mclb_add14
                                        # -- End function
	.globl	mclb_sub14              # -- Begin function mclb_sub14
	.p2align	4, 0x90
	.type	mclb_sub14,@function
mclb_sub14:                             # @mclb_sub14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	80(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	8(%esp), %edi           # 4-byte Reload
	sbbl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	72(%esp), %eax
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	%edx, 44(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	%ecx, 52(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end53:
	.size	mclb_sub14, .Lfunc_end53-mclb_sub14
                                        # -- End function
	.globl	mclb_addNF14            # -- Begin function mclb_addNF14
	.p2align	4, 0x90
	.type	mclb_addNF14,@function
mclb_addNF14:                           # @mclb_addNF14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	76(%esp), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %ebx
	movl	20(%eax), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	16(%eax), %ebp
	movl	12(%eax), %esi
	movl	8(%eax), %edx
	movl	(%eax), %ecx
	movl	4(%eax), %edi
	movl	72(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	4(%eax), %edi
	adcl	8(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	12(%eax), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	20(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	24(%eax), %ebx
	movl	%ebx, %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	36(%eax), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	44(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	68(%esp), %eax
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	%edi, 4(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	%ebp, 24(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	%esi, 36(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 40(%eax)
	movl	%edx, 44(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	%ecx, 52(%eax)
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end54:
	.size	mclb_addNF14, .Lfunc_end54-mclb_addNF14
                                        # -- End function
	.globl	mclb_subNF14            # -- Begin function mclb_subNF14
	.p2align	4, 0x90
	.type	mclb_subNF14,@function
mclb_subNF14:                           # @mclb_subNF14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %eax
	movl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	80(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	sbbl	12(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %edi           # 4-byte Reload
	sbbl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	sbbl	40(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	40(%esp), %ebp          # 4-byte Reload
	sbbl	52(%eax), %ebp
	movl	72(%esp), %ebx
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	%esi, 8(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%ebx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%ebx)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%ebx)
	movl	%edx, 40(%ebx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%ebx)
	movl	%ecx, 48(%ebx)
	movl	%ebp, %eax
	movl	%ebp, 52(%ebx)
	shrl	$31, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end55:
	.size	mclb_subNF14, .Lfunc_end55-mclb_subNF14
                                        # -- End function
	.globl	mclb_add15              # -- Begin function mclb_add15
	.p2align	4, 0x90
	.type	mclb_add15,@function
mclb_add15:                             # @mclb_add15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	80(%esp), %ecx
	movl	56(%ecx), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	52(%ecx), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	48(%ecx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	44(%ecx), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	40(%ecx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	36(%ecx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	32(%ecx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	28(%ecx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	20(%ecx), %ebp
	movl	16(%ecx), %ebx
	movl	12(%ecx), %edi
	movl	8(%ecx), %esi
	movl	(%ecx), %edx
	movl	4(%ecx), %ecx
	movl	76(%esp), %eax
	addl	(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	adcl	4(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	44(%eax), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	52(%eax), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	72(%esp), %eax
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	%esi, 44(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 48(%eax)
	movl	%edx, 52(%eax)
	movl	%ecx, 56(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end56:
	.size	mclb_add15, .Lfunc_end56-mclb_add15
                                        # -- End function
	.globl	mclb_sub15              # -- Begin function mclb_sub15
	.p2align	4, 0x90
	.type	mclb_sub15,@function
mclb_sub15:                             # @mclb_sub15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	76(%esp), %eax
	movl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	32(%eax), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	80(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	sbbl	16(%eax), %ebx
	sbbl	20(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	sbbl	24(%eax), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %ebp          # 4-byte Reload
	sbbl	32(%eax), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	sbbl	48(%eax), %edx
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	72(%esp), %eax
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%edx, 48(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 52(%eax)
	movl	%ecx, 56(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end57:
	.size	mclb_sub15, .Lfunc_end57-mclb_sub15
                                        # -- End function
	.globl	mclb_addNF15            # -- Begin function mclb_addNF15
	.p2align	4, 0x90
	.type	mclb_addNF15,@function
mclb_addNF15:                           # @mclb_addNF15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	84(%esp), %eax
	movl	56(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	24(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	80(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	24(%eax), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	40(%eax), %esi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	48(%eax), %edx
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	76(%esp), %eax
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	%esi, 40(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 44(%eax)
	movl	%edx, 48(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 52(%eax)
	movl	%ecx, 56(%eax)
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end58:
	.size	mclb_addNF15, .Lfunc_end58-mclb_addNF15
                                        # -- End function
	.globl	mclb_subNF15            # -- Begin function mclb_subNF15
	.p2align	4, 0x90
	.type	mclb_subNF15,@function
mclb_subNF15:                           # @mclb_subNF15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	80(%esp), %eax
	movl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%eax), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	24(%eax), %ebp
	movl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	84(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	sbbl	12(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	8(%esp), %edi           # 4-byte Reload
	sbbl	20(%eax), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	sbbl	24(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	sbbl	28(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	44(%esp), %ebp          # 4-byte Reload
	sbbl	56(%eax), %ebp
	movl	76(%esp), %ebx
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	%esi, 8(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%ebx)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 32(%ebx)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%ebx)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 40(%ebx)
	movl	%edx, 44(%ebx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%ebx)
	movl	%ecx, 52(%ebx)
	movl	%ebp, %eax
	movl	%ebp, 56(%ebx)
	shrl	$31, %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end59:
	.size	mclb_subNF15, .Lfunc_end59-mclb_subNF15
                                        # -- End function
	.globl	mclb_add16              # -- Begin function mclb_add16
	.p2align	4, 0x90
	.type	mclb_add16,@function
mclb_add16:                             # @mclb_add16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	84(%esp), %ecx
	movl	60(%ecx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	56(%ecx), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	52(%ecx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	48(%ecx), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	44(%ecx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	40(%ecx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%ecx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	32(%ecx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	28(%ecx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	20(%ecx), %ebp
	movl	16(%ecx), %ebx
	movl	12(%ecx), %edi
	movl	8(%ecx), %esi
	movl	(%ecx), %edx
	movl	4(%ecx), %ecx
	movl	80(%esp), %eax
	addl	(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	adcl	4(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	76(%esp), %eax
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%esi, 48(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	%edx, 56(%eax)
	movl	%ecx, 60(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end60:
	.size	mclb_add16, .Lfunc_end60-mclb_add16
                                        # -- End function
	.globl	mclb_sub16              # -- Begin function mclb_sub16
	.p2align	4, 0x90
	.type	mclb_sub16,@function
mclb_sub16:                             # @mclb_sub16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	80(%esp), %eax
	movl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	84(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	sbbl	16(%eax), %ebx
	sbbl	20(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	sbbl	28(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	sbbl	36(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	sbbl	52(%eax), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	76(%esp), %eax
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, (%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 4(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 20(%eax)
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 40(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	%edx, 52(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%eax)
	movl	%ecx, 60(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end61:
	.size	mclb_sub16, .Lfunc_end61-mclb_sub16
                                        # -- End function
	.globl	mclb_addNF16            # -- Begin function mclb_addNF16
	.p2align	4, 0x90
	.type	mclb_addNF16,@function
mclb_addNF16:                           # @mclb_addNF16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	84(%esp), %ecx
	movl	60(%ecx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	56(%ecx), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	52(%ecx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	48(%ecx), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	44(%ecx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	40(%ecx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%ecx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	32(%ecx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	28(%ecx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	20(%ecx), %ebp
	movl	16(%ecx), %ebx
	movl	12(%ecx), %edi
	movl	8(%ecx), %esi
	movl	(%ecx), %edx
	movl	4(%ecx), %ecx
	movl	80(%esp), %eax
	addl	(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	adcl	4(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	76(%esp), %eax
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%esi, 48(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	%edx, 56(%eax)
	movl	%ecx, 60(%eax)
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end62:
	.size	mclb_addNF16, .Lfunc_end62-mclb_addNF16
                                        # -- End function
	.globl	mclb_subNF16            # -- Begin function mclb_subNF16
	.p2align	4, 0x90
	.type	mclb_subNF16,@function
mclb_subNF16:                           # @mclb_subNF16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	80(%esp), %edx
	movl	60(%edx), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	56(%edx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	52(%edx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	48(%edx), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	44(%edx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	40(%edx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	36(%edx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%edx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	28(%edx), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	24(%edx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	20(%edx), %ebp
	movl	16(%edx), %ebx
	movl	12(%edx), %edi
	movl	8(%edx), %esi
	movl	(%edx), %ecx
	movl	4(%edx), %edx
	movl	84(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	sbbl	16(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	sbbl	28(%eax), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	sbbl	32(%eax), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	sbbl	36(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	sbbl	40(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	sbbl	48(%eax), %edx
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	44(%esp), %ebx          # 4-byte Reload
	sbbl	60(%eax), %ebx
	movl	76(%esp), %esi
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, (%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%esi)
	movl	%edi, 12(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%esi)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%esi)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%esi)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%esi)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%esi)
	movl	%edx, 48(%esi)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 52(%esi)
	movl	%ecx, 56(%esi)
	movl	%ebx, %eax
	movl	%ebx, 60(%esi)
	shrl	$31, %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end63:
	.size	mclb_subNF16, .Lfunc_end63-mclb_subNF16
                                        # -- End function
	.globl	mclb_add17              # -- Begin function mclb_add17
	.p2align	4, 0x90
	.type	mclb_add17,@function
mclb_add17:                             # @mclb_add17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	92(%esp), %eax
	movl	64(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	88(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	32(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	84(%esp), %eax
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%esi, 48(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	%edx, 56(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end64:
	.size	mclb_add17, .Lfunc_end64-mclb_add17
                                        # -- End function
	.globl	mclb_sub17              # -- Begin function mclb_sub17
	.p2align	4, 0x90
	.type	mclb_sub17,@function
mclb_sub17:                             # @mclb_sub17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	movl	84(%esp), %eax
	movl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	88(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	sbbl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	sbbl	48(%eax), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	56(%eax), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	80(%esp), %eax
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%esi, 48(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	%edx, 56(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end65:
	.size	mclb_sub17, .Lfunc_end65-mclb_sub17
                                        # -- End function
	.globl	mclb_addNF17            # -- Begin function mclb_addNF17
	.p2align	4, 0x90
	.type	mclb_addNF17,@function
mclb_addNF17:                           # @mclb_addNF17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	movl	88(%esp), %eax
	movl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	84(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	80(%esp), %eax
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	%esi, 48(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	%edx, 56(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end66:
	.size	mclb_addNF17, .Lfunc_end66-mclb_addNF17
                                        # -- End function
	.globl	mclb_subNF17            # -- Begin function mclb_subNF17
	.p2align	4, 0x90
	.type	mclb_subNF17,@function
mclb_subNF17:                           # @mclb_subNF17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	movl	84(%esp), %eax
	movl	64(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	88(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	sbbl	12(%eax), %edi
	sbbl	16(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	sbbl	28(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	sbbl	36(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	52(%eax), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	48(%esp), %ebp          # 4-byte Reload
	sbbl	64(%eax), %ebp
	movl	80(%esp), %ebx
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	%esi, 8(%ebx)
	movl	%edi, 12(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%ebx)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 40(%ebx)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%ebx)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%ebx)
	movl	%edx, 52(%ebx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%ebx)
	movl	%ecx, 60(%ebx)
	movl	%ebp, %eax
	movl	%ebp, 64(%ebx)
	shrl	$31, %eax
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end67:
	.size	mclb_subNF17, .Lfunc_end67-mclb_subNF17
                                        # -- End function
	.globl	mclb_add18              # -- Begin function mclb_add18
	.p2align	4, 0x90
	.type	mclb_add18,@function
mclb_add18:                             # @mclb_add18
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	92(%esp), %eax
	movl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	88(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	52(%eax), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	60(%eax), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	84(%esp), %eax
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	%esi, 52(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 56(%eax)
	movl	%edx, 60(%eax)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%eax)
	movl	%ecx, 68(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end68:
	.size	mclb_add18, .Lfunc_end68-mclb_add18
                                        # -- End function
	.globl	mclb_sub18              # -- Begin function mclb_sub18
	.p2align	4, 0x90
	.type	mclb_sub18,@function
mclb_sub18:                             # @mclb_sub18
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$68, %esp
	movl	92(%esp), %eax
	movl	68(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	96(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %ebx          # 4-byte Reload
	sbbl	28(%eax), %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	sbbl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	sbbl	52(%eax), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	sbbl	60(%eax), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	88(%esp), %eax
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	%esi, 52(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 56(%eax)
	movl	%edx, 60(%eax)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%eax)
	movl	%ecx, 68(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$68, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end69:
	.size	mclb_sub18, .Lfunc_end69-mclb_sub18
                                        # -- End function
	.globl	mclb_addNF18            # -- Begin function mclb_addNF18
	.p2align	4, 0x90
	.type	mclb_addNF18,@function
mclb_addNF18:                           # @mclb_addNF18
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$68, %esp
	movl	96(%esp), %eax
	movl	68(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	92(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	28(%eax), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	36(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	52(%eax), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	60(%eax), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	88(%esp), %eax
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	%esi, 52(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 56(%eax)
	movl	%edx, 60(%eax)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%eax)
	movl	%ecx, 68(%eax)
	addl	$68, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end70:
	.size	mclb_addNF18, .Lfunc_end70-mclb_addNF18
                                        # -- End function
	.globl	mclb_subNF18            # -- Begin function mclb_subNF18
	.p2align	4, 0x90
	.type	mclb_subNF18,@function
mclb_subNF18:                           # @mclb_subNF18
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	88(%esp), %eax
	movl	68(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	92(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	sbbl	12(%eax), %edi
	sbbl	16(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	sbbl	32(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	sbbl	40(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	sbbl	56(%eax), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	52(%esp), %ebp          # 4-byte Reload
	sbbl	68(%eax), %ebp
	movl	84(%esp), %ebx
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	%esi, 8(%ebx)
	movl	%edi, 12(%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%ebx)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 44(%ebx)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%ebx)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%ebx)
	movl	%edx, 56(%ebx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%ebx)
	movl	%ecx, 64(%ebx)
	movl	%ebp, %eax
	movl	%ebp, 68(%ebx)
	shrl	$31, %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end71:
	.size	mclb_subNF18, .Lfunc_end71-mclb_subNF18
                                        # -- End function
	.globl	mclb_add19              # -- Begin function mclb_add19
	.p2align	4, 0x90
	.type	mclb_add19,@function
mclb_add19:                             # @mclb_add19
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	100(%esp), %eax
	movl	72(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	96(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	32(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	56(%eax), %esi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	64(%eax), %edx
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	92(%esp), %eax
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	%esi, 56(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%eax)
	movl	%edx, 64(%eax)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%eax)
	movl	%ecx, 72(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end72:
	.size	mclb_add19, .Lfunc_end72-mclb_add19
                                        # -- End function
	.globl	mclb_sub19              # -- Begin function mclb_sub19
	.p2align	4, 0x90
	.type	mclb_sub19,@function
mclb_sub19:                             # @mclb_sub19
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	96(%esp), %eax
	movl	72(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	100(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebx          # 4-byte Reload
	sbbl	32(%eax), %ebx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	sbbl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	92(%esp), %eax
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	%esi, 56(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%eax)
	movl	%edx, 64(%eax)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%eax)
	movl	%ecx, 72(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end73:
	.size	mclb_sub19, .Lfunc_end73-mclb_sub19
                                        # -- End function
	.globl	mclb_addNF19            # -- Begin function mclb_addNF19
	.p2align	4, 0x90
	.type	mclb_addNF19,@function
mclb_addNF19:                           # @mclb_addNF19
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	100(%esp), %eax
	movl	72(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	96(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	32(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	40(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	56(%eax), %esi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	64(%eax), %edx
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	92(%esp), %eax
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	%esi, 56(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%eax)
	movl	%edx, 64(%eax)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%eax)
	movl	%ecx, 72(%eax)
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end74:
	.size	mclb_addNF19, .Lfunc_end74-mclb_addNF19
                                        # -- End function
	.globl	mclb_subNF19            # -- Begin function mclb_subNF19
	.p2align	4, 0x90
	.type	mclb_subNF19,@function
mclb_subNF19:                           # @mclb_subNF19
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	96(%esp), %eax
	movl	72(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	100(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	sbbl	12(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	sbbl	28(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	sbbl	36(%eax), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	sbbl	60(%eax), %edx
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	60(%esp), %ebp          # 4-byte Reload
	sbbl	72(%eax), %ebp
	movl	92(%esp), %ebx
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	%esi, 8(%ebx)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 28(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%ebx)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 48(%ebx)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%ebx)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%ebx)
	movl	%edx, 60(%ebx)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%ebx)
	movl	%ecx, 68(%ebx)
	movl	%ebp, %eax
	movl	%ebp, 72(%ebx)
	shrl	$31, %eax
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end75:
	.size	mclb_subNF19, .Lfunc_end75-mclb_subNF19
                                        # -- End function
	.globl	mclb_add20              # -- Begin function mclb_add20
	.p2align	4, 0x90
	.type	mclb_add20,@function
mclb_add20:                             # @mclb_add20
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	movl	104(%esp), %eax
	movl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	100(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	36(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	60(%eax), %esi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	68(%eax), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	96(%esp), %eax
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%eax)
	movl	%esi, 60(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%eax)
	movl	%edx, 68(%eax)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%eax)
	movl	%ecx, 76(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end76:
	.size	mclb_add20, .Lfunc_end76-mclb_add20
                                        # -- End function
	.globl	mclb_sub20              # -- Begin function mclb_sub20
	.p2align	4, 0x90
	.type	mclb_sub20,@function
mclb_sub20:                             # @mclb_sub20
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	movl	100(%esp), %eax
	movl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	104(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebx          # 4-byte Reload
	sbbl	36(%eax), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	sbbl	60(%eax), %esi
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	sbbl	68(%eax), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	96(%esp), %eax
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	%esi, 60(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%eax)
	movl	%edx, 68(%eax)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%eax)
	movl	%ecx, 76(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end77:
	.size	mclb_sub20, .Lfunc_end77-mclb_sub20
                                        # -- End function
	.globl	mclb_addNF20            # -- Begin function mclb_addNF20
	.p2align	4, 0x90
	.type	mclb_addNF20,@function
mclb_addNF20:                           # @mclb_addNF20
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	movl	104(%esp), %eax
	movl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	100(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	36(%eax), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	44(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	60(%eax), %esi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	68(%eax), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	96(%esp), %eax
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%eax)
	movl	%esi, 60(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%eax)
	movl	%edx, 68(%eax)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%eax)
	movl	%ecx, 76(%eax)
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end78:
	.size	mclb_addNF20, .Lfunc_end78-mclb_addNF20
                                        # -- End function
	.globl	mclb_subNF20            # -- Begin function mclb_subNF20
	.p2align	4, 0x90
	.type	mclb_subNF20,@function
mclb_subNF20:                           # @mclb_subNF20
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	104(%esp), %eax
	movl	76(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	108(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %ebx          # 4-byte Reload
	sbbl	32(%eax), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	sbbl	40(%eax), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	16(%esp), %edi          # 4-byte Reload
	sbbl	76(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	100(%esp), %ebp
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%ebp)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%ebp)
	movl	%esi, 56(%ebp)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%ebp)
	movl	%edx, 64(%ebp)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%ebp)
	movl	%ecx, 72(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 76(%ebp)
	shrl	$31, %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end79:
	.size	mclb_subNF20, .Lfunc_end79-mclb_subNF20
                                        # -- End function
	.globl	mclb_add21              # -- Begin function mclb_add21
	.p2align	4, 0x90
	.type	mclb_add21,@function
mclb_add21:                             # @mclb_add21
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	108(%esp), %eax
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	104(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	40(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	adcl	64(%eax), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	72(%eax), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	100(%esp), %eax
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 60(%eax)
	movl	%esi, 64(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%eax)
	movl	%edx, 72(%eax)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%eax)
	movl	%ecx, 80(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end80:
	.size	mclb_add21, .Lfunc_end80-mclb_add21
                                        # -- End function
	.globl	mclb_sub21              # -- Begin function mclb_sub21
	.p2align	4, 0x90
	.type	mclb_sub21,@function
mclb_sub21:                             # @mclb_sub21
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	104(%esp), %eax
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	108(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %ebx          # 4-byte Reload
	sbbl	32(%eax), %ebx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	sbbl	40(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	sbbl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	sbbl	64(%eax), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	sbbl	72(%eax), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	100(%esp), %eax
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	%esi, 64(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%eax)
	movl	%edx, 72(%eax)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%eax)
	movl	%ecx, 80(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end81:
	.size	mclb_sub21, .Lfunc_end81-mclb_sub21
                                        # -- End function
	.globl	mclb_addNF21            # -- Begin function mclb_addNF21
	.p2align	4, 0x90
	.type	mclb_addNF21,@function
mclb_addNF21:                           # @mclb_addNF21
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	108(%esp), %eax
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	104(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	40(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	48(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	adcl	64(%eax), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	72(%eax), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	100(%esp), %eax
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 60(%eax)
	movl	%esi, 64(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%eax)
	movl	%edx, 72(%eax)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%eax)
	movl	%ecx, 80(%eax)
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end82:
	.size	mclb_addNF21, .Lfunc_end82-mclb_addNF21
                                        # -- End function
	.globl	mclb_subNF21            # -- Begin function mclb_subNF21
	.p2align	4, 0x90
	.type	mclb_subNF21,@function
mclb_subNF21:                           # @mclb_subNF21
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	108(%esp), %eax
	movl	80(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	112(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	sbbl	36(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	sbbl	44(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	sbbl	60(%eax), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	sbbl	68(%eax), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	20(%esp), %edi          # 4-byte Reload
	sbbl	80(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	104(%esp), %ebp
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebp)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%ebp)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%ebp)
	movl	%esi, 60(%ebp)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%ebp)
	movl	%edx, 68(%ebp)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%ebp)
	movl	%ecx, 76(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 80(%ebp)
	shrl	$31, %eax
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end83:
	.size	mclb_subNF21, .Lfunc_end83-mclb_subNF21
                                        # -- End function
	.globl	mclb_add22              # -- Begin function mclb_add22
	.p2align	4, 0x90
	.type	mclb_add22,@function
mclb_add22:                             # @mclb_add22
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	112(%esp), %eax
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	108(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	adcl	20(%eax), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	36(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	44(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	52(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	104(%esp), %eax
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	%ebx, 16(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 60(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 64(%eax)
	movl	%esi, 68(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 72(%eax)
	movl	%edx, 76(%eax)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%eax)
	movl	%ecx, 84(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end84:
	.size	mclb_add22, .Lfunc_end84-mclb_add22
                                        # -- End function
	.globl	mclb_sub22              # -- Begin function mclb_sub22
	.p2align	4, 0x90
	.type	mclb_sub22,@function
mclb_sub22:                             # @mclb_sub22
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	108(%esp), %eax
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	112(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %ebx          # 4-byte Reload
	sbbl	36(%eax), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	sbbl	44(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	sbbl	52(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	sbbl	68(%eax), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	sbbl	76(%eax), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	104(%esp), %eax
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	%esi, 68(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 72(%eax)
	movl	%edx, 76(%eax)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%eax)
	movl	%ecx, 84(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end85:
	.size	mclb_sub22, .Lfunc_end85-mclb_sub22
                                        # -- End function
	.globl	mclb_addNF22            # -- Begin function mclb_addNF22
	.p2align	4, 0x90
	.type	mclb_addNF22,@function
mclb_addNF22:                           # @mclb_addNF22
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	112(%esp), %eax
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	108(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	36(%eax), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	44(%eax), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	68(%esp), %edi          # 4-byte Reload
	adcl	60(%eax), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	104(%esp), %eax
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	%edi, 60(%eax)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 64(%eax)
	movl	%esi, 68(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 72(%eax)
	movl	%edx, 76(%eax)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%eax)
	movl	%ecx, 84(%eax)
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end86:
	.size	mclb_addNF22, .Lfunc_end86-mclb_addNF22
                                        # -- End function
	.globl	mclb_subNF22            # -- Begin function mclb_subNF22
	.p2align	4, 0x90
	.type	mclb_subNF22,@function
mclb_subNF22:                           # @mclb_subNF22
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	108(%esp), %eax
	movl	84(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	112(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	sbbl	20(%eax), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	sbbl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	sbbl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	sbbl	64(%eax), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	sbbl	72(%eax), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	20(%esp), %edi          # 4-byte Reload
	sbbl	84(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	104(%esp), %ebp
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	%ebx, 16(%ebp)
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%ebp)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%ebp)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%ebp)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%ebp)
	movl	%esi, 64(%ebp)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%ebp)
	movl	%edx, 72(%ebp)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%ebp)
	movl	%ecx, 80(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 84(%ebp)
	shrl	$31, %eax
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end87:
	.size	mclb_subNF22, .Lfunc_end87-mclb_subNF22
                                        # -- End function
	.globl	mclb_add23              # -- Begin function mclb_add23
	.p2align	4, 0x90
	.type	mclb_add23,@function
mclb_add23:                             # @mclb_add23
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$88, %esp
	movl	116(%esp), %eax
	movl	88(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	112(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	64(%eax), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	76(%esp), %esi          # 4-byte Reload
	adcl	72(%eax), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	80(%esp), %edx          # 4-byte Reload
	adcl	80(%eax), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	84(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	108(%esp), %eax
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	%edi, 64(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 68(%eax)
	movl	%esi, 72(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 76(%eax)
	movl	%edx, 80(%eax)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 84(%eax)
	movl	%ecx, 88(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$88, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end88:
	.size	mclb_add23, .Lfunc_end88-mclb_add23
                                        # -- End function
	.globl	mclb_sub23              # -- Begin function mclb_sub23
	.p2align	4, 0x90
	.type	mclb_sub23,@function
mclb_sub23:                             # @mclb_sub23
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$88, %esp
	movl	112(%esp), %eax
	movl	88(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	116(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 56(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	sbbl	40(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	sbbl	48(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	sbbl	56(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	76(%esp), %esi          # 4-byte Reload
	sbbl	72(%eax), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	80(%esp), %edx          # 4-byte Reload
	sbbl	80(%eax), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	108(%esp), %eax
	movl	72(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	%esi, 72(%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 76(%eax)
	movl	%edx, 80(%eax)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 84(%eax)
	movl	%ecx, 88(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$88, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end89:
	.size	mclb_sub23, .Lfunc_end89-mclb_sub23
                                        # -- End function
	.globl	mclb_addNF23            # -- Begin function mclb_addNF23
	.p2align	4, 0x90
	.type	mclb_addNF23,@function
mclb_addNF23:                           # @mclb_addNF23
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$88, %esp
	movl	116(%esp), %eax
	movl	88(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	112(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	40(%eax), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	48(%eax), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	64(%eax), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	76(%esp), %esi          # 4-byte Reload
	adcl	72(%eax), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	80(%esp), %edx          # 4-byte Reload
	adcl	80(%eax), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	84(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	108(%esp), %eax
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	%edi, 64(%eax)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 68(%eax)
	movl	%esi, 72(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 76(%eax)
	movl	%edx, 80(%eax)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 84(%eax)
	movl	%ecx, 88(%eax)
	addl	$88, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end90:
	.size	mclb_addNF23, .Lfunc_end90-mclb_addNF23
                                        # -- End function
	.globl	mclb_subNF23            # -- Begin function mclb_subNF23
	.p2align	4, 0x90
	.type	mclb_subNF23,@function
mclb_subNF23:                           # @mclb_subNF23
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	movl	116(%esp), %eax
	movl	88(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	120(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	sbbl	36(%eax), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	sbbl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	sbbl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	80(%esp), %esi          # 4-byte Reload
	sbbl	68(%eax), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	84(%esp), %edx          # 4-byte Reload
	sbbl	76(%eax), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	88(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	20(%esp), %edi          # 4-byte Reload
	sbbl	88(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	112(%esp), %ebp
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebp)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%ebp)
	movl	24(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%ebp)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%ebp)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%ebp)
	movl	%esi, 68(%ebp)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 72(%ebp)
	movl	%edx, 76(%ebp)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%ebp)
	movl	%ecx, 84(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 88(%ebp)
	shrl	$31, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end91:
	.size	mclb_subNF23, .Lfunc_end91-mclb_subNF23
                                        # -- End function
	.globl	mclb_add24              # -- Begin function mclb_add24
	.p2align	4, 0x90
	.type	mclb_add24,@function
mclb_add24:                             # @mclb_add24
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	movl	120(%esp), %eax
	movl	92(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	116(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 56(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	68(%eax), %edi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	80(%esp), %esi          # 4-byte Reload
	adcl	76(%eax), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	84(%esp), %edx          # 4-byte Reload
	adcl	84(%eax), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	88(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	112(%esp), %eax
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	%edi, 68(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 72(%eax)
	movl	%esi, 76(%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%eax)
	movl	%edx, 84(%eax)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 88(%eax)
	movl	%ecx, 92(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end92:
	.size	mclb_add24, .Lfunc_end92-mclb_add24
                                        # -- End function
	.globl	mclb_sub24              # -- Begin function mclb_sub24
	.p2align	4, 0x90
	.type	mclb_sub24,@function
mclb_sub24:                             # @mclb_sub24
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	movl	116(%esp), %eax
	movl	92(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	120(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ebx          # 4-byte Reload
	sbbl	44(%eax), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	sbbl	52(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	sbbl	60(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	80(%esp), %esi          # 4-byte Reload
	sbbl	76(%eax), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	84(%esp), %edx          # 4-byte Reload
	sbbl	84(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	112(%esp), %eax
	movl	76(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	72(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	%esi, 76(%eax)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%eax)
	movl	%edx, 84(%eax)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 88(%eax)
	movl	%ecx, 92(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end93:
	.size	mclb_sub24, .Lfunc_end93-mclb_sub24
                                        # -- End function
	.globl	mclb_addNF24            # -- Begin function mclb_addNF24
	.p2align	4, 0x90
	.type	mclb_addNF24,@function
mclb_addNF24:                           # @mclb_addNF24
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	movl	120(%esp), %eax
	movl	92(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	116(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 56(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	44(%eax), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	52(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	68(%eax), %edi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	80(%esp), %esi          # 4-byte Reload
	adcl	76(%eax), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	84(%esp), %edx          # 4-byte Reload
	adcl	84(%eax), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	88(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	112(%esp), %eax
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	%edi, 68(%eax)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 72(%eax)
	movl	%esi, 76(%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%eax)
	movl	%edx, 84(%eax)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 88(%eax)
	movl	%ecx, 92(%eax)
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end94:
	.size	mclb_addNF24, .Lfunc_end94-mclb_addNF24
                                        # -- End function
	.globl	mclb_subNF24            # -- Begin function mclb_subNF24
	.p2align	4, 0x90
	.type	mclb_subNF24,@function
mclb_subNF24:                           # @mclb_subNF24
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	120(%esp), %eax
	movl	92(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	124(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 72(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 64(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ebx          # 4-byte Reload
	sbbl	40(%eax), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	sbbl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	sbbl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	84(%esp), %esi          # 4-byte Reload
	sbbl	72(%eax), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	88(%esp), %edx          # 4-byte Reload
	sbbl	80(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	92(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	24(%esp), %edi          # 4-byte Reload
	sbbl	92(%eax), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	116(%esp), %ebp
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%ebp)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%ebp)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 60(%ebp)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%ebp)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%ebp)
	movl	%esi, 72(%ebp)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 76(%ebp)
	movl	%edx, 80(%ebp)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 84(%ebp)
	movl	%ecx, 88(%ebp)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 92(%ebp)
	shrl	$31, %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end95:
	.size	mclb_subNF24, .Lfunc_end95-mclb_subNF24
                                        # -- End function
	.globl	mclb_add25              # -- Begin function mclb_add25
	.p2align	4, 0x90
	.type	mclb_add25,@function
mclb_add25:                             # @mclb_add25
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	124(%esp), %eax
	movl	96(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	120(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	80(%esp), %edi          # 4-byte Reload
	adcl	72(%eax), %edi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	84(%esp), %esi          # 4-byte Reload
	adcl	80(%eax), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	88(%esp), %edx          # 4-byte Reload
	adcl	88(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	92(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	116(%esp), %eax
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	%edi, 72(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 76(%eax)
	movl	%esi, 80(%eax)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%eax)
	movl	%edx, 88(%eax)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 92(%eax)
	movl	%ecx, 96(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end96:
	.size	mclb_add25, .Lfunc_end96-mclb_add25
                                        # -- End function
	.globl	mclb_sub25              # -- Begin function mclb_sub25
	.p2align	4, 0x90
	.type	mclb_sub25,@function
mclb_sub25:                             # @mclb_sub25
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$100, %esp
	movl	124(%esp), %eax
	movl	96(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	128(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	sbbl	40(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	sbbl	48(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	88(%esp), %esi          # 4-byte Reload
	sbbl	80(%eax), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	92(%esp), %edx          # 4-byte Reload
	sbbl	88(%eax), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	96(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	120(%esp), %eax
	movl	84(%esp), %edi          # 4-byte Reload
	movl	%edi, (%eax)
	movl	80(%esp), %edi          # 4-byte Reload
	movl	%edi, 4(%eax)
	movl	76(%esp), %edi          # 4-byte Reload
	movl	%edi, 8(%eax)
	movl	72(%esp), %edi          # 4-byte Reload
	movl	%edi, 12(%eax)
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 16(%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	(%esp), %edi            # 4-byte Reload
	movl	%edi, 24(%eax)
	movl	4(%esp), %edi           # 4-byte Reload
	movl	%edi, 28(%eax)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 32(%eax)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 44(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	%esi, 80(%eax)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%eax)
	movl	%edx, 88(%eax)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 92(%eax)
	movl	%ecx, 96(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end97:
	.size	mclb_sub25, .Lfunc_end97-mclb_sub25
                                        # -- End function
	.globl	mclb_addNF25            # -- Begin function mclb_addNF25
	.p2align	4, 0x90
	.type	mclb_addNF25,@function
mclb_addNF25:                           # @mclb_addNF25
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	124(%esp), %eax
	movl	96(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	120(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	40(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	48(%eax), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	56(%eax), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	80(%esp), %edi          # 4-byte Reload
	adcl	72(%eax), %edi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	84(%esp), %esi          # 4-byte Reload
	adcl	80(%eax), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	88(%esp), %edx          # 4-byte Reload
	adcl	88(%eax), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	92(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	116(%esp), %eax
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	%edi, 72(%eax)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 76(%eax)
	movl	%esi, 80(%eax)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%eax)
	movl	%edx, 88(%eax)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 92(%eax)
	movl	%ecx, 96(%eax)
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end98:
	.size	mclb_addNF25, .Lfunc_end98-mclb_addNF25
                                        # -- End function
	.globl	mclb_subNF25            # -- Begin function mclb_subNF25
	.p2align	4, 0x90
	.type	mclb_subNF25,@function
mclb_subNF25:                           # @mclb_subNF25
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$100, %esp
	movl	124(%esp), %eax
	movl	96(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	128(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	sbbl	44(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	sbbl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	88(%esp), %esi          # 4-byte Reload
	sbbl	76(%eax), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	92(%esp), %edx          # 4-byte Reload
	sbbl	84(%eax), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	96(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	28(%esp), %edi          # 4-byte Reload
	sbbl	96(%eax), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	120(%esp), %ebp
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	64(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebp)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%ebp)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%ebp)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%ebp)
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 64(%ebp)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%ebp)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%ebp)
	movl	%esi, 76(%ebp)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%ebp)
	movl	%edx, 84(%ebp)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 88(%ebp)
	movl	%ecx, 92(%ebp)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 96(%ebp)
	shrl	$31, %eax
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end99:
	.size	mclb_subNF25, .Lfunc_end99-mclb_subNF25
                                        # -- End function
	.globl	mclb_add26              # -- Begin function mclb_add26
	.p2align	4, 0x90
	.type	mclb_add26,@function
mclb_add26:                             # @mclb_add26
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$100, %esp
	movl	128(%esp), %eax
	movl	100(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	124(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 72(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 64(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	adcl	44(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	84(%esp), %edi          # 4-byte Reload
	adcl	76(%eax), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	88(%esp), %esi          # 4-byte Reload
	adcl	84(%eax), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	92(%esp), %edx          # 4-byte Reload
	adcl	92(%eax), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	96(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	120(%esp), %eax
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	%edi, 76(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 80(%eax)
	movl	%esi, 84(%eax)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%eax)
	movl	%edx, 92(%eax)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%eax)
	movl	%ecx, 100(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end100:
	.size	mclb_add26, .Lfunc_end100-mclb_add26
                                        # -- End function
	.globl	mclb_sub26              # -- Begin function mclb_sub26
	.p2align	4, 0x90
	.type	mclb_sub26,@function
mclb_sub26:                             # @mclb_sub26
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	128(%esp), %eax
	movl	100(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	132(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	sbbl	44(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	sbbl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	88(%esp), %edi          # 4-byte Reload
	sbbl	76(%eax), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	sbbl	84(%eax), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	sbbl	92(%eax), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	124(%esp), %eax
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	%edi, 76(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 80(%eax)
	movl	%esi, 84(%eax)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%eax)
	movl	%edx, 92(%eax)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%eax)
	movl	%ecx, 100(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end101:
	.size	mclb_sub26, .Lfunc_end101-mclb_sub26
                                        # -- End function
	.globl	mclb_addNF26            # -- Begin function mclb_addNF26
	.p2align	4, 0x90
	.type	mclb_addNF26,@function
mclb_addNF26:                           # @mclb_addNF26
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$100, %esp
	movl	128(%esp), %eax
	movl	100(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	124(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 72(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 64(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	44(%eax), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	52(%eax), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	60(%eax), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	84(%esp), %edi          # 4-byte Reload
	adcl	76(%eax), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	88(%esp), %esi          # 4-byte Reload
	adcl	84(%eax), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	92(%esp), %edx          # 4-byte Reload
	adcl	92(%eax), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	96(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	120(%esp), %eax
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	%edi, 76(%eax)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 80(%eax)
	movl	%esi, 84(%eax)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%eax)
	movl	%edx, 92(%eax)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%eax)
	movl	%ecx, 100(%eax)
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end102:
	.size	mclb_addNF26, .Lfunc_end102-mclb_addNF26
                                        # -- End function
	.globl	mclb_subNF26            # -- Begin function mclb_subNF26
	.p2align	4, 0x90
	.type	mclb_subNF26,@function
mclb_subNF26:                           # @mclb_subNF26
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	128(%esp), %eax
	movl	100(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	132(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	sbbl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	sbbl	80(%eax), %esi
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	sbbl	88(%eax), %edx
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	32(%esp), %edi          # 4-byte Reload
	sbbl	100(%eax), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	124(%esp), %ebp
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebp)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebp)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebp)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebp)
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%ebp)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%ebp)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%ebp)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ebp)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%ebp)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 68(%ebp)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%ebp)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%ebp)
	movl	%esi, 80(%ebp)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%ebp)
	movl	%edx, 88(%ebp)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 92(%ebp)
	movl	%ecx, 96(%ebp)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 100(%ebp)
	shrl	$31, %eax
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end103:
	.size	mclb_subNF26, .Lfunc_end103-mclb_subNF26
                                        # -- End function
	.globl	mclb_add27              # -- Begin function mclb_add27
	.p2align	4, 0x90
	.type	mclb_add27,@function
mclb_add27:                             # @mclb_add27
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	132(%esp), %eax
	movl	104(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	128(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	88(%esp), %edi          # 4-byte Reload
	adcl	80(%eax), %edi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	adcl	88(%eax), %esi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	adcl	96(%eax), %edx
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	124(%esp), %eax
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	%edi, 80(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 84(%eax)
	movl	%esi, 88(%eax)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 92(%eax)
	movl	%edx, 96(%eax)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 100(%eax)
	movl	%ecx, 104(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end104:
	.size	mclb_add27, .Lfunc_end104-mclb_add27
                                        # -- End function
	.globl	mclb_sub27              # -- Begin function mclb_sub27
	.p2align	4, 0x90
	.type	mclb_sub27,@function
mclb_sub27:                             # @mclb_sub27
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	128(%esp), %eax
	movl	104(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	132(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	sbbl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	88(%esp), %edi          # 4-byte Reload
	sbbl	80(%eax), %edi
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	sbbl	88(%eax), %esi
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	sbbl	96(%eax), %edx
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	124(%esp), %eax
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	%edi, 80(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 84(%eax)
	movl	%esi, 88(%eax)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 92(%eax)
	movl	%edx, 96(%eax)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 100(%eax)
	movl	%ecx, 104(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end105:
	.size	mclb_sub27, .Lfunc_end105-mclb_sub27
                                        # -- End function
	.globl	mclb_addNF27            # -- Begin function mclb_addNF27
	.p2align	4, 0x90
	.type	mclb_addNF27,@function
mclb_addNF27:                           # @mclb_addNF27
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	132(%esp), %eax
	movl	104(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	128(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 80(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	48(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	56(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	64(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	88(%esp), %edi          # 4-byte Reload
	adcl	80(%eax), %edi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	adcl	88(%eax), %esi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	adcl	96(%eax), %edx
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	124(%esp), %eax
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	%edi, 80(%eax)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 84(%eax)
	movl	%esi, 88(%eax)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 92(%eax)
	movl	%edx, 96(%eax)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 100(%eax)
	movl	%ecx, 104(%eax)
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end106:
	.size	mclb_addNF27, .Lfunc_end106-mclb_addNF27
                                        # -- End function
	.globl	mclb_subNF27            # -- Begin function mclb_subNF27
	.p2align	4, 0x90
	.type	mclb_subNF27,@function
mclb_subNF27:                           # @mclb_subNF27
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	132(%esp), %eax
	movl	104(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	136(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	sbbl	44(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	sbbl	52(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	sbbl	60(%eax), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	sbbl	68(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	92(%esp), %esi          # 4-byte Reload
	sbbl	84(%eax), %esi
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %edx          # 4-byte Reload
	sbbl	92(%eax), %edx
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	104(%esp), %ecx         # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	100(%esp), %ebp         # 4-byte Reload
	sbbl	104(%eax), %ebp
	movl	128(%esp), %edi
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, (%edi)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%edi)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%edi)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%edi)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%edi)
	movl	68(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%edi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%edi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%edi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%edi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%edi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%edi)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%edi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%edi)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%edi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%edi)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%edi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 64(%edi)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%edi)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%edi)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%edi)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%edi)
	movl	%esi, 84(%edi)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%edi)
	movl	%edx, 92(%edi)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%edi)
	movl	%ecx, 100(%edi)
	movl	%ebp, %eax
	movl	%ebp, 104(%edi)
	shrl	$31, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end107:
	.size	mclb_subNF27, .Lfunc_end107-mclb_subNF27
                                        # -- End function
	.globl	mclb_add28              # -- Begin function mclb_add28
	.p2align	4, 0x90
	.type	mclb_add28,@function
mclb_add28:                             # @mclb_add28
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	136(%esp), %eax
	movl	108(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	132(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	92(%esp), %edi          # 4-byte Reload
	adcl	84(%eax), %edi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	96(%esp), %esi          # 4-byte Reload
	adcl	92(%eax), %esi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	100(%esp), %edx         # 4-byte Reload
	adcl	100(%eax), %edx
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	104(%esp), %ecx         # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	128(%esp), %eax
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	%edi, 84(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 88(%eax)
	movl	%esi, 92(%eax)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, 96(%eax)
	movl	%edx, 100(%eax)
	movl	64(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%eax)
	movl	%ecx, 108(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end108:
	.size	mclb_add28, .Lfunc_end108-mclb_add28
                                        # -- End function
	.globl	mclb_sub28              # -- Begin function mclb_sub28
	.p2align	4, 0x90
	.type	mclb_sub28,@function
mclb_sub28:                             # @mclb_sub28
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	136(%esp), %eax
	movl	108(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	140(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 88(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 84(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 80(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 76(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 72(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	sbbl	36(%eax), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	sbbl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	sbbl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	sbbl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	96(%esp), %edi          # 4-byte Reload
	sbbl	84(%eax), %edi
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	100(%esp), %esi         # 4-byte Reload
	sbbl	92(%eax), %esi
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	104(%esp), %edx         # 4-byte Reload
	sbbl	100(%eax), %edx
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	108(%esp), %ecx         # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	132(%esp), %eax
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	%edi, 84(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 88(%eax)
	movl	%esi, 92(%eax)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, 96(%eax)
	movl	%edx, 100(%eax)
	movl	64(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%eax)
	movl	%ecx, 108(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end109:
	.size	mclb_sub28, .Lfunc_end109-mclb_sub28
                                        # -- End function
	.globl	mclb_addNF28            # -- Begin function mclb_addNF28
	.p2align	4, 0x90
	.type	mclb_addNF28,@function
mclb_addNF28:                           # @mclb_addNF28
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	136(%esp), %eax
	movl	108(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	132(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	52(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	60(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	68(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	92(%esp), %edi          # 4-byte Reload
	adcl	84(%eax), %edi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	96(%esp), %esi          # 4-byte Reload
	adcl	92(%eax), %esi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	100(%esp), %edx         # 4-byte Reload
	adcl	100(%eax), %edx
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	104(%esp), %ecx         # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	128(%esp), %eax
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	%edi, 84(%eax)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 88(%eax)
	movl	%esi, 92(%eax)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, 96(%eax)
	movl	%edx, 100(%eax)
	movl	64(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%eax)
	movl	%ecx, 108(%eax)
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end110:
	.size	mclb_addNF28, .Lfunc_end110-mclb_addNF28
                                        # -- End function
	.globl	mclb_subNF28            # -- Begin function mclb_subNF28
	.p2align	4, 0x90
	.type	mclb_subNF28,@function
mclb_subNF28:                           # @mclb_subNF28
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	132(%esp), %eax
	movl	108(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	136(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 84(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	sbbl	48(%eax), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	sbbl	56(%eax), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	sbbl	64(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	92(%esp), %edi          # 4-byte Reload
	sbbl	80(%eax), %edi
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	96(%esp), %esi          # 4-byte Reload
	sbbl	88(%eax), %esi
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	100(%esp), %edx         # 4-byte Reload
	sbbl	96(%eax), %edx
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	104(%esp), %ecx         # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	36(%esp), %ebx          # 4-byte Reload
	sbbl	108(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	128(%esp), %ebx
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	%ebp, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebx)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%ebx)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ebx)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 68(%ebx)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%ebx)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ebx)
	movl	%edi, 80(%ebx)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 84(%ebx)
	movl	%esi, 88(%ebx)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, 92(%ebx)
	movl	%edx, 96(%ebx)
	movl	64(%esp), %edx          # 4-byte Reload
	movl	%edx, 100(%ebx)
	movl	%ecx, 104(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 108(%ebx)
	shrl	$31, %eax
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end111:
	.size	mclb_subNF28, .Lfunc_end111-mclb_subNF28
                                        # -- End function
	.globl	mclb_add29              # -- Begin function mclb_add29
	.p2align	4, 0x90
	.type	mclb_add29,@function
mclb_add29:                             # @mclb_add29
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	140(%esp), %eax
	movl	112(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	136(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 88(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 84(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 80(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 76(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	96(%esp), %edi          # 4-byte Reload
	adcl	88(%eax), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	100(%esp), %esi         # 4-byte Reload
	adcl	96(%eax), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	104(%esp), %edx         # 4-byte Reload
	adcl	104(%eax), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%esp), %ecx         # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	132(%esp), %eax
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 84(%eax)
	movl	%edi, 88(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 92(%eax)
	movl	%esi, 96(%eax)
	movl	60(%esp), %esi          # 4-byte Reload
	movl	%esi, 100(%eax)
	movl	%edx, 104(%eax)
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%eax)
	movl	%ecx, 112(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end112:
	.size	mclb_add29, .Lfunc_end112-mclb_add29
                                        # -- End function
	.globl	mclb_sub29              # -- Begin function mclb_sub29
	.p2align	4, 0x90
	.type	mclb_sub29,@function
mclb_sub29:                             # @mclb_sub29
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$116, %esp
	movl	140(%esp), %eax
	movl	112(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	144(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 92(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 88(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 84(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 80(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 76(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	sbbl	48(%eax), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	sbbl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	sbbl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	sbbl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	100(%esp), %edi         # 4-byte Reload
	sbbl	88(%eax), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	104(%esp), %esi         # 4-byte Reload
	sbbl	96(%eax), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	108(%esp), %edx         # 4-byte Reload
	sbbl	104(%eax), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	112(%esp), %ecx         # 4-byte Reload
	sbbl	112(%eax), %ecx
	movl	136(%esp), %eax
	movl	96(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	%edi, 88(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 92(%eax)
	movl	%esi, 96(%eax)
	movl	60(%esp), %esi          # 4-byte Reload
	movl	%esi, 100(%eax)
	movl	%edx, 104(%eax)
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%eax)
	movl	%ecx, 112(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$116, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end113:
	.size	mclb_sub29, .Lfunc_end113-mclb_sub29
                                        # -- End function
	.globl	mclb_addNF29            # -- Begin function mclb_addNF29
	.p2align	4, 0x90
	.type	mclb_addNF29,@function
mclb_addNF29:                           # @mclb_addNF29
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	140(%esp), %eax
	movl	112(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	136(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 88(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 84(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 80(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 76(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	48(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	56(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	64(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	72(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	96(%esp), %edi          # 4-byte Reload
	adcl	88(%eax), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	100(%esp), %esi         # 4-byte Reload
	adcl	96(%eax), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	104(%esp), %edx         # 4-byte Reload
	adcl	104(%eax), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%esp), %ecx         # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	132(%esp), %eax
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 84(%eax)
	movl	%edi, 88(%eax)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 92(%eax)
	movl	%esi, 96(%eax)
	movl	60(%esp), %esi          # 4-byte Reload
	movl	%esi, 100(%eax)
	movl	%edx, 104(%eax)
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%eax)
	movl	%ecx, 112(%eax)
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end114:
	.size	mclb_addNF29, .Lfunc_end114-mclb_addNF29
                                        # -- End function
	.globl	mclb_subNF29            # -- Begin function mclb_subNF29
	.p2align	4, 0x90
	.type	mclb_subNF29,@function
mclb_subNF29:                           # @mclb_subNF29
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	136(%esp), %eax
	movl	112(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	140(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 88(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 84(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 80(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 76(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	sbbl	52(%eax), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	sbbl	60(%eax), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	sbbl	68(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	96(%esp), %edi          # 4-byte Reload
	sbbl	84(%eax), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	100(%esp), %esi         # 4-byte Reload
	sbbl	92(%eax), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	104(%esp), %edx         # 4-byte Reload
	sbbl	100(%eax), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%esp), %ecx         # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	40(%esp), %ebx          # 4-byte Reload
	sbbl	112(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	132(%esp), %ebx
	movl	92(%esp), %eax          # 4-byte Reload
	movl	%eax, (%ebx)
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	%ebp, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%ebx)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 64(%ebx)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 72(%ebx)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ebx)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%ebx)
	movl	%edi, 84(%ebx)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 88(%ebx)
	movl	%esi, 92(%ebx)
	movl	60(%esp), %esi          # 4-byte Reload
	movl	%esi, 96(%ebx)
	movl	%edx, 100(%ebx)
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%ebx)
	movl	%ecx, 108(%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 112(%ebx)
	shrl	$31, %eax
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end115:
	.size	mclb_subNF29, .Lfunc_end115-mclb_subNF29
                                        # -- End function
	.globl	mclb_add30              # -- Begin function mclb_add30
	.p2align	4, 0x90
	.type	mclb_add30,@function
mclb_add30:                             # @mclb_add30
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$116, %esp
	movl	144(%esp), %eax
	movl	116(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	140(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 92(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 88(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 84(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 80(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	52(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	60(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	100(%esp), %edi         # 4-byte Reload
	adcl	92(%eax), %edi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	104(%esp), %esi         # 4-byte Reload
	adcl	100(%eax), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	108(%esp), %edx         # 4-byte Reload
	adcl	108(%eax), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	112(%esp), %ecx         # 4-byte Reload
	adcl	116(%eax), %ecx
	movl	136(%esp), %eax
	movl	96(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 84(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 88(%eax)
	movl	%edi, 92(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 96(%eax)
	movl	%esi, 100(%eax)
	movl	64(%esp), %esi          # 4-byte Reload
	movl	%esi, 104(%eax)
	movl	%edx, 108(%eax)
	movl	72(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%eax)
	movl	%ecx, 116(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$116, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end116:
	.size	mclb_add30, .Lfunc_end116-mclb_add30
                                        # -- End function
	.globl	mclb_sub30              # -- Begin function mclb_sub30
	.p2align	4, 0x90
	.type	mclb_sub30,@function
mclb_sub30:                             # @mclb_sub30
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$120, %esp
	movl	144(%esp), %eax
	movl	116(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	148(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 92(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 88(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 84(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 80(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 76(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	sbbl	40(%eax), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %ebx          # 4-byte Reload
	sbbl	48(%eax), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	100(%esp), %ebx         # 4-byte Reload
	sbbl	84(%eax), %ebx
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	104(%esp), %edi         # 4-byte Reload
	sbbl	92(%eax), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	108(%esp), %esi         # 4-byte Reload
	sbbl	100(%eax), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	112(%esp), %edx         # 4-byte Reload
	sbbl	108(%eax), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %ecx         # 4-byte Reload
	sbbl	116(%eax), %ecx
	movl	140(%esp), %eax
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	%ebx, 84(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 88(%eax)
	movl	%edi, 92(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 96(%eax)
	movl	%esi, 100(%eax)
	movl	64(%esp), %esi          # 4-byte Reload
	movl	%esi, 104(%eax)
	movl	%edx, 108(%eax)
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%eax)
	movl	%ecx, 116(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$120, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end117:
	.size	mclb_sub30, .Lfunc_end117-mclb_sub30
                                        # -- End function
	.globl	mclb_addNF30            # -- Begin function mclb_addNF30
	.p2align	4, 0x90
	.type	mclb_addNF30,@function
mclb_addNF30:                           # @mclb_addNF30
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$116, %esp
	movl	144(%esp), %eax
	movl	116(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	140(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 92(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 88(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 84(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 80(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	52(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	60(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	100(%esp), %edi         # 4-byte Reload
	adcl	92(%eax), %edi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	104(%esp), %esi         # 4-byte Reload
	adcl	100(%eax), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	108(%esp), %edx         # 4-byte Reload
	adcl	108(%eax), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	112(%esp), %ecx         # 4-byte Reload
	adcl	116(%eax), %ecx
	movl	136(%esp), %eax
	movl	96(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%eax)
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	68(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	76(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 84(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 88(%eax)
	movl	%edi, 92(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 96(%eax)
	movl	%esi, 100(%eax)
	movl	64(%esp), %esi          # 4-byte Reload
	movl	%esi, 104(%eax)
	movl	%edx, 108(%eax)
	movl	72(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%eax)
	movl	%ecx, 116(%eax)
	addl	$116, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end118:
	.size	mclb_addNF30, .Lfunc_end118-mclb_addNF30
                                        # -- End function
	.globl	mclb_subNF30            # -- Begin function mclb_subNF30
	.p2align	4, 0x90
	.type	mclb_subNF30,@function
mclb_subNF30:                           # @mclb_subNF30
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$120, %esp
	movl	144(%esp), %eax
	movl	116(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	148(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 96(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 92(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 88(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 84(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 80(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	sbbl	48(%eax), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	sbbl	56(%eax), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	sbbl	64(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	sbbl	72(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	104(%esp), %edi         # 4-byte Reload
	sbbl	88(%eax), %edi
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	108(%esp), %esi         # 4-byte Reload
	sbbl	96(%eax), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	112(%esp), %edx         # 4-byte Reload
	sbbl	104(%eax), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	116(%esp), %ecx         # 4-byte Reload
	sbbl	112(%eax), %ecx
	movl	36(%esp), %ebx          # 4-byte Reload
	sbbl	116(%eax), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	140(%esp), %ebx
	movl	100(%esp), %eax         # 4-byte Reload
	movl	%eax, (%ebx)
	movl	96(%esp), %eax          # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	92(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	80(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebx)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%ebx)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ebx)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 68(%ebx)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%ebx)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ebx)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%ebx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%ebx)
	movl	%edi, 88(%ebx)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 92(%ebx)
	movl	%esi, 96(%ebx)
	movl	64(%esp), %esi          # 4-byte Reload
	movl	%esi, 100(%ebx)
	movl	%edx, 104(%ebx)
	movl	72(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%ebx)
	movl	%ecx, 112(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 116(%ebx)
	shrl	$31, %eax
	addl	$120, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end119:
	.size	mclb_subNF30, .Lfunc_end119-mclb_subNF30
                                        # -- End function
	.globl	mclb_add31              # -- Begin function mclb_add31
	.p2align	4, 0x90
	.type	mclb_add31,@function
mclb_add31:                             # @mclb_add31
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	movl	152(%esp), %eax
	movl	120(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	56(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	148(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 100(%esp)         # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 92(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 88(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	28(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	56(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	64(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	72(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	80(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	108(%esp), %edi         # 4-byte Reload
	adcl	96(%eax), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	112(%esp), %esi         # 4-byte Reload
	adcl	104(%eax), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %edx         # 4-byte Reload
	adcl	112(%eax), %edx
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	116(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx         # 4-byte Reload
	adcl	120(%eax), %ecx
	movl	144(%esp), %eax
	movl	104(%esp), %ebx         # 4-byte Reload
	movl	%ebx, (%eax)
	movl	100(%esp), %ebx         # 4-byte Reload
	movl	%ebx, 4(%eax)
	movl	96(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%eax)
	movl	92(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 12(%eax)
	movl	88(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 16(%eax)
	movl	84(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%eax)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 36(%eax)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 40(%eax)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 44(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 48(%eax)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 52(%eax)
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 56(%eax)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 60(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 64(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 68(%eax)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%eax)
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 76(%eax)
	movl	72(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 80(%eax)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 84(%eax)
	movl	80(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 88(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 92(%eax)
	movl	%edi, 96(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 100(%eax)
	movl	%esi, 104(%eax)
	movl	68(%esp), %esi          # 4-byte Reload
	movl	%esi, 108(%eax)
	movl	%edx, 112(%eax)
	movl	76(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%eax)
	movl	%ecx, 120(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end120:
	.size	mclb_add31, .Lfunc_end120-mclb_add31
                                        # -- End function
	.globl	mclb_sub31              # -- Begin function mclb_sub31
	.p2align	4, 0x90
	.type	mclb_sub31,@function
mclb_sub31:                             # @mclb_sub31
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	movl	148(%esp), %eax
	movl	120(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	152(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 96(%esp)          # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 92(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 88(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 84(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 80(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	sbbl	44(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	sbbl	56(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	104(%esp), %ebx         # 4-byte Reload
	sbbl	88(%eax), %ebx
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	108(%esp), %edi         # 4-byte Reload
	sbbl	96(%eax), %edi
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	112(%esp), %esi         # 4-byte Reload
	sbbl	104(%eax), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %edx         # 4-byte Reload
	sbbl	112(%eax), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	116(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx         # 4-byte Reload
	sbbl	120(%eax), %ecx
	movl	144(%esp), %eax
	movl	100(%esp), %ebp         # 4-byte Reload
	movl	%ebp, (%eax)
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	%ebx, 88(%eax)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 92(%eax)
	movl	%edi, 96(%eax)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 100(%eax)
	movl	%esi, 104(%eax)
	movl	68(%esp), %esi          # 4-byte Reload
	movl	%esi, 108(%eax)
	movl	%edx, 112(%eax)
	movl	72(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%eax)
	movl	%ecx, 120(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end121:
	.size	mclb_sub31, .Lfunc_end121-mclb_sub31
                                        # -- End function
	.globl	mclb_addNF31            # -- Begin function mclb_addNF31
	.p2align	4, 0x90
	.type	mclb_addNF31,@function
mclb_addNF31:                           # @mclb_addNF31
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	movl	152(%esp), %eax
	movl	120(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	148(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 96(%esp)          # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 92(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 88(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 84(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	%ebp, 80(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	52(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	64(%eax), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	72(%eax), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	104(%esp), %ebx         # 4-byte Reload
	adcl	88(%eax), %ebx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	92(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	108(%esp), %edi         # 4-byte Reload
	adcl	96(%eax), %edi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	100(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	112(%esp), %esi         # 4-byte Reload
	adcl	104(%eax), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	108(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	116(%esp), %edx         # 4-byte Reload
	adcl	112(%eax), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	116(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx         # 4-byte Reload
	adcl	120(%eax), %ecx
	movl	144(%esp), %eax
	movl	100(%esp), %ebp         # 4-byte Reload
	movl	%ebp, (%eax)
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	%ebx, 88(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 92(%eax)
	movl	%edi, 96(%eax)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 100(%eax)
	movl	%esi, 104(%eax)
	movl	64(%esp), %esi          # 4-byte Reload
	movl	%esi, 108(%eax)
	movl	%edx, 112(%eax)
	movl	72(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%eax)
	movl	%ecx, 120(%eax)
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end122:
	.size	mclb_addNF31, .Lfunc_end122-mclb_addNF31
                                        # -- End function
	.globl	mclb_subNF31            # -- Begin function mclb_subNF31
	.p2align	4, 0x90
	.type	mclb_subNF31,@function
mclb_subNF31:                           # @mclb_subNF31
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	movl	148(%esp), %eax
	movl	120(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	152(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 100(%esp)         # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 92(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 88(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	sbbl	52(%eax), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	sbbl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	sbbl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	sbbl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	108(%esp), %edi         # 4-byte Reload
	sbbl	92(%eax), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	112(%esp), %esi         # 4-byte Reload
	sbbl	100(%eax), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %edx         # 4-byte Reload
	sbbl	108(%eax), %edx
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	112(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx         # 4-byte Reload
	sbbl	116(%eax), %ecx
	movl	40(%esp), %ebx          # 4-byte Reload
	sbbl	120(%eax), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	movl	144(%esp), %ebx
	movl	104(%esp), %eax         # 4-byte Reload
	movl	%eax, (%ebx)
	movl	100(%esp), %eax         # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	96(%esp), %eax          # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	92(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	84(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%ebx)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 64(%ebx)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 72(%ebx)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ebx)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%ebx)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%ebx)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 88(%ebx)
	movl	%edi, 92(%ebx)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 96(%ebx)
	movl	%esi, 100(%ebx)
	movl	68(%esp), %esi          # 4-byte Reload
	movl	%esi, 104(%ebx)
	movl	%edx, 108(%ebx)
	movl	76(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%ebx)
	movl	%ecx, 116(%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 120(%ebx)
	shrl	$31, %eax
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end123:
	.size	mclb_subNF31, .Lfunc_end123-mclb_subNF31
                                        # -- End function
	.globl	mclb_add32              # -- Begin function mclb_add32
	.p2align	4, 0x90
	.type	mclb_add32,@function
mclb_add32:                             # @mclb_add32
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	movl	156(%esp), %eax
	movl	124(%eax), %ecx
	movl	%ecx, 124(%esp)         # 4-byte Spill
	movl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	152(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 100(%esp)         # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 92(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 88(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	36(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	108(%esp), %ebx         # 4-byte Reload
	adcl	92(%eax), %ebx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	112(%esp), %edi         # 4-byte Reload
	adcl	100(%eax), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	116(%esp), %esi         # 4-byte Reload
	adcl	108(%eax), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	120(%esp), %edx         # 4-byte Reload
	adcl	116(%eax), %edx
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	124(%esp), %ecx         # 4-byte Reload
	adcl	124(%eax), %ecx
	movl	148(%esp), %eax
	movl	104(%esp), %ebp         # 4-byte Reload
	movl	%ebp, (%eax)
	movl	100(%esp), %ebp         # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 88(%eax)
	movl	%ebx, 92(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 96(%eax)
	movl	%edi, 100(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 104(%eax)
	movl	%esi, 108(%eax)
	movl	68(%esp), %esi          # 4-byte Reload
	movl	%esi, 112(%eax)
	movl	%edx, 116(%eax)
	movl	76(%esp), %edx          # 4-byte Reload
	movl	%edx, 120(%eax)
	movl	%ecx, 124(%eax)
	setb	%al
	movzbl	%al, %eax
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end124:
	.size	mclb_add32, .Lfunc_end124-mclb_add32
                                        # -- End function
	.globl	mclb_sub32              # -- Begin function mclb_sub32
	.p2align	4, 0x90
	.type	mclb_sub32,@function
mclb_sub32:                             # @mclb_sub32
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	movl	152(%esp), %eax
	movl	124(%eax), %ecx
	movl	%ecx, 124(%esp)         # 4-byte Spill
	movl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	156(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 100(%esp)         # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 92(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 88(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	sbbl	48(%eax), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	sbbl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	64(%esp), %edi          # 4-byte Reload
	sbbl	60(%eax), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	80(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	108(%esp), %ebx         # 4-byte Reload
	sbbl	92(%eax), %ebx
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	96(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	112(%esp), %edi         # 4-byte Reload
	sbbl	100(%eax), %edi
	movl	68(%esp), %ecx          # 4-byte Reload
	sbbl	104(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %esi         # 4-byte Reload
	sbbl	108(%eax), %esi
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	112(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	120(%esp), %edx         # 4-byte Reload
	sbbl	116(%eax), %edx
	movl	76(%esp), %ecx          # 4-byte Reload
	sbbl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	124(%esp), %ecx         # 4-byte Reload
	sbbl	124(%eax), %ecx
	movl	148(%esp), %eax
	movl	104(%esp), %ebp         # 4-byte Reload
	movl	%ebp, (%eax)
	movl	100(%esp), %ebp         # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 88(%eax)
	movl	%ebx, 92(%eax)
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 96(%eax)
	movl	%edi, 100(%eax)
	movl	68(%esp), %edi          # 4-byte Reload
	movl	%edi, 104(%eax)
	movl	%esi, 108(%eax)
	movl	72(%esp), %esi          # 4-byte Reload
	movl	%esi, 112(%eax)
	movl	%edx, 116(%eax)
	movl	76(%esp), %edx          # 4-byte Reload
	movl	%edx, 120(%eax)
	movl	%ecx, 124(%eax)
	movl	$0, %eax
	sbbl	%eax, %eax
	andl	$1, %eax
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end125:
	.size	mclb_sub32, .Lfunc_end125-mclb_sub32
                                        # -- End function
	.globl	mclb_addNF32            # -- Begin function mclb_addNF32
	.p2align	4, 0x90
	.type	mclb_addNF32,@function
mclb_addNF32:                           # @mclb_addNF32
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	movl	156(%esp), %eax
	movl	124(%eax), %ecx
	movl	%ecx, 124(%esp)         # 4-byte Spill
	movl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	152(%esp), %eax
	addl	(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	adcl	4(%eax), %edx
	movl	%edx, 100(%esp)         # 4-byte Spill
	adcl	8(%eax), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	adcl	12(%eax), %edi
	movl	%edi, 92(%esp)          # 4-byte Spill
	adcl	16(%eax), %ebx
	movl	%ebx, 88(%esp)          # 4-byte Spill
	adcl	20(%eax), %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	28(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	32(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	36(%eax), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	56(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	60(%eax), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	64(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	68(%eax), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	72(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	76(%eax), %edx
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	80(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	84(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	88(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	108(%esp), %ebx         # 4-byte Reload
	adcl	92(%eax), %ebx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	96(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	112(%esp), %edi         # 4-byte Reload
	adcl	100(%eax), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	104(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	116(%esp), %esi         # 4-byte Reload
	adcl	108(%eax), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	112(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	120(%esp), %edx         # 4-byte Reload
	adcl	116(%eax), %edx
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	120(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	124(%esp), %ecx         # 4-byte Reload
	adcl	124(%eax), %ecx
	movl	148(%esp), %eax
	movl	104(%esp), %ebp         # 4-byte Reload
	movl	%ebp, (%eax)
	movl	100(%esp), %ebp         # 4-byte Reload
	movl	%ebp, 4(%eax)
	movl	96(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%eax)
	movl	92(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%eax)
	movl	88(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%eax)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%eax)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 24(%eax)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 28(%eax)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 32(%eax)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%eax)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%eax)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%eax)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%eax)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%eax)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%eax)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%eax)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%eax)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%eax)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%eax)
	movl	72(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%eax)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%eax)
	movl	80(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%eax)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 88(%eax)
	movl	%ebx, 92(%eax)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 96(%eax)
	movl	%edi, 100(%eax)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 104(%eax)
	movl	%esi, 108(%eax)
	movl	68(%esp), %esi          # 4-byte Reload
	movl	%esi, 112(%eax)
	movl	%edx, 116(%eax)
	movl	76(%esp), %edx          # 4-byte Reload
	movl	%edx, 120(%eax)
	movl	%ecx, 124(%eax)
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end126:
	.size	mclb_addNF32, .Lfunc_end126-mclb_addNF32
                                        # -- End function
	.globl	mclb_subNF32            # -- Begin function mclb_subNF32
	.p2align	4, 0x90
	.type	mclb_subNF32,@function
mclb_subNF32:                           # @mclb_subNF32
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	movl	152(%esp), %eax
	movl	124(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	120(%eax), %ecx
	movl	%ecx, 124(%esp)         # 4-byte Spill
	movl	116(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	112(%eax), %ecx
	movl	%ecx, 120(%esp)         # 4-byte Spill
	movl	108(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	104(%eax), %ecx
	movl	%ecx, 116(%esp)         # 4-byte Spill
	movl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	96(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	movl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	88(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	80(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	movl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	56(%eax), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	28(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	20(%eax), %ebp
	movl	16(%eax), %ebx
	movl	12(%eax), %edi
	movl	8(%eax), %esi
	movl	(%eax), %ecx
	movl	4(%eax), %edx
	movl	156(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	sbbl	4(%eax), %edx
	movl	%edx, 104(%esp)         # 4-byte Spill
	sbbl	8(%eax), %esi
	movl	%esi, 100(%esp)         # 4-byte Spill
	sbbl	12(%eax), %edi
	movl	%edi, 96(%esp)          # 4-byte Spill
	sbbl	16(%eax), %ebx
	movl	%ebx, 92(%esp)          # 4-byte Spill
	sbbl	20(%eax), %ebp
	movl	%ebp, 88(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	sbbl	24(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	sbbl	28(%eax), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	sbbl	32(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	36(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	44(%eax), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	48(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	52(%eax), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp          # 4-byte Reload
	sbbl	56(%eax), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	60(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	sbbl	64(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	sbbl	68(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	sbbl	72(%eax), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	sbbl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	sbbl	80(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	sbbl	84(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	84(%esp), %ecx          # 4-byte Reload
	sbbl	88(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	sbbl	92(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	112(%esp), %edi         # 4-byte Reload
	sbbl	96(%eax), %edi
	movl	64(%esp), %ecx          # 4-byte Reload
	sbbl	100(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	116(%esp), %esi         # 4-byte Reload
	sbbl	104(%eax), %esi
	movl	72(%esp), %ecx          # 4-byte Reload
	sbbl	108(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	120(%esp), %edx         # 4-byte Reload
	sbbl	112(%eax), %edx
	movl	80(%esp), %ecx          # 4-byte Reload
	sbbl	116(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	movl	124(%esp), %ecx         # 4-byte Reload
	sbbl	120(%eax), %ecx
	movl	44(%esp), %ebx          # 4-byte Reload
	sbbl	124(%eax), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	148(%esp), %ebx
	movl	108(%esp), %eax         # 4-byte Reload
	movl	%eax, (%ebx)
	movl	104(%esp), %eax         # 4-byte Reload
	movl	%eax, 4(%ebx)
	movl	100(%esp), %eax         # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	96(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	92(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	88(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%ebx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ebx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%ebx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%ebx)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ebx)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ebx)
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ebx)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 68(%ebx)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%ebx)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 76(%ebx)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%ebx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%ebx)
	movl	84(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 88(%ebx)
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 92(%ebx)
	movl	%edi, 96(%ebx)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 100(%ebx)
	movl	%esi, 104(%ebx)
	movl	72(%esp), %esi          # 4-byte Reload
	movl	%esi, 108(%ebx)
	movl	%edx, 112(%ebx)
	movl	80(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%ebx)
	movl	%ecx, 120(%ebx)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 124(%ebx)
	shrl	$31, %eax
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end127:
	.size	mclb_subNF32, .Lfunc_end127-mclb_subNF32
                                        # -- End function
	.globl	mulUnit_inner32         # -- Begin function mulUnit_inner32
	.p2align	4, 0x90
	.type	mulUnit_inner32,@function
mulUnit_inner32:                        # @mulUnit_inner32
# %bb.0:
	movl	4(%esp), %eax
	movl	(%eax), %eax
	mull	8(%esp)
	retl
.Lfunc_end128:
	.size	mulUnit_inner32, .Lfunc_end128-mulUnit_inner32
                                        # -- End function
	.globl	mclb_mulUnit1           # -- Begin function mclb_mulUnit1
	.p2align	4, 0x90
	.type	mclb_mulUnit1,@function
mclb_mulUnit1:                          # @mclb_mulUnit1
# %bb.0:
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	mull	12(%esp)
	movl	%eax, (%ecx)
	movl	%edx, %eax
	retl
.Lfunc_end129:
	.size	mclb_mulUnit1, .Lfunc_end129-mclb_mulUnit1
                                        # -- End function
	.globl	mclb_mulUnitAdd1        # -- Begin function mclb_mulUnitAdd1
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd1,@function
mclb_mulUnitAdd1:                       # @mclb_mulUnitAdd1
# %bb.0:
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	mull	12(%esp)
	addl	%eax, (%ecx)
	adcl	$0, %edx
	movl	%edx, %eax
	retl
.Lfunc_end130:
	.size	mclb_mulUnitAdd1, .Lfunc_end130-mclb_mulUnitAdd1
                                        # -- End function
	.globl	mclb_mul1               # -- Begin function mclb_mul1
	.p2align	4, 0x90
	.type	mclb_mul1,@function
mclb_mul1:                              # @mclb_mul1
# %bb.0:
	movl	4(%esp), %ecx
	movl	8(%esp), %edx
	movl	12(%esp), %eax
	movl	(%eax), %eax
	mull	(%edx)
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	retl
.Lfunc_end131:
	.size	mclb_mul1, .Lfunc_end131-mclb_mul1
                                        # -- End function
	.globl	mclb_sqr1               # -- Begin function mclb_sqr1
	.p2align	4, 0x90
	.type	mclb_sqr1,@function
mclb_sqr1:                              # @mclb_sqr1
# %bb.0:
	movl	4(%esp), %ecx
	movl	8(%esp), %eax
	movl	(%eax), %eax
	mull	%eax
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	retl
.Lfunc_end132:
	.size	mclb_sqr1, .Lfunc_end132-mclb_sqr1
                                        # -- End function
	.globl	mulUnit_inner64         # -- Begin function mulUnit_inner64
	.p2align	4, 0x90
	.type	mulUnit_inner64,@function
mulUnit_inner64:                        # @mulUnit_inner64
# %bb.0:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ecx
	movl	16(%esp), %ebx
	movl	%ecx, %eax
	mull	(%ebx)
	movl	%edx, %esi
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%ebx)
	movl	%edx, %ecx
	addl	%eax, %esi
	adcl	$0, %ecx
	movl	%edi, %eax
	movl	%esi, %edx
	popl	%esi
	popl	%edi
	popl	%ebx
	retl
.Lfunc_end133:
	.size	mulUnit_inner64, .Lfunc_end133-mulUnit_inner64
                                        # -- End function
	.globl	mclb_mulUnit2           # -- Begin function mclb_mulUnit2
	.p2align	4, 0x90
	.type	mclb_mulUnit2,@function
mclb_mulUnit2:                          # @mclb_mulUnit2
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ebx
	movl	28(%esp), %ecx
	movl	24(%esp), %ebp
	movl	%ecx, %eax
	mull	(%ebp)
	movl	%edx, %esi
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%ebp)
	addl	%esi, %eax
	adcl	$0, %edx
	movl	%edi, (%ebx)
	movl	%eax, 4(%ebx)
	movl	%edx, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end134:
	.size	mclb_mulUnit2, .Lfunc_end134-mclb_mulUnit2
                                        # -- End function
	.globl	mclb_mulUnitAdd2        # -- Begin function mclb_mulUnitAdd2
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd2,@function
mclb_mulUnitAdd2:                       # @mclb_mulUnitAdd2
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	movl	20(%esp), %ebx
	movl	28(%esp), %ecx
	movl	24(%esp), %ebp
	movl	%ecx, %eax
	mull	(%ebp)
	movl	%edx, %esi
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%ebp)
	addl	%edi, (%ebx)
	adcl	4(%ebx), %eax
	setb	%cl
	movzbl	%cl, %ecx
	addl	%esi, %eax
	adcl	%edx, %ecx
	movl	%eax, 4(%ebx)
	movl	%ecx, %eax
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end135:
	.size	mclb_mulUnitAdd2, .Lfunc_end135-mclb_mulUnitAdd2
                                        # -- End function
	.globl	mclb_mul2               # -- Begin function mclb_mul2
	.p2align	4, 0x90
	.type	mclb_mul2,@function
mclb_mul2:                              # @mclb_mul2
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	28(%esp), %eax
	movl	32(%esp), %ecx
	movl	(%ecx), %ebx
	movl	(%eax), %ecx
	movl	4(%eax), %esi
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	%ebx
	movl	%edx, %ebp
	movl	%eax, %ebx
	addl	%edi, %ebx
	movl	24(%esp), %eax
	adcl	$0, %ebp
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, (%eax)
	movl	32(%esp), %eax
	movl	4(%eax), %edi
	movl	%edi, %eax
	mull	%ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ecx
	movl	%edi, %eax
	mull	%esi
	addl	(%esp), %eax            # 4-byte Folded Reload
	adcl	$0, %edx
	addl	%ebx, %ecx
	adcl	%ebp, %eax
	movl	24(%esp), %esi
	movl	%ecx, 4(%esi)
	movl	%eax, 8(%esi)
	adcl	$0, %edx
	movl	%edx, 12(%esi)
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end136:
	.size	mclb_mul2, .Lfunc_end136-mclb_mul2
                                        # -- End function
	.globl	mclb_sqr2               # -- Begin function mclb_sqr2
	.p2align	4, 0x90
	.type	mclb_sqr2,@function
mclb_sqr2:                              # @mclb_sqr2
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	28(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %esi
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %edi
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	%ecx
	movl	%edx, %ebx
	movl	%eax, %ebp
	addl	%eax, %edi
	movl	%edx, %ecx
	adcl	$0, %ecx
	movl	24(%esp), %eax
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, (%eax)
	movl	%esi, %eax
	mull	%esi
	addl	%ebx, %eax
	adcl	$0, %edx
	addl	%ebp, %edi
	adcl	%ecx, %eax
	adcl	$0, %edx
	movl	24(%esp), %ecx
	movl	%edi, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end137:
	.size	mclb_sqr2, .Lfunc_end137-mclb_sqr2
                                        # -- End function
	.globl	mulUnit_inner96         # -- Begin function mulUnit_inner96
	.p2align	4, 0x90
	.type	mulUnit_inner96,@function
mulUnit_inner96:                        # @mulUnit_inner96
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	28(%esp), %ecx
	movl	36(%esp), %esi
	movl	32(%esp), %edi
	movl	%esi, %eax
	mull	(%edi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	4(%edi)
	movl	%edx, %ebp
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	8(%edi)
	addl	(%esp), %ebx            # 4-byte Folded Reload
	adcl	%ebp, %eax
	adcl	$0, %edx
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, (%ecx)
	movl	%ebx, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	%ecx, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end138:
	.size	mulUnit_inner96, .Lfunc_end138-mulUnit_inner96
                                        # -- End function
	.globl	mclb_mulUnit3           # -- Begin function mclb_mulUnit3
	.p2align	4, 0x90
	.type	mclb_mulUnit3,@function
mclb_mulUnit3:                          # @mclb_mulUnit3
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%eax
	movl	32(%esp), %ecx
	movl	28(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, %edi
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, %ebx
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%esi)
	addl	%edi, %ebp
	adcl	%ebx, %eax
	adcl	$0, %edx
	movl	24(%esp), %ecx
	movl	(%esp), %esi            # 4-byte Reload
	movl	%esi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	%edx, %eax
	addl	$4, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end139:
	.size	mclb_mulUnit3, .Lfunc_end139-mclb_mulUnit3
                                        # -- End function
	.globl	mclb_mulUnitAdd3        # -- Begin function mclb_mulUnitAdd3
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd3,@function
mclb_mulUnitAdd3:                       # @mclb_mulUnitAdd3
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$8, %esp
	movl	28(%esp), %ebx
	movl	36(%esp), %ecx
	movl	32(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%esi)
	addl	%edi, (%ebx)
	adcl	4(%ebx), %ebp
	adcl	8(%ebx), %eax
	setb	%cl
	movzbl	%cl, %ecx
	addl	4(%esp), %ebp           # 4-byte Folded Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	adcl	%edx, %ecx
	movl	%ebp, 4(%ebx)
	movl	%eax, 8(%ebx)
	movl	%ecx, %eax
	addl	$8, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end140:
	.size	mclb_mulUnitAdd3, .Lfunc_end140-mclb_mulUnitAdd3
                                        # -- End function
	.globl	mclb_mul3               # -- Begin function mclb_mul3
	.p2align	4, 0x90
	.type	mclb_mul3,@function
mclb_mul3:                              # @mclb_mul3
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	52(%esp), %esi
	movl	56(%esp), %eax
	movl	(%eax), %edi
	movl	(%esi), %ebx
	movl	4(%esi), %ebp
	movl	%ebx, %eax
	movl	%ebx, 12(%esp)          # 4-byte Spill
	mull	%edi
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	movl	%ebp, 16(%esp)          # 4-byte Spill
	mull	%edi
	movl	%eax, %ecx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	8(%esi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	mull	%edi
	movl	%eax, %esi
	addl	(%esp), %ecx            # 4-byte Folded Reload
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	4(%esp), %esi           # 4-byte Folded Reload
	movl	48(%esp), %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ecx, (%eax)
	adcl	$0, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	56(%esp), %eax
	movl	4(%eax), %ecx
	movl	%ecx, %eax
	mull	%ebx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	%ebp
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	20(%esp)                # 4-byte Folded Reload
	movl	%eax, %ecx
	movl	%edx, %ebp
	addl	4(%esp), %ebx           # 4-byte Folded Reload
	adcl	24(%esp), %ecx          # 4-byte Folded Reload
	adcl	$0, %ebp
	addl	(%esp), %edi            # 4-byte Folded Reload
	adcl	%esi, %ebx
	adcl	8(%esp), %ecx           # 4-byte Folded Reload
	movl	48(%esp), %eax
	movl	%edi, 4(%eax)
	adcl	$0, %ebp
	movl	56(%esp), %eax
	movl	8(%eax), %esi
	movl	%esi, %eax
	mull	12(%esp)                # 4-byte Folded Reload
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	16(%esp)                # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	20(%esp)                # 4-byte Folded Reload
	addl	(%esp), %edi            # 4-byte Folded Reload
	adcl	16(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	12(%esp), %esi          # 4-byte Reload
	addl	%ebx, %esi
	adcl	%ecx, %edi
	adcl	%ebp, %eax
	movl	48(%esp), %ecx
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%eax, 16(%ecx)
	adcl	$0, %edx
	movl	%edx, 20(%ecx)
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end141:
	.size	mclb_mul3, .Lfunc_end141-mclb_mul3
                                        # -- End function
	.globl	mclb_sqr3               # -- Begin function mclb_sqr3
	.p2align	4, 0x90
	.type	mclb_sqr3,@function
mclb_sqr3:                              # @mclb_sqr3
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	52(%esp), %ecx
	movl	56(%esp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %ebx
	movl	%esi, %eax
	mull	%esi
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, (%ecx)
	movl	%ebx, %eax
	movl	%ebx, %ecx
	mull	%esi
	movl	%eax, %edi
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%edx, %ebp
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	56(%esp), %eax
	movl	8(%eax), %ebx
	movl	%ebx, %eax
	mull	%esi
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%edx, %esi
	addl	%edi, (%esp)            # 4-byte Folded Spill
	adcl	%eax, %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	%edx, %eax
	adcl	$0, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %ebp
	movl	%eax, %edi
	movl	%ebx, %eax
	mull	%ecx
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edx, %ecx
	movl	%edx, 12(%esp)          # 4-byte Spill
	addl	4(%esp), %edi           # 4-byte Folded Reload
	adcl	%eax, %ebp
	adcl	$0, %ecx
	movl	(%esp), %eax            # 4-byte Reload
	addl	24(%esp), %eax          # 4-byte Folded Reload
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	movl	52(%esp), %edx
	movl	%eax, 4(%edx)
	adcl	$0, %ecx
	movl	%ebx, %eax
	mull	%ebx
	addl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	28(%esp), %edi          # 4-byte Folded Reload
	adcl	%ebp, %esi
	adcl	%ecx, %eax
	movl	52(%esp), %ecx
	movl	%edi, 8(%ecx)
	movl	%esi, 12(%ecx)
	movl	%eax, 16(%ecx)
	adcl	$0, %edx
	movl	%edx, 20(%ecx)
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end142:
	.size	mclb_sqr3, .Lfunc_end142-mclb_sqr3
                                        # -- End function
	.globl	mulUnit_inner128        # -- Begin function mulUnit_inner128
	.p2align	4, 0x90
	.type	mulUnit_inner128,@function
mulUnit_inner128:                       # @mulUnit_inner128
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	40(%esp), %ecx
	movl	36(%esp), %edi
	movl	%ecx, %eax
	mull	(%edi)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%edi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%edi)
	movl	%edx, %ebx
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	12(%edi)
	addl	4(%esp), %ebp           # 4-byte Folded Reload
	adcl	(%esp), %esi            # 4-byte Folded Reload
	adcl	%ebx, %eax
	movl	32(%esp), %ecx
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%eax, 12(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%ecx)
	movl	%ecx, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end143:
	.size	mulUnit_inner128, .Lfunc_end143-mulUnit_inner128
                                        # -- End function
	.globl	mclb_mulUnit4           # -- Begin function mclb_mulUnit4
	.p2align	4, 0x90
	.type	mclb_mulUnit4,@function
mclb_mulUnit4:                          # @mclb_mulUnit4
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	40(%esp), %ecx
	movl	36(%esp), %edi
	movl	%ecx, %eax
	mull	(%edi)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%edi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%edi)
	movl	%edx, %ebx
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	12(%edi)
	addl	4(%esp), %ebp           # 4-byte Folded Reload
	adcl	(%esp), %esi            # 4-byte Folded Reload
	adcl	%ebx, %eax
	movl	32(%esp), %ecx
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%eax, 12(%ecx)
	adcl	$0, %edx
	movl	%edx, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end144:
	.size	mclb_mulUnit4, .Lfunc_end144-mclb_mulUnit4
                                        # -- End function
	.globl	mclb_mulUnitAdd4        # -- Begin function mclb_mulUnitAdd4
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd4,@function
mclb_mulUnitAdd4:                       # @mclb_mulUnitAdd4
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$12, %esp
	movl	40(%esp), %ecx
	movl	36(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, %esi
	movl	32(%esp), %ecx
	addl	%edi, (%ecx)
	adcl	4(%ecx), %ebp
	adcl	8(%ecx), %ebx
	adcl	12(%ecx), %eax
	setb	%dl
	addl	8(%esp), %ebp           # 4-byte Folded Reload
	adcl	4(%esp), %ebx           # 4-byte Folded Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	movl	%ebp, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%eax, 12(%ecx)
	movzbl	%dl, %eax
	adcl	%esi, %eax
	addl	$12, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end145:
	.size	mclb_mulUnitAdd4, .Lfunc_end145-mclb_mulUnitAdd4
                                        # -- End function
	.globl	mclb_mul4               # -- Begin function mclb_mul4
	.p2align	4, 0x90
	.type	mclb_mul4,@function
mclb_mul4:                              # @mclb_mul4
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	68(%esp), %edi
	movl	72(%esp), %eax
	movl	(%eax), %ebx
	movl	(%edi), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	4(%edi), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	%ebx
	movl	%eax, %ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	8(%edi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %esi
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	12(%edi), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %ebp
	addl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	(%esp), %esi            # 4-byte Folded Reload
	movl	%esi, (%esp)            # 4-byte Spill
	adcl	12(%esp), %ebp          # 4-byte Folded Reload
	movl	64(%esp), %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ecx, (%eax)
	adcl	$0, %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	72(%esp), %eax
	movl	4(%eax), %ecx
	movl	%ecx, %eax
	mull	24(%esp)                # 4-byte Folded Reload
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	16(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esp)                # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%eax, %esi
	movl	%edx, %ecx
	addl	36(%esp), %ebx          # 4-byte Folded Reload
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	adcl	%ebp, %edi
	adcl	32(%esp), %esi          # 4-byte Folded Reload
	setb	%dl
	addl	4(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	12(%esp), %edi          # 4-byte Folded Reload
	adcl	28(%esp), %esi          # 4-byte Folded Reload
	movzbl	%dl, %eax
	adcl	%ecx, %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	%ebx, 4(%eax)
	movl	72(%esp), %eax
	movl	8(%eax), %ebx
	movl	%ebx, %eax
	mull	24(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%ebx, %eax
	mull	16(%esp)                # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	20(%esp)                # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%eax, %ebp
	movl	4(%esp), %eax           # 4-byte Reload
	addl	12(%esp), %eax          # 4-byte Folded Reload
	movl	(%esp), %ebx            # 4-byte Reload
	adcl	32(%esp), %ebx          # 4-byte Folded Reload
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	8(%esp), %ecx           # 4-byte Folded Reload
	adcl	%edi, %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	%esi, %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	adcl	36(%esp), %ebp          # 4-byte Folded Reload
	movl	64(%esp), %eax
	movl	%ecx, 8(%eax)
	adcl	$0, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	72(%esp), %eax
	movl	12(%eax), %ecx
	movl	%ecx, %eax
	mull	24(%esp)                # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	16(%esp)                # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	20(%esp)                # 4-byte Folded Reload
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	addl	24(%esp), %ebx          # 4-byte Folded Reload
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	adcl	20(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	4(%esp), %esi           # 4-byte Folded Reload
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	adcl	%ebp, %edi
	adcl	8(%esp), %eax           # 4-byte Folded Reload
	movl	64(%esp), %ecx
	movl	%esi, 12(%ecx)
	movl	%ebx, 16(%ecx)
	movl	%edi, 20(%ecx)
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%ecx)
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end146:
	.size	mclb_mul4, .Lfunc_end146-mclb_mul4
                                        # -- End function
	.globl	mclb_sqr4               # -- Begin function mclb_sqr4
	.p2align	4, 0x90
	.type	mclb_sqr4,@function
mclb_sqr4:                              # @mclb_sqr4
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	84(%esp), %ecx
	movl	88(%esp), %eax
	movl	(%eax), %esi
	movl	4(%eax), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	%esi
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, (%ecx)
	movl	%edi, %eax
	mull	%esi
	movl	%eax, %ebx
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edx, %ebp
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	8(%eax), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	mull	%esi
	movl	%eax, %edi
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%edx, %ecx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	12(%eax), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	mull	%esi
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%edx, 56(%esp)          # 4-byte Spill
	addl	%ebx, (%esp)            # 4-byte Folded Spill
	adcl	%edi, %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	%eax, %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	$0, %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, %eax
	mull	%ebp
	movl	%ebp, %edi
	movl	%edx, %ecx
	movl	%eax, %esi
	movl	4(%esp), %eax           # 4-byte Reload
	mull	%ebp
	movl	%edx, %ebp
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%edi
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%edx, %edi
	movl	%edx, 20(%esp)          # 4-byte Spill
	addl	32(%esp), %esi          # 4-byte Folded Reload
	adcl	%ebx, %ecx
	movl	%ebp, %ebx
	adcl	%eax, %ebx
	adcl	$0, %edi
	movl	(%esp), %eax            # 4-byte Reload
	addl	8(%esp), %eax           # 4-byte Folded Reload
	adcl	16(%esp), %esi          # 4-byte Folded Reload
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	36(%esp), %ebx          # 4-byte Folded Reload
	movl	84(%esp), %edx
	movl	%eax, 4(%edx)
	adcl	$0, %edi
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %ebp
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	addl	40(%esp), %eax          # 4-byte Folded Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	44(%esp), %ecx          # 4-byte Folded Reload
	movl	(%esp), %edx            # 4-byte Reload
	adcl	%ebp, %edx
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	$0, %ebp
	addl	52(%esp), %esi          # 4-byte Folded Reload
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 28(%esp)          # 4-byte Spill
	adcl	%ebx, %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	%edi, %edx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	84(%esp), %edi
	movl	%esi, 8(%edi)
	adcl	$0, %ebp
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%eax
	movl	56(%esp), %esi          # 4-byte Reload
	addl	48(%esp), %esi          # 4-byte Folded Reload
	movl	20(%esp), %ebx          # 4-byte Reload
	adcl	16(%esp), %ebx          # 4-byte Folded Reload
	adcl	4(%esp), %eax           # 4-byte Folded Reload
	adcl	$0, %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	addl	60(%esp), %ecx          # 4-byte Folded Reload
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	adcl	%ebp, %eax
	movl	%ecx, 12(%edi)
	movl	%esi, 16(%edi)
	movl	%ebx, 20(%edi)
	movl	%eax, 24(%edi)
	adcl	$0, %edx
	movl	%edx, 28(%edi)
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end147:
	.size	mclb_sqr4, .Lfunc_end147-mclb_sqr4
                                        # -- End function
	.globl	mulUnit_inner160        # -- Begin function mulUnit_inner160
	.p2align	4, 0x90
	.type	mulUnit_inner160,@function
mulUnit_inner160:                       # @mulUnit_inner160
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	48(%esp), %ecx
	movl	44(%esp), %ebx
	movl	%ecx, %eax
	mull	(%ebx)
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%ebx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%ebx)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	12(%ebx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	16(%ebx)
	addl	12(%esp), %ebp          # 4-byte Folded Reload
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	movl	40(%esp), %ecx
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%eax, 16(%ecx)
	adcl	$0, %edx
	movl	%edx, 20(%ecx)
	movl	%ecx, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end148:
	.size	mulUnit_inner160, .Lfunc_end148-mulUnit_inner160
                                        # -- End function
	.globl	mclb_mulUnit5           # -- Begin function mclb_mulUnit5
	.p2align	4, 0x90
	.type	mclb_mulUnit5,@function
mclb_mulUnit5:                          # @mclb_mulUnit5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	48(%esp), %ecx
	movl	44(%esp), %ebx
	movl	%ecx, %eax
	mull	(%ebx)
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%ebx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%ebx)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	12(%ebx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	16(%ebx)
	addl	12(%esp), %ebp          # 4-byte Folded Reload
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	movl	40(%esp), %ecx
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%esi, 8(%ecx)
	movl	%edi, 12(%ecx)
	movl	%eax, 16(%ecx)
	adcl	$0, %edx
	movl	%edx, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end149:
	.size	mclb_mulUnit5, .Lfunc_end149-mclb_mulUnit5
                                        # -- End function
	.globl	mclb_mulUnitAdd5        # -- Begin function mclb_mulUnitAdd5
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd5,@function
mclb_mulUnitAdd5:                       # @mclb_mulUnitAdd5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$20, %esp
	movl	48(%esp), %esi
	movl	44(%esp), %ebx
	movl	%esi, %eax
	mull	(%ebx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	4(%ebx)
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	8(%ebx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	12(%ebx)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	16(%ebx)
	movl	40(%esp), %esi
	movl	(%esp), %ebx            # 4-byte Reload
	addl	%ebx, (%esi)
	adcl	4(%esi), %ecx
	adcl	8(%esi), %ebp
	adcl	12(%esi), %edi
	adcl	16(%esi), %eax
	setb	%bl
	addl	16(%esp), %ecx          # 4-byte Folded Reload
	adcl	12(%esp), %ebp          # 4-byte Folded Reload
	adcl	8(%esp), %edi           # 4-byte Folded Reload
	adcl	4(%esp), %eax           # 4-byte Folded Reload
	movl	%ecx, 4(%esi)
	movl	%ebp, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%eax, 16(%esi)
	movzbl	%bl, %eax
	adcl	%edx, %eax
	addl	$20, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end150:
	.size	mclb_mulUnitAdd5, .Lfunc_end150-mclb_mulUnitAdd5
                                        # -- End function
	.globl	mclb_mul5               # -- Begin function mclb_mul5
	.p2align	4, 0x90
	.type	mclb_mul5,@function
mclb_mul5:                              # @mclb_mul5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	88(%esp), %ecx
	movl	92(%esp), %eax
	movl	(%eax), %esi
	movl	(%ecx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	4(%ecx), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	mull	%esi
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	%esi
	movl	%eax, %ebx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	8(%ecx), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	mull	%esi
	movl	%eax, %ebp
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	12(%ecx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	mull	%esi
	movl	%eax, %edi
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	16(%ecx), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	mull	%esi
	movl	%eax, %ecx
	addl	4(%esp), %ebx           # 4-byte Folded Reload
	movl	%ebx, 24(%esp)          # 4-byte Spill
	adcl	(%esp), %ebp            # 4-byte Folded Reload
	movl	%ebp, 20(%esp)          # 4-byte Spill
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 4(%esp)           # 4-byte Spill
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	84(%esp), %eax
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, (%eax)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	4(%eax), %ebx
	movl	%ebx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%ebx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	28(%esp)                # 4-byte Folded Reload
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ebx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	addl	24(%esp), %edi          # 4-byte Folded Reload
	adcl	20(%esp), %ebp          # 4-byte Folded Reload
	adcl	4(%esp), %esi           # 4-byte Folded Reload
	movl	(%esp), %ebx            # 4-byte Reload
	adcl	%ecx, %ebx
	adcl	16(%esp), %eax          # 4-byte Folded Reload
	setb	%cl
	addl	8(%esp), %ebp           # 4-byte Folded Reload
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	12(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 12(%esp)          # 4-byte Spill
	adcl	48(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, (%esp)            # 4-byte Spill
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 48(%esp)          # 4-byte Spill
	movzbl	%cl, %eax
	adcl	%edx, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%edi, 4(%eax)
	movl	92(%esp), %eax
	movl	8(%eax), %ecx
	movl	%ecx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebp
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%eax, %edi
	movl	%edx, %esi
	movl	8(%esp), %eax           # 4-byte Reload
	addl	%ebp, %eax
	movl	4(%esp), %edx           # 4-byte Reload
	adcl	44(%esp), %edx          # 4-byte Folded Reload
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	60(%esp), %ecx          # 4-byte Folded Reload
	adcl	56(%esp), %edi          # 4-byte Folded Reload
	adcl	$0, %esi
	movl	%esi, %ebp
	addl	16(%esp), %ebx          # 4-byte Folded Reload
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	(%esp), %edx            # 4-byte Folded Reload
	movl	%edx, 4(%esp)           # 4-byte Spill
	adcl	48(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	84(%esp), %esi
	movl	%ebx, 8(%esi)
	adcl	$0, %ebp
	movl	92(%esp), %eax
	movl	12(%eax), %ebx
	movl	%ebx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ebx, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ebx, %eax
	mull	28(%esp)                # 4-byte Folded Reload
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%ebx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	addl	16(%esp), %esi          # 4-byte Folded Reload
	movl	(%esp), %ebx            # 4-byte Reload
	adcl	12(%esp), %ebx          # 4-byte Folded Reload
	adcl	48(%esp), %ecx          # 4-byte Folded Reload
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	8(%esp), %edi           # 4-byte Folded Reload
	adcl	4(%esp), %esi           # 4-byte Folded Reload
	movl	%esi, 8(%esp)           # 4-byte Spill
	adcl	24(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, (%esp)            # 4-byte Spill
	adcl	20(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	%ebp, %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%edi, 12(%eax)
	adcl	$0, %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	16(%eax), %esi
	movl	%esi, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	40(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	28(%esp)                # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	addl	36(%esp), %ebp          # 4-byte Folded Reload
	adcl	40(%esp), %edi          # 4-byte Folded Reload
	adcl	28(%esp), %ebx          # 4-byte Folded Reload
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	8(%esp), %ecx           # 4-byte Folded Reload
	adcl	(%esp), %ebp            # 4-byte Folded Reload
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	adcl	24(%esp), %ebx          # 4-byte Folded Reload
	adcl	20(%esp), %eax          # 4-byte Folded Reload
	movl	84(%esp), %esi
	movl	%ecx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	%edi, 24(%esi)
	movl	%ebx, 28(%esi)
	movl	%eax, 32(%esi)
	adcl	$0, %edx
	movl	%edx, 36(%esi)
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end151:
	.size	mclb_mul5, .Lfunc_end151-mclb_mul5
                                        # -- End function
	.globl	mclb_sqr5               # -- Begin function mclb_sqr5
	.p2align	4, 0x90
	.type	mclb_sqr5,@function
mclb_sqr5:                              # @mclb_sqr5
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	movl	112(%esp), %esi
	movl	116(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, (%esi)
	movl	%edi, %eax
	mull	%ecx
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%ebx, %edi
	movl	8(%ebx), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, %ebx
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%edx, %esi
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	12(%edi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, %ebp
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	%edx, %edi
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	16(%eax), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, 88(%esp)          # 4-byte Spill
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	addl	%ecx, (%esp)            # 4-byte Folded Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	%ebx, %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	%ebp, %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	adcl	%eax, %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	adcl	$0, %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, %eax
	mull	%edi
	movl	%edx, %ebp
	movl	%eax, %ebx
	movl	12(%esp), %eax          # 4-byte Reload
	mull	%edi
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	mull	%edi
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	mull	%edi
	movl	%eax, 80(%esp)          # 4-byte Spill
	movl	%edx, 60(%esp)          # 4-byte Spill
	addl	4(%esp), %ebx           # 4-byte Folded Reload
	adcl	%esi, %ebp
	movl	%ebp, %esi
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	%ecx, %edi
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	%eax, %ebp
	movl	%edx, %ecx
	adcl	$0, %ecx
	movl	(%esp), %eax            # 4-byte Reload
	addl	8(%esp), %eax           # 4-byte Folded Reload
	adcl	28(%esp), %ebx          # 4-byte Folded Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 44(%esp)          # 4-byte Spill
	adcl	40(%esp), %edi          # 4-byte Folded Reload
	adcl	68(%esp), %ebp          # 4-byte Folded Reload
	movl	112(%esp), %edx
	movl	%eax, 4(%edx)
	adcl	$0, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %esi
	movl	20(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	addl	48(%esp), %ecx          # 4-byte Folded Reload
	adcl	24(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	(%esp), %esi            # 4-byte Reload
	adcl	28(%esp), %esi          # 4-byte Folded Reload
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	addl	52(%esp), %ebx          # 4-byte Folded Reload
	adcl	44(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	%edi, 8(%esp)           # 4-byte Folded Spill
	adcl	%ebp, %esi
	movl	%esi, (%esp)            # 4-byte Spill
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	112(%esp), %eax
	movl	%ebx, 8(%eax)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %esi
	movl	%eax, %ebp
	movl	32(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%edx, %edi
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	76(%esp), %ebx          # 4-byte Reload
	addl	72(%esp), %ebx          # 4-byte Folded Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	28(%esp), %ecx          # 4-byte Folded Reload
	movl	%ebp, %edx
	adcl	4(%esp), %edx           # 4-byte Folded Reload
	adcl	%eax, %esi
	movl	%edi, %ebp
	adcl	$0, %ebp
	movl	16(%esp), %edi          # 4-byte Reload
	addl	84(%esp), %edi          # 4-byte Folded Reload
	adcl	8(%esp), %ebx           # 4-byte Folded Reload
	adcl	(%esp), %ecx            # 4-byte Folded Reload
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	24(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	52(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	112(%esp), %eax
	movl	%edi, 12(%eax)
	adcl	$0, %ebp
	movl	32(%esp), %eax          # 4-byte Reload
	mull	%eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	64(%esp), %eax          # 4-byte Reload
	addl	80(%esp), %eax          # 4-byte Folded Reload
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	44(%esp), %edx          # 4-byte Folded Reload
	adcl	48(%esp), %esi          # 4-byte Folded Reload
	adcl	$0, %edi
	addl	88(%esp), %ebx          # 4-byte Folded Reload
	adcl	36(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 64(%esp)          # 4-byte Spill
	adcl	16(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, %eax
	adcl	20(%esp), %edx          # 4-byte Folded Reload
	adcl	%ebp, %esi
	movl	112(%esp), %ecx
	movl	%ebx, 16(%ecx)
	movl	64(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%ecx)
	movl	%eax, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	%esi, 32(%ecx)
	adcl	$0, %edi
	movl	%edi, 36(%ecx)
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end152:
	.size	mclb_sqr5, .Lfunc_end152-mclb_sqr5
                                        # -- End function
	.globl	mulUnit_inner192        # -- Begin function mulUnit_inner192
	.p2align	4, 0x90
	.type	mulUnit_inner192,@function
mulUnit_inner192:                       # @mulUnit_inner192
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	60(%esp), %esi
	movl	56(%esp), %ebp
	movl	%esi, %eax
	mull	(%ebp)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	4(%ebp)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	8(%ebp)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	12(%ebp)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	16(%ebp)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	20(%ebp)
	movl	%eax, %ecx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	24(%esp), %eax          # 4-byte Folded Reload
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	%esi, (%esp)            # 4-byte Folded Spill
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	adcl	8(%esp), %ebx           # 4-byte Folded Reload
	adcl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	52(%esp), %esi
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esi)
	movl	%eax, 4(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ecx, 20(%esi)
	adcl	$0, %edx
	movl	%edx, 24(%esi)
	movl	%esi, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end153:
	.size	mulUnit_inner192, .Lfunc_end153-mulUnit_inner192
                                        # -- End function
	.globl	mclb_mulUnit6           # -- Begin function mclb_mulUnit6
	.p2align	4, 0x90
	.type	mclb_mulUnit6,@function
mclb_mulUnit6:                          # @mclb_mulUnit6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$32, %esp
	movl	60(%esp), %esi
	movl	56(%esp), %ebp
	movl	%esi, %eax
	mull	(%ebp)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	4(%ebp)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	8(%ebp)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	12(%ebp)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	16(%ebp)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	20(%ebp)
	movl	%eax, %ecx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	24(%esp), %eax          # 4-byte Folded Reload
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	%esi, (%esp)            # 4-byte Folded Spill
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	adcl	8(%esp), %ebx           # 4-byte Folded Reload
	adcl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	52(%esp), %esi
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, (%esi)
	movl	%eax, 4(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ecx, 20(%esi)
	adcl	$0, %edx
	movl	%edx, %eax
	addl	$32, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end154:
	.size	mclb_mulUnit6, .Lfunc_end154-mclb_mulUnit6
                                        # -- End function
	.globl	mclb_mulUnitAdd6        # -- Begin function mclb_mulUnitAdd6
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd6,@function
mclb_mulUnitAdd6:                       # @mclb_mulUnitAdd6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$28, %esp
	movl	56(%esp), %ebp
	movl	52(%esp), %ebx
	movl	%ebp, %eax
	mull	(%ebx)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebp, %eax
	mull	4(%ebx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%ebp, %eax
	mull	8(%ebx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ebp, %eax
	mull	12(%ebx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %edi
	movl	%ebp, %eax
	mull	16(%ebx)
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebx
	movl	%ebp, %eax
	movl	52(%esp), %edx
	mull	20(%edx)
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp
	movl	(%esp), %edx            # 4-byte Reload
	addl	%edx, (%ebp)
	adcl	4(%ebp), %ecx
	adcl	8(%ebp), %esi
	adcl	12(%ebp), %edi
	adcl	16(%ebp), %ebx
	adcl	20(%ebp), %eax
	setb	%dl
	addl	24(%esp), %ecx          # 4-byte Folded Reload
	adcl	20(%esp), %esi          # 4-byte Folded Reload
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	adcl	8(%esp), %ebx           # 4-byte Folded Reload
	adcl	4(%esp), %eax           # 4-byte Folded Reload
	movl	%ecx, 4(%ebp)
	movl	%esi, 8(%ebp)
	movl	%edi, 12(%ebp)
	movl	%ebx, 16(%ebp)
	movl	%eax, 20(%ebp)
	movzbl	%dl, %eax
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	addl	$28, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end155:
	.size	mclb_mulUnitAdd6, .Lfunc_end155-mclb_mulUnitAdd6
                                        # -- End function
	.globl	mclb_mul6               # -- Begin function mclb_mul6
	.p2align	4, 0x90
	.type	mclb_mul6,@function
mclb_mul6:                              # @mclb_mul6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	movl	100(%esp), %edx
	movl	104(%esp), %eax
	movl	(%eax), %ebp
	movl	(%edx), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	4(%edx), %ecx
	movl	%edx, %esi
	movl	%ecx, 36(%esp)          # 4-byte Spill
	mull	%ebp
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	%ebp
	movl	%eax, %ebx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%esi, %ecx
	movl	8(%esi), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	mull	%ebp
	movl	%eax, %esi
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	12(%ecx), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	mull	%ebp
	movl	%eax, %edi
	movl	%edx, (%esp)            # 4-byte Spill
	movl	16(%ecx), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	mull	%ebp
	movl	%eax, %ecx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	20(%eax), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	mull	%ebp
	addl	12(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 28(%esp)          # 4-byte Spill
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	movl	%edi, 52(%esp)          # 4-byte Spill
	adcl	(%esp), %ecx            # 4-byte Folded Reload
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	20(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	movl	96(%esp), %eax
	movl	16(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%eax)
	adcl	$0, %edx
	movl	%edx, %ebx
	movl	104(%esp), %eax
	movl	4(%eax), %ecx
	movl	%ecx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	64(%esp)                # 4-byte Folded Reload
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	60(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	56(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	addl	28(%esp), %ebp          # 4-byte Folded Reload
	adcl	24(%esp), %edi          # 4-byte Folded Reload
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	52(%esp), %ecx          # 4-byte Folded Reload
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	4(%esp), %edx           # 4-byte Folded Reload
	adcl	(%esp), %esi            # 4-byte Folded Reload
	adcl	%ebx, %eax
	setb	%bl
	addl	8(%esp), %edi           # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	adcl	20(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	48(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	44(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 52(%esp)          # 4-byte Spill
	movzbl	%bl, %eax
	adcl	68(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	96(%esp), %eax
	movl	%ebp, 4(%eax)
	movl	104(%esp), %eax
	movl	8(%eax), %esi
	movl	%esi, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, %edi
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	64(%esp)                # 4-byte Folded Reload
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	60(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	56(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	addl	%edi, %ebp
	adcl	20(%esp), %ecx          # 4-byte Folded Reload
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	48(%esp), %esi          # 4-byte Folded Reload
	adcl	44(%esp), %ebx          # 4-byte Folded Reload
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	%edx, %edi
	movl	28(%esp), %edx          # 4-byte Reload
	addl	(%esp), %edx            # 4-byte Folded Reload
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 28(%esp)          # 4-byte Spill
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	24(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 4(%esp)           # 4-byte Spill
	adcl	52(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 24(%esp)          # 4-byte Spill
	adcl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	104(%esp), %eax
	movl	12(%eax), %ecx
	movl	%ecx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, %edi
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebx
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	64(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	60(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	56(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%eax, %ebp
	movl	16(%esp), %eax          # 4-byte Reload
	addl	%edi, %eax
	movl	8(%esp), %edi           # 4-byte Reload
	adcl	%ebx, %edi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	44(%esp), %ecx          # 4-byte Folded Reload
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, %ebx
	adcl	68(%esp), %ebp          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	48(%esp), %esi          # 4-byte Reload
	addl	28(%esp), %esi          # 4-byte Folded Reload
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 16(%esp)          # 4-byte Spill
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	movl	%edi, 8(%esp)           # 4-byte Spill
	adcl	24(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	52(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 28(%esp)          # 4-byte Spill
	adcl	20(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%esi, 12(%eax)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	104(%esp), %eax
	movl	16(%eax), %esi
	movl	%esi, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebx
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	64(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	60(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	56(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%eax, %edi
	movl	12(%esp), %eax          # 4-byte Reload
	addl	%ebx, %eax
	adcl	48(%esp), %ebp          # 4-byte Folded Reload
	adcl	44(%esp), %ecx          # 4-byte Folded Reload
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	adcl	68(%esp), %edi          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	%edx, %ebx
	movl	20(%esp), %edx          # 4-byte Reload
	addl	16(%esp), %edx          # 4-byte Folded Reload
	adcl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	(%esp), %ebp            # 4-byte Folded Reload
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	28(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	24(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 4(%esp)           # 4-byte Spill
	adcl	52(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	movl	96(%esp), %eax
	movl	%edx, 16(%eax)
	adcl	$0, %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	104(%esp), %eax
	movl	20(%eax), %ecx
	movl	%ecx, %eax
	mull	32(%esp)                # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esp)                # 4-byte Folded Reload
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	64(%esp)                # 4-byte Folded Reload
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	60(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	56(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	addl	24(%esp), %edi          # 4-byte Folded Reload
	adcl	36(%esp), %esi          # 4-byte Folded Reload
	adcl	64(%esp), %ebx          # 4-byte Folded Reload
	adcl	60(%esp), %ebp          # 4-byte Folded Reload
	adcl	56(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	32(%esp), %ecx          # 4-byte Reload
	addl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	16(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 36(%esp)          # 4-byte Spill
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	4(%esp), %ebx           # 4-byte Folded Reload
	adcl	(%esp), %ebp            # 4-byte Folded Reload
	adcl	28(%esp), %eax          # 4-byte Folded Reload
	movl	96(%esp), %ecx
	movl	32(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%ecx)
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 24(%ecx)
	movl	%esi, 28(%ecx)
	movl	%ebx, 32(%ecx)
	movl	%ebp, 36(%ecx)
	movl	%eax, 40(%ecx)
	adcl	$0, %edx
	movl	%edx, 44(%ecx)
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end156:
	.size	mclb_mul6, .Lfunc_end156-mclb_mul6
                                        # -- End function
	.globl	mclb_sqr6               # -- Begin function mclb_sqr6
	.p2align	4, 0x90
	.type	mclb_sqr6,@function
mclb_sqr6:                              # @mclb_sqr6
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$120, %esp
	movl	140(%esp), %esi
	movl	144(%esp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, (%esi)
	movl	%edi, %eax
	mull	%ecx
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%ebx, %esi
	movl	8(%ebx), %ebx
	movl	%ebx, %eax
	mull	%ecx
	movl	%eax, %ebp
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	12(%esi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	16(%esi), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, %edi
	movl	%eax, 112(%esp)         # 4-byte Spill
	movl	%edx, %esi
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	144(%esp), %eax
	movl	20(%eax), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	mull	%ecx
	movl	%eax, 116(%esp)         # 4-byte Spill
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	addl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ebp, %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	72(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 92(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	%edi, %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	adcl	%eax, %esi
	movl	%esi, 80(%esp)          # 4-byte Spill
	adcl	$0, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, %eax
	mull	%esi
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	%esi
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	mull	%esi
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	mull	%esi
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 100(%esp)         # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	mull	%esi
	movl	%eax, %ecx
	movl	%eax, 104(%esp)         # 4-byte Spill
	movl	%edx, 108(%esp)         # 4-byte Spill
	addl	48(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	68(%esp), %esi          # 4-byte Folded Reload
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	%edi, %ebp
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	%ecx, %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	%edx, %edi
	adcl	$0, %edi
	movl	12(%esp), %ecx          # 4-byte Reload
	addl	(%esp), %ecx            # 4-byte Folded Reload
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	%edx, 64(%esp)          # 4-byte Folded Spill
	adcl	92(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	88(%esp), %esi          # 4-byte Folded Reload
	adcl	80(%esp), %ebp          # 4-byte Folded Reload
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	%eax, 16(%esp)          # 4-byte Folded Spill
	movl	140(%esp), %edx
	movl	%ecx, 4(%edx)
	adcl	$0, %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	%ebx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ecx
	movl	52(%esp), %eax          # 4-byte Reload
	mull	%ebx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 80(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	mull	%ebx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	mull	%ebx
	movl	%eax, %ebx
	movl	%eax, 88(%esp)          # 4-byte Spill
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	addl	44(%esp), %eax          # 4-byte Folded Reload
	adcl	8(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	%edi, %ecx
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	48(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	%ebx, %edi
	movl	%edi, %ebx
	adcl	$0, %edx
	movl	%edx, %edi
	movl	64(%esp), %edx          # 4-byte Reload
	addl	84(%esp), %edx          # 4-byte Folded Reload
	adcl	24(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 28(%esp)          # 4-byte Spill
	adcl	%esi, 44(%esp)          # 4-byte Folded Spill
	adcl	%ebp, %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	%eax, 8(%esp)           # 4-byte Folded Spill
	adcl	40(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 64(%esp)          # 4-byte Spill
	movl	140(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %edi
	movl	%edi, 84(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %esi
	movl	%eax, %ebp
	movl	36(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	addl	68(%esp), %eax          # 4-byte Folded Reload
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	80(%esp), %ecx          # 4-byte Folded Reload
	adcl	20(%esp), %ebp          # 4-byte Folded Reload
	adcl	%edi, %esi
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	%ebx, %edi
	adcl	$0, %edx
	movl	%edx, %ebx
	movl	28(%esp), %edx          # 4-byte Reload
	addl	72(%esp), %edx          # 4-byte Folded Reload
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	(%esp), %ecx            # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	8(%esp), %ebp           # 4-byte Folded Reload
	movl	%ebp, 20(%esp)          # 4-byte Spill
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 28(%esp)          # 4-byte Spill
	adcl	84(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 72(%esp)          # 4-byte Spill
	movl	140(%esp), %eax
	movl	%edx, 12(%eax)
	adcl	$0, %ebx
	movl	%ebx, 68(%esp)          # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, %eax
	mull	%ebx
	movl	%edx, %edi
	movl	%eax, %esi
	movl	56(%esp), %eax          # 4-byte Reload
	mull	%ebx
	movl	%eax, %ebx
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edx, %ebp
	movl	%edx, (%esp)            # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	addl	100(%esp), %eax         # 4-byte Folded Reload
	movl	76(%esp), %edx          # 4-byte Reload
	adcl	48(%esp), %edx          # 4-byte Folded Reload
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	40(%esp), %ecx          # 4-byte Folded Reload
	adcl	24(%esp), %esi          # 4-byte Folded Reload
	adcl	%ebx, %edi
	adcl	$0, %ebp
	movl	%ebp, %ebx
	movl	4(%esp), %ebp           # 4-byte Reload
	addl	112(%esp), %ebp         # 4-byte Folded Reload
	movl	%ebp, 4(%esp)           # 4-byte Spill
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 60(%esp)          # 4-byte Spill
	adcl	20(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 76(%esp)          # 4-byte Spill
	adcl	28(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	72(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 32(%esp)          # 4-byte Spill
	adcl	68(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	140(%esp), %eax
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 16(%eax)
	adcl	$0, %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	mull	%eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	96(%esp), %ecx          # 4-byte Reload
	addl	104(%esp), %ecx         # 4-byte Folded Reload
	movl	108(%esp), %eax         # 4-byte Reload
	adcl	88(%esp), %eax          # 4-byte Folded Reload
	movl	92(%esp), %edx          # 4-byte Reload
	adcl	16(%esp), %edx          # 4-byte Folded Reload
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	8(%esp), %ebp           # 4-byte Folded Reload
	adcl	(%esp), %esi            # 4-byte Folded Reload
	adcl	$0, %edi
	movl	60(%esp), %ebx          # 4-byte Reload
	addl	116(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 60(%esp)          # 4-byte Spill
	adcl	76(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 96(%esp)          # 4-byte Spill
	adcl	12(%esp), %eax          # 4-byte Folded Reload
	adcl	32(%esp), %edx          # 4-byte Folded Reload
	adcl	36(%esp), %ebp          # 4-byte Folded Reload
	adcl	4(%esp), %esi           # 4-byte Folded Reload
	movl	140(%esp), %ecx
	movl	60(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%ecx)
	movl	96(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 24(%ecx)
	movl	%eax, 28(%ecx)
	movl	%edx, 32(%ecx)
	movl	%ebp, 36(%ecx)
	movl	%esi, 40(%ecx)
	adcl	$0, %edi
	movl	%edi, 44(%ecx)
	addl	$120, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end157:
	.size	mclb_sqr6, .Lfunc_end157-mclb_sqr6
                                        # -- End function
	.globl	mulUnit_inner224        # -- Begin function mulUnit_inner224
	.p2align	4, 0x90
	.type	mulUnit_inner224,@function
mulUnit_inner224:                       # @mulUnit_inner224
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	72(%esp), %ebx
	movl	68(%esp), %ecx
	movl	%ebx, %eax
	mull	(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	4(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	8(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	12(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	16(%ecx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	20(%ecx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	24(%ecx)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	24(%esp), %eax          # 4-byte Reload
	addl	36(%esp), %eax          # 4-byte Folded Reload
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	28(%esp), %edx          # 4-byte Folded Reload
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, (%esp)            # 4-byte Folded Spill
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	movl	64(%esp), %ebx
	movl	40(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%ebx)
	movl	%eax, 4(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 8(%ebx)
	movl	%edx, 12(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 16(%ebx)
	movl	%ebp, 20(%ebx)
	movl	%esi, 24(%ebx)
	adcl	$0, %edi
	movl	%edi, 28(%ebx)
	movl	%ebx, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end158:
	.size	mulUnit_inner224, .Lfunc_end158-mulUnit_inner224
                                        # -- End function
	.globl	mclb_mulUnit7           # -- Begin function mclb_mulUnit7
	.p2align	4, 0x90
	.type	mclb_mulUnit7,@function
mclb_mulUnit7:                          # @mclb_mulUnit7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$44, %esp
	movl	72(%esp), %ebx
	movl	68(%esp), %ecx
	movl	%ebx, %eax
	mull	(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	4(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	8(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	12(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	16(%ecx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	20(%ecx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	24(%ecx)
	movl	%eax, %esi
	movl	%edx, %edi
	movl	24(%esp), %eax          # 4-byte Reload
	addl	36(%esp), %eax          # 4-byte Folded Reload
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	28(%esp), %edx          # 4-byte Folded Reload
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, (%esp)            # 4-byte Folded Spill
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	movl	64(%esp), %ecx
	movl	40(%esp), %ebx          # 4-byte Reload
	movl	%ebx, (%ecx)
	movl	%eax, 4(%ecx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 16(%ecx)
	movl	%ebp, 20(%ecx)
	movl	%esi, 24(%ecx)
	adcl	$0, %edi
	movl	%edi, %eax
	addl	$44, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end159:
	.size	mclb_mulUnit7, .Lfunc_end159-mclb_mulUnit7
                                        # -- End function
	.globl	mclb_mulUnitAdd7        # -- Begin function mclb_mulUnitAdd7
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd7,@function
mclb_mulUnitAdd7:                       # @mclb_mulUnitAdd7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$36, %esp
	movl	64(%esp), %ebx
	movl	60(%esp), %ecx
	movl	%ebx, %eax
	mull	(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ebx, %eax
	mull	4(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	8(%ecx)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ebx, %eax
	mull	12(%ecx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ebx, %eax
	mull	16(%ecx)
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	20(%ecx)
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebx
	movl	64(%esp), %eax
	mull	24(%ecx)
	movl	%eax, %ecx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %eax
	movl	(%esp), %edx            # 4-byte Reload
	addl	%edx, (%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	adcl	4(%eax), %edx
	adcl	8(%eax), %esi
	adcl	12(%eax), %edi
	adcl	16(%eax), %ebp
	adcl	20(%eax), %ebx
	adcl	24(%eax), %ecx
	setb	(%esp)                  # 1-byte Folded Spill
	addl	32(%esp), %edx          # 4-byte Folded Reload
	adcl	28(%esp), %esi          # 4-byte Folded Reload
	adcl	24(%esp), %edi          # 4-byte Folded Reload
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	adcl	12(%esp), %ebx          # 4-byte Folded Reload
	adcl	8(%esp), %ecx           # 4-byte Folded Reload
	movl	%edx, 4(%eax)
	movl	%esi, 8(%eax)
	movl	%edi, 12(%eax)
	movl	%ebp, 16(%eax)
	movl	%ebx, 20(%eax)
	movl	%ecx, 24(%eax)
	movzbl	(%esp), %eax            # 1-byte Folded Reload
	adcl	20(%esp), %eax          # 4-byte Folded Reload
	addl	$36, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end160:
	.size	mclb_mulUnitAdd7, .Lfunc_end160-mclb_mulUnitAdd7
                                        # -- End function
	.globl	mclb_mul7               # -- Begin function mclb_mul7
	.p2align	4, 0x90
	.type	mclb_mul7,@function
mclb_mul7:                              # @mclb_mul7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	120(%esp), %ecx
	movl	124(%esp), %eax
	movl	(%eax), %ebx
	movl	(%ecx), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	4(%ecx), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	%ebx
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	8(%ecx), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %edi
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	12(%ecx), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %ebp
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	16(%ecx), %eax
	movl	%eax, 80(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %esi
	movl	%edx, (%esp)            # 4-byte Spill
	movl	20(%ecx), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	mull	%ebx
	movl	%eax, %ecx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	120(%esp), %eax
	movl	24(%eax), %eax
	movl	%eax, 88(%esp)          # 4-byte Spill
	mull	%ebx
	movl	24(%esp), %ebx          # 4-byte Reload
	addl	32(%esp), %ebx          # 4-byte Folded Reload
	adcl	28(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 16(%esp)          # 4-byte Spill
	adcl	20(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	4(%esp), %esi           # 4-byte Folded Reload
	adcl	(%esp), %ecx            # 4-byte Folded Reload
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	36(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%eax)
	adcl	$0, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	124(%esp), %eax
	movl	4(%eax), %edi
	movl	%edi, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%edi, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%edi, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%edi, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	movl	%edx, 84(%esp)          # 4-byte Spill
	addl	%ebx, %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	%esi, %edx
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	28(%esp), %esi          # 4-byte Folded Reload
	movl	(%esp), %edi            # 4-byte Reload
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	setb	%bl
	addl	36(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 40(%esp)          # 4-byte Spill
	adcl	8(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	68(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 4(%esp)           # 4-byte Spill
	adcl	60(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	adcl	56(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 68(%esp)          # 4-byte Spill
	movzbl	%bl, %eax
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	92(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 4(%eax)
	movl	124(%esp), %eax
	movl	8(%eax), %ecx
	movl	%ecx, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebp
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	movl	%eax, %edi
	movl	%edx, %ebx
	movl	36(%esp), %eax          # 4-byte Reload
	addl	%ebp, %eax
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	12(%esp), %edx          # 4-byte Folded Reload
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	60(%esp), %ecx          # 4-byte Folded Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	84(%esp), %esi          # 4-byte Folded Reload
	adcl	92(%esp), %edi          # 4-byte Folded Reload
	adcl	$0, %ebx
	movl	8(%esp), %ebp           # 4-byte Reload
	addl	40(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 8(%esp)           # 4-byte Spill
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 36(%esp)          # 4-byte Spill
	adcl	24(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	68(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 16(%esp)          # 4-byte Spill
	adcl	64(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 8(%eax)
	adcl	$0, %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	movl	124(%esp), %eax
	movl	12(%eax), %esi
	movl	%esi, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebx
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	addl	%ebx, %ebp
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	4(%esp), %edx           # 4-byte Folded Reload
	adcl	68(%esp), %ecx          # 4-byte Folded Reload
	adcl	64(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	8(%esp), %edi           # 4-byte Reload
	adcl	$0, %edi
	movl	(%esp), %ebx            # 4-byte Reload
	addl	36(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, (%esp)            # 4-byte Spill
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 68(%esp)          # 4-byte Spill
	adcl	20(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	16(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	60(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	movl	%ecx, 12(%eax)
	adcl	$0, %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	124(%esp), %eax
	movl	16(%eax), %ecx
	movl	%ecx, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, %edi
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebp
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	addl	%edi, %ebx
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	%ebp, %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	16(%esp), %ecx          # 4-byte Folded Reload
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	60(%esp), %esi          # 4-byte Folded Reload
	adcl	56(%esp), %eax          # 4-byte Folded Reload
	adcl	$0, %edx
	movl	(%esp), %ebp            # 4-byte Reload
	addl	68(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, (%esp)            # 4-byte Spill
	adcl	32(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 40(%esp)          # 4-byte Spill
	adcl	64(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 36(%esp)          # 4-byte Spill
	adcl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	24(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	12(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 20(%esp)          # 4-byte Spill
	adcl	8(%esp), %eax           # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	(%esp), %ecx            # 4-byte Reload
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	124(%esp), %eax
	movl	20(%eax), %esi
	movl	%esi, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, %ecx
	movl	%esi, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	movl	%edx, %ebx
	addl	(%esp), %edi            # 4-byte Folded Reload
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	68(%esp), %edx          # 4-byte Folded Reload
	adcl	64(%esp), %ecx          # 4-byte Folded Reload
	adcl	60(%esp), %ebp          # 4-byte Folded Reload
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	adcl	$0, %ebx
	movl	4(%esp), %eax           # 4-byte Reload
	addl	40(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	36(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 36(%esp)          # 4-byte Spill
	adcl	28(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	16(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	20(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 20(%esp)          # 4-byte Spill
	adcl	12(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	%eax, (%esp)            # 4-byte Folded Spill
	movl	116(%esp), %eax
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 20(%eax)
	adcl	$0, %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	movl	124(%esp), %eax
	movl	24(%eax), %ecx
	movl	%ecx, %eax
	mull	48(%esp)                # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esp)                # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	72(%esp)                # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	%eax, %esi
	movl	%ecx, %eax
	mull	44(%esp)                # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	80(%esp)                # 4-byte Folded Reload
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	76(%esp)                # 4-byte Folded Reload
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	88(%esp)                # 4-byte Folded Reload
	movl	%eax, %edi
	movl	%edx, %ebp
	movl	52(%esp), %eax          # 4-byte Reload
	addl	16(%esp), %eax          # 4-byte Folded Reload
	adcl	12(%esp), %esi          # 4-byte Folded Reload
	adcl	8(%esp), %ebx           # 4-byte Folded Reload
	movl	%ebx, %edx
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	44(%esp), %ebx          # 4-byte Folded Reload
	movl	80(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 72(%esp)          # 4-byte Folded Spill
	adcl	76(%esp), %edi          # 4-byte Folded Reload
	adcl	$0, %ebp
	movl	48(%esp), %ecx          # 4-byte Reload
	addl	36(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	28(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 44(%esp)          # 4-byte Spill
	adcl	20(%esp), %edx          # 4-byte Folded Reload
	adcl	24(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, %esi
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	movl	116(%esp), %ecx
	movl	48(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 24(%ecx)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 28(%ecx)
	movl	44(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	%esi, 40(%ecx)
	movl	%eax, 44(%ecx)
	movl	%edi, 48(%ecx)
	adcl	$0, %ebp
	movl	%ebp, 52(%ecx)
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end161:
	.size	mclb_mul7, .Lfunc_end161-mclb_mul7
                                        # -- End function
	.globl	mclb_sqr7               # -- Begin function mclb_sqr7
	.p2align	4, 0x90
	.type	mclb_sqr7,@function
mclb_sqr7:                              # @mclb_sqr7
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$168, %esp
	movl	188(%esp), %ecx
	movl	192(%esp), %eax
	movl	(%eax), %edi
	movl	4(%eax), %esi
	movl	%esi, 88(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%edi, %eax
	mull	%edi
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, (%ecx)
	movl	%esi, %eax
	mull	%edi
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%ebx, %ecx
	movl	8(%ebx), %esi
	movl	%esi, %eax
	movl	%esi, 120(%esp)         # 4-byte Spill
	mull	%edi
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	12(%ebx), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	mull	%edi
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	16(%ebx), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	mull	%edi
	movl	%eax, %ebx
	movl	%eax, 152(%esp)         # 4-byte Spill
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	20(%ecx), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	mull	%edi
	movl	%eax, %ebp
	movl	%eax, 160(%esp)         # 4-byte Spill
	movl	%edx, %ecx
	movl	%edx, 124(%esp)         # 4-byte Spill
	movl	192(%esp), %eax
	movl	24(%eax), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	mull	%edi
	movl	%eax, 164(%esp)         # 4-byte Spill
	movl	%edx, 128(%esp)         # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	addl	%edi, 44(%esp)          # 4-byte Folded Spill
	movl	(%esp), %edi            # 4-byte Reload
	adcl	8(%esp), %edi           # 4-byte Folded Reload
	movl	%edi, 100(%esp)         # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	84(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 96(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	%ebx, %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	adcl	%ebp, %edi
	movl	%edi, 116(%esp)         # 4-byte Spill
	adcl	%eax, %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	88(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	%ecx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%eax, 112(%esp)         # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	mull	%ecx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 132(%esp)         # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 148(%esp)         # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %ecx
	movl	%eax, 156(%esp)         # 4-byte Spill
	movl	%edx, 88(%esp)          # 4-byte Spill
	addl	(%esp), %ebx            # 4-byte Folded Reload
	movl	%ebx, 76(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	%ebp, %eax
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	92(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 80(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	132(%esp), %ebp         # 4-byte Folded Reload
	movl	56(%esp), %ebx          # 4-byte Reload
	adcl	%edi, %ebx
	movl	%ebx, %edi
	movl	104(%esp), %ebx         # 4-byte Reload
	adcl	%ecx, %ebx
	adcl	$0, %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	addl	36(%esp), %ecx          # 4-byte Folded Reload
	movl	100(%esp), %esi         # 4-byte Reload
	adcl	%esi, 76(%esp)          # 4-byte Folded Spill
	adcl	96(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	%eax, 80(%esp)          # 4-byte Folded Spill
	adcl	116(%esp), %ebp         # 4-byte Folded Reload
	movl	%ebp, 68(%esp)          # 4-byte Spill
	adcl	72(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 108(%esp)         # 4-byte Spill
	adcl	28(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 72(%esp)          # 4-byte Spill
	movl	188(%esp), %eax
	movl	%ecx, 4(%eax)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %ebx
	movl	%eax, (%esp)            # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	mull	%ecx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 136(%esp)         # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 96(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 100(%esp)         # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %ebp
	movl	%eax, 116(%esp)         # 4-byte Spill
	movl	%edx, 120(%esp)         # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	addl	112(%esp), %esi         # 4-byte Folded Reload
	movl	(%esp), %eax            # 4-byte Reload
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	%ebx, %ecx
	adcl	%edi, %ecx
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	96(%esp), %ebx          # 4-byte Folded Reload
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	100(%esp), %edi         # 4-byte Folded Reload
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	%ebp, %edi
	adcl	$0, %edx
	movl	%edx, %ebp
	movl	76(%esp), %edx          # 4-byte Reload
	addl	8(%esp), %edx           # 4-byte Folded Reload
	adcl	16(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 12(%esp)          # 4-byte Spill
	adcl	80(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	adcl	68(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	108(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 144(%esp)         # 4-byte Spill
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	%eax, 32(%esp)          # 4-byte Folded Spill
	adcl	28(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	188(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %ebp
	movl	%ebp, 140(%esp)         # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %ebp
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%eax, 108(%esp)         # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %esi
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	%edx, %edi
	movl	%edx, 112(%esp)         # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	addl	92(%esp), %eax          # 4-byte Folded Reload
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	136(%esp), %ecx         # 4-byte Folded Reload
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	48(%esp), %edx          # 4-byte Folded Reload
	adcl	76(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 4(%esp)           # 4-byte Spill
	movl	80(%esp), %ebp          # 4-byte Reload
	adcl	%ebx, %ebp
	movl	16(%esp), %ebx          # 4-byte Reload
	adcl	%esi, %ebx
	adcl	$0, %edi
	movl	12(%esp), %esi          # 4-byte Reload
	addl	84(%esp), %esi          # 4-byte Folded Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	68(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	144(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 68(%esp)          # 4-byte Spill
	adcl	140(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	188(%esp), %eax
	movl	%esi, 12(%eax)
	adcl	$0, %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %ebp
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %edi
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, %ebx
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	addl	132(%esp), %esi         # 4-byte Folded Reload
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	96(%esp), %edx          # 4-byte Folded Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	76(%esp), %ecx          # 4-byte Folded Reload
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax          # 4-byte Folded Reload
	adcl	%edi, %ebp
	movl	%ebp, 84(%esp)          # 4-byte Spill
	movl	(%esp), %edi            # 4-byte Reload
	adcl	%ebx, %edi
	movl	%edi, %ebp
	movl	20(%esp), %ebx          # 4-byte Reload
	adcl	$0, %ebx
	movl	40(%esp), %edi          # 4-byte Reload
	addl	152(%esp), %edi         # 4-byte Folded Reload
	adcl	52(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 60(%esp)          # 4-byte Spill
	adcl	8(%esp), %edx           # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	adcl	4(%esp), %ecx           # 4-byte Folded Reload
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	68(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	%eax, 84(%esp)          # 4-byte Folded Spill
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 4(%esp)           # 4-byte Spill
	movl	188(%esp), %eax
	movl	%edi, 16(%eax)
	adcl	$0, %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, %eax
	mull	%ecx
	movl	%edx, %ebx
	movl	%eax, %edi
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%ecx
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%edx, %ebp
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	124(%esp), %eax         # 4-byte Reload
	addl	148(%esp), %eax         # 4-byte Folded Reload
	movl	104(%esp), %edx         # 4-byte Reload
	adcl	100(%esp), %edx         # 4-byte Folded Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	108(%esp), %ecx         # 4-byte Folded Reload
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	48(%esp), %esi          # 4-byte Folded Reload
	adcl	(%esp), %edi            # 4-byte Folded Reload
	adcl	40(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 24(%esp)          # 4-byte Spill
	adcl	$0, %ebp
	movl	60(%esp), %ebx          # 4-byte Reload
	addl	160(%esp), %ebx         # 4-byte Folded Reload
	adcl	56(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 124(%esp)         # 4-byte Spill
	adcl	36(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 104(%esp)         # 4-byte Spill
	adcl	12(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	84(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 16(%esp)          # 4-byte Spill
	adcl	4(%esp), %edi           # 4-byte Folded Reload
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	%eax, 24(%esp)          # 4-byte Folded Spill
	movl	188(%esp), %eax
	movl	%ebx, 20(%eax)
	adcl	$0, %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	mull	%eax
	movl	%eax, %esi
	movl	%edx, %edi
	movl	128(%esp), %ebx         # 4-byte Reload
	addl	156(%esp), %ebx         # 4-byte Folded Reload
	movl	88(%esp), %ebp          # 4-byte Reload
	adcl	116(%esp), %ebp         # 4-byte Folded Reload
	movl	120(%esp), %eax         # 4-byte Reload
	adcl	72(%esp), %eax          # 4-byte Folded Reload
	movl	112(%esp), %ecx         # 4-byte Reload
	adcl	92(%esp), %ecx          # 4-byte Folded Reload
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	%edx, 20(%esp)          # 4-byte Folded Spill
	adcl	8(%esp), %esi           # 4-byte Folded Reload
	adcl	$0, %edi
	movl	124(%esp), %edx         # 4-byte Reload
	addl	164(%esp), %edx         # 4-byte Folded Reload
	adcl	104(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 128(%esp)         # 4-byte Spill
	adcl	44(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 88(%esp)          # 4-byte Spill
	adcl	16(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, %ebp
	adcl	60(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, %ebx
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	24(%esp), %eax          # 4-byte Folded Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	movl	188(%esp), %ecx
	movl	%edx, 24(%ecx)
	movl	128(%esp), %edx         # 4-byte Reload
	movl	%edx, 28(%ecx)
	movl	88(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%ecx)
	movl	%ebp, 36(%ecx)
	movl	%ebx, 40(%ecx)
	movl	%eax, 44(%ecx)
	movl	%esi, 48(%ecx)
	adcl	$0, %edi
	movl	%edi, 52(%ecx)
	addl	$168, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end162:
	.size	mclb_sqr7, .Lfunc_end162-mclb_sqr7
                                        # -- End function
	.globl	mulUnit_inner256        # -- Begin function mulUnit_inner256
	.p2align	4, 0x90
	.type	mulUnit_inner256,@function
mulUnit_inner256:                       # @mulUnit_inner256
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$52, %esp
	movl	80(%esp), %ecx
	movl	76(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, %edi
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%eax, %ebp
	movl	%edx, 36(%esp)          # 4-byte Spill
	addl	44(%esp), %ebx          # 4-byte Folded Reload
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	adcl	%edi, 4(%esp)           # 4-byte Folded Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, (%esp)            # 4-byte Folded Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	24(%esp), %edi          # 4-byte Folded Reload
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	20(%esp), %edx          # 4-byte Folded Reload
	adcl	16(%esp), %ebp          # 4-byte Folded Reload
	movl	72(%esp), %ecx
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, (%ecx)
	movl	%ebx, 4(%ecx)
	movl	%eax, 8(%ecx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 12(%ecx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 16(%ecx)
	movl	%edi, 20(%ecx)
	movl	%edx, 24(%ecx)
	movl	%ebp, 28(%ecx)
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 32(%ecx)
	movl	%ecx, %eax
	addl	$52, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end163:
	.size	mulUnit_inner256, .Lfunc_end163-mulUnit_inner256
                                        # -- End function
	.globl	mclb_mulUnit8           # -- Begin function mclb_mulUnit8
	.p2align	4, 0x90
	.type	mclb_mulUnit8,@function
mclb_mulUnit8:                          # @mclb_mulUnit8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L164$pb
.L164$pb:
	popl	%ebx
.Ltmp0:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp0-.L164$pb), %ebx
	movl	80(%esp), %esi
	subl	$4, %esp
	leal	28(%esp), %eax
	pushl	92(%esp)
	pushl	92(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	56(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	52(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	48(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	44(%esp), %edi
	movl	40(%esp), %ebx
	movl	36(%esp), %ebp
	movl	32(%esp), %edx
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%ebp, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%edi, 20(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end164:
	.size	mclb_mulUnit8, .Lfunc_end164-mclb_mulUnit8
                                        # -- End function
	.globl	mclb_mulUnitAdd8        # -- Begin function mclb_mulUnitAdd8
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd8,@function
mclb_mulUnitAdd8:                       # @mclb_mulUnitAdd8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$48, %esp
	movl	76(%esp), %esi
	movl	72(%esp), %ecx
	movl	%esi, %eax
	mull	(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	4(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	8(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	12(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	16(%ecx)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%esi, %eax
	mull	20(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	24(%ecx)
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%esi, %eax
	mull	28(%ecx)
	movl	%eax, %ecx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	68(%esp), %esi
	addl	%ebx, (%esi)
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	4(%esi), %edx
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	8(%esi), %eax
	movl	12(%esp), %ebx          # 4-byte Reload
	adcl	12(%esi), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	(%esp), %ebx            # 4-byte Reload
	adcl	16(%esi), %ebx
	adcl	20(%esi), %ebp
	adcl	24(%esi), %edi
	adcl	28(%esi), %ecx
	setb	(%esp)                  # 1-byte Folded Spill
	addl	44(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	36(%esp), %eax          # 4-byte Folded Reload
	adcl	32(%esp), %ebx          # 4-byte Folded Reload
	adcl	24(%esp), %ebp          # 4-byte Folded Reload
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	adcl	16(%esp), %ecx          # 4-byte Folded Reload
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 4(%esi)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 8(%esi)
	movl	%eax, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	%edi, 24(%esi)
	movl	%ecx, 28(%esi)
	movzbl	(%esp), %eax            # 1-byte Folded Reload
	adcl	28(%esp), %eax          # 4-byte Folded Reload
	addl	$48, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end165:
	.size	mclb_mulUnitAdd8, .Lfunc_end165-mclb_mulUnitAdd8
                                        # -- End function
	.globl	mclb_mul8               # -- Begin function mclb_mul8
	.p2align	4, 0x90
	.type	mclb_mul8,@function
mclb_mul8:                              # @mclb_mul8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$348, %esp              # imm = 0x15C
	calll	.L166$pb
.L166$pb:
	popl	%ebx
.Ltmp1:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp1-.L166$pb), %ebx
	movl	376(%esp), %ecx
	subl	$4, %esp
	leal	316(%esp), %eax
	pushl	(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	344(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	340(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	336(%esp), %edi
	movl	332(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	328(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	324(%esp), %esi
	movl	320(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	312(%esp), %eax
	movl	316(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	276(%esp), %eax
	movl	380(%esp), %ecx
	pushl	4(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	304(%esp), %eax
	addl	272(%esp), %ebp
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	280(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	284(%esp), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	288(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	292(%esp), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	296(%esp), %edi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	300(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%ebp, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	236(%esp), %eax
	movl	380(%esp), %ecx
	pushl	8(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	264(%esp), %eax
	movl	(%esp), %edx            # 4-byte Reload
	addl	232(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	236(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	240(%esp), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	244(%esp), %esi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	248(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	252(%esp), %edi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	260(%esp), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%edx, 8(%ecx)
	adcl	$0, %eax
	movl	%eax, (%esp)            # 4-byte Spill
	subl	$4, %esp
	leal	196(%esp), %eax
	movl	380(%esp), %ecx
	pushl	12(%ecx)
	movl	380(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	224(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	addl	192(%esp), %edx
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	196(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	200(%esp), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	204(%esp), %ebp
	adcl	208(%esp), %edi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	216(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	220(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	380(%esp), %ecx
	pushl	16(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	184(%esp), %edx
	movl	4(%esp), %ecx           # 4-byte Reload
	addl	152(%esp), %ecx
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	156(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	160(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	164(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	168(%esp), %edi
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	172(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	(%esp), %eax            # 4-byte Reload
	adcl	176(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	adcl	180(%esp), %esi
	movl	%esi, %ebp
	movl	368(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	subl	$4, %esp
	leal	116(%esp), %eax
	movl	380(%esp), %ecx
	pushl	20(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	144(%esp), %edx
	movl	8(%esp), %eax           # 4-byte Reload
	addl	112(%esp), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	116(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	120(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	124(%esp), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	128(%esp), %esi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	132(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	136(%esp), %ebp
	movl	%ebp, %edi
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	140(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, 20(%ecx)
	adcl	$0, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	leal	76(%esp), %eax
	movl	380(%esp), %ecx
	pushl	24(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	104(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	72(%esp), %eax
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	76(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	80(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	84(%esp), %esi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	88(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	92(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	96(%esp), %ebp
	movl	%ebp, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	adcl	100(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	36(%esp), %eax
	movl	380(%esp), %ecx
	pushl	28(%ecx)
	pushl	380(%esp)
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	20(%esp), %eax          # 4-byte Reload
	addl	32(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	36(%esp), %edi
	adcl	40(%esp), %esi
	movl	(%esp), %ebx            # 4-byte Reload
	adcl	44(%esp), %ebx
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	48(%esp), %edx
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	52(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	56(%esp), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	60(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	368(%esp), %ecx
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 28(%ecx)
	movl	%edi, 32(%ecx)
	movl	%esi, 36(%ecx)
	movl	%ebx, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 48(%ecx)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 52(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%ecx)
	adcl	$0, %eax
	movl	%eax, 60(%ecx)
	addl	$348, %esp              # imm = 0x15C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end166:
	.size	mclb_mul8, .Lfunc_end166-mclb_mul8
                                        # -- End function
	.globl	mclb_sqr8               # -- Begin function mclb_sqr8
	.p2align	4, 0x90
	.type	mclb_sqr8,@function
mclb_sqr8:                              # @mclb_sqr8
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$348, %esp              # imm = 0x15C
	calll	.L167$pb
.L167$pb:
	popl	%ebx
.Ltmp2:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp2-.L167$pb), %ebx
	movl	372(%esp), %ecx
	subl	$4, %esp
	leal	316(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	344(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	340(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	336(%esp), %edi
	movl	332(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	328(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	324(%esp), %esi
	movl	320(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	312(%esp), %eax
	movl	316(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	276(%esp), %eax
	movl	376(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	304(%esp), %eax
	addl	272(%esp), %ebp
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	280(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	284(%esp), %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	288(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	292(%esp), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	296(%esp), %edi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	300(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%ebp, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	236(%esp), %eax
	movl	376(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	264(%esp), %eax
	movl	4(%esp), %edx           # 4-byte Reload
	addl	232(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	236(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	240(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	244(%esp), %esi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	248(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	252(%esp), %edi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	260(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%edx, 8(%ecx)
	adcl	$0, %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	subl	$4, %esp
	leal	196(%esp), %eax
	movl	376(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	224(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	addl	192(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	196(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	200(%esp), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	204(%esp), %ebp
	adcl	208(%esp), %edi
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	216(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	220(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	368(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	376(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	184(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	addl	152(%esp), %ecx
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	156(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	160(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	164(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	(%esp), %edi            # 4-byte Reload
	adcl	168(%esp), %edi
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	172(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	176(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	180(%esp), %esi
	movl	%esi, %ebp
	movl	368(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, (%esp)            # 4-byte Spill
	subl	$4, %esp
	leal	116(%esp), %eax
	movl	376(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	144(%esp), %edx
	movl	8(%esp), %eax           # 4-byte Reload
	addl	112(%esp), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	116(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	120(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	124(%esp), %edi
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	128(%esp), %esi
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	132(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	136(%esp), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	(%esp), %ebp            # 4-byte Reload
	adcl	140(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, 20(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	76(%esp), %eax
	movl	376(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	104(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	72(%esp), %eax
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	76(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	80(%esp), %edi
	adcl	84(%esp), %esi
	movl	4(%esp), %ecx           # 4-byte Reload
	adcl	88(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	92(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	96(%esp), %ebp
	movl	%ebp, (%esp)            # 4-byte Spill
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	100(%esp), %ebp
	movl	368(%esp), %ecx
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	36(%esp), %eax
	movl	376(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner256@PLT
	addl	$12, %esp
	movl	20(%esp), %eax          # 4-byte Reload
	addl	32(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	36(%esp), %edi
	adcl	40(%esp), %esi
	movl	4(%esp), %ebx           # 4-byte Reload
	adcl	44(%esp), %ebx
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	48(%esp), %edx
	movl	(%esp), %eax            # 4-byte Reload
	adcl	52(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	adcl	56(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	60(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	368(%esp), %ecx
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 28(%ecx)
	movl	%edi, 32(%ecx)
	movl	%esi, 36(%ecx)
	movl	%ebx, 40(%ecx)
	movl	%edx, 44(%ecx)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 48(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 52(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%ecx)
	adcl	$0, %eax
	movl	%eax, 60(%ecx)
	addl	$348, %esp              # imm = 0x15C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end167:
	.size	mclb_sqr8, .Lfunc_end167-mclb_sqr8
                                        # -- End function
	.globl	mulUnit_inner288        # -- Begin function mulUnit_inner288
	.p2align	4, 0x90
	.type	mulUnit_inner288,@function
mulUnit_inner288:                       # @mulUnit_inner288
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$56, %esp
	movl	84(%esp), %edi
	movl	80(%esp), %ecx
	movl	%edi, %eax
	mull	(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	4(%ecx)
	movl	%edx, %esi
	movl	%eax, %ebp
	movl	%edi, %eax
	mull	8(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%edi, %eax
	mull	12(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	16(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	20(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	24(%ecx)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	28(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	32(%ecx)
	movl	%eax, %edi
	movl	%edx, 40(%esp)          # 4-byte Spill
	addl	(%esp), %ebp            # 4-byte Folded Reload
	movl	%ebx, %eax
	adcl	%esi, %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	adcl	44(%esp), %ebx          # 4-byte Folded Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	32(%esp), %esi          # 4-byte Folded Reload
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	24(%esp), %edx          # 4-byte Folded Reload
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	movl	76(%esp), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%edi)
	movl	%ebp, 4(%edi)
	movl	%eax, 8(%edi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 12(%edi)
	movl	%ebx, 16(%edi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 20(%edi)
	movl	%esi, 24(%edi)
	movl	%edx, 28(%edi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 32(%edi)
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 36(%edi)
	movl	%edi, %eax
	addl	$56, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end168:
	.size	mulUnit_inner288, .Lfunc_end168-mulUnit_inner288
                                        # -- End function
	.globl	mclb_mulUnit9           # -- Begin function mclb_mulUnit9
	.p2align	4, 0x90
	.type	mclb_mulUnit9,@function
mclb_mulUnit9:                          # @mclb_mulUnit9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	.L169$pb
.L169$pb:
	popl	%ebx
.Ltmp3:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp3-.L169$pb), %ebx
	movl	80(%esp), %esi
	subl	$4, %esp
	leal	20(%esp), %eax
	pushl	92(%esp)
	pushl	92(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	52(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	48(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	44(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	40(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	36(%esp), %ebx
	movl	32(%esp), %ebp
	movl	28(%esp), %edi
	movl	24(%esp), %edx
	movl	16(%esp), %eax
	movl	20(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebp, 16(%esi)
	movl	%ebx, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end169:
	.size	mclb_mulUnit9, .Lfunc_end169-mclb_mulUnit9
                                        # -- End function
	.globl	mclb_mulUnitAdd9        # -- Begin function mclb_mulUnitAdd9
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd9,@function
mclb_mulUnitAdd9:                       # @mclb_mulUnitAdd9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	movl	88(%esp), %ecx
	movl	84(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%eax, %esi
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	80(%esp), %ecx
	addl	%ebp, (%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	8(%ecx), %eax
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	12(%ecx), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	16(%ecx), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	20(%ecx), %ebp
	adcl	24(%ecx), %ebx
	adcl	28(%ecx), %edi
	adcl	32(%ecx), %esi
	setb	3(%esp)                 # 1-byte Folded Spill
	addl	56(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	52(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	48(%esp), %edx          # 4-byte Folded Reload
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	adcl	36(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 4(%esp)           # 4-byte Spill
	adcl	32(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, %ebp
	adcl	28(%esp), %edi          # 4-byte Folded Reload
	adcl	24(%esp), %esi          # 4-byte Folded Reload
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%ecx)
	movl	8(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 8(%ecx)
	movl	%edx, 12(%ecx)
	movl	%eax, 16(%ecx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 20(%ecx)
	movl	%ebp, 24(%ecx)
	movl	%edi, 28(%ecx)
	movl	%esi, 32(%ecx)
	movzbl	3(%esp), %eax           # 1-byte Folded Reload
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end170:
	.size	mclb_mulUnitAdd9, .Lfunc_end170-mclb_mulUnitAdd9
                                        # -- End function
	.globl	mclb_mul9               # -- Begin function mclb_mul9
	.p2align	4, 0x90
	.type	mclb_mul9,@function
mclb_mul9:                              # @mclb_mul9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$412, %esp              # imm = 0x19C
	calll	.L171$pb
.L171$pb:
	popl	%ebx
.Ltmp4:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp4-.L171$pb), %ebx
	movl	440(%esp), %edx
	subl	$4, %esp
	leal	372(%esp), %eax
	pushl	(%edx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	404(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	400(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	396(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	392(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	388(%esp), %esi
	movl	384(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	380(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	376(%esp), %edi
	movl	368(%esp), %eax
	movl	372(%esp), %ebp
	movl	432(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	332(%esp), %eax
	movl	444(%esp), %ecx
	pushl	4(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	364(%esp), %eax
	addl	328(%esp), %ebp
	adcl	332(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	336(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	340(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	344(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	348(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	352(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	356(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	360(%esp), %edi
	movl	432(%esp), %ecx
	movl	%ebp, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	292(%esp), %eax
	movl	444(%esp), %ecx
	pushl	8(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	324(%esp), %eax
	movl	32(%esp), %edx          # 4-byte Reload
	addl	288(%esp), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	292(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	296(%esp), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	300(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	304(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	308(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	312(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	316(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	320(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%edx, 8(%ecx)
	adcl	$0, %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	252(%esp), %eax
	movl	444(%esp), %ecx
	pushl	12(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	284(%esp), %eax
	movl	16(%esp), %edx          # 4-byte Reload
	addl	248(%esp), %edx
	adcl	252(%esp), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	260(%esp), %esi
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	264(%esp), %ebp
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	268(%esp), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	272(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	280(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%edx, 12(%ecx)
	adcl	$0, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	212(%esp), %eax
	movl	444(%esp), %ecx
	pushl	16(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	244(%esp), %ecx
	movl	40(%esp), %edx          # 4-byte Reload
	addl	208(%esp), %edx
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	212(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	216(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	220(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	224(%esp), %edi
	movl	%edi, %ebp
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	228(%esp), %esi
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	232(%esp), %edi
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	236(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	240(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	432(%esp), %eax
	movl	%edx, 16(%eax)
	adcl	$0, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	172(%esp), %eax
	movl	444(%esp), %ecx
	pushl	20(%ecx)
	movl	444(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	204(%esp), %ecx
	movl	20(%esp), %eax          # 4-byte Reload
	addl	168(%esp), %eax
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	172(%esp), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	176(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	180(%esp), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	adcl	184(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	adcl	188(%esp), %edi
	movl	%edi, %ebp
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	192(%esp), %esi
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	196(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	200(%esp), %edi
	movl	432(%esp), %edx
	movl	%eax, 20(%edx)
	adcl	$0, %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	132(%esp), %eax
	movl	444(%esp), %ecx
	pushl	24(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	164(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	addl	128(%esp), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	132(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	136(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	144(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	adcl	148(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	152(%esp), %esi
	adcl	156(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	160(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, %ebp
	subl	$4, %esp
	leal	92(%esp), %eax
	movl	444(%esp), %ecx
	pushl	28(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	124(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	88(%esp), %eax
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	92(%esp), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	96(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	100(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	104(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	108(%esp), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	112(%esp), %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	116(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	120(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%eax, 28(%ecx)
	adcl	$0, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	52(%esp), %eax
	movl	444(%esp), %ecx
	pushl	32(%ecx)
	pushl	444(%esp)
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	addl	48(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	52(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	56(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	60(%esp), %ebp
	movl	16(%esp), %ebx          # 4-byte Reload
	adcl	64(%esp), %ebx
	adcl	68(%esp), %esi
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	72(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	432(%esp), %ecx
	movl	36(%esp), %edi          # 4-byte Reload
	movl	%edi, 32(%ecx)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 36(%ecx)
	movl	44(%esp), %edi          # 4-byte Reload
	movl	%edi, 40(%ecx)
	movl	%ebp, 44(%ecx)
	movl	%ebx, 48(%ecx)
	movl	%esi, 52(%ecx)
	movl	%edx, 56(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%ecx)
	adcl	$0, %eax
	movl	%eax, 68(%ecx)
	addl	$412, %esp              # imm = 0x19C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end171:
	.size	mclb_mul9, .Lfunc_end171-mclb_mul9
                                        # -- End function
	.globl	mclb_sqr9               # -- Begin function mclb_sqr9
	.p2align	4, 0x90
	.type	mclb_sqr9,@function
mclb_sqr9:                              # @mclb_sqr9
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$412, %esp              # imm = 0x19C
	calll	.L172$pb
.L172$pb:
	popl	%ebx
.Ltmp5:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp5-.L172$pb), %ebx
	movl	436(%esp), %ecx
	subl	$4, %esp
	leal	372(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	404(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	400(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	396(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	392(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	388(%esp), %esi
	movl	384(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	380(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	376(%esp), %ebp
	movl	368(%esp), %eax
	movl	372(%esp), %edi
	movl	432(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	332(%esp), %eax
	movl	440(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	364(%esp), %eax
	movl	%edi, %edx
	addl	328(%esp), %edx
	adcl	332(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	336(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	340(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	344(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	348(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	352(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	356(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	360(%esp), %esi
	movl	432(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	292(%esp), %eax
	movl	440(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	324(%esp), %ecx
	movl	32(%esp), %edx          # 4-byte Reload
	addl	288(%esp), %edx
	adcl	292(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	296(%esp), %edi
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	300(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	304(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	308(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	312(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	adcl	316(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	adcl	320(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	432(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	252(%esp), %eax
	movl	440(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	284(%esp), %eax
	movl	40(%esp), %edx          # 4-byte Reload
	addl	248(%esp), %edx
	adcl	252(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	260(%esp), %esi
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	264(%esp), %ebp
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	268(%esp), %edi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	272(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	280(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%edx, 12(%ecx)
	adcl	$0, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	212(%esp), %eax
	movl	440(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	244(%esp), %ecx
	movl	24(%esp), %edx          # 4-byte Reload
	addl	208(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	212(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	adcl	216(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	adcl	220(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	224(%esp), %edi
	movl	%edi, %ebp
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	228(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	232(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	236(%esp), %edi
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	240(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	432(%esp), %eax
	movl	%edx, 16(%eax)
	adcl	$0, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	172(%esp), %eax
	movl	440(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	204(%esp), %ecx
	movl	28(%esp), %eax          # 4-byte Reload
	addl	168(%esp), %eax
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	172(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	176(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	180(%esp), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	adcl	184(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	188(%esp), %esi
	adcl	192(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	196(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	200(%esp), %edi
	movl	432(%esp), %edx
	movl	%eax, 20(%edx)
	adcl	$0, %ecx
	movl	%ecx, %ebp
	subl	$4, %esp
	leal	132(%esp), %eax
	movl	440(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	164(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	128(%esp), %eax
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	132(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	136(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	144(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	148(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	152(%esp), %esi
	adcl	156(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	160(%esp), %ebp
	movl	432(%esp), %ecx
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	92(%esp), %eax
	movl	440(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	movl	124(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	88(%esp), %eax
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	92(%esp), %edi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	96(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	100(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	104(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	108(%esp), %esi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	112(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	116(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	120(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	432(%esp), %ecx
	movl	%eax, 28(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	52(%esp), %eax
	movl	440(%esp), %ecx
	pushl	32(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner288@PLT
	addl	$12, %esp
	addl	48(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	52(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	56(%esp), %edi
	movl	32(%esp), %ebx          # 4-byte Reload
	adcl	60(%esp), %ebx
	adcl	64(%esp), %esi
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	68(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	72(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	432(%esp), %ecx
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 32(%ecx)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%ecx)
	movl	%edi, 40(%ecx)
	movl	%ebx, 44(%ecx)
	movl	%esi, 48(%ecx)
	movl	%edx, 52(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%ecx)
	adcl	$0, %eax
	movl	%eax, 68(%ecx)
	addl	$412, %esp              # imm = 0x19C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end172:
	.size	mclb_sqr9, .Lfunc_end172-mclb_sqr9
                                        # -- End function
	.globl	mulUnit_inner320        # -- Begin function mulUnit_inner320
	.p2align	4, 0x90
	.type	mulUnit_inner320,@function
mulUnit_inner320:                       # @mulUnit_inner320
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$64, %esp
	movl	92(%esp), %edi
	movl	88(%esp), %ecx
	movl	%edi, %eax
	mull	(%ecx)
	movl	%edx, %esi
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	4(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%edi, %eax
	mull	8(%ecx)
	movl	%edx, %ebx
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	12(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	16(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	20(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	24(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	28(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	32(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	36(%ecx)
	movl	%eax, %edi
	movl	%edx, 48(%esp)          # 4-byte Spill
	addl	%esi, %ebp
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	(%esp), %eax            # 4-byte Folded Reload
	adcl	%ebx, 12(%esp)          # 4-byte Folded Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	adcl	56(%esp), %ebx          # 4-byte Folded Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	32(%esp), %edx          # 4-byte Folded Reload
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	20(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	movl	84(%esp), %edi
	movl	60(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%edi)
	movl	%ebp, 4(%edi)
	movl	%eax, 8(%edi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%edi)
	movl	%ebx, 16(%edi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 20(%edi)
	movl	%esi, 24(%edi)
	movl	%edx, 28(%edi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%edi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 36(%edi)
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 40(%edi)
	movl	%edi, %eax
	addl	$64, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end173:
	.size	mulUnit_inner320, .Lfunc_end173-mulUnit_inner320
                                        # -- End function
	.globl	mclb_mulUnit10          # -- Begin function mclb_mulUnit10
	.p2align	4, 0x90
	.type	mclb_mulUnit10,@function
mclb_mulUnit10:                         # @mclb_mulUnit10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	.L174$pb
.L174$pb:
	popl	%ebx
.Ltmp6:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp6-.L174$pb), %ebx
	movl	96(%esp), %esi
	subl	$4, %esp
	leal	36(%esp), %eax
	pushl	108(%esp)
	pushl	108(%esp)
	pushl	%eax
	calll	mulUnit_inner320@PLT
	addl	$12, %esp
	movl	72(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	68(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	60(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	56(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp
	movl	48(%esp), %ebx
	movl	44(%esp), %edi
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end174:
	.size	mclb_mulUnit10, .Lfunc_end174-mclb_mulUnit10
                                        # -- End function
	.globl	mclb_mulUnitAdd10       # -- Begin function mclb_mulUnitAdd10
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd10,@function
mclb_mulUnitAdd10:                      # @mclb_mulUnitAdd10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	100(%esp), %ecx
	movl	96(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	92(%esp), %ecx
	addl	%ebp, (%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	12(%esp), %ebx          # 4-byte Reload
	adcl	8(%ecx), %ebx
	movl	(%esp), %esi            # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, (%esp)            # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	24(%ecx), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	adcl	28(%ecx), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	32(%ecx), %ebp
	adcl	36(%ecx), %eax
	setb	4(%esp)                 # 1-byte Folded Spill
	addl	68(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	64(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	(%esp), %edx            # 4-byte Reload
	adcl	60(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, (%esp)            # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	56(%esp), %edi          # 4-byte Folded Reload
	adcl	52(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	44(%esp), %esi          # 4-byte Folded Reload
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	40(%esp), %edx          # 4-byte Folded Reload
	adcl	36(%esp), %ebp          # 4-byte Folded Reload
	adcl	32(%esp), %eax          # 4-byte Folded Reload
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%ecx)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%ecx)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 12(%ecx)
	movl	%edi, 16(%ecx)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%ecx)
	movl	%esi, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	%ebp, 32(%ecx)
	movl	%eax, 36(%ecx)
	movzbl	4(%esp), %eax           # 1-byte Folded Reload
	adcl	48(%esp), %eax          # 4-byte Folded Reload
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end175:
	.size	mclb_mulUnitAdd10, .Lfunc_end175-mclb_mulUnitAdd10
                                        # -- End function
	.globl	mclb_mul10              # -- Begin function mclb_mul10
	.p2align	4, 0x90
	.type	mclb_mul10,@function
mclb_mul10:                             # @mclb_mul10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$172, %esp
	calll	.L176$pb
.L176$pb:
	popl	%esi
.Ltmp7:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp7-.L176$pb), %esi
	movl	192(%esp), %eax
	movl	200(%esp), %ecx
	movl	196(%esp), %edi
	leal	20(%edi), %edx
	movl	%edx, (%esp)            # 4-byte Spill
	leal	20(%ecx), %ebp
	leal	40(%eax), %edx
	movl	%edx, 4(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%esi, %ebx
	movl	%esi, 56(%esp)          # 4-byte Spill
	pushl	%ecx
	pushl	%edi
	pushl	%eax
	calll	mclb_mul5@PLT
	addl	$12, %esp
	pushl	%ebp
	pushl	8(%esp)                 # 4-byte Folded Reload
	pushl	16(%esp)                # 4-byte Folded Reload
	calll	mclb_mul5@PLT
	addl	$16, %esp
	movl	16(%edi), %ebx
	movl	12(%edi), %ecx
	movl	8(%edi), %ebp
	movl	(%edi), %eax
	movl	4(%edi), %edx
	addl	20(%edi), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	24(%edi), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	28(%edi), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	adcl	32(%edi), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	36(%edi), %ebx
	movl	200(%esp), %edi
	movl	(%edi), %ecx
	setb	%al
	addl	20(%edi), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	4(%edi), %ecx
	adcl	24(%edi), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	8(%edi), %ecx
	adcl	28(%edi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	12(%edi), %ecx
	adcl	32(%edi), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%edi), %edx
	adcl	36(%edi), %edx
	movl	%edx, %ecx
	movzbl	%al, %edx
	setb	%al
	movl	%edx, %ebp
	shldl	$31, %ebx, %ebp
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	%ebp, %edi
	sarl	$31, %edi
	shrdl	$31, %edi, %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movzbl	%al, %ebp
	andl	%ebp, %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%edi, %eax
	roll	%eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, 40(%esp)          # 4-byte Spill
	shldl	$31, %ecx, %ebp
	movl	%ebp, %esi
	sarl	$31, %esi
	shrdl	$31, %esi, %ebp
	movl	%esi, %eax
	roll	%eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 108(%esp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 112(%esp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 116(%esp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 120(%esp)
	movl	%ebx, 124(%esp)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 88(%esp)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 92(%esp)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 96(%esp)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 100(%esp)
	movl	%ecx, 104(%esp)
	subl	$4, %esp
	leal	92(%esp), %eax
	leal	112(%esp), %ecx
	leal	132(%esp), %edx
	movl	56(%esp), %ebx          # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul5@PLT
	addl	$16, %esp
	movl	36(%esp), %eax          # 4-byte Reload
	andl	%eax, 8(%esp)           # 4-byte Folded Spill
	andl	%edi, 40(%esp)          # 4-byte Folded Spill
	movl	28(%esp), %eax          # 4-byte Reload
	andl	%edi, %eax
	andl	32(%esp), %edi          # 4-byte Folded Reload
	movl	44(%esp), %ecx          # 4-byte Reload
	andl	%ecx, 48(%esp)          # 4-byte Folded Spill
	andl	24(%esp), %ebp          # 4-byte Folded Reload
	movl	20(%esp), %ecx          # 4-byte Reload
	andl	%esi, %ecx
	movl	(%esp), %edx            # 4-byte Reload
	andl	%esi, %edx
	andl	12(%esp), %esi          # 4-byte Folded Reload
	movl	4(%esp), %ebx           # 4-byte Reload
	andl	16(%esp), %ebx          # 4-byte Folded Reload
	addl	8(%esp), %ebp           # 4-byte Folded Reload
	adcl	48(%esp), %ebx          # 4-byte Folded Reload
	adcl	%edi, %esi
	adcl	%eax, %edx
	adcl	40(%esp), %ecx          # 4-byte Folded Reload
	setb	%al
	addl	148(%esp), %ebp
	adcl	152(%esp), %ebx
	movl	%ebx, 4(%esp)           # 4-byte Spill
	adcl	156(%esp), %esi
	adcl	160(%esp), %edx
	movl	%edx, (%esp)            # 4-byte Spill
	adcl	164(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movzbl	%al, %ebx
	adcl	56(%esp), %ebx          # 4-byte Folded Reload
	movl	128(%esp), %edx
	movl	192(%esp), %eax
	subl	(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	132(%esp), %edx
	sbbl	4(%eax), %edx
	movl	%edx, %edi
	movl	136(%esp), %ecx
	sbbl	8(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	140(%esp), %edx
	sbbl	12(%eax), %edx
	movl	144(%esp), %ecx
	sbbl	16(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	20(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	24(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	sbbl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	28(%eax), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	sbbl	%ecx, %esi
	movl	32(%eax), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	sbbl	%ecx, (%esp)            # 4-byte Folded Spill
	movl	36(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	sbbl	%ecx, 20(%esp)          # 4-byte Folded Spill
	sbbl	$0, %ebx
	movl	40(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	subl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	44(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	%ecx, %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	sbbl	%ecx, %edi
	movl	52(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	%ecx, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	56(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	sbbl	%ecx, %edx
	movl	60(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	64(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	sbbl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	68(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	sbbl	%ecx, %esi
	movl	72(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	sbbl	%ecx, (%esp)            # 4-byte Folded Spill
	movl	76(%eax), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	sbbl	%ecx, 20(%esp)          # 4-byte Folded Spill
	sbbl	$0, %ebx
	movl	28(%esp), %ecx          # 4-byte Reload
	addl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	56(%esp), %ecx          # 4-byte Folded Reload
	adcl	32(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	%edi, 24(%esp)          # 4-byte Folded Spill
	adcl	52(%esp), %edx          # 4-byte Folded Reload
	adcl	84(%esp), %ebp          # 4-byte Folded Reload
	movl	68(%esp), %edi          # 4-byte Reload
	adcl	%edi, 4(%esp)           # 4-byte Folded Spill
	adcl	72(%esp), %esi          # 4-byte Folded Reload
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	%edi, (%esp)            # 4-byte Folded Spill
	movl	64(%esp), %edi          # 4-byte Reload
	adcl	%edi, 20(%esp)          # 4-byte Folded Spill
	adcl	80(%esp), %ebx          # 4-byte Folded Reload
	movl	16(%esp), %edi          # 4-byte Reload
	movl	%edi, 20(%eax)
	movl	%ecx, 24(%eax)
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 28(%eax)
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 32(%eax)
	movl	%edx, 36(%eax)
	movl	%ebp, 40(%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	%esi, 48(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 52(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%eax)
	movl	%ebx, 60(%eax)
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 64(%eax)
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 68(%eax)
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 72(%eax)
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 76(%eax)
	addl	$172, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end176:
	.size	mclb_mul10, .Lfunc_end176-mclb_mul10
                                        # -- End function
	.globl	mclb_sqr10              # -- Begin function mclb_sqr10
	.p2align	4, 0x90
	.type	mclb_sqr10,@function
mclb_sqr10:                             # @mclb_sqr10
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$188, %esp
	calll	.L177$pb
.L177$pb:
	popl	%ebp
.Ltmp8:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp8-.L177$pb), %ebp
	movl	208(%esp), %eax
	movl	212(%esp), %esi
	leal	20(%esi), %edi
	leal	40(%eax), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	movl	%ebp, %ebx
	movl	%ebp, 24(%esp)          # 4-byte Spill
	pushl	%esi
	pushl	%esi
	pushl	%eax
	calll	mclb_mul5@PLT
	addl	$12, %esp
	pushl	%edi
	pushl	%edi
	pushl	24(%esp)                # 4-byte Folded Reload
	calll	mclb_mul5@PLT
	addl	$16, %esp
	movl	16(%esi), %ebx
	movl	12(%esi), %edx
	movl	8(%esi), %eax
	movl	(%esi), %edi
	movl	4(%esi), %ebp
	addl	20(%esi), %edi
	adcl	24(%esi), %ebp
	adcl	28(%esi), %eax
	adcl	32(%esi), %edx
	adcl	36(%esi), %ebx
	setb	%cl
	movzbl	%cl, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	%edi, 124(%esp)
	movl	%ebp, 128(%esp)
	movl	%eax, 132(%esp)
	movl	%edx, %ecx
	movl	%edx, 136(%esp)
	movl	%ebx, 140(%esp)
	movl	%edi, 104(%esp)
	movl	%ebp, 108(%esp)
	movl	%eax, 112(%esp)
	movl	%edx, 116(%esp)
	movl	%ebx, 120(%esp)
	movl	%ebx, %esi
	movl	$0, %edx
	cmovael	%edx, %edi
	cmovael	%edx, %ebp
	cmovael	%edx, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	cmovael	%edx, %ecx
	movl	$0, %eax
	movl	%ecx, 16(%esp)          # 4-byte Spill
	cmovael	%eax, %esi
	subl	$4, %esp
	leal	148(%esp), %eax
	leal	128(%esp), %ecx
	leal	108(%esp), %edx
	movl	24(%esp), %ebx          # 4-byte Reload
	pushl	%edx
	pushl	%ecx
	pushl	%eax
	calll	mclb_mul5@PLT
	addl	$16, %esp
	movl	%esi, %ecx
	movl	16(%esp), %eax          # 4-byte Reload
	shldl	$1, %eax, %esi
	movl	12(%esp), %edx          # 4-byte Reload
	shldl	$1, %edx, %eax
	shldl	$1, %ebp, %edx
	shldl	$1, %edi, %ebp
	shrl	$31, %ecx
	addl	%edi, %edi
	addl	164(%esp), %edi
	adcl	168(%esp), %ebp
	adcl	172(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	176(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	adcl	180(%esp), %esi
	adcl	24(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	144(%esp), %edx
	movl	208(%esp), %eax
	subl	(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	148(%esp), %ebx
	sbbl	4(%eax), %ebx
	movl	152(%esp), %ecx
	sbbl	8(%eax), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	156(%esp), %edx
	sbbl	12(%eax), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	160(%esp), %ecx
	sbbl	16(%eax), %ecx
	movl	%ecx, %edx
	movl	20(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	%ecx, %edi
	movl	24(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	28(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	32(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	sbbl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	36(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	%ecx, %esi
	sbbl	$0, 32(%esp)            # 4-byte Folded Spill
	movl	40(%eax), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	subl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	44(%eax), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	sbbl	%ecx, %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	48(%eax), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ebx          # 4-byte Reload
	sbbl	%ecx, %ebx
	movl	52(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	sbbl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	56(%eax), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	sbbl	%ecx, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	60(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	sbbl	%ecx, %edi
	movl	64(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	68(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	sbbl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	72(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	sbbl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	76(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	sbbl	%ecx, %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	sbbl	$0, %ecx
	movl	68(%esp), %edx          # 4-byte Reload
	addl	%edx, 24(%esp)          # 4-byte Folded Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	%edx, 36(%esp)          # 4-byte Folded Spill
	adcl	76(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	80(%esp), %ebx          # 4-byte Reload
	adcl	%ebx, 20(%esp)          # 4-byte Folded Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	84(%esp), %edx          # 4-byte Folded Reload
	adcl	56(%esp), %edi          # 4-byte Folded Reload
	adcl	60(%esp), %ebp          # 4-byte Folded Reload
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	%ebx, 12(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	%ebx, 16(%esp)          # 4-byte Folded Spill
	adcl	52(%esp), %esi          # 4-byte Folded Reload
	adcl	64(%esp), %ecx          # 4-byte Folded Reload
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%eax)
	movl	36(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 24(%eax)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 28(%eax)
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 32(%eax)
	movl	%edx, 36(%eax)
	movl	%edi, 40(%eax)
	movl	%ebp, 44(%eax)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 52(%eax)
	movl	%esi, 56(%eax)
	movl	%ecx, 60(%eax)
	movl	100(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 64(%eax)
	movl	96(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 68(%eax)
	movl	92(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 72(%eax)
	movl	88(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 76(%eax)
	addl	$188, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end177:
	.size	mclb_sqr10, .Lfunc_end177-mclb_sqr10
                                        # -- End function
	.globl	mulUnit_inner352        # -- Begin function mulUnit_inner352
	.p2align	4, 0x90
	.type	mulUnit_inner352,@function
mulUnit_inner352:                       # @mulUnit_inner352
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$72, %esp
	movl	100(%esp), %ebx
	movl	96(%esp), %ecx
	movl	%ebx, %eax
	mull	(%ecx)
	movl	%edx, %esi
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	4(%ecx)
	movl	%edx, %edi
	movl	%eax, %ebp
	movl	%ebx, %eax
	mull	8(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	12(%ecx)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	16(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	20(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	24(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	28(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ebx, %eax
	mull	32(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	36(%ecx)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebx, %eax
	mull	40(%ecx)
	movl	%eax, %ebx
	movl	%edx, 52(%esp)          # 4-byte Spill
	addl	%esi, %ebp
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	%edi, %eax
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	64(%esp), %edi          # 4-byte Folded Reload
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	48(%esp), %esi          # 4-byte Folded Reload
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	40(%esp), %edx          # 4-byte Folded Reload
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	20(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, (%esp)            # 4-byte Spill
	movl	92(%esp), %ebx
	movl	68(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%ebx)
	movl	%ebp, 4(%ebx)
	movl	%eax, 8(%ebx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebx)
	movl	%edi, 16(%ebx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 20(%ebx)
	movl	%esi, 24(%ebx)
	movl	%edx, 28(%ebx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%ebx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 36(%ebx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 40(%ebx)
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 44(%ebx)
	movl	%ebx, %eax
	addl	$72, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end178:
	.size	mulUnit_inner352, .Lfunc_end178-mulUnit_inner352
                                        # -- End function
	.globl	mclb_mulUnit11          # -- Begin function mclb_mulUnit11
	.p2align	4, 0x90
	.type	mclb_mulUnit11,@function
mclb_mulUnit11:                         # @mclb_mulUnit11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$76, %esp
	calll	.L179$pb
.L179$pb:
	popl	%ebx
.Ltmp9:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp9-.L179$pb), %ebx
	movl	96(%esp), %esi
	subl	$4, %esp
	leal	28(%esp), %eax
	pushl	108(%esp)
	pushl	108(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	68(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	60(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	52(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	48(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	44(%esp), %ebp
	movl	40(%esp), %ebx
	movl	36(%esp), %edi
	movl	32(%esp), %edx
	movl	24(%esp), %eax
	movl	28(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	addl	$76, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end179:
	.size	mclb_mulUnit11, .Lfunc_end179-mclb_mulUnit11
                                        # -- End function
	.globl	mclb_mulUnitAdd11       # -- Begin function mclb_mulUnitAdd11
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd11,@function
mclb_mulUnitAdd11:                      # @mclb_mulUnitAdd11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$84, %esp
	movl	112(%esp), %ecx
	movl	108(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	104(%esp), %ecx
	addl	%ebp, (%ecx)
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	8(%ecx), %eax
	movl	(%esp), %esi            # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, (%esp)            # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	24(%ecx), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	adcl	28(%ecx), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	32(%ecx), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	36(%ecx), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	4(%esp), %ebp           # 4-byte Reload
	adcl	40(%ecx), %ebp
	setb	4(%esp)                 # 1-byte Folded Spill
	addl	80(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 20(%esp)          # 4-byte Spill
	adcl	76(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	(%esp), %eax            # 4-byte Reload
	adcl	72(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	68(%esp), %edi          # 4-byte Folded Reload
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	56(%esp), %esi          # 4-byte Folded Reload
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	52(%esp), %edx          # 4-byte Folded Reload
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	48(%esp), %eax          # 4-byte Folded Reload
	movl	12(%esp), %ebx          # 4-byte Reload
	adcl	44(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 12(%esp)          # 4-byte Spill
	adcl	40(%esp), %ebp          # 4-byte Folded Reload
	movl	20(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 4(%ecx)
	movl	16(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 8(%ecx)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 12(%ecx)
	movl	%edi, 16(%ecx)
	movl	8(%esp), %edi           # 4-byte Reload
	movl	%edi, 20(%ecx)
	movl	%esi, 24(%ecx)
	movl	%edx, 28(%ecx)
	movl	%eax, 32(%ecx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ecx)
	movl	%ebp, 40(%ecx)
	movzbl	4(%esp), %eax           # 1-byte Folded Reload
	adcl	60(%esp), %eax          # 4-byte Folded Reload
	addl	$84, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end180:
	.size	mclb_mulUnitAdd11, .Lfunc_end180-mclb_mulUnitAdd11
                                        # -- End function
	.globl	mclb_mul11              # -- Begin function mclb_mul11
	.p2align	4, 0x90
	.type	mclb_mul11,@function
mclb_mul11:                             # @mclb_mul11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$588, %esp              # imm = 0x24C
	calll	.L181$pb
.L181$pb:
	popl	%ebx
.Ltmp10:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp10-.L181$pb), %ebx
	movl	616(%esp), %ecx
	subl	$4, %esp
	leal	540(%esp), %eax
	pushl	(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	580(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	576(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	572(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	568(%esp), %ebp
	movl	564(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	560(%esp), %esi
	movl	556(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	552(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	548(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	544(%esp), %edi
	movl	536(%esp), %eax
	movl	540(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	492(%esp), %eax
	movl	620(%esp), %ecx
	pushl	4(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	532(%esp), %eax
	movl	16(%esp), %edx          # 4-byte Reload
	addl	488(%esp), %edx
	adcl	492(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	496(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	500(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	504(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	508(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	512(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	516(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	520(%esp), %ebp
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	524(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	528(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	444(%esp), %eax
	movl	620(%esp), %ecx
	pushl	8(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	484(%esp), %eax
	movl	48(%esp), %edx          # 4-byte Reload
	addl	440(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	444(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	448(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	452(%esp), %esi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	456(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	460(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	464(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	468(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	472(%esp), %ebp
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	476(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	480(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	396(%esp), %eax
	movl	620(%esp), %ecx
	pushl	12(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	436(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	addl	392(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	396(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	400(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	404(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	408(%esp), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	412(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	416(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	420(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	424(%esp), %ebp
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	428(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	432(%esp), %edi
	movl	608(%esp), %ecx
	movl	%edx, 12(%ecx)
	adcl	$0, %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	348(%esp), %eax
	movl	620(%esp), %ecx
	pushl	16(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	388(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	addl	344(%esp), %ecx
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	348(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	352(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	356(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	360(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	364(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	368(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	adcl	372(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	376(%esp), %ebp
	adcl	380(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	384(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	608(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	300(%esp), %eax
	movl	620(%esp), %ecx
	pushl	20(%ecx)
	movl	620(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	340(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	296(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	300(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	304(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	308(%esp), %edi
	adcl	312(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	316(%esp), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	320(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	324(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	328(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	332(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	336(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 20(%ecx)
	adcl	$0, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	252(%esp), %eax
	movl	620(%esp), %ecx
	pushl	24(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	292(%esp), %ecx
	movl	24(%esp), %eax          # 4-byte Reload
	addl	248(%esp), %eax
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	252(%esp), %ebp
	adcl	256(%esp), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	260(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	264(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	268(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	272(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	276(%esp), %esi
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	280(%esp), %edi
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	284(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	288(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	608(%esp), %edx
	movl	%eax, 24(%edx)
	adcl	$0, %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	204(%esp), %eax
	movl	620(%esp), %ecx
	pushl	28(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	244(%esp), %ecx
	addl	200(%esp), %ebp
	movl	%ebp, %eax
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	204(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	208(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	212(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	216(%esp), %ebp
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	220(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	adcl	224(%esp), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	adcl	228(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	232(%esp), %edi
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	236(%esp), %esi
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	240(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	608(%esp), %edx
	movl	%eax, 28(%edx)
	adcl	$0, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	620(%esp), %ecx
	pushl	32(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	196(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	152(%esp), %eax
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	156(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	160(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	164(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	168(%esp), %ebp
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	172(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	176(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	180(%esp), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	adcl	184(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	188(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	192(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, 32(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	108(%esp), %eax
	movl	620(%esp), %ecx
	pushl	36(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	148(%esp), %edx
	movl	32(%esp), %eax          # 4-byte Reload
	addl	104(%esp), %eax
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	108(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	112(%esp), %esi
	adcl	116(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	120(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	124(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	128(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	132(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	136(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	144(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	60(%esp), %eax
	movl	620(%esp), %ecx
	pushl	40(%ecx)
	pushl	620(%esp)
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	44(%esp), %ebp          # 4-byte Reload
	addl	56(%esp), %ebp
	adcl	60(%esp), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	64(%esp), %ebx
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	68(%esp), %esi
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	72(%esp), %edi
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	84(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	92(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	608(%esp), %ecx
	movl	%ebp, 40(%ecx)
	movl	40(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%ecx)
	movl	%ebx, 48(%ecx)
	movl	%esi, 52(%ecx)
	movl	%edi, 56(%ecx)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%ecx)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%ecx)
	movl	%edx, 68(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%ecx)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%ecx)
	adcl	$0, %eax
	movl	%eax, 84(%ecx)
	addl	$588, %esp              # imm = 0x24C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end181:
	.size	mclb_mul11, .Lfunc_end181-mclb_mul11
                                        # -- End function
	.globl	mclb_sqr11              # -- Begin function mclb_sqr11
	.p2align	4, 0x90
	.type	mclb_sqr11,@function
mclb_sqr11:                             # @mclb_sqr11
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$588, %esp              # imm = 0x24C
	calll	.L182$pb
.L182$pb:
	popl	%ebx
.Ltmp11:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp11-.L182$pb), %ebx
	movl	612(%esp), %ecx
	subl	$4, %esp
	leal	540(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	580(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	576(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	572(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	568(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	564(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	560(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	556(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	552(%esp), %ebp
	movl	548(%esp), %esi
	movl	544(%esp), %edi
	movl	536(%esp), %eax
	movl	540(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	492(%esp), %eax
	movl	616(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	532(%esp), %eax
	movl	12(%esp), %edx          # 4-byte Reload
	addl	488(%esp), %edx
	adcl	492(%esp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	adcl	496(%esp), %esi
	adcl	500(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	504(%esp), %ebp
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	508(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	512(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	516(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	520(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	524(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	528(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	444(%esp), %eax
	movl	616(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	484(%esp), %ecx
	movl	44(%esp), %edx          # 4-byte Reload
	addl	440(%esp), %edx
	adcl	444(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	448(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	452(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	456(%esp), %ebp
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	460(%esp), %esi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	464(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	468(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	472(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	476(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	adcl	480(%esp), %edi
	movl	608(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	396(%esp), %eax
	movl	616(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	436(%esp), %eax
	movl	48(%esp), %edx          # 4-byte Reload
	addl	392(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	396(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	400(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	404(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	adcl	408(%esp), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	412(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	416(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	420(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	424(%esp), %ebp
	adcl	428(%esp), %edi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	432(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	348(%esp), %eax
	movl	616(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	388(%esp), %eax
	movl	12(%esp), %edx          # 4-byte Reload
	addl	344(%esp), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	348(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	352(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	356(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	360(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	364(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	368(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	372(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	adcl	376(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	380(%esp), %ebp
	adcl	384(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%edx, 16(%ecx)
	adcl	$0, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	300(%esp), %eax
	movl	616(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	340(%esp), %eax
	movl	40(%esp), %ecx          # 4-byte Reload
	addl	296(%esp), %ecx
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	300(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	304(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	308(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	312(%esp), %edi
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	316(%esp), %esi
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	320(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	324(%esp), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	adcl	328(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	332(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	336(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	608(%esp), %edx
	movl	%ecx, 20(%edx)
	adcl	$0, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	252(%esp), %eax
	movl	616(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	292(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	addl	248(%esp), %eax
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	252(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	256(%esp), %ebp
	adcl	260(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	264(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	268(%esp), %edi
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	272(%esp), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	280(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	284(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	288(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, 24(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	204(%esp), %eax
	movl	616(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	244(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	200(%esp), %eax
	adcl	204(%esp), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	208(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	216(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	adcl	220(%esp), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	224(%esp), %esi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	228(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	232(%esp), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	236(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	240(%esp), %ebp
	movl	608(%esp), %ecx
	movl	%eax, 28(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	616(%esp), %ecx
	pushl	32(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	196(%esp), %ecx
	movl	20(%esp), %edx          # 4-byte Reload
	addl	152(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	156(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	160(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	164(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	168(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	172(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	176(%esp), %esi
	adcl	180(%esp), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	184(%esp), %edi
	adcl	188(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	192(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	608(%esp), %eax
	movl	%edx, 32(%eax)
	adcl	$0, %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	108(%esp), %eax
	movl	616(%esp), %ecx
	pushl	36(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	movl	148(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	addl	104(%esp), %eax
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	108(%esp), %ebp
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	112(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	116(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	120(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	124(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	128(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	132(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	136(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	144(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	608(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	60(%esp), %eax
	movl	616(%esp), %ecx
	pushl	40(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner352@PLT
	addl	$12, %esp
	addl	56(%esp), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	60(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	64(%esp), %edi
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	68(%esp), %esi
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	72(%esp), %ebx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	80(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	92(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	608(%esp), %ecx
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%ecx)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 44(%ecx)
	movl	%edi, 48(%ecx)
	movl	%esi, 52(%ecx)
	movl	%ebx, 56(%ecx)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%ecx)
	movl	%edx, 64(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%ecx)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 80(%ecx)
	adcl	$0, %eax
	movl	%eax, 84(%ecx)
	addl	$588, %esp              # imm = 0x24C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end182:
	.size	mclb_sqr11, .Lfunc_end182-mclb_sqr11
                                        # -- End function
	.globl	mulUnit_inner384        # -- Begin function mulUnit_inner384
	.p2align	4, 0x90
	.type	mulUnit_inner384,@function
mulUnit_inner384:                       # @mulUnit_inner384
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$80, %esp
	movl	108(%esp), %ebp
	movl	104(%esp), %ecx
	movl	%ebp, %eax
	mull	(%ecx)
	movl	%edx, %esi
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	4(%ecx)
	movl	%edx, %edi
	movl	%eax, %ebx
	movl	%ebp, %eax
	mull	8(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	12(%ecx)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	16(%ecx)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	20(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	24(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	28(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	32(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	36(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	mull	40(%ecx)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	mull	44(%ecx)
	movl	%eax, %ebp
	movl	%edx, 60(%esp)          # 4-byte Spill
	addl	%esi, %ebx
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	%edi, %eax
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	72(%esp), %edi          # 4-byte Folded Reload
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	56(%esp), %edx          # 4-byte Folded Reload
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	24(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, (%esp)            # 4-byte Spill
	movl	100(%esp), %ebp
	movl	76(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	%edi, 16(%ebp)
	movl	%esi, 20(%ebp)
	movl	%edx, 24(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 48(%ebp)
	movl	%ebp, %eax
	addl	$80, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end183:
	.size	mulUnit_inner384, .Lfunc_end183-mulUnit_inner384
                                        # -- End function
	.globl	mclb_mulUnit12          # -- Begin function mclb_mulUnit12
	.p2align	4, 0x90
	.type	mclb_mulUnit12,@function
mclb_mulUnit12:                         # @mclb_mulUnit12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	.L184$pb
.L184$pb:
	popl	%ebx
.Ltmp12:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp12-.L184$pb), %ebx
	movl	112(%esp), %esi
	subl	$4, %esp
	leal	44(%esp), %eax
	pushl	124(%esp)
	pushl	124(%esp)
	pushl	%eax
	calll	mulUnit_inner384@PLT
	addl	$12, %esp
	movl	88(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	76(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	72(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	68(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp
	movl	56(%esp), %ebx
	movl	52(%esp), %edi
	movl	48(%esp), %edx
	movl	40(%esp), %eax
	movl	44(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end184:
	.size	mclb_mulUnit12, .Lfunc_end184-mclb_mulUnit12
                                        # -- End function
	.globl	mclb_mulUnitAdd12       # -- Begin function mclb_mulUnitAdd12
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd12,@function
mclb_mulUnitAdd12:                      # @mclb_mulUnitAdd12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	124(%esp), %ecx
	movl	120(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	116(%esp), %ecx
	addl	%edi, (%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	8(%ecx), %ebp
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	24(%ecx), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	adcl	28(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	32(%ecx), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	adcl	36(%ecx), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	40(%ecx), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	44(%ecx), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	setb	3(%esp)                 # 1-byte Folded Spill
	addl	92(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	adcl	88(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	80(%esp), %ebx          # 4-byte Folded Reload
	adcl	76(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	72(%esp), %esi          # 4-byte Folded Reload
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	64(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	60(%esp), %edi          # 4-byte Folded Reload
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	56(%esp), %edx          # 4-byte Folded Reload
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	52(%esp), %eax          # 4-byte Folded Reload
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	48(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%ecx)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%ecx)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 12(%ecx)
	movl	%ebx, 16(%ecx)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 20(%ecx)
	movl	%esi, 24(%ecx)
	movl	4(%esp), %esi           # 4-byte Reload
	movl	%esi, 28(%ecx)
	movl	%edi, 32(%ecx)
	movl	%edx, 36(%ecx)
	movl	%eax, 40(%ecx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%ecx)
	movzbl	3(%esp), %eax           # 1-byte Folded Reload
	adcl	68(%esp), %eax          # 4-byte Folded Reload
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end185:
	.size	mclb_mulUnitAdd12, .Lfunc_end185-mclb_mulUnitAdd12
                                        # -- End function
	.globl	mclb_mul12              # -- Begin function mclb_mul12
	.p2align	4, 0x90
	.type	mclb_mul12,@function
mclb_mul12:                             # @mclb_mul12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$220, %esp
	calll	.L186$pb
.L186$pb:
	popl	%ebp
.Ltmp13:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp13-.L186$pb), %ebp
	movl	240(%esp), %eax
	movl	248(%esp), %esi
	movl	244(%esp), %edi
	leal	24(%edi), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	leal	24(%esi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	leal	48(%eax), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%ebp, %ebx
	movl	%ebp, 60(%esp)          # 4-byte Spill
	pushl	%esi
	pushl	%edi
	pushl	%eax
	calll	mclb_mul6@PLT
	addl	$12, %esp
	pushl	36(%esp)                # 4-byte Folded Reload
	pushl	16(%esp)                # 4-byte Folded Reload
	pushl	16(%esp)                # 4-byte Folded Reload
	calll	mclb_mul6@PLT
	addl	$16, %esp
	movl	16(%edi), %eax
	movl	12(%edi), %ecx
	movl	8(%edi), %edx
	movl	(%edi), %ebx
	movl	4(%edi), %ebp
	addl	24(%edi), %ebx
	movl	%ebx, 24(%esp)          # 4-byte Spill
	adcl	28(%edi), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	adcl	32(%edi), %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	adcl	36(%edi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	40(%edi), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	20(%edi), %eax
	adcl	44(%edi), %eax
	movl	%eax, %ecx
	setb	%al
	movl	(%esi), %edx
	addl	24(%esi), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	4(%esi), %edx
	adcl	28(%esi), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	8(%esi), %edx
	adcl	32(%esi), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	12(%esi), %edx
	adcl	36(%esi), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	16(%esi), %ebx
	adcl	40(%esi), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	20(%esi), %edx
	adcl	44(%esi), %edx
	movl	%edx, %edi
	movzbl	%al, %edx
	setb	%al
	movl	%edx, %ebp
	shldl	$31, %ecx, %ebp
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	%ebp, %esi
	sarl	$31, %esi
	shrdl	$31, %esi, %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movzbl	%al, %ebp
	andl	%ebp, %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%edi, %eax
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	%ebp, %edx
	shldl	$31, %edi, %edx
	movl	%edx, %ebp
	sarl	$31, %ebp
	shrdl	$31, %ebp, %edx
	movl	%edx, %edi
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 144(%esp)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 148(%esp)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 152(%esp)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 156(%esp)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 160(%esp)
	movl	%ecx, 164(%esp)
	movl	44(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 120(%esp)
	movl	48(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 124(%esp)
	movl	16(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 128(%esp)
	movl	12(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 132(%esp)
	movl	%ebx, 136(%esp)
	movl	%eax, 140(%esp)
	subl	$4, %esp
	leal	124(%esp), %eax
	leal	148(%esp), %ecx
	leal	172(%esp), %edx
	movl	60(%esp), %ebx          # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul6@PLT
	addl	$16, %esp
	movl	44(%esp), %eax          # 4-byte Reload
	andl	%eax, 20(%esp)          # 4-byte Folded Spill
	andl	%esi, 40(%esp)          # 4-byte Folded Spill
	andl	%esi, 36(%esp)          # 4-byte Folded Spill
	andl	%esi, 12(%esp)          # 4-byte Folded Spill
	andl	%esi, 16(%esp)          # 4-byte Folded Spill
	andl	48(%esp), %esi          # 4-byte Folded Reload
	andl	24(%esp), %edi          # 4-byte Folded Reload
	movl	52(%esp), %ebx          # 4-byte Reload
	andl	%ebp, %ebx
	movl	4(%esp), %ecx           # 4-byte Reload
	andl	%ebp, %ecx
	movl	32(%esp), %edx          # 4-byte Reload
	andl	%ebp, %edx
	movl	8(%esp), %eax           # 4-byte Reload
	andl	%ebp, %eax
	andl	28(%esp), %ebp          # 4-byte Folded Reload
	addl	20(%esp), %edi          # 4-byte Folded Reload
	adcl	%esi, %ebp
	movl	%eax, %esi
	adcl	16(%esp), %esi          # 4-byte Folded Reload
	adcl	12(%esp), %edx          # 4-byte Folded Reload
	adcl	36(%esp), %ecx          # 4-byte Folded Reload
	adcl	40(%esp), %ebx          # 4-byte Folded Reload
	setb	%al
	addl	192(%esp), %edi
	adcl	196(%esp), %ebp
	adcl	200(%esp), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	adcl	204(%esp), %edx
	movl	%edx, %esi
	adcl	208(%esp), %ecx
	movl	%ecx, 4(%esp)           # 4-byte Spill
	adcl	212(%esp), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	movzbl	%al, %ebx
	adcl	60(%esp), %ebx          # 4-byte Folded Reload
	movl	168(%esp), %ecx
	movl	240(%esp), %eax
	subl	(%eax), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	172(%esp), %edx
	sbbl	4(%eax), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	176(%esp), %edx
	sbbl	8(%eax), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	180(%esp), %edx
	sbbl	12(%eax), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	184(%esp), %edx
	sbbl	16(%eax), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	188(%esp), %edx
	sbbl	20(%eax), %edx
	movl	24(%eax), %ecx
	movl	%ecx, 112(%esp)         # 4-byte Spill
	sbbl	%ecx, %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	28(%eax), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	32(%eax), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	sbbl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	36(%eax), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	sbbl	%ecx, %esi
	movl	%esi, %edi
	movl	40(%eax), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	sbbl	%ecx, 4(%esp)           # 4-byte Folded Spill
	movl	44(%eax), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	sbbl	%ecx, 52(%esp)          # 4-byte Folded Spill
	sbbl	$0, %ebx
	movl	48(%eax), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	subl	%ecx, %esi
	movl	52(%eax), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	56(%eax), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	sbbl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	60(%eax), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	64(%eax), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	sbbl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	68(%eax), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	sbbl	%ecx, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	72(%eax), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	sbbl	%ecx, 36(%esp)          # 4-byte Folded Spill
	movl	76(%eax), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	sbbl	%ecx, %ebp
	movl	80(%eax), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	%edx, %ecx
	movl	84(%eax), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	sbbl	%edx, %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	88(%eax), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	sbbl	%edx, 4(%esp)           # 4-byte Folded Spill
	movl	92(%eax), %edi
	movl	%edi, 116(%esp)         # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	sbbl	%edi, %edx
	sbbl	$0, %ebx
	addl	112(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	108(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	104(%esp), %edi         # 4-byte Reload
	adcl	%edi, 16(%esp)          # 4-byte Folded Spill
	movl	96(%esp), %edi          # 4-byte Reload
	adcl	%edi, 28(%esp)          # 4-byte Folded Spill
	movl	100(%esp), %edi         # 4-byte Reload
	adcl	%edi, 24(%esp)          # 4-byte Folded Spill
	movl	92(%esp), %edi          # 4-byte Reload
	adcl	%edi, 40(%esp)          # 4-byte Folded Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	64(%esp), %edi          # 4-byte Folded Reload
	adcl	68(%esp), %ebp          # 4-byte Folded Reload
	adcl	72(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	76(%esp), %ecx          # 4-byte Folded Reload
	movl	80(%esp), %esi          # 4-byte Reload
	adcl	%esi, 4(%esp)           # 4-byte Folded Spill
	adcl	88(%esp), %edx          # 4-byte Folded Reload
	adcl	84(%esp), %ebx          # 4-byte Folded Reload
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 24(%eax)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 28(%eax)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 40(%eax)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 44(%eax)
	movl	%edi, 48(%eax)
	movl	%ebp, 52(%eax)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 56(%eax)
	movl	%ecx, 60(%eax)
	movl	4(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 64(%eax)
	movl	%edx, 68(%eax)
	movl	%ebx, 72(%eax)
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 76(%eax)
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 80(%eax)
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 84(%eax)
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 88(%eax)
	movl	116(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 92(%eax)
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end186:
	.size	mclb_mul12, .Lfunc_end186-mclb_mul12
                                        # -- End function
	.globl	mclb_sqr12              # -- Begin function mclb_sqr12
	.p2align	4, 0x90
	.type	mclb_sqr12,@function
mclb_sqr12:                             # @mclb_sqr12
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$220, %esp
	calll	.L187$pb
.L187$pb:
	popl	%ebp
.Ltmp14:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp14-.L187$pb), %ebp
	movl	240(%esp), %eax
	movl	244(%esp), %esi
	leal	24(%esi), %edi
	leal	48(%eax), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	subl	$4, %esp
	movl	%ebp, %ebx
	movl	%ebp, 8(%esp)           # 4-byte Spill
	pushl	%esi
	pushl	%esi
	pushl	%eax
	calll	mclb_mul6@PLT
	addl	$12, %esp
	pushl	%edi
	pushl	%edi
	pushl	12(%esp)                # 4-byte Folded Reload
	calll	mclb_mul6@PLT
	addl	$16, %esp
	movl	16(%esi), %ebp
	movl	12(%esi), %ebx
	movl	8(%esi), %edx
	movl	(%esi), %ecx
	movl	4(%esi), %eax
	addl	24(%esi), %ecx
	adcl	28(%esi), %eax
	adcl	32(%esi), %edx
	adcl	36(%esi), %ebx
	adcl	40(%esi), %ebp
	movl	20(%esi), %edi
	adcl	44(%esi), %edi
	movl	%ecx, 144(%esp)
	movl	%eax, 148(%esp)
	movl	%edx, 152(%esp)
	movl	%ebx, 156(%esp)
	movl	%ebp, 160(%esp)
	movl	%edi, 164(%esp)
	movl	%ecx, 120(%esp)
	movl	%eax, 124(%esp)
	movl	%edx, 128(%esp)
	movl	%ebx, 132(%esp)
	movl	%ebp, 136(%esp)
	movl	%ebp, %esi
	movl	%edi, 140(%esp)
	movl	$0, %ebp
	cmovael	%ebp, %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	cmovael	%ebp, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	cmovael	%ebp, %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	cmovael	%ebp, %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	cmovael	%ebp, %esi
	movl	$0, %eax
	cmovael	%eax, %edi
	movl	%edi, %ebp
	setb	%al
	movzbl	%al, %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	leal	124(%esp), %eax
	leal	148(%esp), %ecx
	leal	172(%esp), %edx
	movl	8(%esp), %ebx           # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul6@PLT
	addl	$16, %esp
	movl	%edi, %eax
	shldl	$1, %esi, %eax
	movl	16(%esp), %ecx          # 4-byte Reload
	shldl	$1, %ecx, %esi
	movl	%esi, %ebx
	movl	20(%esp), %esi          # 4-byte Reload
	shldl	$1, %esi, %ecx
	movl	%ecx, %edi
	movl	12(%esp), %edx          # 4-byte Reload
	shldl	$1, %edx, %esi
	movl	(%esp), %ecx            # 4-byte Reload
	shldl	$1, %ecx, %edx
	shrl	$31, %ebp
	addl	%ecx, %ecx
	addl	192(%esp), %ecx
	movl	%ecx, (%esp)            # 4-byte Spill
	adcl	196(%esp), %edx
	movl	%edx, %ecx
	adcl	200(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	%edi, %esi
	adcl	204(%esp), %esi
	adcl	208(%esp), %ebx
	adcl	212(%esp), %eax
	movl	%eax, %edx
	adcl	8(%esp), %ebp           # 4-byte Folded Reload
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	168(%esp), %eax
	movl	240(%esp), %edi
	subl	(%edi), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	172(%esp), %eax
	sbbl	4(%edi), %eax
	movl	%eax, %ebp
	movl	176(%esp), %eax
	sbbl	8(%edi), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	180(%esp), %eax
	sbbl	12(%edi), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	184(%esp), %eax
	sbbl	16(%edi), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	188(%esp), %eax
	sbbl	20(%edi), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	24(%edi), %eax
	movl	%eax, 88(%esp)          # 4-byte Spill
	sbbl	%eax, (%esp)            # 4-byte Folded Spill
	movl	28(%edi), %eax
	movl	%eax, 84(%esp)          # 4-byte Spill
	sbbl	%eax, %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	32(%edi), %eax
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	%eax, %ecx
	movl	36(%edi), %eax
	movl	%eax, 96(%esp)          # 4-byte Spill
	sbbl	%eax, %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	40(%edi), %esi
	movl	%esi, 100(%esp)         # 4-byte Spill
	sbbl	%esi, %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	44(%edi), %eax
	movl	%eax, 80(%esp)          # 4-byte Spill
	sbbl	%eax, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	sbbl	$0, 44(%esp)            # 4-byte Folded Spill
	movl	48(%edi), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	subl	%eax, %edx
	movl	52(%edi), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	sbbl	%eax, %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	56(%edi), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	sbbl	%eax, %esi
	movl	60(%edi), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	sbbl	%eax, 8(%esp)           # 4-byte Folded Spill
	movl	64(%edi), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	sbbl	%eax, 4(%esp)           # 4-byte Folded Spill
	movl	68(%edi), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	sbbl	%eax, 36(%esp)          # 4-byte Folded Spill
	movl	72(%edi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	(%esp), %ebx            # 4-byte Reload
	sbbl	%eax, %ebx
	movl	76(%edi), %ebp
	movl	%ebp, 116(%esp)         # 4-byte Spill
	movl	%edi, %eax
	movl	12(%esp), %edi          # 4-byte Reload
	sbbl	%ebp, %edi
	movl	80(%eax), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	sbbl	%ebp, %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	84(%eax), %ebp
	movl	%ebp, 112(%esp)         # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	sbbl	%ebp, %ecx
	movl	88(%eax), %ebp
	movl	%ebp, 108(%esp)         # 4-byte Spill
	sbbl	%ebp, 48(%esp)          # 4-byte Folded Spill
	movl	92(%eax), %ebp
	movl	%ebp, 104(%esp)         # 4-byte Spill
	sbbl	%ebp, 40(%esp)          # 4-byte Folded Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	sbbl	$0, %ebp
	addl	88(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	84(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	adcl	92(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	8(%esp), %edx           # 4-byte Reload
	adcl	96(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 8(%esp)           # 4-byte Spill
	movl	4(%esp), %edx           # 4-byte Reload
	adcl	100(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	80(%esp), %esi          # 4-byte Reload
	adcl	%esi, 36(%esp)          # 4-byte Folded Spill
	adcl	72(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, (%esp)            # 4-byte Spill
	adcl	76(%esp), %edi          # 4-byte Folded Reload
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	60(%esp), %esi          # 4-byte Folded Reload
	adcl	56(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	64(%esp), %ecx          # 4-byte Folded Reload
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	68(%esp), %ebx          # 4-byte Folded Reload
	adcl	52(%esp), %ebp          # 4-byte Folded Reload
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 24(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 36(%eax)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	(%esp), %edx            # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	%edi, 52(%eax)
	movl	%esi, 56(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%eax)
	movl	%ecx, 64(%eax)
	movl	%ebx, 68(%eax)
	movl	%ebp, 72(%eax)
	movl	116(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 76(%eax)
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 80(%eax)
	movl	112(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 84(%eax)
	movl	108(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 88(%eax)
	movl	104(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 92(%eax)
	addl	$220, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end187:
	.size	mclb_sqr12, .Lfunc_end187-mclb_sqr12
                                        # -- End function
	.globl	mulUnit_inner416        # -- Begin function mulUnit_inner416
	.p2align	4, 0x90
	.type	mulUnit_inner416,@function
mulUnit_inner416:                       # @mulUnit_inner416
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$88, %esp
	movl	116(%esp), %ebp
	movl	112(%esp), %ecx
	movl	%ebp, %eax
	mull	(%ecx)
	movl	%edx, %esi
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	4(%ecx)
	movl	%edx, %edi
	movl	%eax, %ebx
	movl	%ebp, %eax
	mull	8(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	12(%ecx)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	16(%ecx)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	20(%ecx)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	24(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	28(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	32(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	36(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ebp, %eax
	mull	40(%ecx)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	mull	44(%ecx)
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ebp, %eax
	mull	48(%ecx)
	movl	%eax, %ebp
	movl	%edx, 60(%esp)          # 4-byte Spill
	addl	%esi, %ebx
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	%edi, %eax
	movl	(%esp), %ecx            # 4-byte Reload
	adcl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	64(%esp), %edi          # 4-byte Reload
	adcl	80(%esp), %edi          # 4-byte Folded Reload
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	72(%esp), %esi          # 4-byte Folded Reload
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	68(%esp), %edx          # 4-byte Folded Reload
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, (%esp)            # 4-byte Spill
	movl	108(%esp), %ebp
	movl	84(%esp), %ecx          # 4-byte Reload
	movl	%ecx, (%ebp)
	movl	%ebx, 4(%ebp)
	movl	%eax, 8(%ebp)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 12(%ebp)
	movl	%edi, 16(%ebp)
	movl	%esi, 20(%ebp)
	movl	%edx, 24(%ebp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%ebp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%ebp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ebp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 40(%ebp)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 44(%ebp)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 48(%ebp)
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 52(%ebp)
	movl	%ebp, %eax
	addl	$88, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end188:
	.size	mulUnit_inner416, .Lfunc_end188-mulUnit_inner416
                                        # -- End function
	.globl	mclb_mulUnit13          # -- Begin function mclb_mulUnit13
	.p2align	4, 0x90
	.type	mclb_mulUnit13,@function
mclb_mulUnit13:                         # @mclb_mulUnit13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
	calll	.L189$pb
.L189$pb:
	popl	%ebx
.Ltmp15:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp15-.L189$pb), %ebx
	movl	112(%esp), %esi
	subl	$4, %esp
	leal	36(%esp), %eax
	pushl	124(%esp)
	pushl	124(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	84(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	76(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	72(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	68(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	64(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	60(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	56(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	52(%esp), %ebp
	movl	48(%esp), %ebx
	movl	44(%esp), %edi
	movl	40(%esp), %edx
	movl	32(%esp), %eax
	movl	36(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end189:
	.size	mclb_mulUnit13, .Lfunc_end189-mclb_mulUnit13
                                        # -- End function
	.globl	mclb_mulUnitAdd13       # -- Begin function mclb_mulUnitAdd13
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd13,@function
mclb_mulUnitAdd13:                      # @mclb_mulUnitAdd13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$100, %esp
	movl	128(%esp), %ecx
	movl	124(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	120(%esp), %ecx
	movl	(%esp), %eax            # 4-byte Reload
	addl	%eax, (%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	8(%ecx), %eax
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	adcl	16(%ecx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	24(%ecx), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	adcl	28(%ecx), %ebx
	movl	%ebx, (%esp)            # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	32(%ecx), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	adcl	36(%ecx), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	40(%ecx), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	8(%esp), %edi           # 4-byte Reload
	adcl	44(%ecx), %edi
	movl	32(%esp), %ebx          # 4-byte Reload
	adcl	48(%ecx), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	setb	8(%esp)                 # 1-byte Folded Spill
	addl	96(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	92(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	88(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	80(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	76(%esp), %ebx          # 4-byte Folded Reload
	movl	(%esp), %eax            # 4-byte Reload
	adcl	68(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	60(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	56(%esp), %edx          # 4-byte Folded Reload
	adcl	52(%esp), %edi          # 4-byte Folded Reload
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	48(%esp), %eax          # 4-byte Folded Reload
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%ecx)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%ecx)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 12(%ecx)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%ecx)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%ecx)
	movl	%ebx, 24(%ecx)
	movl	(%esp), %ebx            # 4-byte Reload
	movl	%ebx, 28(%ecx)
	movl	%esi, 32(%ecx)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 36(%ecx)
	movl	%edx, 40(%ecx)
	movl	%edi, 44(%ecx)
	movl	%eax, 48(%ecx)
	movzbl	8(%esp), %eax           # 1-byte Folded Reload
	adcl	72(%esp), %eax          # 4-byte Folded Reload
	addl	$100, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end190:
	.size	mclb_mulUnitAdd13, .Lfunc_end190-mclb_mulUnitAdd13
                                        # -- End function
	.globl	mclb_mul13              # -- Begin function mclb_mul13
	.p2align	4, 0x90
	.type	mclb_mul13,@function
mclb_mul13:                             # @mclb_mul13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$796, %esp              # imm = 0x31C
	calll	.L191$pb
.L191$pb:
	popl	%ebx
.Ltmp16:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp16-.L191$pb), %ebx
	movl	824(%esp), %ecx
	subl	$4, %esp
	leal	740(%esp), %eax
	pushl	(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	788(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	784(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	780(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	776(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	772(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	768(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	764(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	760(%esp), %esi
	movl	756(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	752(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	748(%esp), %edi
	movl	744(%esp), %ebp
	movl	736(%esp), %eax
	movl	740(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	684(%esp), %eax
	movl	828(%esp), %ecx
	pushl	4(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	732(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	680(%esp), %edx
	adcl	684(%esp), %ebp
	adcl	688(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	692(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	696(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	700(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	704(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	708(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	712(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	716(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	720(%esp), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	724(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	728(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	628(%esp), %eax
	movl	828(%esp), %ecx
	pushl	8(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	676(%esp), %eax
	movl	%ebp, %edx
	addl	624(%esp), %edx
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	628(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	632(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	636(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	640(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	644(%esp), %ebp
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	648(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	652(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	656(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	660(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	664(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	668(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	672(%esp), %edi
	movl	816(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	572(%esp), %eax
	movl	828(%esp), %ecx
	pushl	12(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	620(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	568(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	572(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	576(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	580(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	584(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	588(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	592(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	596(%esp), %ebp
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	600(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	604(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	608(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	612(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	adcl	616(%esp), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	516(%esp), %eax
	movl	828(%esp), %ecx
	pushl	16(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	564(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	addl	512(%esp), %ecx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	516(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	520(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	524(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	528(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	532(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	adcl	536(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	540(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	544(%esp), %ebp
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	548(%esp), %edi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	552(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	556(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	adcl	560(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	460(%esp), %eax
	movl	828(%esp), %ecx
	pushl	20(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	508(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	addl	456(%esp), %ecx
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	460(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	464(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	468(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	472(%esp), %esi
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	476(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	480(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	adcl	484(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	adcl	488(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	492(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	496(%esp), %edi
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	500(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	504(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%ecx, 20(%eax)
	adcl	$0, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	404(%esp), %eax
	movl	828(%esp), %ecx
	pushl	24(%ecx)
	movl	828(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	452(%esp), %eax
	movl	44(%esp), %edx          # 4-byte Reload
	addl	400(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	404(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	408(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	412(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	416(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	420(%esp), %ebp
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	424(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	428(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	432(%esp), %esi
	adcl	436(%esp), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	440(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	adcl	444(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	448(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 24(%ecx)
	adcl	$0, %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	348(%esp), %eax
	movl	828(%esp), %ecx
	pushl	28(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	396(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	addl	344(%esp), %ecx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	348(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	352(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	356(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	adcl	360(%esp), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	364(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	368(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	372(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	376(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	380(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	384(%esp), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	388(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	392(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%ecx, 28(%eax)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	292(%esp), %eax
	movl	828(%esp), %ecx
	pushl	32(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	340(%esp), %ecx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	288(%esp), %eax
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	292(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	296(%esp), %ebp
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	300(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	304(%esp), %edi
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	308(%esp), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	312(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	316(%esp), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	320(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	324(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	adcl	328(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	332(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	336(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	816(%esp), %edx
	movl	%eax, 32(%edx)
	adcl	$0, %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	236(%esp), %eax
	movl	828(%esp), %ecx
	pushl	36(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	284(%esp), %edx
	movl	32(%esp), %eax          # 4-byte Reload
	addl	232(%esp), %eax
	adcl	236(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	240(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	244(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	248(%esp), %ebp
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	252(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	260(%esp), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	264(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	268(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	272(%esp), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	280(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	180(%esp), %eax
	movl	828(%esp), %ecx
	pushl	40(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	228(%esp), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	addl	176(%esp), %edx
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	180(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	184(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	188(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	192(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	196(%esp), %ebp
	adcl	200(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	204(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	208(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	212(%esp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	216(%esp), %edi
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	220(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	224(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%edx, 40(%eax)
	adcl	$0, %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	124(%esp), %eax
	movl	828(%esp), %ecx
	pushl	44(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	172(%esp), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	addl	120(%esp), %ecx
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	124(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	128(%esp), %esi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	132(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	136(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	140(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	144(%esp), %ebp
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	148(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	152(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	adcl	156(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	160(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	164(%esp), %edi
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	168(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%ecx, 44(%eax)
	adcl	$0, %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	68(%esp), %eax
	movl	828(%esp), %ecx
	pushl	48(%ecx)
	pushl	828(%esp)
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	40(%esp), %eax          # 4-byte Reload
	addl	64(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	68(%esp), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	72(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	84(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	88(%esp), %ebp
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	92(%esp), %ebx
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	100(%esp), %esi
	adcl	104(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	108(%esp), %edx
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	112(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	816(%esp), %ecx
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 48(%ecx)
	movl	52(%esp), %edi          # 4-byte Reload
	movl	%edi, 52(%ecx)
	movl	20(%esp), %edi          # 4-byte Reload
	movl	%edi, 56(%ecx)
	movl	56(%esp), %edi          # 4-byte Reload
	movl	%edi, 60(%ecx)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 64(%ecx)
	movl	60(%esp), %edi          # 4-byte Reload
	movl	%edi, 68(%ecx)
	movl	%ebp, 72(%ecx)
	movl	%ebx, 76(%ecx)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 80(%ecx)
	movl	%esi, 84(%ecx)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%ecx)
	movl	%edx, 92(%ecx)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%ecx)
	adcl	$0, %eax
	movl	%eax, 100(%ecx)
	addl	$796, %esp              # imm = 0x31C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end191:
	.size	mclb_mul13, .Lfunc_end191-mclb_mul13
                                        # -- End function
	.globl	mclb_sqr13              # -- Begin function mclb_sqr13
	.p2align	4, 0x90
	.type	mclb_sqr13,@function
mclb_sqr13:                             # @mclb_sqr13
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$796, %esp              # imm = 0x31C
	calll	.L192$pb
.L192$pb:
	popl	%ebx
.Ltmp17:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp17-.L192$pb), %ebx
	movl	820(%esp), %ecx
	subl	$4, %esp
	leal	740(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	788(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	784(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	780(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	776(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	772(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	768(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	764(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	760(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	756(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	752(%esp), %ebp
	movl	748(%esp), %esi
	movl	744(%esp), %edi
	movl	736(%esp), %eax
	movl	740(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	684(%esp), %eax
	movl	824(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	732(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	addl	680(%esp), %edx
	adcl	684(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	adcl	688(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	adcl	692(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	696(%esp), %ebp
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	700(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	704(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	708(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	712(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	716(%esp), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	720(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	724(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	728(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	628(%esp), %eax
	movl	824(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	676(%esp), %eax
	movl	28(%esp), %edx          # 4-byte Reload
	addl	624(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	628(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	632(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	636(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	640(%esp), %ebp
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	644(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	648(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	652(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	656(%esp), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	660(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	664(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	668(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	672(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	572(%esp), %eax
	movl	824(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	620(%esp), %eax
	movl	24(%esp), %edx          # 4-byte Reload
	addl	568(%esp), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	572(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	576(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	580(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	584(%esp), %ebp
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	588(%esp), %edi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	592(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	596(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	600(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	604(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	608(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	612(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	616(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	516(%esp), %eax
	movl	824(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	564(%esp), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	addl	512(%esp), %ecx
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	516(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	520(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	524(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	adcl	528(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	532(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	536(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	540(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	544(%esp), %ebp
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	548(%esp), %edi
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	552(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	556(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	560(%esp), %esi
	movl	816(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	460(%esp), %eax
	movl	824(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	508(%esp), %eax
	movl	48(%esp), %ecx          # 4-byte Reload
	addl	456(%esp), %ecx
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	460(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	464(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	468(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	472(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	476(%esp), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	480(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	484(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	adcl	488(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	492(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	496(%esp), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	adcl	500(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	504(%esp), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	816(%esp), %edx
	movl	%ecx, 20(%edx)
	adcl	$0, %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	404(%esp), %eax
	movl	824(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	452(%esp), %eax
	movl	40(%esp), %ecx          # 4-byte Reload
	addl	400(%esp), %ecx
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	404(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	408(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %edi          # 4-byte Reload
	adcl	412(%esp), %edi
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	416(%esp), %ebp
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	420(%esp), %esi
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	424(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	428(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	432(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	436(%esp), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	440(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	444(%esp), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	448(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	816(%esp), %edx
	movl	%ecx, 24(%edx)
	adcl	$0, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	348(%esp), %eax
	movl	824(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	396(%esp), %ecx
	movl	44(%esp), %eax          # 4-byte Reload
	addl	344(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	348(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	adcl	352(%esp), %edi
	movl	%edi, 12(%esp)          # 4-byte Spill
	adcl	356(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	adcl	360(%esp), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	364(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	368(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	372(%esp), %esi
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	376(%esp), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	380(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	384(%esp), %edi
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	388(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	392(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	816(%esp), %edx
	movl	%eax, 28(%edx)
	adcl	$0, %ecx
	movl	%ecx, %ebp
	subl	$4, %esp
	leal	292(%esp), %eax
	movl	824(%esp), %ecx
	pushl	32(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	340(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	288(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	292(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	296(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	300(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	304(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	308(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	312(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	316(%esp), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	320(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	adcl	324(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	328(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	332(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	336(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	816(%esp), %ecx
	movl	%edx, 32(%ecx)
	adcl	$0, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	236(%esp), %eax
	movl	824(%esp), %ecx
	pushl	36(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	284(%esp), %ecx
	movl	12(%esp), %edx          # 4-byte Reload
	addl	232(%esp), %edx
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	236(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	240(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	244(%esp), %edi
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	248(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	252(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	adcl	256(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	260(%esp), %esi
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	264(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	268(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	272(%esp), %ebp
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	276(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	280(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%edx, 36(%eax)
	adcl	$0, %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	180(%esp), %eax
	movl	824(%esp), %ecx
	pushl	40(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	228(%esp), %edx
	movl	56(%esp), %ecx          # 4-byte Reload
	addl	176(%esp), %ecx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	180(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	adcl	184(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	188(%esp), %edi
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	192(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	196(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	200(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	204(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	208(%esp), %esi
	adcl	212(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	216(%esp), %ebp
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	220(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	224(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	816(%esp), %eax
	movl	%ecx, 40(%eax)
	adcl	$0, %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	124(%esp), %eax
	movl	824(%esp), %ecx
	pushl	44(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	172(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	120(%esp), %eax
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	124(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	128(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	132(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	136(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	144(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	148(%esp), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	152(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	156(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	160(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	164(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	168(%esp), %ebp
	movl	816(%esp), %ecx
	movl	%eax, 44(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	68(%esp), %eax
	movl	824(%esp), %ecx
	pushl	48(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner416@PLT
	addl	$12, %esp
	movl	32(%esp), %eax          # 4-byte Reload
	addl	64(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	68(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	adcl	72(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ebx          # 4-byte Reload
	adcl	80(%esp), %ebx
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	84(%esp), %edi
	adcl	88(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	92(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	100(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	104(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	108(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	112(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	816(%esp), %ecx
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 48(%ecx)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 52(%ecx)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ecx)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%ecx)
	movl	%ebx, 64(%ecx)
	movl	%edi, 68(%ecx)
	movl	48(%esp), %edi          # 4-byte Reload
	movl	%edi, 72(%ecx)
	movl	%esi, 76(%ecx)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%ecx)
	movl	%edx, 84(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 88(%ecx)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 92(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%ecx)
	adcl	$0, %eax
	movl	%eax, 100(%ecx)
	addl	$796, %esp              # imm = 0x31C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end192:
	.size	mclb_sqr13, .Lfunc_end192-mclb_sqr13
                                        # -- End function
	.globl	mulUnit_inner448        # -- Begin function mulUnit_inner448
	.p2align	4, 0x90
	.type	mulUnit_inner448,@function
mulUnit_inner448:                       # @mulUnit_inner448
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$96, %esp
	movl	124(%esp), %ecx
	movl	120(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, %edi
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esi)
	movl	%eax, %esi
	movl	%edx, 68(%esp)          # 4-byte Spill
	addl	%edi, %ebp
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax          # 4-byte Folded Reload
	movl	84(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	60(%esp), %edi          # 4-byte Reload
	adcl	80(%esp), %edi          # 4-byte Folded Reload
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	72(%esp), %edx          # 4-byte Folded Reload
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	32(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, (%esp)            # 4-byte Spill
	movl	116(%esp), %ecx
	movl	92(%esp), %esi          # 4-byte Reload
	movl	%esi, (%ecx)
	movl	%ebp, 4(%ecx)
	movl	%ebx, 8(%ecx)
	movl	%eax, 12(%ecx)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%ecx)
	movl	%edi, 20(%ecx)
	movl	%edx, 24(%ecx)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%ecx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%ecx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%ecx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%ecx)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 44(%ecx)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 48(%ecx)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 52(%ecx)
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 56(%ecx)
	movl	%ecx, %eax
	addl	$96, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end193:
	.size	mulUnit_inner448, .Lfunc_end193-mulUnit_inner448
                                        # -- End function
	.globl	mclb_mulUnit14          # -- Begin function mclb_mulUnit14
	.p2align	4, 0x90
	.type	mclb_mulUnit14,@function
mclb_mulUnit14:                         # @mclb_mulUnit14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	calll	.L194$pb
.L194$pb:
	popl	%ebx
.Ltmp18:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp18-.L194$pb), %ebx
	movl	128(%esp), %esi
	subl	$4, %esp
	leal	52(%esp), %eax
	pushl	140(%esp)
	pushl	140(%esp)
	pushl	%eax
	calll	mulUnit_inner448@PLT
	addl	$12, %esp
	movl	104(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	76(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	72(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	68(%esp), %ebp
	movl	64(%esp), %ebx
	movl	60(%esp), %edi
	movl	56(%esp), %edx
	movl	48(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	44(%esp), %eax          # 4-byte Reload
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end194:
	.size	mclb_mulUnit14, .Lfunc_end194-mclb_mulUnit14
                                        # -- End function
	.globl	mclb_mulUnitAdd14       # -- Begin function mclb_mulUnitAdd14
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd14,@function
mclb_mulUnitAdd14:                      # @mclb_mulUnitAdd14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	movl	136(%esp), %ecx
	movl	132(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 100(%esp)         # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esi)
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	128(%esp), %ecx
	addl	%ebx, (%ecx)
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	28(%esp), %ebx          # 4-byte Reload
	adcl	8(%ecx), %ebx
	movl	4(%esp), %esi           # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 4(%esp)           # 4-byte Spill
	adcl	16(%ecx), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	24(%ecx), %ebp
	movl	(%esp), %eax            # 4-byte Reload
	adcl	28(%ecx), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	32(%ecx), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	adcl	36(%ecx), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	40(%ecx), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	8(%esp), %edi           # 4-byte Reload
	adcl	44(%ecx), %edi
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	48(%ecx), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	52(%ecx), %eax
	setb	8(%esp)                 # 1-byte Folded Spill
	addl	104(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	100(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %edx           # 4-byte Reload
	adcl	96(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 4(%esp)           # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	92(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	88(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 20(%esp)          # 4-byte Spill
	adcl	84(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	(%esp), %edx            # 4-byte Reload
	adcl	80(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, (%esp)            # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	adcl	72(%esp), %ebx          # 4-byte Folded Reload
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	68(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	adcl	60(%esp), %edi          # 4-byte Folded Reload
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	56(%esp), %edx          # 4-byte Folded Reload
	adcl	52(%esp), %eax          # 4-byte Folded Reload
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%ecx)
	movl	28(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%ecx)
	movl	4(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 12(%ecx)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%ecx)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%ecx)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 24(%ecx)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 28(%ecx)
	movl	%ebx, 32(%ecx)
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%ecx)
	movl	%esi, 40(%ecx)
	movl	%edi, 44(%ecx)
	movl	%edx, 48(%ecx)
	movl	%eax, 52(%ecx)
	movzbl	8(%esp), %eax           # 1-byte Folded Reload
	adcl	76(%esp), %eax          # 4-byte Folded Reload
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end195:
	.size	mclb_mulUnitAdd14, .Lfunc_end195-mclb_mulUnitAdd14
                                        # -- End function
	.globl	mclb_mul14              # -- Begin function mclb_mul14
	.p2align	4, 0x90
	.type	mclb_mul14,@function
mclb_mul14:                             # @mclb_mul14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$268, %esp              # imm = 0x10C
	calll	.L196$pb
.L196$pb:
	popl	%esi
.Ltmp19:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp19-.L196$pb), %esi
	movl	288(%esp), %eax
	movl	296(%esp), %edi
	movl	292(%esp), %ebp
	leal	28(%ebp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	leal	28(%edi), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	leal	56(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%esi, %ebx
	movl	%esi, 64(%esp)          # 4-byte Spill
	pushl	%edi
	pushl	%ebp
	pushl	%eax
	calll	mclb_mul7@PLT
	addl	$12, %esp
	pushl	16(%esp)                # 4-byte Folded Reload
	pushl	24(%esp)                # 4-byte Folded Reload
	pushl	20(%esp)                # 4-byte Folded Reload
	calll	mclb_mul7@PLT
	addl	$16, %esp
	movl	16(%ebp), %esi
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	(%ebp), %eax
	movl	4(%ebp), %ebx
	addl	28(%ebp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	adcl	32(%ebp), %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	adcl	36(%ebp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	40(%ebp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	44(%ebp), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	20(%ebp), %eax
	adcl	48(%ebp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	24(%ebp), %eax
	adcl	52(%ebp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	setb	%al
	movl	(%edi), %ecx
	addl	28(%edi), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	4(%edi), %ecx
	adcl	32(%edi), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	8(%edi), %ecx
	adcl	36(%edi), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%edi), %ebx
	adcl	40(%edi), %ebx
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	16(%edi), %ecx
	adcl	44(%edi), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	20(%edi), %edx
	adcl	48(%edi), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	24(%edi), %edx
	adcl	52(%edi), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movzbl	%al, %ebp
	setb	%al
	movzbl	%al, %edi
	movl	%ebp, %eax
	andl	%edi, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	negl	%ebp
	negl	%edi
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 180(%esp)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 184(%esp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 188(%esp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 192(%esp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 196(%esp)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 200(%esp)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 204(%esp)
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 152(%esp)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 156(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 160(%esp)
	movl	%ebx, 164(%esp)
	movl	%ecx, 168(%esp)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 172(%esp)
	movl	%edx, 176(%esp)
	subl	$4, %esp
	leal	156(%esp), %eax
	leal	184(%esp), %ecx
	leal	212(%esp), %edx
	movl	64(%esp), %ebx          # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul7@PLT
	addl	$16, %esp
	andl	%ebp, 40(%esp)          # 4-byte Folded Spill
	andl	%ebp, %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	andl	%ebp, %esi
	andl	%ebp, 36(%esp)          # 4-byte Folded Spill
	andl	%ebp, 20(%esp)          # 4-byte Folded Spill
	andl	%ebp, 28(%esp)          # 4-byte Folded Spill
	andl	52(%esp), %ebp          # 4-byte Folded Reload
	andl	%edi, 48(%esp)          # 4-byte Folded Spill
	movl	32(%esp), %eax          # 4-byte Reload
	andl	%edi, %eax
	andl	%edi, 8(%esp)           # 4-byte Folded Spill
	movl	56(%esp), %edx          # 4-byte Reload
	andl	%edi, %edx
	movl	12(%esp), %ebx          # 4-byte Reload
	andl	%edi, %ebx
	movl	16(%esp), %ecx          # 4-byte Reload
	andl	%edi, %ecx
	andl	44(%esp), %edi          # 4-byte Folded Reload
	addl	%ebp, %edi
	movl	%ecx, %ebp
	adcl	28(%esp), %ebp          # 4-byte Folded Reload
	adcl	20(%esp), %ebx          # 4-byte Folded Reload
	adcl	36(%esp), %edx          # 4-byte Folded Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	%esi, %ecx
	adcl	24(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, %esi
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	40(%esp), %eax          # 4-byte Folded Reload
	setb	8(%esp)                 # 1-byte Folded Spill
	addl	236(%esp), %edi
	adcl	240(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	244(%esp), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	adcl	248(%esp), %edx
	movl	%edx, %ebx
	adcl	252(%esp), %ecx
	adcl	256(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	adcl	260(%esp), %eax
	movl	%eax, %edx
	movzbl	8(%esp), %eax           # 1-byte Folded Reload
	adcl	64(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, %ebp
	movl	208(%esp), %eax
	movl	288(%esp), %esi
	subl	(%esi), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	212(%esp), %eax
	sbbl	4(%esi), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	216(%esp), %eax
	sbbl	8(%esi), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	220(%esp), %eax
	sbbl	12(%esi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	224(%esp), %eax
	sbbl	16(%esi), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	228(%esp), %eax
	sbbl	20(%esi), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	232(%esp), %eax
	sbbl	24(%esi), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	28(%esi), %eax
	movl	%eax, 120(%esp)         # 4-byte Spill
	sbbl	%eax, %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	32(%esi), %edi
	movl	%edi, 116(%esp)         # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	sbbl	%edi, %eax
	movl	36(%esi), %edi
	movl	%edi, 124(%esp)         # 4-byte Spill
	sbbl	%edi, 12(%esp)          # 4-byte Folded Spill
	movl	40(%esi), %edi
	movl	%edi, 128(%esp)         # 4-byte Spill
	sbbl	%edi, %ebx
	movl	%ebx, 56(%esp)          # 4-byte Spill
	movl	44(%esi), %edi
	movl	%edi, 112(%esp)         # 4-byte Spill
	sbbl	%edi, %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	48(%esi), %ecx
	movl	%ecx, 104(%esp)         # 4-byte Spill
	sbbl	%ecx, 32(%esp)          # 4-byte Folded Spill
	movl	52(%esi), %ecx
	movl	%ecx, 108(%esp)         # 4-byte Spill
	sbbl	%ecx, %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	sbbl	$0, %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	56(%esi), %ecx
	movl	%ecx, 88(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	subl	%ecx, %edx
	movl	60(%esi), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	sbbl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	64(%esi), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	sbbl	%ecx, %edi
	movl	68(%esi), %ecx
	movl	%ecx, 80(%esp)          # 4-byte Spill
	sbbl	%ecx, 52(%esp)          # 4-byte Folded Spill
	movl	72(%esi), %ecx
	movl	%ecx, 84(%esp)          # 4-byte Spill
	movl	36(%esp), %ebx          # 4-byte Reload
	sbbl	%ecx, %ebx
	movl	76(%esi), %ecx
	movl	%ecx, 92(%esp)          # 4-byte Spill
	sbbl	%ecx, 64(%esp)          # 4-byte Folded Spill
	movl	80(%esi), %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	sbbl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	84(%esi), %ecx
	movl	%ecx, 100(%esp)         # 4-byte Spill
	sbbl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	88(%esi), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	sbbl	%ecx, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	92(%esi), %eax
	movl	%eax, 148(%esp)         # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	sbbl	%eax, %ecx
	movl	96(%esi), %eax
	movl	%eax, 144(%esp)         # 4-byte Spill
	sbbl	%eax, 56(%esp)          # 4-byte Folded Spill
	movl	100(%esi), %eax
	movl	%eax, 140(%esp)         # 4-byte Spill
	sbbl	%eax, 8(%esp)           # 4-byte Folded Spill
	movl	104(%esi), %eax
	movl	%eax, 136(%esp)         # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	sbbl	%eax, %ebp
	movl	108(%esi), %eax
	movl	%eax, 132(%esp)         # 4-byte Spill
	sbbl	%eax, 48(%esp)          # 4-byte Folded Spill
	sbbl	$0, 60(%esp)            # 4-byte Folded Spill
	addl	120(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	116(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	124(%esp), %edi         # 4-byte Folded Reload
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	128(%esp), %edi         # 4-byte Folded Reload
	adcl	112(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %ebx          # 4-byte Reload
	adcl	104(%esp), %ebx         # 4-byte Folded Reload
	movl	108(%esp), %eax         # 4-byte Reload
	adcl	%eax, 28(%esp)          # 4-byte Folded Spill
	movl	88(%esp), %eax          # 4-byte Reload
	adcl	%eax, 24(%esp)          # 4-byte Folded Spill
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	%eax, 16(%esp)          # 4-byte Folded Spill
	adcl	72(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	80(%esp), %ecx          # 4-byte Folded Reload
	movl	84(%esp), %eax          # 4-byte Reload
	adcl	%eax, 8(%esp)           # 4-byte Folded Spill
	adcl	92(%esp), %ebp          # 4-byte Folded Reload
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax          # 4-byte Folded Reload
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	100(%esp), %ebp         # 4-byte Folded Reload
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 28(%esi)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%esi)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 36(%esi)
	movl	%edi, 40(%esi)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%esi)
	movl	%ebx, 48(%esi)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 52(%esi)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 56(%esi)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 60(%esi)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 64(%esi)
	movl	%ecx, 68(%esi)
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 72(%esi)
	movl	32(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 76(%esi)
	movl	%eax, 80(%esi)
	movl	%ebp, 84(%esi)
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 88(%esi)
	movl	148(%esp), %eax         # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 92(%esi)
	movl	144(%esp), %eax         # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 96(%esi)
	movl	140(%esp), %eax         # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 100(%esi)
	movl	136(%esp), %eax         # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 104(%esi)
	movl	132(%esp), %eax         # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 108(%esi)
	addl	$268, %esp              # imm = 0x10C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end196:
	.size	mclb_mul14, .Lfunc_end196-mclb_mul14
                                        # -- End function
	.globl	mclb_sqr14              # -- Begin function mclb_sqr14
	.p2align	4, 0x90
	.type	mclb_sqr14,@function
mclb_sqr14:                             # @mclb_sqr14
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$268, %esp              # imm = 0x10C
	calll	.L197$pb
.L197$pb:
	popl	%edi
.Ltmp20:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp20-.L197$pb), %edi
	movl	288(%esp), %eax
	movl	292(%esp), %esi
	leal	28(%esi), %ebp
	leal	56(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%edi, %ebx
	movl	%edi, 16(%esp)          # 4-byte Spill
	pushl	%esi
	pushl	%esi
	pushl	%eax
	calll	mclb_mul7@PLT
	addl	$12, %esp
	pushl	%ebp
	pushl	%ebp
	pushl	20(%esp)                # 4-byte Folded Reload
	calll	mclb_mul7@PLT
	addl	$16, %esp
	movl	16(%esi), %ecx
	movl	12(%esi), %ebx
	movl	8(%esi), %edi
	movl	(%esi), %edx
	movl	4(%esi), %eax
	addl	28(%esi), %edx
	adcl	32(%esi), %eax
	adcl	36(%esi), %edi
	adcl	40(%esi), %ebx
	adcl	44(%esi), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	20(%esi), %ebp
	adcl	48(%esi), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	24(%esi), %ecx
	adcl	52(%esi), %ecx
	movl	%edx, 180(%esp)
	movl	%eax, 184(%esp)
	movl	%edi, 188(%esp)
	movl	%ebx, 192(%esp)
	movl	24(%esp), %esi          # 4-byte Reload
	movl	%esi, 196(%esp)
	movl	%ebp, 200(%esp)
	movl	%ecx, 204(%esp)
	movl	%edx, 152(%esp)
	movl	%eax, 156(%esp)
	movl	%edi, 160(%esp)
	movl	%ebx, 164(%esp)
	movl	%esi, 168(%esp)
	movl	%ebp, 172(%esp)
	movl	%ecx, 176(%esp)
	movl	$0, %ebp
	cmovael	%ebp, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	cmovael	%ebp, %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	cmovael	%ebp, %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	cmovael	%ebp, %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	cmovael	%ebp, %esi
	movl	%esi, %edi
	movl	20(%esp), %esi          # 4-byte Reload
	cmovael	%ebp, %esi
	movl	$0, %eax
	cmovael	%eax, %ecx
	movl	%ecx, %ebp
	setb	%al
	movzbl	%al, %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	212(%esp), %eax
	leal	184(%esp), %ecx
	leal	156(%esp), %edx
	movl	16(%esp), %ebx          # 4-byte Reload
	pushl	%edx
	pushl	%ecx
	pushl	%eax
	calll	mclb_mul7@PLT
	addl	$16, %esp
	movl	%ebp, %ebx
	movl	%ebp, %eax
	shldl	$1, %esi, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	shldl	$1, %edi, %esi
	movl	%esi, %ebp
	movl	32(%esp), %eax          # 4-byte Reload
	shldl	$1, %eax, %edi
	movl	40(%esp), %esi          # 4-byte Reload
	shldl	$1, %esi, %eax
	movl	28(%esp), %edx          # 4-byte Reload
	shldl	$1, %edx, %esi
	movl	8(%esp), %ecx           # 4-byte Reload
	shldl	$1, %ecx, %edx
	shrl	$31, %ebx
	addl	%ecx, %ecx
	addl	236(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	240(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	244(%esp), %esi
	movl	%esi, %ecx
	adcl	248(%esp), %eax
	movl	%eax, %esi
	adcl	252(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	256(%esp), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	260(%esp), %ebp
	adcl	16(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 56(%esp)          # 4-byte Spill
	movl	208(%esp), %eax
	movl	288(%esp), %edi
	subl	(%edi), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	212(%esp), %edx
	sbbl	4(%edi), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	216(%esp), %eax
	sbbl	8(%edi), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	220(%esp), %eax
	sbbl	12(%edi), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	224(%esp), %edx
	sbbl	16(%edi), %edx
	movl	%edx, %ebx
	movl	228(%esp), %eax
	sbbl	20(%edi), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	232(%esp), %edx
	sbbl	24(%edi), %edx
	movl	28(%edi), %eax
	movl	%eax, 116(%esp)         # 4-byte Spill
	sbbl	%eax, 8(%esp)           # 4-byte Folded Spill
	movl	32(%edi), %eax
	movl	%eax, 112(%esp)         # 4-byte Spill
	sbbl	%eax, 28(%esp)          # 4-byte Folded Spill
	movl	36(%edi), %eax
	movl	%eax, 120(%esp)         # 4-byte Spill
	sbbl	%eax, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	40(%edi), %ecx
	movl	%ecx, 124(%esp)         # 4-byte Spill
	sbbl	%ecx, %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	44(%edi), %eax
	movl	%eax, 128(%esp)         # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	sbbl	%eax, %ecx
	movl	48(%edi), %eax
	movl	%eax, 104(%esp)         # 4-byte Spill
	sbbl	%eax, 20(%esp)          # 4-byte Folded Spill
	movl	52(%edi), %eax
	movl	%eax, 108(%esp)         # 4-byte Spill
	sbbl	%eax, %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	sbbl	$0, 56(%esp)            # 4-byte Folded Spill
	movl	56(%edi), %esi
	movl	%esi, 96(%esp)          # 4-byte Spill
	subl	%esi, 36(%esp)          # 4-byte Folded Spill
	movl	60(%edi), %eax
	movl	%eax, 100(%esp)         # 4-byte Spill
	sbbl	%eax, 16(%esp)          # 4-byte Folded Spill
	movl	64(%edi), %ebp
	movl	%ebp, 92(%esp)          # 4-byte Spill
	movl	%edi, %eax
	movl	52(%esp), %esi          # 4-byte Reload
	sbbl	%ebp, %esi
	movl	68(%edi), %ebp
	movl	%ebp, 80(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	sbbl	%ebp, %edi
	movl	72(%eax), %ebp
	movl	%ebp, 88(%esp)          # 4-byte Spill
	sbbl	%ebp, %ebx
	movl	%ebx, 60(%esp)          # 4-byte Spill
	movl	76(%eax), %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	sbbl	%ebx, %ebp
	movl	80(%eax), %ebx
	movl	%ebx, 84(%esp)          # 4-byte Spill
	sbbl	%ebx, %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	84(%eax), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	8(%esp), %ebx           # 4-byte Reload
	sbbl	%edx, %ebx
	movl	88(%eax), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	sbbl	%edx, 28(%esp)          # 4-byte Folded Spill
	movl	92(%eax), %edx
	movl	%edx, 148(%esp)         # 4-byte Spill
	sbbl	%edx, 40(%esp)          # 4-byte Folded Spill
	movl	96(%eax), %edx
	movl	%edx, 144(%esp)         # 4-byte Spill
	sbbl	%edx, 32(%esp)          # 4-byte Folded Spill
	movl	100(%eax), %edx
	movl	%edx, 140(%esp)         # 4-byte Spill
	sbbl	%edx, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	104(%eax), %edx
	movl	%edx, 136(%esp)         # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	sbbl	%edx, %ecx
	movl	108(%eax), %edx
	movl	%edx, 132(%esp)         # 4-byte Spill
	sbbl	%edx, 12(%esp)          # 4-byte Folded Spill
	sbbl	$0, 56(%esp)            # 4-byte Folded Spill
	movl	36(%esp), %edx          # 4-byte Reload
	addl	116(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	112(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	120(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 52(%esp)          # 4-byte Spill
	adcl	124(%esp), %edi         # 4-byte Folded Reload
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	128(%esp), %esi         # 4-byte Reload
	adcl	%esi, 60(%esp)          # 4-byte Folded Spill
	adcl	104(%esp), %ebp         # 4-byte Folded Reload
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	68(%esp), %ebp          # 4-byte Reload
	adcl	108(%esp), %ebp         # 4-byte Folded Reload
	adcl	96(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	100(%esp), %esi         # 4-byte Folded Reload
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	92(%esp), %ebx          # 4-byte Folded Reload
	movl	80(%esp), %edi          # 4-byte Reload
	adcl	%edi, 32(%esp)          # 4-byte Folded Spill
	movl	88(%esp), %edi          # 4-byte Reload
	adcl	%edi, 24(%esp)          # 4-byte Folded Spill
	adcl	72(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	84(%esp), %ecx          # 4-byte Folded Reload
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	76(%esp), %edi          # 4-byte Folded Reload
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 28(%eax)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%eax)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 36(%eax)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 40(%eax)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%eax)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 48(%eax)
	movl	%ebp, 52(%eax)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 56(%eax)
	movl	%esi, 60(%eax)
	movl	%ebx, 64(%eax)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 68(%eax)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 72(%eax)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 76(%eax)
	movl	%ecx, 80(%eax)
	movl	%edi, 84(%eax)
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 88(%eax)
	movl	148(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 92(%eax)
	movl	144(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 96(%eax)
	movl	140(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 100(%eax)
	movl	136(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 104(%eax)
	movl	132(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 108(%eax)
	addl	$268, %esp              # imm = 0x10C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end197:
	.size	mclb_sqr14, .Lfunc_end197-mclb_sqr14
                                        # -- End function
	.globl	mulUnit_inner480        # -- Begin function mulUnit_inner480
	.p2align	4, 0x90
	.type	mulUnit_inner480,@function
mulUnit_inner480:                       # @mulUnit_inner480
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$104, %esp
	movl	132(%esp), %esi
	movl	128(%esp), %ecx
	movl	%esi, %eax
	mull	(%ecx)
	movl	%edx, %edi
	movl	%eax, 100(%esp)         # 4-byte Spill
	movl	%esi, %eax
	mull	4(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	8(%ecx)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	12(%ecx)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	16(%ecx)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	20(%ecx)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	24(%ecx)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	28(%ecx)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	32(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	36(%ecx)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	40(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	44(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	48(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	52(%ecx)
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	56(%ecx)
	movl	%eax, %esi
	movl	%edx, 68(%esp)          # 4-byte Spill
	addl	%edi, %ebp
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	movl	84(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax          # 4-byte Folded Reload
	movl	92(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 32(%esp)          # 4-byte Folded Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	88(%esp), %edi          # 4-byte Folded Reload
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	80(%esp), %edx          # 4-byte Folded Reload
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	36(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, (%esp)            # 4-byte Spill
	movl	124(%esp), %esi
	movl	100(%esp), %ecx         # 4-byte Reload
	movl	%ecx, (%esi)
	movl	%ebp, 4(%esi)
	movl	%ebx, 8(%esi)
	movl	%eax, 12(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%esi)
	movl	%edi, 20(%esi)
	movl	%edx, 24(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 56(%esi)
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 60(%esi)
	movl	%esi, %eax
	addl	$104, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end198:
	.size	mulUnit_inner480, .Lfunc_end198-mulUnit_inner480
                                        # -- End function
	.globl	mclb_mulUnit15          # -- Begin function mclb_mulUnit15
	.p2align	4, 0x90
	.type	mclb_mulUnit15,@function
mclb_mulUnit15:                         # @mclb_mulUnit15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$108, %esp
	calll	.L199$pb
.L199$pb:
	popl	%ebx
.Ltmp21:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp21-.L199$pb), %ebx
	movl	128(%esp), %esi
	subl	$4, %esp
	leal	44(%esp), %eax
	pushl	140(%esp)
	pushl	140(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	100(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	76(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	72(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	64(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	60(%esp), %ebp
	movl	56(%esp), %ebx
	movl	52(%esp), %edi
	movl	48(%esp), %edx
	movl	40(%esp), %eax
	movl	44(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	addl	$108, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end199:
	.size	mclb_mulUnit15, .Lfunc_end199-mclb_mulUnit15
                                        # -- End function
	.globl	mclb_mulUnitAdd15       # -- Begin function mclb_mulUnitAdd15
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd15,@function
mclb_mulUnitAdd15:                      # @mclb_mulUnitAdd15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$116, %esp
	movl	144(%esp), %ecx
	movl	140(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 112(%esp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 108(%esp)         # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 100(%esp)         # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, (%esp)            # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	52(%esi)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	56(%esi)
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	136(%esp), %ecx
	addl	%edi, (%ecx)
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	4(%ecx), %edx
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	8(%ecx), %eax
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	20(%ecx), %esi
	movl	8(%esp), %edi           # 4-byte Reload
	adcl	24(%ecx), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	(%esp), %edi            # 4-byte Reload
	adcl	28(%ecx), %edi
	movl	%edi, (%esp)            # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	32(%ecx), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	adcl	36(%ecx), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	adcl	40(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	44(%ecx), %edi
	adcl	48(%ecx), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	52(%ecx), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	40(%esp), %ebx          # 4-byte Reload
	adcl	56(%ecx), %ebx
	movl	%ebx, 40(%esp)          # 4-byte Spill
	setb	20(%esp)                # 1-byte Folded Spill
	addl	112(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 36(%esp)          # 4-byte Spill
	adcl	108(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	104(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	100(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	96(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	92(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	(%esp), %eax            # 4-byte Reload
	adcl	88(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, (%esp)            # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	80(%esp), %ebx          # 4-byte Folded Reload
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	72(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	adcl	68(%esp), %edi          # 4-byte Folded Reload
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	64(%esp), %esi          # 4-byte Folded Reload
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	60(%esp), %edx          # 4-byte Folded Reload
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	56(%esp), %eax          # 4-byte Folded Reload
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 4(%ecx)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 8(%ecx)
	movl	16(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 12(%ecx)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 16(%ecx)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 20(%ecx)
	movl	8(%esp), %ebp           # 4-byte Reload
	movl	%ebp, 24(%ecx)
	movl	(%esp), %ebp            # 4-byte Reload
	movl	%ebp, 28(%ecx)
	movl	%ebx, 32(%ecx)
	movl	28(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 36(%ecx)
	movl	4(%esp), %ebx           # 4-byte Reload
	movl	%ebx, 40(%ecx)
	movl	%edi, 44(%ecx)
	movl	%esi, 48(%ecx)
	movl	%edx, 52(%ecx)
	movl	%eax, 56(%ecx)
	movzbl	20(%esp), %eax          # 1-byte Folded Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	addl	$116, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end200:
	.size	mclb_mulUnitAdd15, .Lfunc_end200-mclb_mulUnitAdd15
                                        # -- End function
	.globl	mclb_mul15              # -- Begin function mclb_mul15
	.p2align	4, 0x90
	.type	mclb_mul15,@function
mclb_mul15:                             # @mclb_mul15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$1036, %esp             # imm = 0x40C
	calll	.L201$pb
.L201$pb:
	popl	%ebx
.Ltmp22:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp22-.L201$pb), %ebx
	movl	1064(%esp), %ecx
	subl	$4, %esp
	leal	972(%esp), %eax
	pushl	(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	1028(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	1024(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	1020(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	1016(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	1012(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	1008(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	1004(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	1000(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	996(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	992(%esp), %edi
	movl	988(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	984(%esp), %ebp
	movl	980(%esp), %esi
	movl	976(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	968(%esp), %eax
	movl	972(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	908(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	4(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	964(%esp), %eax
	movl	60(%esp), %edx          # 4-byte Reload
	addl	904(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	908(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	912(%esp), %esi
	adcl	916(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	920(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	924(%esp), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	928(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	932(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	936(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	940(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	944(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	948(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	952(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	956(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	960(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	844(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	8(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	900(%esp), %eax
	movl	24(%esp), %edx          # 4-byte Reload
	addl	840(%esp), %edx
	adcl	844(%esp), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	848(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	852(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	856(%esp), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	860(%esp), %esi
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	864(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	868(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	872(%esp), %edi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	876(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	880(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	884(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	888(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	892(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	896(%esp), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 8(%ecx)
	adcl	$0, %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	780(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	12(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	836(%esp), %eax
	movl	56(%esp), %edx          # 4-byte Reload
	addl	776(%esp), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	780(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	784(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	788(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	792(%esp), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	796(%esp), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	800(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	804(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	808(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	adcl	812(%esp), %ebp
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	816(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	820(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	824(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	828(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	832(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 12(%ecx)
	adcl	$0, %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	716(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	16(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	772(%esp), %ecx
	movl	48(%esp), %edx          # 4-byte Reload
	addl	712(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	716(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	720(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	724(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	728(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	732(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	736(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	740(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	744(%esp), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	748(%esp), %esi
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	752(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	adcl	756(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	760(%esp), %ebp
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	764(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	768(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%edx, 16(%eax)
	adcl	$0, %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	652(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	20(%ecx)
	movl	1068(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	708(%esp), %eax
	movl	12(%esp), %edx          # 4-byte Reload
	addl	648(%esp), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	652(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	656(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	660(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	664(%esp), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	668(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	672(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	676(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	680(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	684(%esp), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	688(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	692(%esp), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	696(%esp), %ebp
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	700(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	704(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 20(%ecx)
	adcl	$0, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	588(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	24(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	644(%esp), %eax
	movl	68(%esp), %edx          # 4-byte Reload
	addl	584(%esp), %edx
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	588(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	592(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	596(%esp), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	600(%esp), %edi
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	604(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	608(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	612(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	616(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	620(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	624(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	628(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	632(%esp), %ebp
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	636(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	640(%esp), %esi
	movl	1056(%esp), %ecx
	movl	%edx, 24(%ecx)
	adcl	$0, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	524(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	28(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	580(%esp), %eax
	movl	40(%esp), %edx          # 4-byte Reload
	addl	520(%esp), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	524(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	528(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	532(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	536(%esp), %edi
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	540(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	544(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	548(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	552(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	556(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	560(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	adcl	564(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	568(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	572(%esp), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	576(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 28(%ecx)
	adcl	$0, %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	460(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	32(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	516(%esp), %edx
	movl	44(%esp), %eax          # 4-byte Reload
	addl	456(%esp), %eax
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	460(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	464(%esp), %ebp
	adcl	468(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	472(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	476(%esp), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	480(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	484(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	488(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	492(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	496(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	500(%esp), %edi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	504(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	508(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	512(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 32(%ecx)
	adcl	$0, %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	396(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	36(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	452(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	addl	392(%esp), %eax
	adcl	396(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	400(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	404(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	408(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	412(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	416(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	420(%esp), %ebp
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	424(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	428(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	432(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	436(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	440(%esp), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	444(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	448(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	332(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	40(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	388(%esp), %edx
	movl	52(%esp), %eax          # 4-byte Reload
	addl	328(%esp), %eax
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	332(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	336(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	340(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	344(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	348(%esp), %edi
	adcl	352(%esp), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	356(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	360(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	364(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %ebp          # 4-byte Reload
	adcl	368(%esp), %ebp
	adcl	372(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	376(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	380(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	384(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 40(%ecx)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	268(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	44(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	324(%esp), %ecx
	movl	20(%esp), %edx          # 4-byte Reload
	addl	264(%esp), %edx
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	268(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	272(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	276(%esp), %esi
	adcl	280(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	284(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	288(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	292(%esp), %edi
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	296(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	adcl	300(%esp), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	304(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	308(%esp), %ebp
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	312(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	316(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	320(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%edx, 44(%eax)
	adcl	$0, %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	204(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	48(%ecx)
	movl	1068(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	260(%esp), %edx
	movl	8(%esp), %eax           # 4-byte Reload
	addl	200(%esp), %eax
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	204(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	208(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	216(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	220(%esp), %esi
	adcl	224(%esp), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	228(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	232(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	236(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	240(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	244(%esp), %edi
	movl	16(%esp), %ebp          # 4-byte Reload
	adcl	248(%esp), %ebp
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	252(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 48(%ecx)
	adcl	$0, %edx
	movl	%edx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	leal	140(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	52(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	196(%esp), %edx
	movl	28(%esp), %ecx          # 4-byte Reload
	addl	136(%esp), %ecx
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	140(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	144(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	148(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	152(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	156(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	160(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	164(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	168(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %esi          # 4-byte Reload
	adcl	172(%esp), %esi
	adcl	176(%esp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	adcl	180(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	184(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %ebp          # 4-byte Reload
	adcl	188(%esp), %ebp
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	192(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%ecx, 52(%eax)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	76(%esp), %eax
	movl	1068(%esp), %ecx
	pushl	56(%ecx)
	pushl	1068(%esp)
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	32(%esp), %eax          # 4-byte Reload
	addl	72(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	80(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ebx          # 4-byte Reload
	adcl	84(%esp), %ebx
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	92(%esp), %edi
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	100(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	104(%esp), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	108(%esp), %esi
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	112(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	116(%esp), %edx
	adcl	120(%esp), %ebp
	movl	%ebp, 20(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	124(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	128(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	132(%esp), %eax
	movl	1056(%esp), %ecx
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ecx)
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%ecx)
	movl	24(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ecx)
	movl	%ebx, 68(%ecx)
	movl	56(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 72(%ecx)
	movl	%edi, 76(%ecx)
	movl	64(%esp), %edi          # 4-byte Reload
	movl	%edi, 80(%ecx)
	movl	12(%esp), %edi          # 4-byte Reload
	movl	%edi, 84(%ecx)
	movl	40(%esp), %edi          # 4-byte Reload
	movl	%edi, 88(%ecx)
	movl	%esi, 92(%ecx)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%ecx)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 108(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%ecx)
	adcl	$0, %eax
	movl	%eax, 116(%ecx)
	addl	$1036, %esp             # imm = 0x40C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end201:
	.size	mclb_mul15, .Lfunc_end201-mclb_mul15
                                        # -- End function
	.globl	mclb_sqr15              # -- Begin function mclb_sqr15
	.p2align	4, 0x90
	.type	mclb_sqr15,@function
mclb_sqr15:                             # @mclb_sqr15
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$1036, %esp             # imm = 0x40C
	calll	.L202$pb
.L202$pb:
	popl	%ebx
.Ltmp23:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp23-.L202$pb), %ebx
	movl	1060(%esp), %ecx
	subl	$4, %esp
	leal	972(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	1028(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	1024(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	1020(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	1016(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	1012(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	1008(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	1004(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	1000(%esp), %esi
	movl	996(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	992(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	988(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	984(%esp), %ebp
	movl	980(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	976(%esp), %edi
	movl	968(%esp), %eax
	movl	972(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	908(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	964(%esp), %eax
	movl	32(%esp), %edx          # 4-byte Reload
	addl	904(%esp), %edx
	adcl	908(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	912(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	916(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	920(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	924(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	928(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	932(%esp), %esi
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	936(%esp), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	940(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	944(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	948(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	952(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	956(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	960(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %ebp
	adcl	$0, %ebp
	subl	$4, %esp
	leal	844(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	900(%esp), %ecx
	movl	32(%esp), %edx          # 4-byte Reload
	addl	840(%esp), %edx
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	844(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	848(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	852(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	856(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	860(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	864(%esp), %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	adcl	868(%esp), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	872(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	876(%esp), %esi
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	880(%esp), %edi
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	884(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	888(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	892(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	896(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%edx, 8(%eax)
	adcl	$0, %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	780(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	836(%esp), %eax
	movl	64(%esp), %edx          # 4-byte Reload
	addl	776(%esp), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	780(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	784(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	788(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	792(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	796(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	800(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	804(%esp), %ebp
	adcl	808(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	adcl	812(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	816(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	820(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	824(%esp), %edi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	828(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	832(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	716(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	772(%esp), %eax
	movl	44(%esp), %edx          # 4-byte Reload
	addl	712(%esp), %edx
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	716(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	720(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	724(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	728(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	732(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	736(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	740(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	744(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	748(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	752(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	756(%esp), %edi
	movl	%edi, %ebp
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	760(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	764(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	768(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%edx, 16(%ecx)
	adcl	$0, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	652(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	708(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	648(%esp), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	652(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	656(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	660(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	664(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	668(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	672(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	676(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	680(%esp), %edi
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	684(%esp), %esi
	adcl	688(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	692(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	696(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	700(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %ebp          # 4-byte Reload
	adcl	704(%esp), %ebp
	movl	1056(%esp), %ecx
	movl	%edx, 20(%ecx)
	adcl	$0, %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	588(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	644(%esp), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	addl	584(%esp), %ecx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	588(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	592(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	596(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	600(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	604(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	608(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	adcl	612(%esp), %edi
	movl	%edi, 24(%esp)          # 4-byte Spill
	adcl	616(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	620(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	624(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	adcl	628(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	632(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	adcl	636(%esp), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	640(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%ecx, 24(%eax)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	524(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	580(%esp), %eax
	movl	12(%esp), %ecx          # 4-byte Reload
	addl	520(%esp), %ecx
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	524(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	528(%esp), %ebp
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	532(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	536(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %edi          # 4-byte Reload
	adcl	540(%esp), %edi
	movl	24(%esp), %edx          # 4-byte Reload
	adcl	544(%esp), %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	548(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %edx          # 4-byte Reload
	adcl	552(%esp), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	556(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	adcl	560(%esp), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	564(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	568(%esp), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %edx          # 4-byte Reload
	adcl	572(%esp), %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	576(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	1056(%esp), %edx
	movl	%ecx, 28(%edx)
	adcl	$0, %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	460(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	32(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	516(%esp), %edx
	movl	40(%esp), %eax          # 4-byte Reload
	addl	456(%esp), %eax
	adcl	460(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	464(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	468(%esp), %esi
	adcl	472(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	476(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	480(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	484(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	488(%esp), %ebp
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	492(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	496(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	500(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	504(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	508(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	512(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 32(%ecx)
	adcl	$0, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	396(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	36(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	452(%esp), %ecx
	movl	56(%esp), %edx          # 4-byte Reload
	addl	392(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	396(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %edi
	adcl	400(%esp), %edi
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	404(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	408(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	412(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	416(%esp), %esi
	adcl	420(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	424(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	428(%esp), %ebp
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	432(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	436(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	440(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	444(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	448(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%edx, 36(%eax)
	adcl	$0, %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	332(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	40(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	388(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	addl	328(%esp), %eax
	adcl	332(%esp), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	336(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	340(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	344(%esp), %edi
	adcl	348(%esp), %esi
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	352(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	356(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	360(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	364(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	368(%esp), %esi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	372(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	376(%esp), %ebp
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	380(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	384(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	1056(%esp), %ecx
	movl	%eax, 40(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	268(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	44(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	324(%esp), %ecx
	movl	60(%esp), %edx          # 4-byte Reload
	addl	264(%esp), %edx
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	268(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	272(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	276(%esp), %edi
	movl	%edi, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	280(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	284(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %edi          # 4-byte Reload
	adcl	288(%esp), %edi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	292(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	296(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	adcl	300(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	304(%esp), %esi
	adcl	308(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	312(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	316(%esp), %ebp
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	320(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	1056(%esp), %eax
	movl	%edx, 44(%eax)
	adcl	$0, %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	204(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	48(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	260(%esp), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	addl	200(%esp), %ecx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	204(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	208(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	212(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	216(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	adcl	220(%esp), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	224(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	64(%esp), %edi          # 4-byte Reload
	adcl	228(%esp), %edi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	232(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	236(%esp), %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	240(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	244(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	adcl	248(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	252(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	256(%esp), %ebp
	movl	1056(%esp), %eax
	movl	%ecx, 48(%eax)
	adcl	$0, %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	140(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	52(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	196(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	addl	136(%esp), %eax
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	144(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	148(%esp), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	152(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	156(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	160(%esp), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	164(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	168(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	172(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	176(%esp), %edi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	180(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	184(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	188(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	192(%esp), %ebp
	movl	1056(%esp), %ecx
	movl	%eax, 52(%ecx)
	adcl	$0, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	76(%esp), %eax
	movl	1064(%esp), %ecx
	pushl	56(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner480@PLT
	addl	$12, %esp
	movl	36(%esp), %eax          # 4-byte Reload
	addl	72(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	80(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	88(%esp), %ebx
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	92(%esp), %esi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	100(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	104(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	108(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	112(%esp), %edi
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	116(%esp), %edx
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	120(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	adcl	124(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	128(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	132(%esp), %eax
	movl	1056(%esp), %ecx
	movl	36(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 56(%ecx)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 60(%ecx)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ecx)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%ecx)
	movl	%ebx, 72(%ecx)
	movl	%esi, 76(%ecx)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 80(%ecx)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%ecx)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 88(%ecx)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 92(%ecx)
	movl	%edi, 96(%ecx)
	movl	%edx, 100(%ecx)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%ecx)
	movl	48(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%ecx)
	adcl	$0, %eax
	movl	%eax, 116(%ecx)
	addl	$1036, %esp             # imm = 0x40C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end202:
	.size	mclb_sqr15, .Lfunc_end202-mclb_sqr15
                                        # -- End function
	.globl	mulUnit_inner512        # -- Begin function mulUnit_inner512
	.p2align	4, 0x90
	.type	mulUnit_inner512,@function
mulUnit_inner512:                       # @mulUnit_inner512
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$112, %esp
	movl	140(%esp), %esi
	movl	136(%esp), %ecx
	movl	%esi, %eax
	mull	(%ecx)
	movl	%edx, %edi
	movl	%eax, 108(%esp)         # 4-byte Spill
	movl	%esi, %eax
	mull	4(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%esi, %eax
	mull	8(%ecx)
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, %ebx
	movl	%esi, %eax
	mull	12(%ecx)
	movl	%edx, 100(%esp)         # 4-byte Spill
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	16(%ecx)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	20(%ecx)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, 80(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	24(%ecx)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	28(%ecx)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	32(%ecx)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	36(%ecx)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	40(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	44(%ecx)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	48(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%esi, %eax
	mull	52(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	56(%ecx)
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%esi, %eax
	mull	60(%ecx)
	movl	%eax, %esi
	movl	%edx, 76(%esp)          # 4-byte Spill
	addl	%edi, %ebp
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	movl	92(%esp), %eax          # 4-byte Reload
	adcl	104(%esp), %eax         # 4-byte Folded Reload
	movl	100(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 36(%esp)          # 4-byte Folded Spill
	movl	80(%esp), %edi          # 4-byte Reload
	adcl	96(%esp), %edi          # 4-byte Folded Reload
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	88(%esp), %edx          # 4-byte Folded Reload
	movl	84(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 32(%esp)          # 4-byte Folded Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	movl	%esi, (%esp)            # 4-byte Spill
	movl	132(%esp), %esi
	movl	108(%esp), %ecx         # 4-byte Reload
	movl	%ecx, (%esi)
	movl	%ebp, 4(%esi)
	movl	%ebx, 8(%esi)
	movl	%eax, 12(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%esi)
	movl	%edi, 20(%esi)
	movl	%edx, 24(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 56(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 60(%esi)
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 64(%esi)
	movl	%esi, %eax
	addl	$112, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end203:
	.size	mulUnit_inner512, .Lfunc_end203-mulUnit_inner512
                                        # -- End function
	.globl	mclb_mulUnit16          # -- Begin function mclb_mulUnit16
	.p2align	4, 0x90
	.type	mclb_mulUnit16,@function
mclb_mulUnit16:                         # @mclb_mulUnit16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	calll	.L204$pb
.L204$pb:
	popl	%ebx
.Ltmp24:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp24-.L204$pb), %ebx
	movl	144(%esp), %esi
	subl	$4, %esp
	leal	60(%esp), %eax
	pushl	156(%esp)
	pushl	156(%esp)
	pushl	%eax
	calll	mulUnit_inner512@PLT
	addl	$12, %esp
	movl	120(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	116(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	112(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	108(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	104(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %ebp
	movl	72(%esp), %ebx
	movl	68(%esp), %edi
	movl	64(%esp), %edx
	movl	56(%esp), %eax
	movl	60(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%esi)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%esi)
	movl	52(%esp), %eax          # 4-byte Reload
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end204:
	.size	mclb_mulUnit16, .Lfunc_end204-mclb_mulUnit16
                                        # -- End function
	.globl	mclb_mulUnitAdd16       # -- Begin function mclb_mulUnitAdd16
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd16,@function
mclb_mulUnitAdd16:                      # @mclb_mulUnitAdd16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$128, %esp
	movl	156(%esp), %ecx
	movl	152(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 20(%esp)          # 4-byte Spill
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 124(%esp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 120(%esp)         # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 116(%esp)         # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 112(%esp)         # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 108(%esp)         # 4-byte Spill
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	56(%esi)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	60(%esi)
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edx, 100(%esp)         # 4-byte Spill
	movl	148(%esp), %ecx
	movl	64(%esp), %eax          # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	%edi, %eax
	adcl	4(%ecx), %eax
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	8(%ecx), %edx
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	32(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	60(%esp), %edi          # 4-byte Reload
	adcl	20(%ecx), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	adcl	24(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	28(%ecx), %edi
	movl	%edi, 56(%esp)          # 4-byte Spill
	movl	24(%esp), %edi          # 4-byte Reload
	adcl	32(%ecx), %edi
	adcl	36(%ecx), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	40(%ecx), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	adcl	44(%ecx), %ebx
	movl	%ebx, 28(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	48(%ecx), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ebx          # 4-byte Reload
	adcl	52(%ecx), %ebx
	movl	%ebx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ebx          # 4-byte Reload
	adcl	56(%ecx), %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ebx          # 4-byte Reload
	adcl	60(%ecx), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	setb	3(%esp)                 # 1-byte Folded Spill
	addl	20(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	124(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	120(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	116(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	112(%esp), %ebp         # 4-byte Folded Reload
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	108(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	56(%esp), %ebx          # 4-byte Reload
	adcl	104(%esp), %ebx         # 4-byte Folded Reload
	adcl	96(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, 24(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	92(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	88(%esp), %edi          # 4-byte Folded Reload
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	80(%esp), %esi          # 4-byte Folded Reload
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	76(%esp), %eax          # 4-byte Folded Reload
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	%edx, 16(%esp)          # 4-byte Folded Spill
	movl	68(%esp), %edx          # 4-byte Reload
	adcl	%edx, 12(%esp)          # 4-byte Folded Spill
	movl	64(%esp), %edx          # 4-byte Reload
	movl	%edx, (%ecx)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%ecx)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 8(%ecx)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 12(%ecx)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%ecx)
	movl	%ebp, 20(%ecx)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 24(%ecx)
	movl	%ebx, 28(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%ecx)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 36(%ecx)
	movl	%edi, 40(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%ecx)
	movl	%esi, 48(%ecx)
	movl	%eax, 52(%ecx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%ecx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ecx)
	movzbl	3(%esp), %eax           # 1-byte Folded Reload
	adcl	100(%esp), %eax         # 4-byte Folded Reload
	addl	$128, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end205:
	.size	mclb_mulUnitAdd16, .Lfunc_end205-mclb_mulUnitAdd16
                                        # -- End function
	.globl	mclb_mul16              # -- Begin function mclb_mul16
	.p2align	4, 0x90
	.type	mclb_mul16,@function
mclb_mul16:                             # @mclb_mul16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$300, %esp              # imm = 0x12C
	calll	.L206$pb
.L206$pb:
	popl	%edi
.Ltmp25:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp25-.L206$pb), %edi
	movl	320(%esp), %eax
	movl	328(%esp), %esi
	movl	324(%esp), %ebp
	leal	32(%ebp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	leal	32(%esi), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	leal	64(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%edi, %ebx
	movl	%edi, 96(%esp)          # 4-byte Spill
	pushl	%esi
	pushl	%ebp
	pushl	%eax
	calll	mclb_mul8@PLT
	addl	$12, %esp
	pushl	20(%esp)                # 4-byte Folded Reload
	pushl	20(%esp)                # 4-byte Folded Reload
	pushl	20(%esp)                # 4-byte Folded Reload
	calll	mclb_mul8@PLT
	addl	$16, %esp
	movl	16(%ebp), %ebx
	movl	12(%ebp), %edi
	movl	8(%ebp), %ecx
	movl	(%ebp), %eax
	movl	4(%ebp), %edx
	addl	32(%ebp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	36(%ebp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	adcl	40(%ebp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	44(%ebp), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	adcl	48(%ebp), %ebx
	movl	%ebx, 8(%esp)           # 4-byte Spill
	movl	20(%ebp), %eax
	adcl	52(%ebp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	24(%ebp), %eax
	adcl	56(%ebp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	28(%ebp), %edx
	adcl	60(%ebp), %edx
	setb	%al
	movl	(%esi), %ecx
	addl	32(%esi), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	4(%esi), %ecx
	adcl	36(%esi), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	8(%esi), %ecx
	adcl	40(%esi), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	12(%esi), %ecx
	adcl	44(%esi), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	16(%esi), %ecx
	adcl	48(%esi), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	20(%esi), %ecx
	adcl	52(%esi), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	24(%esi), %ecx
	adcl	56(%esi), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	28(%esi), %ebx
	adcl	60(%esi), %ebx
	movzbl	%al, %ecx
	setb	%al
	movl	%ecx, %edi
	shldl	$31, %edx, %edi
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%edi, %esi
	sarl	$31, %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	shrdl	$31, %esi, %edi
	movzbl	%al, %ebp
	andl	%ebp, %ecx
	movl	%ecx, 96(%esp)          # 4-byte Spill
	roll	%esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	%ebx, 84(%esp)          # 4-byte Spill
	shldl	$31, %ebx, %ebp
	movl	%ebp, %eax
	sarl	$31, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	shrdl	$31, %eax, %ebp
	movl	%ebp, 80(%esp)          # 4-byte Spill
	roll	%eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	movl	%eax, 200(%esp)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 204(%esp)
	movl	56(%esp), %eax          # 4-byte Reload
	movl	%eax, 208(%esp)
	movl	60(%esp), %eax          # 4-byte Reload
	movl	%eax, 212(%esp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 216(%esp)
	movl	48(%esp), %eax          # 4-byte Reload
	movl	%eax, 220(%esp)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 224(%esp)
	movl	%edx, 228(%esp)
	movl	72(%esp), %eax          # 4-byte Reload
	movl	%eax, 168(%esp)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 172(%esp)
	movl	76(%esp), %eax          # 4-byte Reload
	movl	%eax, 176(%esp)
	movl	32(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 180(%esp)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 184(%esp)
	movl	44(%esp), %eax          # 4-byte Reload
	movl	%eax, 188(%esp)
	movl	28(%esp), %esi          # 4-byte Reload
	movl	%esi, 192(%esp)
	movl	%ebx, 196(%esp)
	subl	$4, %esp
	leal	172(%esp), %eax
	leal	204(%esp), %ecx
	leal	236(%esp), %edx
	movl	96(%esp), %ebx          # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul8@PLT
	addl	$16, %esp
	andl	%edi, %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	andl	%edi, 40(%esp)          # 4-byte Folded Spill
	andl	72(%esp), %edi          # 4-byte Folded Reload
	movl	84(%esp), %eax          # 4-byte Reload
	andl	%eax, 68(%esp)          # 4-byte Folded Spill
	movl	36(%esp), %eax          # 4-byte Reload
	andl	%eax, %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	andl	%eax, 44(%esp)          # 4-byte Folded Spill
	andl	%eax, 20(%esp)          # 4-byte Folded Spill
	andl	76(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	movl	80(%esp), %ebp          # 4-byte Reload
	andl	%ebp, %edx
	andl	%ebp, 12(%esp)          # 4-byte Folded Spill
	andl	52(%esp), %ebp          # 4-byte Folded Reload
	movl	88(%esp), %eax          # 4-byte Reload
	andl	%eax, 64(%esp)          # 4-byte Folded Spill
	movl	24(%esp), %ebx          # 4-byte Reload
	movl	16(%esp), %ecx          # 4-byte Reload
	andl	%ecx, %ebx
	movl	48(%esp), %eax          # 4-byte Reload
	andl	%ecx, %eax
	andl	%ecx, 8(%esp)           # 4-byte Folded Spill
	andl	56(%esp), %ecx          # 4-byte Folded Reload
	addl	%edi, %ebp
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	40(%esp), %esi          # 4-byte Folded Reload
	adcl	36(%esp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	32(%esp), %edx          # 4-byte Folded Reload
	movl	8(%esp), %ecx           # 4-byte Reload
	adcl	20(%esp), %ecx          # 4-byte Folded Reload
	adcl	44(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, %edi
	adcl	28(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, %eax
	movl	64(%esp), %ebx          # 4-byte Reload
	adcl	68(%esp), %ebx          # 4-byte Folded Reload
	setb	24(%esp)                # 1-byte Folded Spill
	addl	264(%esp), %ebp
	adcl	268(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	16(%esp), %esi          # 4-byte Reload
	adcl	272(%esp), %esi
	adcl	276(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	adcl	280(%esp), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	adcl	284(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	adcl	288(%esp), %eax
	adcl	292(%esp), %ebx
	movl	%ebx, 64(%esp)          # 4-byte Spill
	movzbl	24(%esp), %edx          # 1-byte Folded Reload
	adcl	96(%esp), %edx          # 4-byte Folded Reload
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	232(%esp), %ecx
	movl	320(%esp), %edi
	subl	(%edi), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	236(%esp), %ecx
	sbbl	4(%edi), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	240(%esp), %ecx
	sbbl	8(%edi), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	244(%esp), %ecx
	sbbl	12(%edi), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	248(%esp), %edx
	sbbl	16(%edi), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	252(%esp), %edx
	sbbl	20(%edi), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	256(%esp), %edx
	sbbl	24(%edi), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	260(%esp), %edx
	sbbl	28(%edi), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	32(%edi), %ecx
	movl	%ecx, 164(%esp)         # 4-byte Spill
	movl	%ebp, %ebx
	sbbl	%ecx, %ebx
	movl	36(%edi), %ecx
	movl	%ecx, 160(%esp)         # 4-byte Spill
	sbbl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	40(%edi), %ecx
	movl	%ecx, 156(%esp)         # 4-byte Spill
	sbbl	%ecx, %esi
	movl	%esi, 16(%esp)          # 4-byte Spill
	movl	44(%edi), %edx
	movl	%edx, 152(%esp)         # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	sbbl	%edx, %ecx
	movl	48(%edi), %edx
	movl	%edx, 148(%esp)         # 4-byte Spill
	sbbl	%edx, 8(%esp)           # 4-byte Folded Spill
	movl	52(%edi), %edx
	movl	%edx, 144(%esp)         # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	sbbl	%edx, %ebp
	movl	56(%edi), %edx
	movl	%edx, 140(%esp)         # 4-byte Spill
	sbbl	%edx, %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%edi), %eax
	movl	%eax, 136(%esp)         # 4-byte Spill
	sbbl	%eax, 64(%esp)          # 4-byte Folded Spill
	sbbl	$0, 28(%esp)            # 4-byte Folded Spill
	movl	64(%edi), %eax
	movl	%eax, 100(%esp)         # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	subl	%eax, %edx
	movl	68(%edi), %eax
	movl	%eax, 104(%esp)         # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	sbbl	%eax, %esi
	movl	72(%edi), %eax
	movl	%eax, 108(%esp)         # 4-byte Spill
	sbbl	%eax, 20(%esp)          # 4-byte Folded Spill
	movl	76(%edi), %eax
	movl	%eax, 112(%esp)         # 4-byte Spill
	sbbl	%eax, 68(%esp)          # 4-byte Folded Spill
	movl	80(%edi), %eax
	movl	%eax, 116(%esp)         # 4-byte Spill
	sbbl	%eax, 44(%esp)          # 4-byte Folded Spill
	movl	84(%edi), %eax
	movl	%eax, 120(%esp)         # 4-byte Spill
	sbbl	%eax, 40(%esp)          # 4-byte Folded Spill
	movl	88(%edi), %eax
	movl	%eax, 124(%esp)         # 4-byte Spill
	sbbl	%eax, 36(%esp)          # 4-byte Folded Spill
	movl	92(%edi), %eax
	movl	%eax, 128(%esp)         # 4-byte Spill
	sbbl	%eax, 32(%esp)          # 4-byte Folded Spill
	movl	96(%edi), %eax
	movl	%eax, 132(%esp)         # 4-byte Spill
	sbbl	%eax, %ebx
	movl	%ebx, 80(%esp)          # 4-byte Spill
	movl	100(%edi), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	12(%esp), %ebx          # 4-byte Reload
	sbbl	%eax, %ebx
	movl	104(%edi), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	sbbl	%eax, 16(%esp)          # 4-byte Folded Spill
	movl	108(%edi), %eax
	movl	%eax, 96(%esp)          # 4-byte Spill
	sbbl	%eax, %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	112(%edi), %eax
	movl	%eax, 92(%esp)          # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	%eax, %ecx
	movl	116(%edi), %eax
	movl	%eax, 88(%esp)          # 4-byte Spill
	sbbl	%eax, %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	120(%edi), %eax
	movl	%eax, 84(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	sbbl	%eax, %ebp
	movl	124(%edi), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	sbbl	%eax, 64(%esp)          # 4-byte Folded Spill
	sbbl	$0, 28(%esp)            # 4-byte Folded Spill
	addl	164(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 56(%esp)          # 4-byte Spill
	adcl	160(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 52(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	156(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	adcl	152(%esp), %esi         # 4-byte Folded Reload
	movl	148(%esp), %eax         # 4-byte Reload
	adcl	%eax, 44(%esp)          # 4-byte Folded Spill
	movl	144(%esp), %eax         # 4-byte Reload
	adcl	%eax, 40(%esp)          # 4-byte Folded Spill
	movl	140(%esp), %eax         # 4-byte Reload
	adcl	%eax, 36(%esp)          # 4-byte Folded Spill
	movl	136(%esp), %eax         # 4-byte Reload
	adcl	%eax, 32(%esp)          # 4-byte Folded Spill
	movl	100(%esp), %eax         # 4-byte Reload
	adcl	%eax, 80(%esp)          # 4-byte Folded Spill
	adcl	104(%esp), %ebx         # 4-byte Folded Reload
	movl	%ebx, 12(%esp)          # 4-byte Spill
	movl	108(%esp), %eax         # 4-byte Reload
	adcl	%eax, 16(%esp)          # 4-byte Folded Spill
	movl	60(%esp), %ebx          # 4-byte Reload
	adcl	112(%esp), %ebx         # 4-byte Folded Reload
	adcl	116(%esp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	120(%esp), %eax         # 4-byte Reload
	adcl	%eax, 48(%esp)          # 4-byte Folded Spill
	movl	%ebp, %ecx
	adcl	124(%esp), %ecx         # 4-byte Folded Reload
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	128(%esp), %eax         # 4-byte Folded Reload
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	132(%esp), %edx         # 4-byte Folded Reload
	movl	56(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 32(%edi)
	movl	52(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 36(%edi)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 40(%edi)
	movl	%esi, 44(%edi)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 48(%edi)
	movl	40(%esp), %esi          # 4-byte Reload
	movl	%esi, 52(%edi)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 56(%edi)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%edi)
	movl	80(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%edi)
	movl	12(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%edi)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 72(%edi)
	movl	%ebx, 76(%edi)
	movl	8(%esp), %esi           # 4-byte Reload
	movl	%esi, 80(%edi)
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 84(%edi)
	movl	%ecx, 88(%edi)
	movl	%eax, 92(%edi)
	movl	%edx, 96(%edi)
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 100(%edi)
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 104(%edi)
	movl	96(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 108(%edi)
	movl	92(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 112(%edi)
	movl	88(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 116(%edi)
	movl	84(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 120(%edi)
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 124(%edi)
	addl	$300, %esp              # imm = 0x12C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end206:
	.size	mclb_mul16, .Lfunc_end206-mclb_mul16
                                        # -- End function
	.globl	mclb_sqr16              # -- Begin function mclb_sqr16
	.p2align	4, 0x90
	.type	mclb_sqr16,@function
mclb_sqr16:                             # @mclb_sqr16
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$300, %esp              # imm = 0x12C
	calll	.L207$pb
.L207$pb:
	popl	%edi
.Ltmp26:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp26-.L207$pb), %edi
	movl	320(%esp), %eax
	movl	324(%esp), %esi
	leal	32(%esi), %ebp
	leal	64(%eax), %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	subl	$4, %esp
	movl	%edi, %ebx
	movl	%edi, 32(%esp)          # 4-byte Spill
	pushl	%esi
	pushl	%esi
	pushl	%eax
	calll	mclb_mul8@PLT
	addl	$12, %esp
	pushl	%ebp
	pushl	%ebp
	pushl	20(%esp)                # 4-byte Folded Reload
	calll	mclb_mul8@PLT
	addl	$16, %esp
	movl	16(%esi), %ecx
	movl	12(%esi), %ebx
	movl	8(%esi), %edi
	movl	(%esi), %edx
	movl	4(%esi), %eax
	addl	32(%esi), %edx
	adcl	36(%esi), %eax
	adcl	40(%esi), %edi
	adcl	44(%esi), %ebx
	adcl	48(%esi), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	20(%esi), %ebp
	adcl	52(%esi), %ebp
	movl	%ebp, 8(%esp)           # 4-byte Spill
	movl	24(%esi), %ecx
	adcl	56(%esi), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	28(%esi), %ecx
	adcl	60(%esi), %ecx
	movl	%edx, 200(%esp)
	movl	%eax, 204(%esp)
	movl	%edi, 208(%esp)
	movl	%ebx, 24(%esp)          # 4-byte Spill
	movl	%ebx, 212(%esp)
	movl	16(%esp), %esi          # 4-byte Reload
	movl	%esi, 216(%esp)
	movl	%ebp, 220(%esp)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 224(%esp)
	movl	%ecx, 228(%esp)
	movl	%edx, 168(%esp)
	movl	%eax, 172(%esp)
	movl	%eax, %ebp
	movl	%edi, 176(%esp)
	movl	%ebx, 180(%esp)
	movl	%esi, 184(%esp)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 188(%esp)
	movl	12(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 192(%esp)
	movl	%ecx, 196(%esp)
	movl	%ecx, %esi
	movl	$0, %ecx
	cmovael	%ecx, %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	cmovael	%ecx, %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	cmovael	%ecx, %edi
	movl	$0, %edx
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	cmovael	%edx, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	movl	$0, %ecx
	cmovael	%ecx, %edi
	cmovael	%ecx, %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	cmovael	%ecx, %ebx
	movl	$0, %eax
	movl	%ebx, %ebp
	cmovael	%eax, %esi
	setb	%al
	movzbl	%al, %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	172(%esp), %eax
	leal	204(%esp), %ecx
	leal	236(%esp), %edx
	movl	32(%esp), %ebx          # 4-byte Reload
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	calll	mclb_mul8@PLT
	addl	$16, %esp
	movl	%esi, %ebx
	movl	%esi, %eax
	movl	%ebp, %ecx
	shldl	$1, %ebp, %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	8(%esp), %ebp           # 4-byte Reload
	shldl	$1, %ebp, %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	%edi, %esi
	shldl	$1, %edi, %ebp
	movl	%ebp, %edi
	movl	24(%esp), %eax          # 4-byte Reload
	shldl	$1, %eax, %esi
	movl	%esi, %ebp
	movl	40(%esp), %esi          # 4-byte Reload
	shldl	$1, %esi, %eax
	movl	36(%esp), %edx          # 4-byte Reload
	shldl	$1, %edx, %esi
	movl	20(%esp), %ecx          # 4-byte Reload
	shldl	$1, %ecx, %edx
	shrl	$31, %ebx
	addl	%ecx, %ecx
	addl	264(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	268(%esp), %edx
	movl	%edx, %ecx
	adcl	272(%esp), %esi
	adcl	276(%esp), %eax
	adcl	280(%esp), %ebp
	movl	%ebp, 16(%esp)          # 4-byte Spill
	adcl	284(%esp), %edi
	movl	%edi, 8(%esp)           # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	288(%esp), %ebp
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	292(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	adcl	32(%esp), %ebx          # 4-byte Folded Reload
	movl	%ebx, 64(%esp)          # 4-byte Spill
	movl	232(%esp), %edx
	movl	320(%esp), %edi
	subl	(%edi), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	236(%esp), %edx
	sbbl	4(%edi), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	240(%esp), %edx
	sbbl	8(%edi), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	244(%esp), %edx
	sbbl	12(%edi), %edx
	movl	%edx, %ebx
	movl	248(%esp), %edx
	sbbl	16(%edi), %edx
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	252(%esp), %edx
	sbbl	20(%edi), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	256(%esp), %edx
	sbbl	24(%edi), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	260(%esp), %edx
	sbbl	28(%edi), %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	32(%edi), %edx
	movl	%edx, 136(%esp)         # 4-byte Spill
	sbbl	%edx, 20(%esp)          # 4-byte Folded Spill
	movl	36(%edi), %edx
	movl	%edx, 140(%esp)         # 4-byte Spill
	sbbl	%edx, %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%edi), %ecx
	movl	%ecx, 132(%esp)         # 4-byte Spill
	sbbl	%ecx, %esi
	movl	%esi, 40(%esp)          # 4-byte Spill
	movl	44(%edi), %edx
	movl	%edx, 128(%esp)         # 4-byte Spill
	sbbl	%edx, %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	48(%edi), %eax
	movl	%eax, 124(%esp)         # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	sbbl	%eax, %edx
	movl	52(%edi), %esi
	movl	%esi, 120(%esp)         # 4-byte Spill
	movl	8(%esp), %ecx           # 4-byte Reload
	sbbl	%esi, %ecx
	movl	56(%edi), %esi
	movl	%esi, 116(%esp)         # 4-byte Spill
	sbbl	%esi, %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	60(%edi), %eax
	movl	%eax, 100(%esp)         # 4-byte Spill
	sbbl	%eax, 28(%esp)          # 4-byte Folded Spill
	sbbl	$0, 64(%esp)            # 4-byte Folded Spill
	movl	64(%edi), %eax
	movl	%eax, 104(%esp)         # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	subl	%eax, %esi
	movl	68(%edi), %eax
	movl	%eax, 108(%esp)         # 4-byte Spill
	sbbl	%eax, 32(%esp)          # 4-byte Folded Spill
	movl	72(%edi), %eax
	movl	%eax, 112(%esp)         # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	sbbl	%eax, %ebp
	movl	76(%edi), %eax
	movl	%eax, 80(%esp)          # 4-byte Spill
	sbbl	%eax, %ebx
	movl	%ebx, 72(%esp)          # 4-byte Spill
	movl	80(%edi), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	sbbl	%eax, 68(%esp)          # 4-byte Folded Spill
	movl	84(%edi), %eax
	movl	%eax, 84(%esp)          # 4-byte Spill
	sbbl	%eax, 60(%esp)          # 4-byte Folded Spill
	movl	88(%edi), %eax
	movl	%eax, 88(%esp)          # 4-byte Spill
	sbbl	%eax, 56(%esp)          # 4-byte Folded Spill
	movl	92(%edi), %eax
	movl	%eax, 92(%esp)          # 4-byte Spill
	sbbl	%eax, 52(%esp)          # 4-byte Folded Spill
	movl	96(%edi), %eax
	movl	%eax, 96(%esp)          # 4-byte Spill
	sbbl	%eax, 20(%esp)          # 4-byte Folded Spill
	movl	100(%edi), %ebx
	movl	%ebx, 164(%esp)         # 4-byte Spill
	sbbl	%ebx, 36(%esp)          # 4-byte Folded Spill
	movl	104(%edi), %ebx
	movl	%ebx, 160(%esp)         # 4-byte Spill
	sbbl	%ebx, 40(%esp)          # 4-byte Folded Spill
	movl	108(%edi), %ebx
	movl	%ebx, 156(%esp)         # 4-byte Spill
	sbbl	%ebx, 24(%esp)          # 4-byte Folded Spill
	movl	112(%edi), %ebx
	movl	%ebx, 152(%esp)         # 4-byte Spill
	sbbl	%ebx, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	movl	116(%edi), %edx
	movl	%edx, 148(%esp)         # 4-byte Spill
	sbbl	%edx, %ecx
	movl	%ecx, 8(%esp)           # 4-byte Spill
	movl	120(%edi), %eax
	movl	%eax, 144(%esp)         # 4-byte Spill
	movl	12(%esp), %ebx          # 4-byte Reload
	sbbl	%eax, %ebx
	movl	124(%edi), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	%edi, %eax
	movl	28(%esp), %edx          # 4-byte Reload
	sbbl	%ecx, %edx
	movl	64(%esp), %edi          # 4-byte Reload
	sbbl	$0, %edi
	addl	136(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	140(%esp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	132(%esp), %ebp         # 4-byte Folded Reload
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	128(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 72(%esp)          # 4-byte Folded Spill
	movl	68(%esp), %ebp          # 4-byte Reload
	adcl	124(%esp), %ebp         # 4-byte Folded Reload
	movl	120(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 60(%esp)          # 4-byte Folded Spill
	movl	116(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 56(%esp)          # 4-byte Folded Spill
	movl	100(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 52(%esp)          # 4-byte Folded Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	104(%esp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	108(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 36(%esp)          # 4-byte Folded Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	112(%esp), %ecx         # 4-byte Folded Reload
	movl	80(%esp), %esi          # 4-byte Reload
	adcl	%esi, 24(%esp)          # 4-byte Folded Spill
	movl	76(%esp), %esi          # 4-byte Reload
	adcl	%esi, 16(%esp)          # 4-byte Folded Spill
	movl	84(%esp), %esi          # 4-byte Reload
	adcl	%esi, 8(%esp)           # 4-byte Folded Spill
	adcl	88(%esp), %ebx          # 4-byte Folded Reload
	adcl	92(%esp), %edx          # 4-byte Folded Reload
	adcl	96(%esp), %edi          # 4-byte Folded Reload
	movl	48(%esp), %esi          # 4-byte Reload
	movl	%esi, 32(%eax)
	movl	32(%esp), %esi          # 4-byte Reload
	movl	%esi, 36(%eax)
	movl	44(%esp), %esi          # 4-byte Reload
	movl	%esi, 40(%eax)
	movl	72(%esp), %esi          # 4-byte Reload
	movl	%esi, 44(%eax)
	movl	%ebp, 48(%eax)
	movl	60(%esp), %esi          # 4-byte Reload
	movl	%esi, 52(%eax)
	movl	56(%esp), %esi          # 4-byte Reload
	movl	%esi, 56(%eax)
	movl	52(%esp), %esi          # 4-byte Reload
	movl	%esi, 60(%eax)
	movl	20(%esp), %esi          # 4-byte Reload
	movl	%esi, 64(%eax)
	movl	36(%esp), %esi          # 4-byte Reload
	movl	%esi, 68(%eax)
	movl	%ecx, 72(%eax)
	movl	24(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 76(%eax)
	movl	16(%esp), %ecx          # 4-byte Reload
	movl	%ecx, 80(%eax)
	movl	8(%esp), %ecx           # 4-byte Reload
	movl	%ecx, 84(%eax)
	movl	%ebx, 88(%eax)
	movl	%edx, 92(%eax)
	movl	%edi, 96(%eax)
	movl	164(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 100(%eax)
	movl	160(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 104(%eax)
	movl	156(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 108(%eax)
	movl	152(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 112(%eax)
	movl	148(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 116(%eax)
	movl	144(%esp), %ecx         # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 120(%eax)
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	$0, %ecx
	movl	%ecx, 124(%eax)
	addl	$300, %esp              # imm = 0x12C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end207:
	.size	mclb_sqr16, .Lfunc_end207-mclb_sqr16
                                        # -- End function
	.globl	mulUnit_inner544        # -- Begin function mulUnit_inner544
	.p2align	4, 0x90
	.type	mulUnit_inner544,@function
mulUnit_inner544:                       # @mulUnit_inner544
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$120, %esp
	movl	148(%esp), %edi
	movl	144(%esp), %ecx
	movl	%edi, %eax
	mull	(%ecx)
	movl	%edx, %esi
	movl	%eax, 116(%esp)         # 4-byte Spill
	movl	%edi, %eax
	mull	4(%ecx)
	movl	%edx, (%esp)            # 4-byte Spill
	movl	%eax, %ebp
	movl	%edi, %eax
	mull	8(%ecx)
	movl	%edx, 112(%esp)         # 4-byte Spill
	movl	%eax, %ebx
	movl	%edi, %eax
	mull	12(%ecx)
	movl	%edx, 108(%esp)         # 4-byte Spill
	movl	%eax, 100(%esp)         # 4-byte Spill
	movl	%edi, %eax
	mull	16(%ecx)
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	20(%ecx)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, 88(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	24(%ecx)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 80(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	28(%ecx)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	32(%ecx)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	36(%ecx)
	movl	%edx, 68(%esp)          # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	40(%ecx)
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	44(%ecx)
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	48(%ecx)
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	52(%ecx)
	movl	%edx, 52(%esp)          # 4-byte Spill
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edi, %eax
	mull	56(%ecx)
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	60(%ecx)
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%edi, %eax
	mull	64(%ecx)
	movl	%eax, %edi
	movl	%edx, 76(%esp)          # 4-byte Spill
	addl	%esi, %ebp
	adcl	(%esp), %ebx            # 4-byte Folded Reload
	movl	100(%esp), %eax         # 4-byte Reload
	adcl	112(%esp), %eax         # 4-byte Folded Reload
	movl	108(%esp), %ecx         # 4-byte Reload
	adcl	%ecx, 40(%esp)          # 4-byte Folded Spill
	movl	88(%esp), %esi          # 4-byte Reload
	adcl	104(%esp), %esi         # 4-byte Folded Reload
	movl	80(%esp), %edx          # 4-byte Reload
	adcl	96(%esp), %edx          # 4-byte Folded Reload
	movl	92(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 36(%esp)          # 4-byte Folded Spill
	movl	84(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 32(%esp)          # 4-byte Folded Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 28(%esp)          # 4-byte Folded Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 24(%esp)          # 4-byte Folded Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 20(%esp)          # 4-byte Folded Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 16(%esp)          # 4-byte Folded Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 12(%esp)          # 4-byte Folded Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 8(%esp)           # 4-byte Folded Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	%ecx, 4(%esp)           # 4-byte Folded Spill
	adcl	44(%esp), %edi          # 4-byte Folded Reload
	movl	%edi, (%esp)            # 4-byte Spill
	movl	140(%esp), %edi
	movl	116(%esp), %ecx         # 4-byte Reload
	movl	%ecx, (%edi)
	movl	%ebp, 4(%edi)
	movl	%ebx, 8(%edi)
	movl	%eax, 12(%edi)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 16(%edi)
	movl	%esi, 20(%edi)
	movl	%edx, 24(%edi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 28(%edi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 32(%edi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%edi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%edi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%edi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%edi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%edi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 56(%edi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 60(%edi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 64(%edi)
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	$0, %eax
	movl	%eax, 68(%edi)
	movl	%edi, %eax
	addl	$120, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl	$4
.Lfunc_end208:
	.size	mulUnit_inner544, .Lfunc_end208-mulUnit_inner544
                                        # -- End function
	.globl	mclb_mulUnit17          # -- Begin function mclb_mulUnit17
	.p2align	4, 0x90
	.type	mclb_mulUnit17,@function
mclb_mulUnit17:                         # @mclb_mulUnit17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$124, %esp
	calll	.L209$pb
.L209$pb:
	popl	%ebx
.Ltmp27:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp27-.L209$pb), %ebx
	movl	144(%esp), %esi
	subl	$4, %esp
	leal	52(%esp), %eax
	pushl	156(%esp)
	pushl	156(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	116(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	112(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	108(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	104(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	100(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	96(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	92(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	88(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	84(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	80(%esp), %eax
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	76(%esp), %eax
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	72(%esp), %eax
	movl	%eax, (%esp)            # 4-byte Spill
	movl	68(%esp), %ebp
	movl	64(%esp), %ebx
	movl	60(%esp), %edi
	movl	56(%esp), %edx
	movl	48(%esp), %eax
	movl	52(%esp), %ecx
	movl	%eax, (%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, 8(%esi)
	movl	%edi, 12(%esi)
	movl	%ebx, 16(%esi)
	movl	%ebp, 20(%esi)
	movl	(%esp), %eax            # 4-byte Reload
	movl	%eax, 24(%esi)
	movl	4(%esp), %eax           # 4-byte Reload
	movl	%eax, 28(%esi)
	movl	8(%esp), %eax           # 4-byte Reload
	movl	%eax, 32(%esi)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 36(%esi)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 40(%esi)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 44(%esi)
	movl	24(%esp), %eax          # 4-byte Reload
	movl	%eax, 48(%esi)
	movl	28(%esp), %eax          # 4-byte Reload
	movl	%eax, 52(%esi)
	movl	32(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%esi)
	movl	36(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%esi)
	movl	40(%esp), %eax          # 4-byte Reload
	movl	%eax, 64(%esi)
	movl	44(%esp), %eax          # 4-byte Reload
	addl	$124, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end209:
	.size	mclb_mulUnit17, .Lfunc_end209-mclb_mulUnit17
                                        # -- End function
	.globl	mclb_mulUnitAdd17       # -- Begin function mclb_mulUnitAdd17
	.p2align	4, 0x90
	.type	mclb_mulUnitAdd17,@function
mclb_mulUnitAdd17:                      # @mclb_mulUnitAdd17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$136, %esp
	movl	164(%esp), %ecx
	movl	160(%esp), %esi
	movl	%ecx, %eax
	mull	(%esi)
	movl	%edx, 24(%esp)          # 4-byte Spill
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	4(%esi)
	movl	%edx, 132(%esp)         # 4-byte Spill
	movl	%eax, %edi
	movl	%ecx, %eax
	mull	8(%esi)
	movl	%edx, 128(%esp)         # 4-byte Spill
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	12(%esi)
	movl	%edx, 124(%esp)         # 4-byte Spill
	movl	%eax, 8(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	16(%esi)
	movl	%edx, 120(%esp)         # 4-byte Spill
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	20(%esi)
	movl	%edx, 116(%esp)         # 4-byte Spill
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	24(%esi)
	movl	%edx, 112(%esp)         # 4-byte Spill
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	%ecx, %eax
	mull	28(%esi)
	movl	%edx, 108(%esp)         # 4-byte Spill
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	32(%esi)
	movl	%edx, 100(%esp)         # 4-byte Spill
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	36(%esi)
	movl	%edx, 96(%esp)          # 4-byte Spill
	movl	%eax, %ebp
	movl	%ecx, %eax
	mull	40(%esi)
	movl	%edx, 92(%esp)          # 4-byte Spill
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	44(%esi)
	movl	%edx, 88(%esp)          # 4-byte Spill
	movl	%eax, %ebx
	movl	%ecx, %eax
	mull	48(%esi)
	movl	%edx, 84(%esp)          # 4-byte Spill
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	52(%esi)
	movl	%edx, 80(%esp)          # 4-byte Spill
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	56(%esi)
	movl	%edx, 76(%esp)          # 4-byte Spill
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	60(%esi)
	movl	%edx, 72(%esp)          # 4-byte Spill
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	%ecx, %eax
	mull	64(%esi)
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	%edx, 104(%esp)         # 4-byte Spill
	movl	156(%esp), %ecx
	movl	68(%esp), %eax          # 4-byte Reload
	addl	(%ecx), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	%edi, %eax
	adcl	4(%ecx), %eax
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	8(%ecx), %edx
	movl	8(%esp), %esi           # 4-byte Reload
	adcl	12(%ecx), %esi
	movl	%esi, 8(%esp)           # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	16(%ecx), %esi
	movl	64(%esp), %edi          # 4-byte Reload
	adcl	20(%ecx), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	4(%esp), %edi           # 4-byte Reload
	adcl	24(%ecx), %edi
	movl	%edi, 4(%esp)           # 4-byte Spill
	movl	60(%esp), %edi          # 4-byte Reload
	adcl	28(%ecx), %edi
	movl	%edi, 60(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	32(%ecx), %edi
	adcl	36(%ecx), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	40(%ecx), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	adcl	44(%ecx), %ebx
	movl	%ebx, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %ebx          # 4-byte Reload
	adcl	48(%ecx), %ebx
	movl	%ebx, 52(%esp)          # 4-byte Spill
	movl	48(%esp), %ebx          # 4-byte Reload
	adcl	52(%ecx), %ebx
	movl	%ebx, 48(%esp)          # 4-byte Spill
	movl	20(%esp), %ebx          # 4-byte Reload
	adcl	56(%ecx), %ebx
	movl	%ebx, 20(%esp)          # 4-byte Spill
	movl	16(%esp), %ebx          # 4-byte Reload
	adcl	60(%ecx), %ebx
	movl	%ebx, 16(%esp)          # 4-byte Spill
	movl	12(%esp), %ebx          # 4-byte Reload
	adcl	64(%ecx), %ebx
	movl	%ebx, 12(%esp)          # 4-byte Spill
	setb	3(%esp)                 # 1-byte Folded Spill
	addl	24(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	132(%esp), %edx         # 4-byte Folded Reload
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	8(%esp), %eax           # 4-byte Reload
	adcl	128(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 8(%esp)           # 4-byte Spill
	adcl	124(%esp), %esi         # 4-byte Folded Reload
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %ebp          # 4-byte Reload
	adcl	120(%esp), %ebp         # 4-byte Folded Reload
	movl	4(%esp), %eax           # 4-byte Reload
	adcl	116(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 4(%esp)           # 4-byte Spill
	movl	60(%esp), %ebx          # 4-byte Reload
	adcl	112(%esp), %ebx         # 4-byte Folded Reload
	adcl	108(%esp), %edi         # 4-byte Folded Reload
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	100(%esp), %eax         # 4-byte Folded Reload
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %edi          # 4-byte Reload
	adcl	96(%esp), %edi          # 4-byte Folded Reload
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	92(%esp), %eax          # 4-byte Folded Reload
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	52(%esp), %esi          # 4-byte Reload
	adcl	88(%esp), %esi          # 4-byte Folded Reload
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax          # 4-byte Folded Reload
	movl	80(%esp), %edx          # 4-byte Reload
	adcl	%edx, 20(%esp)          # 4-byte Folded Spill
	movl	76(%esp), %edx          # 4-byte Reload
	adcl	%edx, 16(%esp)          # 4-byte Folded Spill
	movl	72(%esp), %edx          # 4-byte Reload
	adcl	%edx, 12(%esp)          # 4-byte Folded Spill
	movl	68(%esp), %edx          # 4-byte Reload
	movl	%edx, (%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 4(%ecx)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 8(%ecx)
	movl	8(%esp), %edx           # 4-byte Reload
	movl	%edx, 12(%ecx)
	movl	36(%esp), %edx          # 4-byte Reload
	movl	%edx, 16(%ecx)
	movl	%ebp, 20(%ecx)
	movl	4(%esp), %edx           # 4-byte Reload
	movl	%edx, 24(%ecx)
	movl	%ebx, 28(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 32(%ecx)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 36(%ecx)
	movl	%edi, 40(%ecx)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 44(%ecx)
	movl	%esi, 48(%ecx)
	movl	%eax, 52(%ecx)
	movl	20(%esp), %eax          # 4-byte Reload
	movl	%eax, 56(%ecx)
	movl	16(%esp), %eax          # 4-byte Reload
	movl	%eax, 60(%ecx)
	movl	12(%esp), %eax          # 4-byte Reload
	movl	%eax, 64(%ecx)
	movzbl	3(%esp), %eax           # 1-byte Folded Reload
	adcl	104(%esp), %eax         # 4-byte Folded Reload
	addl	$136, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end210:
	.size	mclb_mulUnitAdd17, .Lfunc_end210-mclb_mulUnitAdd17
                                        # -- End function
	.globl	mclb_mul17              # -- Begin function mclb_mul17
	.p2align	4, 0x90
	.type	mclb_mul17,@function
mclb_mul17:                             # @mclb_mul17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$1308, %esp             # imm = 0x51C
	calll	.L211$pb
.L211$pb:
	popl	%ebx
.Ltmp28:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp28-.L211$pb), %ebx
	movl	1336(%esp), %ecx
	subl	$4, %esp
	leal	1236(%esp), %eax
	pushl	(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1300(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	1296(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	1292(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	1288(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	1284(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	1280(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	1276(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	1272(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	1268(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	1264(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	1260(%esp), %esi
	movl	1256(%esp), %ebp
	movl	1252(%esp), %edi
	movl	1248(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	1244(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	1240(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	1232(%esp), %eax
	movl	1236(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	1164(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	4(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1228(%esp), %eax
	movl	76(%esp), %edx          # 4-byte Reload
	addl	1160(%esp), %edx
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	1164(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	1168(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1172(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	1176(%esp), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	adcl	1180(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	adcl	1184(%esp), %esi
	movl	%esi, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %esi          # 4-byte Reload
	adcl	1188(%esp), %esi
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	1192(%esp), %ebp
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	1196(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1200(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	1204(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	1208(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1212(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1216(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	1220(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	1224(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	1092(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	8(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1156(%esp), %eax
	movl	20(%esp), %edx          # 4-byte Reload
	addl	1088(%esp), %edx
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	1092(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1096(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	1100(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	1104(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	1108(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	1112(%esp), %esi
	movl	%esi, 68(%esp)          # 4-byte Spill
	adcl	1116(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	1120(%esp), %esi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1124(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	1128(%esp), %ebp
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	1132(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1136(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1140(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	1144(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	1148(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	1152(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	1020(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	12(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1084(%esp), %eax
	movl	48(%esp), %edx          # 4-byte Reload
	addl	1016(%esp), %edx
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1020(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	1024(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	1028(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	1032(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	1036(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	1040(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	1044(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1048(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	1052(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	1056(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1060(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1064(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	1068(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ebp          # 4-byte Reload
	adcl	1072(%esp), %ebp
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	1076(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	1080(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	948(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	16(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1012(%esp), %eax
	movl	12(%esp), %edx          # 4-byte Reload
	addl	944(%esp), %edx
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	948(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	952(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	956(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	960(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	964(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	968(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	972(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	976(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %edi          # 4-byte Reload
	adcl	980(%esp), %edi
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	984(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	988(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	992(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	adcl	996(%esp), %ebp
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	1000(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	1004(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	1008(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 16(%ecx)
	adcl	$0, %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	876(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	20(%ecx)
	movl	1340(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	940(%esp), %eax
	movl	72(%esp), %edx          # 4-byte Reload
	addl	872(%esp), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	876(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	880(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	884(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	888(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	892(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	896(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	900(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	adcl	904(%esp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	908(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	912(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	916(%esp), %esi
	adcl	920(%esp), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	924(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	928(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	932(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	936(%esp), %edi
	movl	1328(%esp), %ecx
	movl	%edx, 20(%ecx)
	adcl	$0, %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	804(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	24(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	868(%esp), %edx
	movl	52(%esp), %ecx          # 4-byte Reload
	addl	800(%esp), %ecx
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	804(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	808(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	812(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	816(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	820(%esp), %ebp
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	824(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	828(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	832(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	836(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	840(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	844(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	848(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	852(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	856(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	860(%esp), %edi
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	864(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%ecx, 24(%eax)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	732(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	28(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	796(%esp), %eax
	movl	32(%esp), %edx          # 4-byte Reload
	addl	728(%esp), %edx
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	732(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	736(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	740(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	744(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	748(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	752(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	756(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %esi          # 4-byte Reload
	adcl	760(%esp), %esi
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	764(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	768(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	772(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	776(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	780(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	784(%esp), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	788(%esp), %edi
	movl	52(%esp), %ebp          # 4-byte Reload
	adcl	792(%esp), %ebp
	movl	1328(%esp), %ecx
	movl	%edx, 28(%ecx)
	adcl	$0, %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	660(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	32(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	724(%esp), %eax
	movl	68(%esp), %ecx          # 4-byte Reload
	addl	656(%esp), %ecx
	movl	28(%esp), %edx          # 4-byte Reload
	adcl	660(%esp), %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %edx          # 4-byte Reload
	adcl	664(%esp), %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	668(%esp), %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %edx          # 4-byte Reload
	adcl	672(%esp), %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %edx          # 4-byte Reload
	adcl	676(%esp), %edx
	movl	%edx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %edx          # 4-byte Reload
	adcl	680(%esp), %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	adcl	684(%esp), %esi
	movl	%esi, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %edx          # 4-byte Reload
	adcl	688(%esp), %edx
	movl	%edx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	692(%esp), %edx
	movl	%edx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	696(%esp), %esi
	movl	48(%esp), %edx          # 4-byte Reload
	adcl	700(%esp), %edx
	movl	%edx, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %edx          # 4-byte Reload
	adcl	704(%esp), %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %edx          # 4-byte Reload
	adcl	708(%esp), %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	adcl	712(%esp), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	adcl	716(%esp), %ebp
	movl	%ebp, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %edx          # 4-byte Reload
	adcl	720(%esp), %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	movl	1328(%esp), %edx
	movl	%ecx, 32(%edx)
	adcl	$0, %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	588(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	36(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	652(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	addl	584(%esp), %eax
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	588(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	592(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ebp          # 4-byte Reload
	adcl	596(%esp), %ebp
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	600(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	604(%esp), %edi
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	608(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	612(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	616(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	adcl	620(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	624(%esp), %esi
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	628(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	632(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	636(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	640(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	644(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	648(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	516(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	40(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	580(%esp), %edx
	movl	36(%esp), %eax          # 4-byte Reload
	addl	512(%esp), %eax
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	516(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	adcl	520(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	524(%esp), %ebp
	adcl	528(%esp), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	532(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	536(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	540(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	544(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	548(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	552(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	556(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	560(%esp), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	564(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	568(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	572(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	576(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 40(%ecx)
	adcl	$0, %edx
	movl	%edx, 36(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	444(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	44(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	508(%esp), %ecx
	movl	40(%esp), %edx          # 4-byte Reload
	addl	440(%esp), %edx
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	444(%esp), %esi
	adcl	448(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	452(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	456(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	460(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	464(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	468(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	472(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %ebp          # 4-byte Reload
	adcl	476(%esp), %ebp
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	480(%esp), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	adcl	484(%esp), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	488(%esp), %edi
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	492(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	496(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	500(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	504(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%edx, 44(%eax)
	adcl	$0, %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	372(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	48(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	436(%esp), %edx
	addl	368(%esp), %esi
	movl	%esi, %eax
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	372(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	376(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	380(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	384(%esp), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	388(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	392(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	396(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	400(%esp), %ebp
	movl	%ebp, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	404(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	408(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	adcl	412(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	416(%esp), %ebp
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	420(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	424(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	428(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	432(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 48(%ecx)
	adcl	$0, %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	300(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	52(%ecx)
	movl	1340(%esp), %ecx
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	364(%esp), %ecx
	movl	44(%esp), %edx          # 4-byte Reload
	addl	296(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	300(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	304(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	adcl	308(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %esi          # 4-byte Reload
	adcl	312(%esp), %esi
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	316(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	320(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	324(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	328(%esp), %edi
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	332(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	336(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	adcl	340(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	344(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	28(%esp), %ebp          # 4-byte Reload
	adcl	348(%esp), %ebp
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	352(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	356(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	360(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%edx, 52(%eax)
	adcl	$0, %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	228(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	56(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	292(%esp), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	addl	224(%esp), %ecx
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	228(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	232(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	adcl	236(%esp), %esi
	movl	%esi, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	240(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	244(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	248(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	252(%esp), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	256(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	260(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	264(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	68(%esp), %edi          # 4-byte Reload
	adcl	268(%esp), %edi
	adcl	272(%esp), %ebp
	movl	%ebp, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	276(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	280(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	284(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	288(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%ecx, 56(%eax)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	60(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	220(%esp), %edx
	movl	24(%esp), %eax          # 4-byte Reload
	addl	152(%esp), %eax
	movl	60(%esp), %esi          # 4-byte Reload
	adcl	156(%esp), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	160(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	164(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	48(%esp), %ebp          # 4-byte Reload
	adcl	168(%esp), %ebp
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	172(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	176(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	180(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	184(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	188(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	192(%esp), %edi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	196(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	200(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	204(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	208(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	216(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 60(%ecx)
	adcl	$0, %edx
	movl	%edx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	84(%esp), %eax
	movl	1340(%esp), %ecx
	pushl	64(%ecx)
	pushl	1340(%esp)
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	addl	80(%esp), %esi
	movl	%esi, 60(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	84(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	92(%esp), %ebp
	movl	%ebp, 48(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	96(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	100(%esp), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	72(%esp), %ebx          # 4-byte Reload
	adcl	104(%esp), %ebx
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	108(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	112(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	adcl	116(%esp), %edi
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	120(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	36(%esp), %esi          # 4-byte Reload
	adcl	124(%esp), %esi
	movl	40(%esp), %edx          # 4-byte Reload
	adcl	128(%esp), %edx
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	132(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	136(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	140(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	144(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	148(%esp), %eax
	movl	1328(%esp), %ecx
	movl	60(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 64(%ecx)
	movl	64(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%ecx)
	movl	20(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%ecx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ecx)
	movl	12(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 80(%ecx)
	movl	76(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 84(%ecx)
	movl	%ebx, 88(%ecx)
	movl	52(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 92(%ecx)
	movl	32(%esp), %ebx          # 4-byte Reload
	movl	%ebx, 96(%ecx)
	movl	%edi, 100(%ecx)
	movl	28(%esp), %edi          # 4-byte Reload
	movl	%edi, 104(%ecx)
	movl	%esi, 108(%ecx)
	movl	%edx, 112(%ecx)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%ecx)
	movl	44(%esp), %edx          # 4-byte Reload
	movl	%edx, 120(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 124(%ecx)
	movl	24(%esp), %edx          # 4-byte Reload
	movl	%edx, 128(%ecx)
	adcl	$0, %eax
	movl	%eax, 132(%ecx)
	addl	$1308, %esp             # imm = 0x51C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end211:
	.size	mclb_mul17, .Lfunc_end211-mclb_mul17
                                        # -- End function
	.globl	mclb_sqr17              # -- Begin function mclb_sqr17
	.p2align	4, 0x90
	.type	mclb_sqr17,@function
mclb_sqr17:                             # @mclb_sqr17
# %bb.0:
	pushl	%ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$1308, %esp             # imm = 0x51C
	calll	.L212$pb
.L212$pb:
	popl	%ebx
.Ltmp29:
	addl	$_GLOBAL_OFFSET_TABLE_+(.Ltmp29-.L212$pb), %ebx
	movl	1332(%esp), %ecx
	subl	$4, %esp
	leal	1236(%esp), %eax
	pushl	(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1300(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	1296(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	1292(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	1288(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	1284(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	1280(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	1276(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	1272(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	1268(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	1264(%esp), %ebp
	movl	1260(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	1256(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	1252(%esp), %edi
	movl	1248(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	1244(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	1240(%esp), %esi
	movl	1232(%esp), %eax
	movl	1236(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, (%ecx)
	subl	$4, %esp
	leal	1164(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	4(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1228(%esp), %eax
	movl	48(%esp), %edx          # 4-byte Reload
	addl	1160(%esp), %edx
	adcl	1164(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	1168(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	1172(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	1176(%esp), %edi
	movl	%edi, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1180(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1184(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	1188(%esp), %ebp
	movl	20(%esp), %esi          # 4-byte Reload
	adcl	1192(%esp), %esi
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	1196(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	1200(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	1204(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1208(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1212(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	1216(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	1220(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	1224(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 4(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	1092(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	8(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1156(%esp), %eax
	movl	48(%esp), %edx          # 4-byte Reload
	addl	1088(%esp), %edx
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	1092(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	1096(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	1100(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1104(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1108(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	adcl	1112(%esp), %ebp
	movl	%ebp, 56(%esp)          # 4-byte Spill
	adcl	1116(%esp), %esi
	movl	%esi, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %esi          # 4-byte Reload
	adcl	1120(%esp), %esi
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	1124(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	1128(%esp), %ebp
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1132(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1136(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	1140(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	1144(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	1148(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	1152(%esp), %edi
	movl	%edi, 48(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 8(%ecx)
	movl	%eax, %edi
	adcl	$0, %edi
	subl	$4, %esp
	leal	1020(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	12(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1084(%esp), %eax
	movl	44(%esp), %edx          # 4-byte Reload
	addl	1016(%esp), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	1020(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	1024(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	1028(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	1032(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	1036(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	1040(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	adcl	1044(%esp), %esi
	movl	%esi, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	1048(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	1052(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	1056(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	1060(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	1064(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	1068(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ebp          # 4-byte Reload
	adcl	1072(%esp), %ebp
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	1076(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	1080(%esp), %edi
	movl	%edi, 44(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 12(%ecx)
	movl	%eax, %esi
	adcl	$0, %esi
	subl	$4, %esp
	leal	948(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	16(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	1012(%esp), %edx
	movl	36(%esp), %ecx          # 4-byte Reload
	addl	944(%esp), %ecx
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	948(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %eax          # 4-byte Reload
	adcl	952(%esp), %eax
	movl	%eax, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	956(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	960(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	964(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	968(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %edi          # 4-byte Reload
	adcl	972(%esp), %edi
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	976(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	980(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	984(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	988(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	992(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	adcl	996(%esp), %ebp
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	1000(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	1004(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	adcl	1008(%esp), %esi
	movl	%esi, 36(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%ecx, 16(%eax)
	adcl	$0, %edx
	movl	%edx, 76(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	876(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	20(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	940(%esp), %eax
	movl	64(%esp), %edx          # 4-byte Reload
	addl	872(%esp), %edx
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	876(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	880(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	884(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	888(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	892(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	896(%esp), %edi
	movl	%edi, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	900(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	904(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ebp          # 4-byte Reload
	adcl	908(%esp), %ebp
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	912(%esp), %edi
	movl	72(%esp), %esi          # 4-byte Reload
	adcl	916(%esp), %esi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	920(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	924(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	928(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	932(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	936(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%edx, 20(%ecx)
	adcl	$0, %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	804(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	24(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	868(%esp), %ecx
	movl	24(%esp), %edx          # 4-byte Reload
	addl	800(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	804(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	808(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	812(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	816(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	820(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	824(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	828(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	adcl	832(%esp), %ebp
	movl	%ebp, 40(%esp)          # 4-byte Spill
	adcl	836(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	adcl	840(%esp), %esi
	movl	%esi, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	844(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	848(%esp), %esi
	movl	44(%esp), %ebp          # 4-byte Reload
	adcl	852(%esp), %ebp
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	856(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	860(%esp), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	864(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%edx, 24(%eax)
	adcl	$0, %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	732(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	28(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	796(%esp), %edx
	movl	12(%esp), %eax          # 4-byte Reload
	addl	728(%esp), %eax
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	732(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	736(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	740(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	744(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	748(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %edi          # 4-byte Reload
	adcl	752(%esp), %edi
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	756(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	760(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	764(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	768(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	772(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	adcl	776(%esp), %ebp
	movl	%ebp, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	780(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %esi          # 4-byte Reload
	adcl	784(%esp), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	788(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	792(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 28(%ecx)
	adcl	$0, %edx
	movl	%edx, 12(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	660(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	32(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	724(%esp), %edx
	movl	56(%esp), %eax          # 4-byte Reload
	addl	656(%esp), %eax
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	660(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	664(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	668(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	672(%esp), %ebp
	adcl	676(%esp), %edi
	movl	%edi, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %edi          # 4-byte Reload
	adcl	680(%esp), %edi
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	684(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	688(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	692(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	696(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	700(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	704(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	adcl	708(%esp), %esi
	movl	%esi, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	712(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	716(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	720(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 32(%ecx)
	adcl	$0, %edx
	movl	%edx, 56(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	588(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	36(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	652(%esp), %edx
	movl	20(%esp), %eax          # 4-byte Reload
	addl	584(%esp), %eax
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	588(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	592(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	596(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	600(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	adcl	604(%esp), %edi
	movl	%edi, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	608(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %esi          # 4-byte Reload
	adcl	612(%esp), %esi
	movl	68(%esp), %ebp          # 4-byte Reload
	adcl	616(%esp), %ebp
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	620(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	624(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	628(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %edi          # 4-byte Reload
	adcl	632(%esp), %edi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	636(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	640(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	644(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	648(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 36(%ecx)
	adcl	$0, %edx
	movl	%edx, 20(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	516(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	40(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	580(%esp), %edx
	movl	28(%esp), %eax          # 4-byte Reload
	addl	512(%esp), %eax
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	516(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	520(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	524(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	528(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	532(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	adcl	536(%esp), %esi
	movl	%esi, 72(%esp)          # 4-byte Spill
	adcl	540(%esp), %ebp
	movl	%ebp, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	544(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	548(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ebp          # 4-byte Reload
	adcl	552(%esp), %ebp
	adcl	556(%esp), %edi
	movl	%edi, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	560(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	564(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %esi          # 4-byte Reload
	adcl	568(%esp), %esi
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	572(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %edi          # 4-byte Reload
	adcl	576(%esp), %edi
	movl	1328(%esp), %ecx
	movl	%eax, 40(%ecx)
	adcl	$0, %edx
	movl	%edx, 28(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	444(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	44(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	508(%esp), %edx
	movl	32(%esp), %eax          # 4-byte Reload
	addl	440(%esp), %eax
	movl	60(%esp), %ecx          # 4-byte Reload
	adcl	444(%esp), %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	448(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	452(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %ecx          # 4-byte Reload
	adcl	456(%esp), %ecx
	movl	%ecx, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %ecx          # 4-byte Reload
	adcl	460(%esp), %ecx
	movl	%ecx, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	464(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	468(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %ecx          # 4-byte Reload
	adcl	472(%esp), %ecx
	movl	%ecx, 44(%esp)          # 4-byte Spill
	adcl	476(%esp), %ebp
	movl	%ebp, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	480(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %ebp          # 4-byte Reload
	adcl	484(%esp), %ebp
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	488(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	adcl	492(%esp), %esi
	movl	%esi, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %esi          # 4-byte Reload
	adcl	496(%esp), %esi
	adcl	500(%esp), %edi
	movl	%edi, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %edi          # 4-byte Reload
	adcl	504(%esp), %edi
	movl	1328(%esp), %ecx
	movl	%eax, 44(%ecx)
	adcl	$0, %edx
	movl	%edx, 32(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	372(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	48(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	436(%esp), %ecx
	movl	60(%esp), %edx          # 4-byte Reload
	addl	368(%esp), %edx
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	372(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	376(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	380(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	384(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	388(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	392(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	396(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	400(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	404(%esp), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	adcl	408(%esp), %ebp
	movl	%ebp, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ebp          # 4-byte Reload
	adcl	412(%esp), %ebp
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	416(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	adcl	420(%esp), %esi
	movl	%esi, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	424(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	adcl	428(%esp), %edi
	movl	%edi, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	432(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%edx, 48(%eax)
	adcl	$0, %ecx
	movl	%ecx, 60(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	300(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	52(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	364(%esp), %edx
	movl	16(%esp), %ecx          # 4-byte Reload
	addl	296(%esp), %ecx
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	300(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %edi          # 4-byte Reload
	adcl	304(%esp), %edi
	movl	72(%esp), %eax          # 4-byte Reload
	adcl	308(%esp), %eax
	movl	%eax, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %eax          # 4-byte Reload
	adcl	312(%esp), %eax
	movl	%eax, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %esi          # 4-byte Reload
	adcl	316(%esp), %esi
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	320(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %eax          # 4-byte Reload
	adcl	324(%esp), %eax
	movl	%eax, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %eax          # 4-byte Reload
	adcl	328(%esp), %eax
	movl	%eax, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %eax          # 4-byte Reload
	adcl	332(%esp), %eax
	movl	%eax, 64(%esp)          # 4-byte Spill
	adcl	336(%esp), %ebp
	movl	%ebp, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	340(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	344(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	348(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	352(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ebp          # 4-byte Reload
	adcl	356(%esp), %ebp
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	360(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	1328(%esp), %eax
	movl	%ecx, 52(%eax)
	adcl	$0, %edx
	movl	%edx, 16(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	228(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	56(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	292(%esp), %edx
	movl	40(%esp), %eax          # 4-byte Reload
	addl	224(%esp), %eax
	adcl	228(%esp), %edi
	movl	%edi, 52(%esp)          # 4-byte Spill
	movl	72(%esp), %edi          # 4-byte Reload
	adcl	232(%esp), %edi
	movl	68(%esp), %ecx          # 4-byte Reload
	adcl	236(%esp), %ecx
	movl	%ecx, 68(%esp)          # 4-byte Spill
	adcl	240(%esp), %esi
	movl	%esi, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %esi          # 4-byte Reload
	adcl	244(%esp), %esi
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	248(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %ecx          # 4-byte Reload
	adcl	252(%esp), %ecx
	movl	%ecx, 76(%esp)          # 4-byte Spill
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	256(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	260(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	264(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	268(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	272(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	276(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	adcl	280(%esp), %ebp
	movl	%ebp, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %ebp          # 4-byte Reload
	adcl	284(%esp), %ebp
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	288(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 56(%ecx)
	adcl	$0, %edx
	movl	%edx, 40(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	156(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	60(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	220(%esp), %edx
	movl	52(%esp), %eax          # 4-byte Reload
	addl	152(%esp), %eax
	adcl	156(%esp), %edi
	movl	%edi, 72(%esp)          # 4-byte Spill
	movl	68(%esp), %edi          # 4-byte Reload
	adcl	160(%esp), %edi
	movl	48(%esp), %ecx          # 4-byte Reload
	adcl	164(%esp), %ecx
	movl	%ecx, 48(%esp)          # 4-byte Spill
	adcl	168(%esp), %esi
	movl	%esi, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %ecx          # 4-byte Reload
	adcl	172(%esp), %ecx
	movl	%ecx, 36(%esp)          # 4-byte Spill
	movl	76(%esp), %esi          # 4-byte Reload
	adcl	176(%esp), %esi
	movl	64(%esp), %ecx          # 4-byte Reload
	adcl	180(%esp), %ecx
	movl	%ecx, 64(%esp)          # 4-byte Spill
	movl	24(%esp), %ecx          # 4-byte Reload
	adcl	184(%esp), %ecx
	movl	%ecx, 24(%esp)          # 4-byte Spill
	movl	12(%esp), %ecx          # 4-byte Reload
	adcl	188(%esp), %ecx
	movl	%ecx, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %ecx          # 4-byte Reload
	adcl	192(%esp), %ecx
	movl	%ecx, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %ecx          # 4-byte Reload
	adcl	196(%esp), %ecx
	movl	%ecx, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %ecx          # 4-byte Reload
	adcl	200(%esp), %ecx
	movl	%ecx, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %ecx          # 4-byte Reload
	adcl	204(%esp), %ecx
	movl	%ecx, 32(%esp)          # 4-byte Spill
	adcl	208(%esp), %ebp
	movl	%ebp, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %ecx          # 4-byte Reload
	adcl	212(%esp), %ecx
	movl	%ecx, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %ecx          # 4-byte Reload
	adcl	216(%esp), %ecx
	movl	%ecx, 40(%esp)          # 4-byte Spill
	movl	1328(%esp), %ecx
	movl	%eax, 60(%ecx)
	adcl	$0, %edx
	movl	%edx, 52(%esp)          # 4-byte Spill
	subl	$4, %esp
	leal	84(%esp), %eax
	movl	1336(%esp), %ecx
	pushl	64(%ecx)
	pushl	%ecx
	pushl	%eax
	calll	mulUnit_inner544@PLT
	addl	$12, %esp
	movl	72(%esp), %ebp          # 4-byte Reload
	addl	80(%esp), %ebp
	adcl	84(%esp), %edi
	movl	%edi, 68(%esp)          # 4-byte Spill
	movl	48(%esp), %eax          # 4-byte Reload
	adcl	88(%esp), %eax
	movl	%eax, 48(%esp)          # 4-byte Spill
	movl	44(%esp), %eax          # 4-byte Reload
	adcl	92(%esp), %eax
	movl	%eax, 44(%esp)          # 4-byte Spill
	movl	36(%esp), %edi          # 4-byte Reload
	adcl	96(%esp), %edi
	adcl	100(%esp), %esi
	movl	64(%esp), %edx          # 4-byte Reload
	adcl	104(%esp), %edx
	movl	24(%esp), %ebx          # 4-byte Reload
	adcl	108(%esp), %ebx
	movl	12(%esp), %eax          # 4-byte Reload
	adcl	112(%esp), %eax
	movl	%eax, 12(%esp)          # 4-byte Spill
	movl	56(%esp), %eax          # 4-byte Reload
	adcl	116(%esp), %eax
	movl	%eax, 56(%esp)          # 4-byte Spill
	movl	20(%esp), %eax          # 4-byte Reload
	adcl	120(%esp), %eax
	movl	%eax, 20(%esp)          # 4-byte Spill
	movl	28(%esp), %eax          # 4-byte Reload
	adcl	124(%esp), %eax
	movl	%eax, 28(%esp)          # 4-byte Spill
	movl	32(%esp), %eax          # 4-byte Reload
	adcl	128(%esp), %eax
	movl	%eax, 32(%esp)          # 4-byte Spill
	movl	60(%esp), %eax          # 4-byte Reload
	adcl	132(%esp), %eax
	movl	%eax, 60(%esp)          # 4-byte Spill
	movl	16(%esp), %eax          # 4-byte Reload
	adcl	136(%esp), %eax
	movl	%eax, 16(%esp)          # 4-byte Spill
	movl	40(%esp), %eax          # 4-byte Reload
	adcl	140(%esp), %eax
	movl	%eax, 40(%esp)          # 4-byte Spill
	movl	52(%esp), %eax          # 4-byte Reload
	adcl	144(%esp), %eax
	movl	%eax, 52(%esp)          # 4-byte Spill
	movl	148(%esp), %eax
	movl	1328(%esp), %ecx
	movl	%ebp, 64(%ecx)
	movl	68(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 68(%ecx)
	movl	48(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 72(%ecx)
	movl	44(%esp), %ebp          # 4-byte Reload
	movl	%ebp, 76(%ecx)
	movl	%edi, 80(%ecx)
	movl	%esi, 84(%ecx)
	movl	%edx, 88(%ecx)
	movl	%ebx, 92(%ecx)
	movl	12(%esp), %edx          # 4-byte Reload
	movl	%edx, 96(%ecx)
	movl	56(%esp), %edx          # 4-byte Reload
	movl	%edx, 100(%ecx)
	movl	20(%esp), %edx          # 4-byte Reload
	movl	%edx, 104(%ecx)
	movl	28(%esp), %edx          # 4-byte Reload
	movl	%edx, 108(%ecx)
	movl	32(%esp), %edx          # 4-byte Reload
	movl	%edx, 112(%ecx)
	movl	60(%esp), %edx          # 4-byte Reload
	movl	%edx, 116(%ecx)
	movl	16(%esp), %edx          # 4-byte Reload
	movl	%edx, 120(%ecx)
	movl	40(%esp), %edx          # 4-byte Reload
	movl	%edx, 124(%ecx)
	movl	52(%esp), %edx          # 4-byte Reload
	movl	%edx, 128(%ecx)
	adcl	$0, %eax
	movl	%eax, 132(%ecx)
	addl	$1308, %esp             # imm = 0x51C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
.Lfunc_end212:
	.size	mclb_sqr17, .Lfunc_end212-mclb_sqr17
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
