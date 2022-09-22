	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	15, 1	@ Tag_ABI_PCS_RW_data
	.eabi_attribute	16, 1	@ Tag_ABI_PCS_RO_data
	.eabi_attribute	17, 2	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 0	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"bint32.ll"
	.globl	mclb_add1                       @ -- Begin function mclb_add1
	.p2align	2
	.type	mclb_add1,%function
	.code	32                              @ @mclb_add1
mclb_add1:
	.fnstart
@ %bb.0:
	ldr	r1, [r1]
	ldr	r2, [r2]
	adds	r1, r2, r1
	str	r1, [r0]
	mov	r0, #0
	adc	r0, r0, #0
	bx	lr
.Lfunc_end0:
	.size	mclb_add1, .Lfunc_end0-mclb_add1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub1                       @ -- Begin function mclb_sub1
	.p2align	2
	.type	mclb_sub1,%function
	.code	32                              @ @mclb_sub1
mclb_sub1:
	.fnstart
@ %bb.0:
	ldr	r2, [r2]
	ldr	r1, [r1]
	subs	r1, r1, r2
	str	r1, [r0]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	bx	lr
.Lfunc_end1:
	.size	mclb_sub1, .Lfunc_end1-mclb_sub1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF1                     @ -- Begin function mclb_addNF1
	.p2align	2
	.type	mclb_addNF1,%function
	.code	32                              @ @mclb_addNF1
mclb_addNF1:
	.fnstart
@ %bb.0:
	ldr	r1, [r1]
	ldr	r2, [r2]
	add	r1, r2, r1
	str	r1, [r0]
	bx	lr
.Lfunc_end2:
	.size	mclb_addNF1, .Lfunc_end2-mclb_addNF1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF1                     @ -- Begin function mclb_subNF1
	.p2align	2
	.type	mclb_subNF1,%function
	.code	32                              @ @mclb_subNF1
mclb_subNF1:
	.fnstart
@ %bb.0:
	ldr	r2, [r2]
	ldr	r1, [r1]
	sub	r1, r1, r2
	str	r1, [r0]
	lsr	r0, r1, #31
	bx	lr
.Lfunc_end3:
	.size	mclb_subNF1, .Lfunc_end3-mclb_subNF1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add2                       @ -- Begin function mclb_add2
	.p2align	2
	.type	mclb_add2,%function
	.code	32                              @ @mclb_add2
mclb_add2:
	.fnstart
@ %bb.0:
	ldm	r1, {r3, r12}
	ldm	r2, {r1, r2}
	adds	r1, r1, r3
	adcs	r2, r2, r12
	stm	r0, {r1, r2}
	mov	r0, #0
	adc	r0, r0, #0
	bx	lr
.Lfunc_end4:
	.size	mclb_add2, .Lfunc_end4-mclb_add2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub2                       @ -- Begin function mclb_sub2
	.p2align	2
	.type	mclb_sub2,%function
	.code	32                              @ @mclb_sub2
mclb_sub2:
	.fnstart
@ %bb.0:
	ldm	r2, {r3, r12}
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	subs	r2, r2, r3
	str	r2, [r0]
	sbcs	r1, r1, r12
	str	r1, [r0, #4]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	bx	lr
.Lfunc_end5:
	.size	mclb_sub2, .Lfunc_end5-mclb_sub2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF2                     @ -- Begin function mclb_addNF2
	.p2align	2
	.type	mclb_addNF2,%function
	.code	32                              @ @mclb_addNF2
mclb_addNF2:
	.fnstart
@ %bb.0:
	ldm	r1, {r3, r12}
	ldm	r2, {r1, r2}
	adds	r1, r1, r3
	adc	r2, r2, r12
	stm	r0, {r1, r2}
	bx	lr
.Lfunc_end6:
	.size	mclb_addNF2, .Lfunc_end6-mclb_addNF2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF2                     @ -- Begin function mclb_subNF2
	.p2align	2
	.type	mclb_subNF2,%function
	.code	32                              @ @mclb_subNF2
mclb_subNF2:
	.fnstart
@ %bb.0:
	ldm	r2, {r3, r12}
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	subs	r2, r2, r3
	str	r2, [r0]
	sbc	r1, r1, r12
	str	r1, [r0, #4]
	lsr	r0, r1, #31
	bx	lr
.Lfunc_end7:
	.size	mclb_subNF2, .Lfunc_end7-mclb_subNF2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add3                       @ -- Begin function mclb_add3
	.p2align	2
	.type	mclb_add3,%function
	.code	32                              @ @mclb_add3
mclb_add3:
	.fnstart
@ %bb.0:
	push	{r4, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r1, r4}
	adds	r1, r1, r3
	ldr	r2, [r2, #8]
	adcs	r3, r4, r12
	stm	r0, {r1, r3}
	adcs	r2, r2, lr
	str	r2, [r0, #8]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, pc}
.Lfunc_end8:
	.size	mclb_add3, .Lfunc_end8-mclb_add3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub3                       @ -- Begin function mclb_sub3
	.p2align	2
	.type	mclb_sub3,%function
	.code	32                              @ @mclb_sub3
mclb_sub3:
	.fnstart
@ %bb.0:
	push	{r4, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r2, r4}
	subs	r2, r2, r3
	ldr	r1, [r1, #8]
	sbcs	r3, r4, r12
	stm	r0, {r2, r3}
	sbcs	r1, r1, lr
	str	r1, [r0, #8]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, pc}
.Lfunc_end9:
	.size	mclb_sub3, .Lfunc_end9-mclb_sub3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF3                     @ -- Begin function mclb_addNF3
	.p2align	2
	.type	mclb_addNF3,%function
	.code	32                              @ @mclb_addNF3
mclb_addNF3:
	.fnstart
@ %bb.0:
	push	{r4, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r1, r4}
	adds	r1, r1, r3
	ldr	r2, [r2, #8]
	adcs	r3, r4, r12
	stm	r0, {r1, r3}
	adc	r2, r2, lr
	str	r2, [r0, #8]
	pop	{r4, pc}
.Lfunc_end10:
	.size	mclb_addNF3, .Lfunc_end10-mclb_addNF3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF3                     @ -- Begin function mclb_subNF3
	.p2align	2
	.type	mclb_subNF3,%function
	.code	32                              @ @mclb_subNF3
mclb_subNF3:
	.fnstart
@ %bb.0:
	push	{r4, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r2, r4}
	subs	r2, r2, r3
	ldr	r1, [r1, #8]
	sbcs	r3, r4, r12
	stm	r0, {r2, r3}
	sbc	r1, r1, lr
	str	r1, [r0, #8]
	lsr	r0, r1, #31
	pop	{r4, pc}
.Lfunc_end11:
	.size	mclb_subNF3, .Lfunc_end11-mclb_subNF3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add4                       @ -- Begin function mclb_add4
	.p2align	2
	.type	mclb_add4,%function
	.code	32                              @ @mclb_add4
mclb_add4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r4, r5, r6}
	adds	r3, r4, r3
	ldr	r1, [r1, #12]
	adcs	r5, r5, r12
	ldr	r2, [r2, #12]
	adcs	r6, r6, lr
	stm	r0, {r3, r5, r6}
	adcs	r1, r2, r1
	str	r1, [r0, #12]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, pc}
.Lfunc_end12:
	.size	mclb_add4, .Lfunc_end12-mclb_add4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub4                       @ -- Begin function mclb_sub4
	.p2align	2
	.type	mclb_sub4,%function
	.code	32                              @ @mclb_sub4
mclb_sub4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r4, r5, r6}
	subs	r3, r4, r3
	ldr	r2, [r2, #12]
	sbcs	r5, r5, r12
	ldr	r1, [r1, #12]
	sbcs	r6, r6, lr
	stm	r0, {r3, r5, r6}
	sbcs	r1, r1, r2
	str	r1, [r0, #12]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, pc}
.Lfunc_end13:
	.size	mclb_sub4, .Lfunc_end13-mclb_sub4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF4                     @ -- Begin function mclb_addNF4
	.p2align	2
	.type	mclb_addNF4,%function
	.code	32                              @ @mclb_addNF4
mclb_addNF4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r4, r5, r6}
	adds	r3, r4, r3
	ldr	r1, [r1, #12]
	adcs	r5, r5, r12
	ldr	r2, [r2, #12]
	adcs	r6, r6, lr
	stm	r0, {r3, r5, r6}
	adc	r1, r2, r1
	str	r1, [r0, #12]
	pop	{r4, r5, r6, pc}
.Lfunc_end14:
	.size	mclb_addNF4, .Lfunc_end14-mclb_addNF4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF4                     @ -- Begin function mclb_subNF4
	.p2align	2
	.type	mclb_subNF4,%function
	.code	32                              @ @mclb_subNF4
mclb_subNF4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r4, r5, r6}
	subs	r3, r4, r3
	ldr	r2, [r2, #12]
	sbcs	r5, r5, r12
	ldr	r1, [r1, #12]
	sbcs	r6, r6, lr
	stm	r0, {r3, r5, r6}
	sbc	r1, r1, r2
	str	r1, [r0, #12]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, pc}
.Lfunc_end15:
	.size	mclb_subNF4, .Lfunc_end15-mclb_subNF4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add5                       @ -- Begin function mclb_add5
	.p2align	2
	.type	mclb_add5,%function
	.code	32                              @ @mclb_add5
mclb_add5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0]
	adcs	r3, r6, r12
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	ldr	r1, [r1, #16]
	ldr	r2, [r2, #16]
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	adcs	r1, r2, r1
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end16:
	.size	mclb_add5, .Lfunc_end16-mclb_add5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub5                       @ -- Begin function mclb_sub5
	.p2align	2
	.type	mclb_sub5,%function
	.code	32                              @ @mclb_sub5
mclb_sub5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0]
	sbcs	r3, r6, r12
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	ldr	r2, [r2, #16]
	ldr	r1, [r1, #16]
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	sbcs	r1, r1, r2
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end17:
	.size	mclb_sub5, .Lfunc_end17-mclb_sub5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF5                     @ -- Begin function mclb_addNF5
	.p2align	2
	.type	mclb_addNF5,%function
	.code	32                              @ @mclb_addNF5
mclb_addNF5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0]
	adcs	r3, r6, r12
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	ldr	r1, [r1, #16]
	ldr	r2, [r2, #16]
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	adc	r1, r2, r1
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end18:
	.size	mclb_addNF5, .Lfunc_end18-mclb_addNF5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF5                     @ -- Begin function mclb_subNF5
	.p2align	2
	.type	mclb_subNF5,%function
	.code	32                              @ @mclb_subNF5
mclb_subNF5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0]
	sbcs	r3, r6, r12
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	ldr	r2, [r2, #16]
	ldr	r1, [r1, #16]
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	sbc	r1, r1, r2
	str	r3, [r0, #12]
	str	r1, [r0, #16]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end19:
	.size	mclb_subNF5, .Lfunc_end19-mclb_subNF5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add6                       @ -- Begin function mclb_add6
	.p2align	2
	.type	mclb_add6,%function
	.code	32                              @ @mclb_add6
mclb_add6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r1, [r1, #20]
	ldr	r2, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end20:
	.size	mclb_add6, .Lfunc_end20-mclb_add6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub6                       @ -- Begin function mclb_sub6
	.p2align	2
	.type	mclb_sub6,%function
	.code	32                              @ @mclb_sub6
mclb_sub6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r2, [r2, #20]
	ldr	r1, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	sbcs	r1, r1, r2
	str	r1, [r0, #20]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end21:
	.size	mclb_sub6, .Lfunc_end21-mclb_sub6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF6                     @ -- Begin function mclb_addNF6
	.p2align	2
	.type	mclb_addNF6,%function
	.code	32                              @ @mclb_addNF6
mclb_addNF6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r1, [r1, #20]
	ldr	r2, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	adc	r1, r2, r1
	str	r1, [r0, #20]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end22:
	.size	mclb_addNF6, .Lfunc_end22-mclb_addNF6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF6                     @ -- Begin function mclb_subNF6
	.p2align	2
	.type	mclb_subNF6,%function
	.code	32                              @ @mclb_subNF6
mclb_subNF6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r2, [r2, #20]
	ldr	r1, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	sbc	r1, r1, r2
	str	r1, [r0, #20]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end23:
	.size	mclb_subNF6, .Lfunc_end23-mclb_subNF6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add7                       @ -- Begin function mclb_add7
	.p2align	2
	.type	mclb_add7,%function
	.code	32                              @ @mclb_add7
mclb_add7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r1, [r1, #24]
	ldr	r2, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	adcs	r1, r2, r1
	str	r1, [r0, #24]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end24:
	.size	mclb_add7, .Lfunc_end24-mclb_add7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub7                       @ -- Begin function mclb_sub7
	.p2align	2
	.type	mclb_sub7,%function
	.code	32                              @ @mclb_sub7
mclb_sub7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r2, [r2, #24]
	ldr	r1, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	sbcs	r1, r1, r2
	str	r1, [r0, #24]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end25:
	.size	mclb_sub7, .Lfunc_end25-mclb_sub7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF7                     @ -- Begin function mclb_addNF7
	.p2align	2
	.type	mclb_addNF7,%function
	.code	32                              @ @mclb_addNF7
mclb_addNF7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r1, [r1, #24]
	ldr	r2, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	adc	r1, r2, r1
	str	r1, [r0, #24]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end26:
	.size	mclb_addNF7, .Lfunc_end26-mclb_addNF7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF7                     @ -- Begin function mclb_subNF7
	.p2align	2
	.type	mclb_subNF7,%function
	.code	32                              @ @mclb_subNF7
mclb_subNF7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r2, [r2, #24]
	ldr	r1, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	sbc	r1, r1, r2
	str	r1, [r0, #24]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end27:
	.size	mclb_subNF7, .Lfunc_end27-mclb_subNF7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add8                       @ -- Begin function mclb_add8
	.p2align	2
	.type	mclb_add8,%function
	.code	32                              @ @mclb_add8
mclb_add8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r1, [r1, #28]
	ldr	r2, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	adcs	r1, r2, r1
	str	r1, [r0, #28]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end28:
	.size	mclb_add8, .Lfunc_end28-mclb_add8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub8                       @ -- Begin function mclb_sub8
	.p2align	2
	.type	mclb_sub8,%function
	.code	32                              @ @mclb_sub8
mclb_sub8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r2, [r2, #28]
	ldr	r1, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	sbcs	r1, r1, r2
	str	r1, [r0, #28]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end29:
	.size	mclb_sub8, .Lfunc_end29-mclb_sub8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF8                     @ -- Begin function mclb_addNF8
	.p2align	2
	.type	mclb_addNF8,%function
	.code	32                              @ @mclb_addNF8
mclb_addNF8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r1, [r1, #28]
	ldr	r2, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	adc	r1, r2, r1
	str	r1, [r0, #28]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end30:
	.size	mclb_addNF8, .Lfunc_end30-mclb_addNF8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF8                     @ -- Begin function mclb_subNF8
	.p2align	2
	.type	mclb_subNF8,%function
	.code	32                              @ @mclb_subNF8
mclb_subNF8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r2, [r2, #28]
	ldr	r1, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	sbc	r1, r1, r2
	str	r1, [r0, #28]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end31:
	.size	mclb_subNF8, .Lfunc_end31-mclb_subNF8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add9                       @ -- Begin function mclb_add9
	.p2align	2
	.type	mclb_add9,%function
	.code	32                              @ @mclb_add9
mclb_add9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r1, [r1, #32]
	ldr	r2, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	adcs	r1, r2, r1
	str	r1, [r0, #32]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end32:
	.size	mclb_add9, .Lfunc_end32-mclb_add9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub9                       @ -- Begin function mclb_sub9
	.p2align	2
	.type	mclb_sub9,%function
	.code	32                              @ @mclb_sub9
mclb_sub9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r2, [r2, #32]
	ldr	r1, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	sbcs	r1, r1, r2
	str	r1, [r0, #32]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end33:
	.size	mclb_sub9, .Lfunc_end33-mclb_sub9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF9                     @ -- Begin function mclb_addNF9
	.p2align	2
	.type	mclb_addNF9,%function
	.code	32                              @ @mclb_addNF9
mclb_addNF9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r1, [r1, #32]
	ldr	r2, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	adc	r1, r2, r1
	str	r1, [r0, #32]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end34:
	.size	mclb_addNF9, .Lfunc_end34-mclb_addNF9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF9                     @ -- Begin function mclb_subNF9
	.p2align	2
	.type	mclb_subNF9,%function
	.code	32                              @ @mclb_subNF9
mclb_subNF9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r2, [r2, #32]
	ldr	r1, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	sbc	r1, r1, r2
	str	r1, [r0, #32]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end35:
	.size	mclb_subNF9, .Lfunc_end35-mclb_subNF9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add10                      @ -- Begin function mclb_add10
	.p2align	2
	.type	mclb_add10,%function
	.code	32                              @ @mclb_add10
mclb_add10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	ldr	r1, [r1, #36]
	ldr	r2, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	adcs	r1, r2, r1
	str	r1, [r0, #36]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end36:
	.size	mclb_add10, .Lfunc_end36-mclb_add10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub10                      @ -- Begin function mclb_sub10
	.p2align	2
	.type	mclb_sub10,%function
	.code	32                              @ @mclb_sub10
mclb_sub10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	ldr	r2, [r2, #36]
	ldr	r1, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	sbcs	r1, r1, r2
	str	r1, [r0, #36]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end37:
	.size	mclb_sub10, .Lfunc_end37-mclb_sub10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF10                    @ -- Begin function mclb_addNF10
	.p2align	2
	.type	mclb_addNF10,%function
	.code	32                              @ @mclb_addNF10
mclb_addNF10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	ldr	r1, [r1, #36]
	ldr	r2, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	adc	r1, r2, r1
	str	r1, [r0, #36]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end38:
	.size	mclb_addNF10, .Lfunc_end38-mclb_addNF10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF10                    @ -- Begin function mclb_subNF10
	.p2align	2
	.type	mclb_subNF10,%function
	.code	32                              @ @mclb_subNF10
mclb_subNF10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	ldr	r2, [r2, #36]
	ldr	r1, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	sbc	r1, r1, r2
	str	r1, [r0, #36]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end39:
	.size	mclb_subNF10, .Lfunc_end39-mclb_subNF10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add11                      @ -- Begin function mclb_add11
	.p2align	2
	.type	mclb_add11,%function
	.code	32                              @ @mclb_add11
mclb_add11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r7, [r2, #28]
	ldr	r3, [r1, #28]
	ldr	r2, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r1, #36]
	adcs	r3, r6, r3
	ldr	r1, [r1, #40]
	adcs	r7, r5, r7
	str	r3, [r0, #32]
	adcs	r1, r2, r1
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end40:
	.size	mclb_add11, .Lfunc_end40-mclb_add11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub11                      @ -- Begin function mclb_sub11
	.p2align	2
	.type	mclb_sub11,%function
	.code	32                              @ @mclb_sub11
mclb_sub11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r7, [r1, #28]
	ldr	r3, [r2, #28]
	ldr	r1, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r2, #36]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #40]
	sbcs	r7, r5, r7
	str	r3, [r0, #32]
	sbcs	r1, r1, r2
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end41:
	.size	mclb_sub11, .Lfunc_end41-mclb_sub11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF11                    @ -- Begin function mclb_addNF11
	.p2align	2
	.type	mclb_addNF11,%function
	.code	32                              @ @mclb_addNF11
mclb_addNF11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r7, [r2, #28]
	ldr	r3, [r1, #28]
	ldr	r2, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r1, #36]
	adcs	r3, r6, r3
	ldr	r1, [r1, #40]
	adcs	r7, r5, r7
	str	r3, [r0, #32]
	adc	r1, r2, r1
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end42:
	.size	mclb_addNF11, .Lfunc_end42-mclb_addNF11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF11                    @ -- Begin function mclb_subNF11
	.p2align	2
	.type	mclb_subNF11,%function
	.code	32                              @ @mclb_subNF11
mclb_subNF11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r7, [r1, #28]
	ldr	r3, [r2, #28]
	ldr	r1, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r2, #36]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #40]
	sbcs	r7, r5, r7
	str	r3, [r0, #32]
	sbc	r1, r1, r2
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end43:
	.size	mclb_subNF11, .Lfunc_end43-mclb_subNF11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add12                      @ -- Begin function mclb_add12
	.p2align	2
	.type	mclb_add12,%function
	.code	32                              @ @mclb_add12
mclb_add12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r1, #36]
	adcs	r3, r5, r3
	ldr	r1, [r2, #40]
	adcs	r7, r4, r7
	ldr	r2, [r2, #44]
	adcs	r1, r1, r6
	str	r3, [r0, #32]
	adcs	r2, r2, r12
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	str	r2, [r0, #44]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end44:
	.size	mclb_add12, .Lfunc_end44-mclb_add12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub12                      @ -- Begin function mclb_sub12
	.p2align	2
	.type	mclb_sub12,%function
	.code	32                              @ @mclb_sub12
mclb_sub12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r2, #36]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #40]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #44]
	sbcs	r2, r2, r6
	str	r3, [r0, #32]
	sbcs	r1, r1, r12
	str	r7, [r0, #36]
	str	r2, [r0, #40]
	str	r1, [r0, #44]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end45:
	.size	mclb_sub12, .Lfunc_end45-mclb_sub12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF12                    @ -- Begin function mclb_addNF12
	.p2align	2
	.type	mclb_addNF12,%function
	.code	32                              @ @mclb_addNF12
mclb_addNF12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r1, #36]
	adcs	r3, r5, r3
	ldr	r1, [r2, #40]
	adcs	r7, r4, r7
	ldr	r2, [r2, #44]
	adcs	r1, r1, r6
	str	r3, [r0, #32]
	adc	r2, r2, r12
	str	r7, [r0, #36]
	str	r1, [r0, #40]
	str	r2, [r0, #44]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end46:
	.size	mclb_addNF12, .Lfunc_end46-mclb_addNF12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF12                    @ -- Begin function mclb_subNF12
	.p2align	2
	.type	mclb_subNF12,%function
	.code	32                              @ @mclb_subNF12
mclb_subNF12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r2, #36]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #40]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #44]
	sbcs	r2, r2, r6
	str	r3, [r0, #32]
	sbc	r1, r1, r12
	str	r7, [r0, #36]
	str	r2, [r0, #40]
	str	r1, [r0, #44]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end47:
	.size	mclb_subNF12, .Lfunc_end47-mclb_subNF12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add13                      @ -- Begin function mclb_add13
	.p2align	2
	.type	mclb_add13,%function
	.code	32                              @ @mclb_add13
mclb_add13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	ldr	r1, [r1, #48]
	ldr	r2, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	adcs	r1, r2, r1
	str	r1, [r0, #48]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end48:
	.size	mclb_add13, .Lfunc_end48-mclb_add13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub13                      @ -- Begin function mclb_sub13
	.p2align	2
	.type	mclb_sub13,%function
	.code	32                              @ @mclb_sub13
mclb_sub13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	ldr	r2, [r2, #48]
	ldr	r1, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	sbcs	r1, r1, r2
	str	r1, [r0, #48]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end49:
	.size	mclb_sub13, .Lfunc_end49-mclb_sub13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF13                    @ -- Begin function mclb_addNF13
	.p2align	2
	.type	mclb_addNF13,%function
	.code	32                              @ @mclb_addNF13
mclb_addNF13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	ldr	r1, [r1, #48]
	ldr	r2, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	adc	r1, r2, r1
	str	r1, [r0, #48]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end50:
	.size	mclb_addNF13, .Lfunc_end50-mclb_addNF13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF13                    @ -- Begin function mclb_subNF13
	.p2align	2
	.type	mclb_subNF13,%function
	.code	32                              @ @mclb_subNF13
mclb_subNF13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	ldr	r2, [r2, #48]
	ldr	r1, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	sbc	r1, r1, r2
	str	r1, [r0, #48]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end51:
	.size	mclb_subNF13, .Lfunc_end51-mclb_subNF13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add14                      @ -- Begin function mclb_add14
	.p2align	2
	.type	mclb_add14,%function
	.code	32                              @ @mclb_add14
mclb_add14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	ldr	r1, [r1, #52]
	ldr	r2, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	adcs	r1, r2, r1
	str	r1, [r0, #52]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end52:
	.size	mclb_add14, .Lfunc_end52-mclb_add14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub14                      @ -- Begin function mclb_sub14
	.p2align	2
	.type	mclb_sub14,%function
	.code	32                              @ @mclb_sub14
mclb_sub14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	ldr	r2, [r2, #52]
	ldr	r1, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	sbcs	r1, r1, r2
	str	r1, [r0, #52]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end53:
	.size	mclb_sub14, .Lfunc_end53-mclb_sub14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF14                    @ -- Begin function mclb_addNF14
	.p2align	2
	.type	mclb_addNF14,%function
	.code	32                              @ @mclb_addNF14
mclb_addNF14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	ldr	r1, [r1, #52]
	ldr	r2, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	adc	r1, r2, r1
	str	r1, [r0, #52]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end54:
	.size	mclb_addNF14, .Lfunc_end54-mclb_addNF14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF14                    @ -- Begin function mclb_subNF14
	.p2align	2
	.type	mclb_subNF14,%function
	.code	32                              @ @mclb_subNF14
mclb_subNF14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	ldr	r2, [r2, #52]
	ldr	r1, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	sbc	r1, r1, r2
	str	r1, [r0, #52]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end55:
	.size	mclb_subNF14, .Lfunc_end55-mclb_subNF14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add15                      @ -- Begin function mclb_add15
	.p2align	2
	.type	mclb_add15,%function
	.code	32                              @ @mclb_add15
mclb_add15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	ldr	r1, [r1, #56]
	ldr	r2, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	adcs	r1, r2, r1
	str	r1, [r0, #56]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end56:
	.size	mclb_add15, .Lfunc_end56-mclb_add15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub15                      @ -- Begin function mclb_sub15
	.p2align	2
	.type	mclb_sub15,%function
	.code	32                              @ @mclb_sub15
mclb_sub15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	ldr	r2, [r2, #56]
	ldr	r1, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	sbcs	r1, r1, r2
	str	r1, [r0, #56]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end57:
	.size	mclb_sub15, .Lfunc_end57-mclb_sub15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF15                    @ -- Begin function mclb_addNF15
	.p2align	2
	.type	mclb_addNF15,%function
	.code	32                              @ @mclb_addNF15
mclb_addNF15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	ldr	r1, [r1, #56]
	ldr	r2, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	adc	r1, r2, r1
	str	r1, [r0, #56]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end58:
	.size	mclb_addNF15, .Lfunc_end58-mclb_addNF15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF15                    @ -- Begin function mclb_subNF15
	.p2align	2
	.type	mclb_subNF15,%function
	.code	32                              @ @mclb_subNF15
mclb_subNF15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	ldr	r2, [r2, #56]
	ldr	r1, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	sbc	r1, r1, r2
	str	r1, [r0, #56]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end59:
	.size	mclb_subNF15, .Lfunc_end59-mclb_subNF15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add16                      @ -- Begin function mclb_add16
	.p2align	2
	.type	mclb_add16,%function
	.code	32                              @ @mclb_add16
mclb_add16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	ldr	r1, [r1, #60]
	ldr	r2, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	adcs	r1, r2, r1
	str	r1, [r0, #60]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end60:
	.size	mclb_add16, .Lfunc_end60-mclb_add16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub16                      @ -- Begin function mclb_sub16
	.p2align	2
	.type	mclb_sub16,%function
	.code	32                              @ @mclb_sub16
mclb_sub16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	ldr	r2, [r2, #60]
	ldr	r1, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	sbcs	r1, r1, r2
	str	r1, [r0, #60]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end61:
	.size	mclb_sub16, .Lfunc_end61-mclb_sub16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF16                    @ -- Begin function mclb_addNF16
	.p2align	2
	.type	mclb_addNF16,%function
	.code	32                              @ @mclb_addNF16
mclb_addNF16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	ldr	r1, [r1, #60]
	ldr	r2, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	adc	r1, r2, r1
	str	r1, [r0, #60]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end62:
	.size	mclb_addNF16, .Lfunc_end62-mclb_addNF16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF16                    @ -- Begin function mclb_subNF16
	.p2align	2
	.type	mclb_subNF16,%function
	.code	32                              @ @mclb_subNF16
mclb_subNF16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	ldr	r2, [r2, #60]
	ldr	r1, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	sbc	r1, r1, r2
	str	r1, [r0, #60]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end63:
	.size	mclb_subNF16, .Lfunc_end63-mclb_subNF16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add17                      @ -- Begin function mclb_add17
	.p2align	2
	.type	mclb_add17,%function
	.code	32                              @ @mclb_add17
mclb_add17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	ldr	r1, [r1, #64]
	ldr	r2, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	adcs	r1, r2, r1
	str	r1, [r0, #64]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end64:
	.size	mclb_add17, .Lfunc_end64-mclb_add17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub17                      @ -- Begin function mclb_sub17
	.p2align	2
	.type	mclb_sub17,%function
	.code	32                              @ @mclb_sub17
mclb_sub17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	ldr	r2, [r2, #64]
	ldr	r1, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	sbcs	r1, r1, r2
	str	r1, [r0, #64]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end65:
	.size	mclb_sub17, .Lfunc_end65-mclb_sub17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF17                    @ -- Begin function mclb_addNF17
	.p2align	2
	.type	mclb_addNF17,%function
	.code	32                              @ @mclb_addNF17
mclb_addNF17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	ldr	r1, [r1, #64]
	ldr	r2, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	adc	r1, r2, r1
	str	r1, [r0, #64]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end66:
	.size	mclb_addNF17, .Lfunc_end66-mclb_addNF17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF17                    @ -- Begin function mclb_subNF17
	.p2align	2
	.type	mclb_subNF17,%function
	.code	32                              @ @mclb_subNF17
mclb_subNF17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	ldr	r2, [r2, #64]
	ldr	r1, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	sbc	r1, r1, r2
	str	r1, [r0, #64]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end67:
	.size	mclb_subNF17, .Lfunc_end67-mclb_subNF17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add18                      @ -- Begin function mclb_add18
	.p2align	2
	.type	mclb_add18,%function
	.code	32                              @ @mclb_add18
mclb_add18:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	ldr	r1, [r1, #68]
	ldr	r2, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	adcs	r1, r2, r1
	str	r1, [r0, #68]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end68:
	.size	mclb_add18, .Lfunc_end68-mclb_add18
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub18                      @ -- Begin function mclb_sub18
	.p2align	2
	.type	mclb_sub18,%function
	.code	32                              @ @mclb_sub18
mclb_sub18:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	ldr	r2, [r2, #68]
	ldr	r1, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	sbcs	r1, r1, r2
	str	r1, [r0, #68]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end69:
	.size	mclb_sub18, .Lfunc_end69-mclb_sub18
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF18                    @ -- Begin function mclb_addNF18
	.p2align	2
	.type	mclb_addNF18,%function
	.code	32                              @ @mclb_addNF18
mclb_addNF18:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	ldr	r1, [r1, #68]
	ldr	r2, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	adc	r1, r2, r1
	str	r1, [r0, #68]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end70:
	.size	mclb_addNF18, .Lfunc_end70-mclb_addNF18
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF18                    @ -- Begin function mclb_subNF18
	.p2align	2
	.type	mclb_subNF18,%function
	.code	32                              @ @mclb_subNF18
mclb_subNF18:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	ldr	r2, [r2, #68]
	ldr	r1, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	sbc	r1, r1, r2
	str	r1, [r0, #68]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end71:
	.size	mclb_subNF18, .Lfunc_end71-mclb_subNF18
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add19                      @ -- Begin function mclb_add19
	.p2align	2
	.type	mclb_add19,%function
	.code	32                              @ @mclb_add19
mclb_add19:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r7, [r2, #60]
	ldr	r3, [r1, #60]
	ldr	r2, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r1, #68]
	adcs	r3, r6, r3
	ldr	r1, [r1, #72]
	adcs	r7, r5, r7
	str	r3, [r0, #64]
	adcs	r1, r2, r1
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end72:
	.size	mclb_add19, .Lfunc_end72-mclb_add19
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub19                      @ -- Begin function mclb_sub19
	.p2align	2
	.type	mclb_sub19,%function
	.code	32                              @ @mclb_sub19
mclb_sub19:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r7, [r1, #60]
	ldr	r3, [r2, #60]
	ldr	r1, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r2, #68]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #72]
	sbcs	r7, r5, r7
	str	r3, [r0, #64]
	sbcs	r1, r1, r2
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end73:
	.size	mclb_sub19, .Lfunc_end73-mclb_sub19
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF19                    @ -- Begin function mclb_addNF19
	.p2align	2
	.type	mclb_addNF19,%function
	.code	32                              @ @mclb_addNF19
mclb_addNF19:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r7, [r2, #60]
	ldr	r3, [r1, #60]
	ldr	r2, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r1, #68]
	adcs	r3, r6, r3
	ldr	r1, [r1, #72]
	adcs	r7, r5, r7
	str	r3, [r0, #64]
	adc	r1, r2, r1
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end74:
	.size	mclb_addNF19, .Lfunc_end74-mclb_addNF19
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF19                    @ -- Begin function mclb_subNF19
	.p2align	2
	.type	mclb_subNF19,%function
	.code	32                              @ @mclb_subNF19
mclb_subNF19:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r7, [r1, #60]
	ldr	r3, [r2, #60]
	ldr	r1, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r2, #68]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #72]
	sbcs	r7, r5, r7
	str	r3, [r0, #64]
	sbc	r1, r1, r2
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end75:
	.size	mclb_subNF19, .Lfunc_end75-mclb_subNF19
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add20                      @ -- Begin function mclb_add20
	.p2align	2
	.type	mclb_add20,%function
	.code	32                              @ @mclb_add20
mclb_add20:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r1, #68]
	adcs	r3, r5, r3
	ldr	r1, [r2, #72]
	adcs	r7, r4, r7
	ldr	r2, [r2, #76]
	adcs	r1, r1, r6
	str	r3, [r0, #64]
	adcs	r2, r2, r12
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	str	r2, [r0, #76]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end76:
	.size	mclb_add20, .Lfunc_end76-mclb_add20
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub20                      @ -- Begin function mclb_sub20
	.p2align	2
	.type	mclb_sub20,%function
	.code	32                              @ @mclb_sub20
mclb_sub20:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r2, #68]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #72]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #76]
	sbcs	r2, r2, r6
	str	r3, [r0, #64]
	sbcs	r1, r1, r12
	str	r7, [r0, #68]
	str	r2, [r0, #72]
	str	r1, [r0, #76]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end77:
	.size	mclb_sub20, .Lfunc_end77-mclb_sub20
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF20                    @ -- Begin function mclb_addNF20
	.p2align	2
	.type	mclb_addNF20,%function
	.code	32                              @ @mclb_addNF20
mclb_addNF20:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r1, #68]
	adcs	r3, r5, r3
	ldr	r1, [r2, #72]
	adcs	r7, r4, r7
	ldr	r2, [r2, #76]
	adcs	r1, r1, r6
	str	r3, [r0, #64]
	adc	r2, r2, r12
	str	r7, [r0, #68]
	str	r1, [r0, #72]
	str	r2, [r0, #76]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end78:
	.size	mclb_addNF20, .Lfunc_end78-mclb_addNF20
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF20                    @ -- Begin function mclb_subNF20
	.p2align	2
	.type	mclb_subNF20,%function
	.code	32                              @ @mclb_subNF20
mclb_subNF20:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r2, #68]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #72]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #76]
	sbcs	r2, r2, r6
	str	r3, [r0, #64]
	sbc	r1, r1, r12
	str	r7, [r0, #68]
	str	r2, [r0, #72]
	str	r1, [r0, #76]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end79:
	.size	mclb_subNF20, .Lfunc_end79-mclb_subNF20
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add21                      @ -- Begin function mclb_add21
	.p2align	2
	.type	mclb_add21,%function
	.code	32                              @ @mclb_add21
mclb_add21:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	ldr	r1, [r1, #80]
	ldr	r2, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	adcs	r1, r2, r1
	str	r1, [r0, #80]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end80:
	.size	mclb_add21, .Lfunc_end80-mclb_add21
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub21                      @ -- Begin function mclb_sub21
	.p2align	2
	.type	mclb_sub21,%function
	.code	32                              @ @mclb_sub21
mclb_sub21:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	ldr	r2, [r2, #80]
	ldr	r1, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	sbcs	r1, r1, r2
	str	r1, [r0, #80]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end81:
	.size	mclb_sub21, .Lfunc_end81-mclb_sub21
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF21                    @ -- Begin function mclb_addNF21
	.p2align	2
	.type	mclb_addNF21,%function
	.code	32                              @ @mclb_addNF21
mclb_addNF21:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	ldr	r1, [r1, #80]
	ldr	r2, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	adc	r1, r2, r1
	str	r1, [r0, #80]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end82:
	.size	mclb_addNF21, .Lfunc_end82-mclb_addNF21
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF21                    @ -- Begin function mclb_subNF21
	.p2align	2
	.type	mclb_subNF21,%function
	.code	32                              @ @mclb_subNF21
mclb_subNF21:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	ldr	r2, [r2, #80]
	ldr	r1, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	sbc	r1, r1, r2
	str	r1, [r0, #80]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end83:
	.size	mclb_subNF21, .Lfunc_end83-mclb_subNF21
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add22                      @ -- Begin function mclb_add22
	.p2align	2
	.type	mclb_add22,%function
	.code	32                              @ @mclb_add22
mclb_add22:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	ldr	r1, [r1, #84]
	ldr	r2, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	adcs	r1, r2, r1
	str	r1, [r0, #84]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end84:
	.size	mclb_add22, .Lfunc_end84-mclb_add22
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub22                      @ -- Begin function mclb_sub22
	.p2align	2
	.type	mclb_sub22,%function
	.code	32                              @ @mclb_sub22
mclb_sub22:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	ldr	r2, [r2, #84]
	ldr	r1, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	sbcs	r1, r1, r2
	str	r1, [r0, #84]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end85:
	.size	mclb_sub22, .Lfunc_end85-mclb_sub22
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF22                    @ -- Begin function mclb_addNF22
	.p2align	2
	.type	mclb_addNF22,%function
	.code	32                              @ @mclb_addNF22
mclb_addNF22:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	ldr	r1, [r1, #84]
	ldr	r2, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	adc	r1, r2, r1
	str	r1, [r0, #84]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end86:
	.size	mclb_addNF22, .Lfunc_end86-mclb_addNF22
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF22                    @ -- Begin function mclb_subNF22
	.p2align	2
	.type	mclb_subNF22,%function
	.code	32                              @ @mclb_subNF22
mclb_subNF22:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	ldr	r2, [r2, #84]
	ldr	r1, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	sbc	r1, r1, r2
	str	r1, [r0, #84]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end87:
	.size	mclb_subNF22, .Lfunc_end87-mclb_subNF22
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add23                      @ -- Begin function mclb_add23
	.p2align	2
	.type	mclb_add23,%function
	.code	32                              @ @mclb_add23
mclb_add23:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	ldr	r1, [r1, #88]
	ldr	r2, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	adcs	r1, r2, r1
	str	r1, [r0, #88]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end88:
	.size	mclb_add23, .Lfunc_end88-mclb_add23
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub23                      @ -- Begin function mclb_sub23
	.p2align	2
	.type	mclb_sub23,%function
	.code	32                              @ @mclb_sub23
mclb_sub23:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	ldr	r2, [r2, #88]
	ldr	r1, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	sbcs	r1, r1, r2
	str	r1, [r0, #88]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end89:
	.size	mclb_sub23, .Lfunc_end89-mclb_sub23
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF23                    @ -- Begin function mclb_addNF23
	.p2align	2
	.type	mclb_addNF23,%function
	.code	32                              @ @mclb_addNF23
mclb_addNF23:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	ldr	r1, [r1, #88]
	ldr	r2, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	adc	r1, r2, r1
	str	r1, [r0, #88]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end90:
	.size	mclb_addNF23, .Lfunc_end90-mclb_addNF23
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF23                    @ -- Begin function mclb_subNF23
	.p2align	2
	.type	mclb_subNF23,%function
	.code	32                              @ @mclb_subNF23
mclb_subNF23:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	ldr	r2, [r2, #88]
	ldr	r1, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	sbc	r1, r1, r2
	str	r1, [r0, #88]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end91:
	.size	mclb_subNF23, .Lfunc_end91-mclb_subNF23
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add24                      @ -- Begin function mclb_add24
	.p2align	2
	.type	mclb_add24,%function
	.code	32                              @ @mclb_add24
mclb_add24:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	ldr	r1, [r1, #92]
	ldr	r2, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	adcs	r1, r2, r1
	str	r1, [r0, #92]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end92:
	.size	mclb_add24, .Lfunc_end92-mclb_add24
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub24                      @ -- Begin function mclb_sub24
	.p2align	2
	.type	mclb_sub24,%function
	.code	32                              @ @mclb_sub24
mclb_sub24:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	ldr	r2, [r2, #92]
	ldr	r1, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	sbcs	r1, r1, r2
	str	r1, [r0, #92]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end93:
	.size	mclb_sub24, .Lfunc_end93-mclb_sub24
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF24                    @ -- Begin function mclb_addNF24
	.p2align	2
	.type	mclb_addNF24,%function
	.code	32                              @ @mclb_addNF24
mclb_addNF24:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	ldr	r1, [r1, #92]
	ldr	r2, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	adc	r1, r2, r1
	str	r1, [r0, #92]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end94:
	.size	mclb_addNF24, .Lfunc_end94-mclb_addNF24
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF24                    @ -- Begin function mclb_subNF24
	.p2align	2
	.type	mclb_subNF24,%function
	.code	32                              @ @mclb_subNF24
mclb_subNF24:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	ldr	r2, [r2, #92]
	ldr	r1, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	sbc	r1, r1, r2
	str	r1, [r0, #92]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end95:
	.size	mclb_subNF24, .Lfunc_end95-mclb_subNF24
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add25                      @ -- Begin function mclb_add25
	.p2align	2
	.type	mclb_add25,%function
	.code	32                              @ @mclb_add25
mclb_add25:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	ldr	r1, [r1, #96]
	ldr	r2, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	adcs	r1, r2, r1
	str	r1, [r0, #96]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end96:
	.size	mclb_add25, .Lfunc_end96-mclb_add25
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub25                      @ -- Begin function mclb_sub25
	.p2align	2
	.type	mclb_sub25,%function
	.code	32                              @ @mclb_sub25
mclb_sub25:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	ldr	r2, [r2, #96]
	ldr	r1, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	sbcs	r1, r1, r2
	str	r1, [r0, #96]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end97:
	.size	mclb_sub25, .Lfunc_end97-mclb_sub25
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF25                    @ -- Begin function mclb_addNF25
	.p2align	2
	.type	mclb_addNF25,%function
	.code	32                              @ @mclb_addNF25
mclb_addNF25:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	ldr	r1, [r1, #96]
	ldr	r2, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	adc	r1, r2, r1
	str	r1, [r0, #96]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end98:
	.size	mclb_addNF25, .Lfunc_end98-mclb_addNF25
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF25                    @ -- Begin function mclb_subNF25
	.p2align	2
	.type	mclb_subNF25,%function
	.code	32                              @ @mclb_subNF25
mclb_subNF25:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	ldr	r2, [r2, #96]
	ldr	r1, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	sbc	r1, r1, r2
	str	r1, [r0, #96]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end99:
	.size	mclb_subNF25, .Lfunc_end99-mclb_subNF25
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add26                      @ -- Begin function mclb_add26
	.p2align	2
	.type	mclb_add26,%function
	.code	32                              @ @mclb_add26
mclb_add26:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	ldr	r1, [r1, #100]
	ldr	r2, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	adcs	r1, r2, r1
	str	r1, [r0, #100]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end100:
	.size	mclb_add26, .Lfunc_end100-mclb_add26
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub26                      @ -- Begin function mclb_sub26
	.p2align	2
	.type	mclb_sub26,%function
	.code	32                              @ @mclb_sub26
mclb_sub26:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	ldr	r2, [r2, #100]
	ldr	r1, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	sbcs	r1, r1, r2
	str	r1, [r0, #100]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end101:
	.size	mclb_sub26, .Lfunc_end101-mclb_sub26
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF26                    @ -- Begin function mclb_addNF26
	.p2align	2
	.type	mclb_addNF26,%function
	.code	32                              @ @mclb_addNF26
mclb_addNF26:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	ldr	r1, [r1, #100]
	ldr	r2, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	adc	r1, r2, r1
	str	r1, [r0, #100]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end102:
	.size	mclb_addNF26, .Lfunc_end102-mclb_addNF26
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF26                    @ -- Begin function mclb_subNF26
	.p2align	2
	.type	mclb_subNF26,%function
	.code	32                              @ @mclb_subNF26
mclb_subNF26:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	ldr	r2, [r2, #100]
	ldr	r1, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	sbc	r1, r1, r2
	str	r1, [r0, #100]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end103:
	.size	mclb_subNF26, .Lfunc_end103-mclb_subNF26
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add27                      @ -- Begin function mclb_add27
	.p2align	2
	.type	mclb_add27,%function
	.code	32                              @ @mclb_add27
mclb_add27:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r7, [r2, #92]
	ldr	r3, [r1, #92]
	ldr	r2, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r1, #100]
	adcs	r3, r6, r3
	ldr	r1, [r1, #104]
	adcs	r7, r5, r7
	str	r3, [r0, #96]
	adcs	r1, r2, r1
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end104:
	.size	mclb_add27, .Lfunc_end104-mclb_add27
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub27                      @ -- Begin function mclb_sub27
	.p2align	2
	.type	mclb_sub27,%function
	.code	32                              @ @mclb_sub27
mclb_sub27:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r7, [r1, #92]
	ldr	r3, [r2, #92]
	ldr	r1, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r2, #100]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #104]
	sbcs	r7, r5, r7
	str	r3, [r0, #96]
	sbcs	r1, r1, r2
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end105:
	.size	mclb_sub27, .Lfunc_end105-mclb_sub27
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF27                    @ -- Begin function mclb_addNF27
	.p2align	2
	.type	mclb_addNF27,%function
	.code	32                              @ @mclb_addNF27
mclb_addNF27:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r6, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r5, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r7, [r2, #92]
	ldr	r3, [r1, #92]
	ldr	r2, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r1, #100]
	adcs	r3, r6, r3
	ldr	r1, [r1, #104]
	adcs	r7, r5, r7
	str	r3, [r0, #96]
	adc	r1, r2, r1
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end106:
	.size	mclb_addNF27, .Lfunc_end106-mclb_addNF27
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF27                    @ -- Begin function mclb_subNF27
	.p2align	2
	.type	mclb_subNF27,%function
	.code	32                              @ @mclb_subNF27
mclb_subNF27:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r5, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r7, [r1, #92]
	ldr	r3, [r2, #92]
	ldr	r1, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r2, #100]
	sbcs	r3, r6, r3
	ldr	r2, [r2, #104]
	sbcs	r7, r5, r7
	str	r3, [r0, #96]
	sbc	r1, r1, r2
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end107:
	.size	mclb_subNF27, .Lfunc_end107-mclb_subNF27
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add28                      @ -- Begin function mclb_add28
	.p2align	2
	.type	mclb_add28,%function
	.code	32                              @ @mclb_add28
mclb_add28:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r1, #100]
	adcs	r3, r5, r3
	ldr	r1, [r2, #104]
	adcs	r7, r4, r7
	ldr	r2, [r2, #108]
	adcs	r1, r1, r6
	str	r3, [r0, #96]
	adcs	r2, r2, r12
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	str	r2, [r0, #108]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end108:
	.size	mclb_add28, .Lfunc_end108-mclb_add28
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub28                      @ -- Begin function mclb_sub28
	.p2align	2
	.type	mclb_sub28,%function
	.code	32                              @ @mclb_sub28
mclb_sub28:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r2, #100]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #104]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #108]
	sbcs	r2, r2, r6
	str	r3, [r0, #96]
	sbcs	r1, r1, r12
	str	r7, [r0, #100]
	str	r2, [r0, #104]
	str	r1, [r0, #108]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end109:
	.size	mclb_sub28, .Lfunc_end109-mclb_sub28
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF28                    @ -- Begin function mclb_addNF28
	.p2align	2
	.type	mclb_addNF28,%function
	.code	32                              @ @mclb_addNF28
mclb_addNF28:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	ldr	r5, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	ldr	r4, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	ldr	r6, [r1, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	ldr	r12, [r1, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r1, #100]
	adcs	r3, r5, r3
	ldr	r1, [r2, #104]
	adcs	r7, r4, r7
	ldr	r2, [r2, #108]
	adcs	r1, r1, r6
	str	r3, [r0, #96]
	adc	r2, r2, r12
	str	r7, [r0, #100]
	str	r1, [r0, #104]
	str	r2, [r0, #108]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end110:
	.size	mclb_addNF28, .Lfunc_end110-mclb_addNF28
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF28                    @ -- Begin function mclb_subNF28
	.p2align	2
	.type	mclb_subNF28,%function
	.code	32                              @ @mclb_subNF28
mclb_subNF28:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	ldr	r5, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	ldr	r4, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	ldr	r6, [r2, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	ldr	r12, [r2, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r2, #100]
	sbcs	r3, r5, r3
	ldr	r2, [r1, #104]
	sbcs	r7, r4, r7
	ldr	r1, [r1, #108]
	sbcs	r2, r2, r6
	str	r3, [r0, #96]
	sbc	r1, r1, r12
	str	r7, [r0, #100]
	str	r2, [r0, #104]
	str	r1, [r0, #108]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end111:
	.size	mclb_subNF28, .Lfunc_end111-mclb_subNF28
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add29                      @ -- Begin function mclb_add29
	.p2align	2
	.type	mclb_add29,%function
	.code	32                              @ @mclb_add29
mclb_add29:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	ldr	r1, [r1, #112]
	ldr	r2, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	adcs	r1, r2, r1
	str	r1, [r0, #112]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end112:
	.size	mclb_add29, .Lfunc_end112-mclb_add29
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub29                      @ -- Begin function mclb_sub29
	.p2align	2
	.type	mclb_sub29,%function
	.code	32                              @ @mclb_sub29
mclb_sub29:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	ldr	r2, [r2, #112]
	ldr	r1, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	sbcs	r1, r1, r2
	str	r1, [r0, #112]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end113:
	.size	mclb_sub29, .Lfunc_end113-mclb_sub29
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF29                    @ -- Begin function mclb_addNF29
	.p2align	2
	.type	mclb_addNF29,%function
	.code	32                              @ @mclb_addNF29
mclb_addNF29:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	ldr	r1, [r1, #112]
	ldr	r2, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	adc	r1, r2, r1
	str	r1, [r0, #112]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end114:
	.size	mclb_addNF29, .Lfunc_end114-mclb_addNF29
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF29                    @ -- Begin function mclb_subNF29
	.p2align	2
	.type	mclb_subNF29,%function
	.code	32                              @ @mclb_subNF29
mclb_subNF29:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	ldr	r2, [r2, #112]
	ldr	r1, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	sbc	r1, r1, r2
	str	r1, [r0, #112]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end115:
	.size	mclb_subNF29, .Lfunc_end115-mclb_subNF29
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add30                      @ -- Begin function mclb_add30
	.p2align	2
	.type	mclb_add30,%function
	.code	32                              @ @mclb_add30
mclb_add30:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	ldr	r1, [r1, #116]
	ldr	r2, [r2, #116]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	adcs	r1, r2, r1
	str	r1, [r0, #116]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end116:
	.size	mclb_add30, .Lfunc_end116-mclb_add30
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub30                      @ -- Begin function mclb_sub30
	.p2align	2
	.type	mclb_sub30,%function
	.code	32                              @ @mclb_sub30
mclb_sub30:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	ldr	r2, [r2, #116]
	ldr	r1, [r1, #116]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	sbcs	r1, r1, r2
	str	r1, [r0, #116]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end117:
	.size	mclb_sub30, .Lfunc_end117-mclb_sub30
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF30                    @ -- Begin function mclb_addNF30
	.p2align	2
	.type	mclb_addNF30,%function
	.code	32                              @ @mclb_addNF30
mclb_addNF30:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	ldr	r1, [r1, #116]
	ldr	r2, [r2, #116]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	adc	r1, r2, r1
	str	r1, [r0, #116]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end118:
	.size	mclb_addNF30, .Lfunc_end118-mclb_addNF30
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF30                    @ -- Begin function mclb_subNF30
	.p2align	2
	.type	mclb_subNF30,%function
	.code	32                              @ @mclb_subNF30
mclb_subNF30:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	ldr	r2, [r2, #116]
	ldr	r1, [r1, #116]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	sbc	r1, r1, r2
	str	r1, [r0, #116]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end119:
	.size	mclb_subNF30, .Lfunc_end119-mclb_subNF30
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add31                      @ -- Begin function mclb_add31
	.p2align	2
	.type	mclb_add31,%function
	.code	32                              @ @mclb_add31
mclb_add31:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r1, #116]
	ldr	r7, [r2, #116]
	ldr	r1, [r1, #120]
	ldr	r2, [r2, #120]
	adcs	r3, r7, r3
	str	r3, [r0, #116]
	adcs	r1, r2, r1
	str	r1, [r0, #120]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end120:
	.size	mclb_add31, .Lfunc_end120-mclb_add31
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub31                      @ -- Begin function mclb_sub31
	.p2align	2
	.type	mclb_sub31,%function
	.code	32                              @ @mclb_sub31
mclb_sub31:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r2, #116]
	ldr	r7, [r1, #116]
	ldr	r2, [r2, #120]
	ldr	r1, [r1, #120]
	sbcs	r3, r7, r3
	str	r3, [r0, #116]
	sbcs	r1, r1, r2
	str	r1, [r0, #120]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end121:
	.size	mclb_sub31, .Lfunc_end121-mclb_sub31
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF31                    @ -- Begin function mclb_addNF31
	.p2align	2
	.type	mclb_addNF31,%function
	.code	32                              @ @mclb_addNF31
mclb_addNF31:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r1, #116]
	ldr	r7, [r2, #116]
	ldr	r1, [r1, #120]
	ldr	r2, [r2, #120]
	adcs	r3, r7, r3
	str	r3, [r0, #116]
	adc	r1, r2, r1
	str	r1, [r0, #120]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end122:
	.size	mclb_addNF31, .Lfunc_end122-mclb_addNF31
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF31                    @ -- Begin function mclb_subNF31
	.p2align	2
	.type	mclb_subNF31,%function
	.code	32                              @ @mclb_subNF31
mclb_subNF31:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r2, #116]
	ldr	r7, [r1, #116]
	ldr	r2, [r2, #120]
	ldr	r1, [r1, #120]
	sbcs	r3, r7, r3
	str	r3, [r0, #116]
	sbc	r1, r1, r2
	str	r1, [r0, #120]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end123:
	.size	mclb_subNF31, .Lfunc_end123-mclb_subNF31
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_add32                      @ -- Begin function mclb_add32
	.p2align	2
	.type	mclb_add32,%function
	.code	32                              @ @mclb_add32
mclb_add32:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r1, #116]
	ldr	r7, [r2, #116]
	adcs	r3, r7, r3
	str	r3, [r0, #116]
	ldr	r3, [r1, #120]
	ldr	r7, [r2, #120]
	ldr	r1, [r1, #124]
	ldr	r2, [r2, #124]
	adcs	r3, r7, r3
	str	r3, [r0, #120]
	adcs	r1, r2, r1
	str	r1, [r0, #124]
	mov	r0, #0
	adc	r0, r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end124:
	.size	mclb_add32, .Lfunc_end124-mclb_add32
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sub32                      @ -- Begin function mclb_sub32
	.p2align	2
	.type	mclb_sub32,%function
	.code	32                              @ @mclb_sub32
mclb_sub32:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r2, #116]
	ldr	r7, [r1, #116]
	sbcs	r3, r7, r3
	str	r3, [r0, #116]
	ldr	r3, [r2, #120]
	ldr	r7, [r1, #120]
	ldr	r2, [r2, #124]
	ldr	r1, [r1, #124]
	sbcs	r3, r7, r3
	str	r3, [r0, #120]
	sbcs	r1, r1, r2
	str	r1, [r0, #124]
	mov	r0, #0
	sbc	r0, r0, #0
	and	r0, r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end125:
	.size	mclb_sub32, .Lfunc_end125-mclb_sub32
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_addNF32                    @ -- Begin function mclb_addNF32
	.p2align	2
	.type	mclb_addNF32,%function
	.code	32                              @ @mclb_addNF32
mclb_addNF32:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r1, {r3, r12, lr}
	ldm	r2, {r5, r6, r7}
	adds	r3, r5, r3
	str	r3, [r0]
	adcs	r3, r6, r12
	ldr	r8, [r1, #12]
	ldr	r4, [r2, #12]
	str	r3, [r0, #4]
	adcs	r3, r7, lr
	str	r3, [r0, #8]
	adcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r7, [r2, #16]
	adcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	ldr	r7, [r2, #20]
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	ldr	r7, [r2, #24]
	adcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	ldr	r7, [r2, #28]
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	ldr	r7, [r2, #32]
	adcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	ldr	r7, [r2, #36]
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	ldr	r7, [r2, #40]
	adcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	ldr	r7, [r2, #44]
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	ldr	r7, [r2, #48]
	adcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	ldr	r7, [r2, #52]
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	ldr	r7, [r2, #56]
	adcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	ldr	r7, [r2, #60]
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r1, #64]
	ldr	r7, [r2, #64]
	adcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r1, #68]
	ldr	r7, [r2, #68]
	adcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r1, #72]
	ldr	r7, [r2, #72]
	adcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r1, #76]
	ldr	r7, [r2, #76]
	adcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r1, #80]
	ldr	r7, [r2, #80]
	adcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r1, #84]
	ldr	r7, [r2, #84]
	adcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r1, #88]
	ldr	r7, [r2, #88]
	adcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r1, #92]
	ldr	r7, [r2, #92]
	adcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r1, #96]
	ldr	r7, [r2, #96]
	adcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r1, #100]
	ldr	r7, [r2, #100]
	adcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r1, #104]
	ldr	r7, [r2, #104]
	adcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r1, #108]
	ldr	r7, [r2, #108]
	adcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r1, #112]
	ldr	r7, [r2, #112]
	adcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r1, #116]
	ldr	r7, [r2, #116]
	adcs	r3, r7, r3
	str	r3, [r0, #116]
	ldr	r3, [r1, #120]
	ldr	r7, [r2, #120]
	ldr	r1, [r1, #124]
	ldr	r2, [r2, #124]
	adcs	r3, r7, r3
	str	r3, [r0, #120]
	adc	r1, r2, r1
	str	r1, [r0, #124]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end126:
	.size	mclb_addNF32, .Lfunc_end126-mclb_addNF32
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_subNF32                    @ -- Begin function mclb_subNF32
	.p2align	2
	.type	mclb_subNF32,%function
	.code	32                              @ @mclb_subNF32
mclb_subNF32:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldm	r2, {r3, r12, lr}
	ldm	r1, {r5, r6, r7}
	subs	r3, r5, r3
	str	r3, [r0]
	sbcs	r3, r6, r12
	ldr	r8, [r2, #12]
	ldr	r4, [r1, #12]
	str	r3, [r0, #4]
	sbcs	r3, r7, lr
	str	r3, [r0, #8]
	sbcs	r3, r4, r8
	str	r3, [r0, #12]
	ldr	r3, [r2, #16]
	ldr	r7, [r1, #16]
	sbcs	r3, r7, r3
	str	r3, [r0, #16]
	ldr	r3, [r2, #20]
	ldr	r7, [r1, #20]
	sbcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r2, #24]
	ldr	r7, [r1, #24]
	sbcs	r3, r7, r3
	str	r3, [r0, #24]
	ldr	r3, [r2, #28]
	ldr	r7, [r1, #28]
	sbcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r2, #32]
	ldr	r7, [r1, #32]
	sbcs	r3, r7, r3
	str	r3, [r0, #32]
	ldr	r3, [r2, #36]
	ldr	r7, [r1, #36]
	sbcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r2, #40]
	ldr	r7, [r1, #40]
	sbcs	r3, r7, r3
	str	r3, [r0, #40]
	ldr	r3, [r2, #44]
	ldr	r7, [r1, #44]
	sbcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r2, #48]
	ldr	r7, [r1, #48]
	sbcs	r3, r7, r3
	str	r3, [r0, #48]
	ldr	r3, [r2, #52]
	ldr	r7, [r1, #52]
	sbcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r2, #56]
	ldr	r7, [r1, #56]
	sbcs	r3, r7, r3
	str	r3, [r0, #56]
	ldr	r3, [r2, #60]
	ldr	r7, [r1, #60]
	sbcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r3, [r2, #64]
	ldr	r7, [r1, #64]
	sbcs	r3, r7, r3
	str	r3, [r0, #64]
	ldr	r3, [r2, #68]
	ldr	r7, [r1, #68]
	sbcs	r3, r7, r3
	str	r3, [r0, #68]
	ldr	r3, [r2, #72]
	ldr	r7, [r1, #72]
	sbcs	r3, r7, r3
	str	r3, [r0, #72]
	ldr	r3, [r2, #76]
	ldr	r7, [r1, #76]
	sbcs	r3, r7, r3
	str	r3, [r0, #76]
	ldr	r3, [r2, #80]
	ldr	r7, [r1, #80]
	sbcs	r3, r7, r3
	str	r3, [r0, #80]
	ldr	r3, [r2, #84]
	ldr	r7, [r1, #84]
	sbcs	r3, r7, r3
	str	r3, [r0, #84]
	ldr	r3, [r2, #88]
	ldr	r7, [r1, #88]
	sbcs	r3, r7, r3
	str	r3, [r0, #88]
	ldr	r3, [r2, #92]
	ldr	r7, [r1, #92]
	sbcs	r3, r7, r3
	str	r3, [r0, #92]
	ldr	r3, [r2, #96]
	ldr	r7, [r1, #96]
	sbcs	r3, r7, r3
	str	r3, [r0, #96]
	ldr	r3, [r2, #100]
	ldr	r7, [r1, #100]
	sbcs	r3, r7, r3
	str	r3, [r0, #100]
	ldr	r3, [r2, #104]
	ldr	r7, [r1, #104]
	sbcs	r3, r7, r3
	str	r3, [r0, #104]
	ldr	r3, [r2, #108]
	ldr	r7, [r1, #108]
	sbcs	r3, r7, r3
	str	r3, [r0, #108]
	ldr	r3, [r2, #112]
	ldr	r7, [r1, #112]
	sbcs	r3, r7, r3
	str	r3, [r0, #112]
	ldr	r3, [r2, #116]
	ldr	r7, [r1, #116]
	sbcs	r3, r7, r3
	str	r3, [r0, #116]
	ldr	r3, [r2, #120]
	ldr	r7, [r1, #120]
	ldr	r2, [r2, #124]
	ldr	r1, [r1, #124]
	sbcs	r3, r7, r3
	str	r3, [r0, #120]
	sbc	r1, r1, r2
	str	r1, [r0, #124]
	lsr	r0, r1, #31
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end127:
	.size	mclb_subNF32, .Lfunc_end127-mclb_subNF32
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner32                 @ -- Begin function mulUnit_inner32
	.p2align	2
	.type	mulUnit_inner32,%function
	.code	32                              @ @mulUnit_inner32
mulUnit_inner32:
	.fnstart
@ %bb.0:
	ldr	r0, [r0]
	umull	r0, r1, r0, r1
	bx	lr
.Lfunc_end128:
	.size	mulUnit_inner32, .Lfunc_end128-mulUnit_inner32
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit1                   @ -- Begin function mclb_mulUnit1
	.p2align	2
	.type	mclb_mulUnit1,%function
	.code	32                              @ @mclb_mulUnit1
mclb_mulUnit1:
	.fnstart
@ %bb.0:
	ldr	r1, [r1]
	umull	r2, r1, r1, r2
	str	r2, [r0]
	mov	r0, r1
	bx	lr
.Lfunc_end129:
	.size	mclb_mulUnit1, .Lfunc_end129-mclb_mulUnit1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd1                @ -- Begin function mclb_mulUnitAdd1
	.p2align	2
	.type	mclb_mulUnitAdd1,%function
	.code	32                              @ @mclb_mulUnitAdd1
mclb_mulUnitAdd1:
	.fnstart
@ %bb.0:
	ldr	r12, [r1]
	mov	r1, #0
	ldr	r3, [r0]
	umlal	r3, r1, r12, r2
	str	r3, [r0]
	mov	r0, r1
	bx	lr
.Lfunc_end130:
	.size	mclb_mulUnitAdd1, .Lfunc_end130-mclb_mulUnitAdd1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul1                       @ -- Begin function mclb_mul1
	.p2align	2
	.type	mclb_mul1,%function
	.code	32                              @ @mclb_mul1
mclb_mul1:
	.fnstart
@ %bb.0:
	ldr	r1, [r1]
	ldr	r2, [r2]
	umull	r1, r2, r2, r1
	stm	r0, {r1, r2}
	bx	lr
.Lfunc_end131:
	.size	mclb_mul1, .Lfunc_end131-mclb_mul1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr1                       @ -- Begin function mclb_sqr1
	.p2align	2
	.type	mclb_sqr1,%function
	.code	32                              @ @mclb_sqr1
mclb_sqr1:
	.fnstart
@ %bb.0:
	ldr	r1, [r1]
	umull	r1, r2, r1, r1
	stm	r0, {r1, r2}
	bx	lr
.Lfunc_end132:
	.size	mclb_sqr1, .Lfunc_end132-mclb_sqr1
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner64                 @ -- Begin function mulUnit_inner64
	.p2align	2
	.type	mulUnit_inner64,%function
	.code	32                              @ @mulUnit_inner64
mulUnit_inner64:
	.fnstart
@ %bb.0:
	ldm	r0, {r2, r12}
	umull	r0, r3, r2, r1
	mov	r2, #0
	umlal	r3, r2, r12, r1
	mov	r1, r3
	bx	lr
.Lfunc_end133:
	.size	mulUnit_inner64, .Lfunc_end133-mulUnit_inner64
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit2                   @ -- Begin function mclb_mulUnit2
	.p2align	2
	.type	mclb_mulUnit2,%function
	.code	32                              @ @mclb_mulUnit2
mclb_mulUnit2:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	ldm	r1, {r3, r12}
	mov	r1, #0
	umull	lr, r3, r3, r2
	umlal	r3, r1, r12, r2
	str	lr, [r0]
	str	r3, [r0, #4]
	mov	r0, r1
	pop	{r11, pc}
.Lfunc_end134:
	.size	mclb_mulUnit2, .Lfunc_end134-mclb_mulUnit2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd2                @ -- Begin function mclb_mulUnitAdd2
	.p2align	2
	.type	mclb_mulUnitAdd2,%function
	.code	32                              @ @mclb_mulUnitAdd2
mclb_mulUnitAdd2:
	.fnstart
@ %bb.0:
	push	{r4, lr}
	ldm	r1, {r3, lr}
	ldm	r0, {r1, r4}
	umull	r3, r12, r3, r2
	adds	r1, r3, r1
	umull	r2, r3, lr, r2
	mov	lr, #0
	adcs	r2, r2, r4
	adc	r4, lr, #0
	adds	r2, r2, r12
	stm	r0, {r1, r2}
	adc	r0, r4, r3
	pop	{r4, pc}
.Lfunc_end135:
	.size	mclb_mulUnitAdd2, .Lfunc_end135-mclb_mulUnitAdd2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul2                       @ -- Begin function mclb_mul2
	.p2align	2
	.type	mclb_mul2,%function
	.code	32                              @ @mclb_mul2
mclb_mul2:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r2, {r3, r12}
	mov	r6, #0
	mov	r5, #0
	ldr	r2, [r1]
	ldr	r1, [r1, #4]
	umull	lr, r4, r2, r3
	umlal	r4, r6, r1, r3
	str	lr, [r0]
	umull	r2, r3, r12, r2
	umlal	r3, r5, r12, r1
	adds	r2, r2, r4
	str	r2, [r0, #4]
	adcs	r1, r3, r6
	str	r1, [r0, #8]
	adc	r3, r5, #0
	str	r3, [r0, #12]
	pop	{r4, r5, r6, pc}
.Lfunc_end136:
	.size	mclb_mul2, .Lfunc_end136-mclb_mul2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr2                       @ -- Begin function mclb_sqr2
	.p2align	2
	.type	mclb_sqr2,%function
	.code	32                              @ @mclb_sqr2
mclb_sqr2:
	.fnstart
@ %bb.0:
	push	{r4, r5, r11, lr}
	ldr	r2, [r1]
	mov	r4, #0
	ldr	r1, [r1, #4]
	mov	lr, #0
	umull	r12, r3, r2, r2
	umlal	r3, r4, r1, r2
	str	r12, [r0]
	umull	r2, r5, r1, r2
	umlal	r5, lr, r1, r1
	adds	r2, r2, r3
	str	r2, [r0, #4]
	adcs	r1, r5, r4
	str	r1, [r0, #8]
	adc	r3, lr, #0
	str	r3, [r0, #12]
	pop	{r4, r5, r11, pc}
.Lfunc_end137:
	.size	mclb_sqr2, .Lfunc_end137-mclb_sqr2
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner96                 @ -- Begin function mulUnit_inner96
	.p2align	2
	.type	mulUnit_inner96,%function
	.code	32                              @ @mulUnit_inner96
mulUnit_inner96:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldm	r0, {r2, lr}
	ldr	r0, [r0, #8]
	umull	r3, r6, r0, r1
	umull	r0, r5, r2, r1
	mov	r2, r3
	mov	r12, r5
	umlal	r12, r2, lr, r1
	umull	r1, r4, lr, r1
	adds	r1, r5, r1
	adcs	r1, r4, r3
	adc	r3, r6, #0
	mov	r1, r12
	pop	{r4, r5, r6, pc}
.Lfunc_end138:
	.size	mulUnit_inner96, .Lfunc_end138-mulUnit_inner96
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit3                   @ -- Begin function mclb_mulUnit3
	.p2align	2
	.type	mclb_mulUnit3,%function
	.code	32                              @ @mclb_mulUnit3
mclb_mulUnit3:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	ldr	r12, [r1]
	ldmib	r1, {r4, lr}
	umull	r12, r1, r12, r2
	umull	r3, lr, lr, r2
	str	r12, [r0]
	mov	r6, r1
	mov	r5, r3
	umlal	r6, r5, r4, r2
	str	r6, [r0, #4]
	str	r5, [r0, #8]
	umull	r0, r2, r4, r2
	adds	r0, r1, r0
	adcs	r0, r2, r3
	adc	r0, lr, #0
	pop	{r4, r5, r6, pc}
.Lfunc_end139:
	.size	mclb_mulUnit3, .Lfunc_end139-mclb_mulUnit3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd3                @ -- Begin function mclb_mulUnitAdd3
	.p2align	2
	.type	mclb_mulUnitAdd3,%function
	.code	32                              @ @mclb_mulUnitAdd3
mclb_mulUnitAdd3:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r11, lr}
	ldm	r1, {r3, r12}
	ldr	r1, [r1, #8]
	umull	r3, lr, r3, r2
	ldm	r0, {r4, r5, r6}
	adds	r3, r3, r4
	umull	r1, r7, r1, r2
	str	r3, [r0]
	umull	r2, r4, r12, r2
	mov	r12, #0
	adcs	r2, r2, r5
	adcs	r1, r1, r6
	adc	r6, r12, #0
	adds	r2, r2, lr
	adcs	r1, r1, r4
	str	r2, [r0, #4]
	str	r1, [r0, #8]
	adc	r0, r6, r7
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end140:
	.size	mclb_mulUnitAdd3, .Lfunc_end140-mclb_mulUnitAdd3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul3                       @ -- Begin function mclb_mul3
	.p2align	2
	.type	mclb_mul3,%function
	.code	32                              @ @mclb_mul3
mclb_mul3:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #12
	ldm	r2, {r12, lr}
	ldr	r11, [r1]
	ldr	r3, [r1, #4]
	ldr	r1, [r1, #8]
	umull	r5, r6, r11, r12
	ldr	r9, [r2, #8]
	umull	r2, r4, lr, r11
	str	r5, [r0]
	umull	r5, r10, lr, r3
	str	r2, [sp, #4]                    @ 4-byte Spill
	umull	r7, r8, lr, r1
	adds	r5, r4, r5
	adcs	r5, r10, r7
	umlal	r4, r7, lr, r3
	adc	r2, r8, #0
	str	r2, [sp, #8]                    @ 4-byte Spill
	umull	r8, r10, r3, r12
	umull	r5, r2, r1, r12
	str	r2, [sp]                        @ 4-byte Spill
	adds	r2, r6, r8
	adcs	r2, r10, r5
	umlal	r6, r5, r3, r12
	ldr	r2, [sp]                        @ 4-byte Reload
	adc	r10, r2, #0
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	adds	r6, r2, r6
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	adcs	r8, r4, r5
	str	r6, [r0, #4]
	adcs	lr, r7, r10
	umull	r4, r7, r9, r3
	adc	r12, r2, #0
	umull	r2, r6, r9, r11
	umull	r5, r1, r9, r1
	adds	r4, r6, r4
	adcs	r4, r7, r5
	umlal	r6, r5, r9, r3
	adc	r1, r1, #0
	adds	r2, r2, r8
	str	r2, [r0, #8]
	adcs	r2, r6, lr
	str	r2, [r0, #12]
	adcs	r2, r5, r12
	str	r2, [r0, #16]
	adc	r1, r1, #0
	str	r1, [r0, #20]
	add	sp, sp, #12
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end141:
	.size	mclb_mul3, .Lfunc_end141-mclb_mul3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr3                       @ -- Begin function mclb_sqr3
	.p2align	2
	.type	mclb_sqr3,%function
	.code	32                              @ @mclb_sqr3
mclb_sqr3:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #8
	ldr	r3, [r1]
	ldmib	r1, {r2, r8}
	umull	r1, r9, r3, r3
	umull	r11, r4, r8, r3
	str	r1, [r0]
	umull	r10, r1, r2, r2
	mov	r5, r9
	umull	r7, r6, r8, r2
	mov	r12, r11
	str	r1, [sp]                        @ 4-byte Spill
	umull	lr, r1, r2, r3
	str	r6, [sp, #4]                    @ 4-byte Spill
	umlal	r5, r12, r2, r3
	adds	r3, r1, r10
	ldr	r3, [sp]                        @ 4-byte Reload
	adcs	r3, r3, r7
	adc	r10, r6, #0
	adds	r3, r9, lr
	adcs	r3, r1, r11
	adc	r3, r4, #0
	adds	r5, lr, r5
	str	r5, [r0, #4]
	mov	r5, r7
	umlal	r1, r5, r2, r2
	adcs	r1, r1, r12
	adcs	r3, r5, r3
	umull	r6, r5, r8, r8
	adc	r12, r10, #0
	adds	r7, r4, r7
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	adcs	r7, r7, r6
	umlal	r4, r6, r8, r2
	adc	r5, r5, #0
	adds	r1, r11, r1
	str	r1, [r0, #8]
	adcs	r1, r4, r3
	str	r1, [r0, #12]
	adcs	r1, r6, r12
	str	r1, [r0, #16]
	adc	r1, r5, #0
	str	r1, [r0, #20]
	add	sp, sp, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end142:
	.size	mclb_sqr3, .Lfunc_end142-mclb_sqr3
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner128                @ -- Begin function mulUnit_inner128
	.p2align	2
	.type	mulUnit_inner128,%function
	.code	32                              @ @mulUnit_inner128
mulUnit_inner128:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r11, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	ldr	r7, [r1, #12]
	umull	r1, r6, r12, r2
	umull	r5, r12, lr, r2
	str	r1, [r0]
	mov	r4, r6
	mov	r1, r5
	umlal	r4, r1, r3, r2
	str	r1, [r0, #8]
	umull	r1, r7, r7, r2
	str	r4, [r0, #4]
	umull	r2, r3, r3, r2
	adds	r2, r6, r2
	adcs	r2, r3, r5
	adcs	r1, r12, r1
	str	r1, [r0, #12]
	adc	r1, r7, #0
	str	r1, [r0, #16]
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end143:
	.size	mulUnit_inner128, .Lfunc_end143-mulUnit_inner128
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit4                   @ -- Begin function mclb_mulUnit4
	.p2align	2
	.type	mclb_mulUnit4,%function
	.code	32                              @ @mclb_mulUnit4
mclb_mulUnit4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	ldr	r5, [r1, #12]
	umull	r12, r4, r12, r2
	umull	r1, lr, lr, r2
	str	r12, [r0]
	mov	r6, r4
	umull	r5, r8, r5, r2
	mov	r7, r1
	umlal	r6, r7, r3, r2
	umull	r2, r3, r3, r2
	stmib	r0, {r6, r7}
	adds	r2, r4, r2
	adcs	r1, r3, r1
	adcs	r1, lr, r5
	str	r1, [r0, #12]
	adc	r0, r8, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end144:
	.size	mclb_mulUnit4, .Lfunc_end144-mclb_mulUnit4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd4                @ -- Begin function mclb_mulUnitAdd4
	.p2align	2
	.type	mclb_mulUnitAdd4,%function
	.code	32                              @ @mclb_mulUnitAdd4
mclb_mulUnitAdd4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldm	r1, {r3, r12, lr}
	ldr	r1, [r1, #12]
	umull	r3, r8, r3, r2
	ldr	r4, [r0, #12]
	ldm	r0, {r5, r6, r7}
	adds	r10, r3, r5
	umull	r1, r9, r1, r2
	str	r10, [r0]
	umull	r5, lr, lr, r2
	umull	r2, r3, r12, r2
	mov	r12, #0
	adcs	r2, r2, r6
	adcs	r5, r5, r7
	adcs	r1, r1, r4
	adc	r7, r12, #0
	adds	r2, r2, r8
	adcs	r3, r5, r3
	stmib	r0, {r2, r3}
	adcs	r1, r1, lr
	str	r1, [r0, #12]
	adc	r0, r7, r9
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end145:
	.size	mclb_mulUnitAdd4, .Lfunc_end145-mclb_mulUnitAdd4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul4                       @ -- Begin function mclb_mul4
	.p2align	2
	.type	mclb_mul4,%function
	.code	32                              @ @mclb_mul4
mclb_mul4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #24
	mov	r12, r0
	ldr	r0, [r1]
	ldm	r2, {r5, r6}
	ldr	r4, [r2, #8]
	ldr	r8, [r2, #12]
	umull	r7, r2, r0, r5
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldmib	r1, {r3, r10, lr}
	umull	r1, r0, lr, r5
	str	r7, [r12]
	umull	r7, r11, r10, r5
	str	r0, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	umull	r9, r0, r3, r5
	adds	r1, r2, r9
	adcs	r1, r0, r7
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	umlal	r2, r7, r3, r5
	adcs	r0, r11, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	umull	r5, r11, r6, r1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adds	r2, r2, r5
	str	r2, [r12, #4]
	umull	r2, r0, r6, lr
	str	r0, [sp, #8]                    @ 4-byte Spill
	umull	r0, r9, r6, r10
	umull	r6, r5, r6, r3
	adcs	r6, r7, r6
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r7, r0
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	adcs	r2, r7, r2
	mov	r7, #0
	adc	r7, r7, #0
	adds	r6, r6, r11
	adcs	r0, r0, r5
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r0, r2, r9
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	umull	r2, r5, r4, r3
	str	r6, [sp, #4]                    @ 4-byte Spill
	adc	r0, r7, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	umull	r11, r0, r4, lr
	umull	r7, r6, r4, r10
	str	r0, [sp]                        @ 4-byte Spill
	umull	r9, r0, r4, r1
	adds	r1, r0, r2
	ldr	r2, [sp]                        @ 4-byte Reload
	adcs	r1, r5, r7
	umlal	r0, r7, r4, r3
	ldr	r5, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r6, r11
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	adc	r2, r2, #0
	adds	r5, r9, r5
	str	r5, [r12, #8]
	adcs	r4, r0, r4
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r9, r7, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	umull	r7, lr, r8, lr
	adcs	r11, r1, r0
	adc	r0, r2, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
	umull	r2, r5, r8, r10
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	umull	r1, r6, r8, r3
	umull	r10, r0, r8, r0
	adds	r1, r0, r1
	adcs	r1, r6, r2
	umlal	r0, r2, r8, r3
	adcs	r1, r5, r7
	adc	r7, lr, #0
	adds	r6, r10, r4
	str	r6, [r12, #12]
	adcs	r0, r0, r9
	str	r0, [r12, #16]
	adcs	r0, r2, r11
	str	r0, [r12, #20]
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [r12, #24]
	adc	r0, r7, #0
	str	r0, [r12, #28]
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end146:
	.size	mclb_mul4, .Lfunc_end146-mclb_mul4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr4                       @ -- Begin function mclb_sqr4
	.p2align	2
	.type	mclb_sqr4,%function
	.code	32                              @ @mclb_sqr4
mclb_sqr4:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #40
	ldr	r6, [r1]
	mov	r3, r0
	ldmib	r1, {r2, r8}
	ldr	r0, [r1, #12]
	umull	r1, r7, r6, r6
	str	r0, [sp]                        @ 4-byte Spill
	umull	lr, r4, r0, r2
	str	r1, [r3]
	str	r7, [sp, #12]                   @ 4-byte Spill
	umull	r1, r0, r2, r2
	str	r4, [sp, #36]                   @ 4-byte Spill
	str	lr, [sp, #32]                   @ 4-byte Spill
	umull	r11, r12, r8, r2
	str	r0, [sp, #28]                   @ 4-byte Spill
	umull	r10, r0, r2, r6
	str	r12, [sp, #24]                  @ 4-byte Spill
	umull	r9, r5, r8, r6
	adds	r1, r0, r1
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	str	r9, [sp, #8]                    @ 4-byte Spill
	umlal	r7, r9, r2, r6
	adcs	r1, r1, r11
	adcs	r1, r12, lr
	str	r1, [sp, #20]                   @ 4-byte Spill
	adc	r1, r4, #0
	ldr	r4, [sp]                        @ 4-byte Reload
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	lr, [sp, #8]                    @ 4-byte Reload
	umull	r12, r1, r4, r6
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adds	r6, r6, r10
	adcs	r6, r0, lr
	str	r12, [sp, #28]                  @ 4-byte Spill
	adcs	r6, r5, r12
	adc	r12, r1, #0
	adds	r7, r10, r7
	str	r7, [r3, #4]
	mov	r7, r11
	umlal	r0, r7, r2, r2
	mov	r10, r4
	adcs	r0, r0, r9
	str	r0, [sp, #4]                    @ 4-byte Spill
	adcs	r0, r7, r6
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	umull	r6, r9, r4, r8
	adcs	r12, r0, r12
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	umull	r0, r4, r8, r8
	adds	r7, r5, r11
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	adcs	r7, r7, r0
	umlal	r5, r0, r8, r2
	adcs	r11, r4, r6
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	adc	r7, r9, #0
	adds	r4, lr, r4
	str	r4, [r3, #8]
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	adcs	r5, r5, r4
	adcs	r8, r0, r12
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	lr, r11, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adc	r12, r7, #0
	umull	r7, r4, r10, r10
	adds	r0, r1, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r0, r6
	umlal	r1, r6, r10, r2
	adcs	r0, r9, r7
	ldr	r7, [sp, #28]                   @ 4-byte Reload
	adc	r4, r4, #0
	adds	r5, r7, r5
	str	r5, [r3, #12]
	adcs	r1, r1, r8
	str	r1, [r3, #16]
	adcs	r1, r6, lr
	str	r1, [r3, #20]
	adcs	r0, r0, r12
	str	r0, [r3, #24]
	adc	r0, r4, #0
	str	r0, [r3, #28]
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end147:
	.size	mclb_sqr4, .Lfunc_end147-mclb_sqr4
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner160                @ -- Begin function mulUnit_inner160
	.p2align	2
	.type	mulUnit_inner160,%function
	.code	32                              @ @mulUnit_inner160
mulUnit_inner160:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r1, [r1, #16]
	umull	r1, r2, r1, r2
	adcs	r1, lr, r1
	str	r1, [r0, #16]
	adc	r1, r2, #0
	str	r1, [r0, #20]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end148:
	.size	mulUnit_inner160, .Lfunc_end148-mulUnit_inner160
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit5                   @ -- Begin function mclb_mulUnit5
	.p2align	2
	.type	mclb_mulUnit5,%function
	.code	32                              @ @mclb_mulUnit5
mclb_mulUnit5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	ldr	r1, [r1, #16]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	umull	r1, r2, r1, r2
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	adcs	r1, lr, r1
	str	r1, [r0, #16]
	adc	r0, r2, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end149:
	.size	mclb_mulUnit5, .Lfunc_end149-mclb_mulUnit5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd5                @ -- Begin function mclb_mulUnitAdd5
	.p2align	2
	.type	mclb_mulUnitAdd5,%function
	.code	32                              @ @mclb_mulUnitAdd5
mclb_mulUnitAdd5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	ldm	r1, {r3, r12, lr}
	ldr	r4, [r1, #12]
	umull	r3, r8, r3, r2
	ldr	r1, [r1, #16]
	ldr	r5, [r0, #8]
	ldr	r9, [r0, #12]
	ldm	r0, {r6, r7}
	adds	r3, r3, r6
	str	r3, [r0]
	umull	r1, r10, r1, r2
	ldr	r6, [r0, #16]
	umull	r4, r11, r4, r2
	umull	r3, lr, lr, r2
	umull	r2, r12, r12, r2
	adcs	r2, r2, r7
	adcs	r3, r3, r5
	mov	r5, #0
	adcs	r4, r4, r9
	adcs	r1, r1, r6
	adc	r5, r5, #0
	adds	r2, r2, r8
	str	r2, [r0, #4]
	adcs	r2, r3, r12
	str	r2, [r0, #8]
	adcs	r2, r4, lr
	adcs	r1, r1, r11
	str	r2, [r0, #12]
	str	r1, [r0, #16]
	adc	r0, r5, r10
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end150:
	.size	mclb_mulUnitAdd5, .Lfunc_end150-mclb_mulUnitAdd5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul5                       @ -- Begin function mclb_mul5
	.p2align	2
	.type	mclb_mul5,%function
	.code	32                              @ @mclb_mul5
mclb_mul5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #60
	ldr	r5, [r1]
	mov	lr, r0
	ldr	r7, [r2]
	ldmib	r1, {r3, r12}
	ldr	r0, [r1, #16]
	str	r2, [sp, #40]                   @ 4-byte Spill
	ldmib	r2, {r4, r6, r10}
	ldr	r2, [r1, #12]
	str	r5, [sp, #52]                   @ 4-byte Spill
	umull	r1, r5, r5, r7
	str	r0, [sp, #56]                   @ 4-byte Spill
	str	r12, [sp, #48]                  @ 4-byte Spill
	str	r2, [sp, #44]                   @ 4-byte Spill
	umull	r8, r11, r2, r7
	str	r1, [lr]
	umull	r1, r0, r0, r7
	str	r0, [sp, #28]                   @ 4-byte Spill
	umull	r0, r2, r12, r7
	str	r1, [sp, #32]                   @ 4-byte Spill
	umull	r9, r12, r3, r7
	adds	r1, r5, r9
	adcs	r1, r12, r0
	ldr	r12, [sp, #52]                  @ 4-byte Reload
	adcs	r1, r2, r8
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	umlal	r5, r0, r3, r7
	adcs	r1, r11, r1
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adc	r1, r1, #0
	str	r1, [sp, #28]                   @ 4-byte Spill
	umull	r7, r1, r4, r12
	str	r1, [sp, #20]                   @ 4-byte Spill
	adds	r5, r5, r7
	str	r5, [lr, #4]
	ldr	r5, [sp, #56]                   @ 4-byte Reload
	umull	r9, r1, r4, r5
	str	r1, [sp, #24]                   @ 4-byte Spill
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	umull	r11, r2, r4, r1
	str	r2, [sp, #16]                   @ 4-byte Spill
	ldr	r2, [sp, #48]                   @ 4-byte Reload
	umull	r8, r7, r4, r2
	str	r7, [sp, #12]                   @ 4-byte Spill
	umull	r4, r7, r4, r3
	str	r7, [sp, #8]                    @ 4-byte Spill
	adcs	r0, r0, r4
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	ldr	r7, [sp, #28]                   @ 4-byte Reload
	adcs	r8, r4, r8
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	adcs	r4, r4, r11
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	adcs	r9, r7, r9
	mov	r7, #0
	adc	r7, r7, #0
	adds	r0, r0, r11
	str	r0, [sp, #20]                   @ 4-byte Spill
	mov	r11, r1
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r8, r12
	adcs	r0, r4, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r9, r2
	adc	r0, r7, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	umull	r4, r0, r6, r5
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r0, [sp, #16]                   @ 4-byte Spill
	umull	r4, r0, r6, r1
	umull	r1, r7, r6, r2
	str	r4, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp, #8]                    @ 4-byte Spill
	umull	r5, r0, r6, r12
	umull	r2, r4, r6, r3
	str	r5, [sp]                        @ 4-byte Spill
	adds	r5, r0, r2
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	adcs	r5, r4, r1
	umlal	r0, r1, r6, r3
	adcs	r5, r7, r2
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r4, r7, r2
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r7, [sp]                        @ 4-byte Reload
	adc	r12, r2, #0
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	adds	r7, r7, r2
	ldr	r2, [sp, #36]                   @ 4-byte Reload
	str	r7, [lr, #8]
	adcs	r0, r0, r2
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	umull	r5, r11, r10, r11
	adcs	r0, r4, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	umull	r12, r2, r10, r3
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	umull	r1, r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	umull	r4, r0, r10, r8
	str	r1, [sp, #12]                   @ 4-byte Spill
	umull	r1, r7, r10, r9
	adds	r6, r0, r12
	adcs	r6, r2, r1
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	adcs	r7, r7, r5
	umlal	r0, r1, r10, r3
	adcs	r6, r11, r2
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	adc	r5, r2, #0
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	adds	r4, r4, r2
	ldr	r2, [sp, #36]                   @ 4-byte Reload
	str	r4, [lr, #12]
	adcs	r10, r0, r2
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	adc	r0, r5, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r4, [r0, #16]
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	umull	r1, r12, r4, r3
	umull	r9, r11, r4, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	umull	r7, r8, r4, r0
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	umull	r6, r2, r4, r0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	umull	r5, r0, r4, r0
	adds	r1, r0, r1
	adcs	r1, r12, r6
	umlal	r0, r6, r4, r3
	adcs	r1, r2, r7
	adcs	r7, r8, r9
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	adc	r12, r11, #0
	adds	r5, r5, r10
	str	r5, [lr, #16]
	adcs	r0, r0, r2
	str	r0, [lr, #20]
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [lr, #24]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [lr, #28]
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [lr, #32]
	adc	r1, r12, #0
	str	r1, [lr, #36]
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end151:
	.size	mclb_mul5, .Lfunc_end151-mclb_mul5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr5                       @ -- Begin function mclb_sqr5
	.p2align	2
	.type	mclb_sqr5,%function
	.code	32                              @ @mclb_sqr5
mclb_sqr5:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #84
	ldm	r1, {r7, r12}
	mov	r10, r0
	ldr	r0, [r1, #12]
	umull	r3, lr, r7, r7
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r9, [r1, #8]
	ldr	r2, [r1, #16]
	umull	r4, r8, r0, r12
	str	r2, [sp, #72]                   @ 4-byte Spill
	str	r3, [r10]
	umull	r3, r0, r12, r12
	str	r8, [sp, #56]                   @ 4-byte Spill
	str	r4, [sp, #52]                   @ 4-byte Spill
	umull	r1, r5, r9, r12
	str	r3, [sp, #60]                   @ 4-byte Spill
	str	r0, [sp, #80]                   @ 4-byte Spill
	umull	r3, r0, r12, r7
	str	r1, [sp, #16]                   @ 4-byte Spill
	str	r5, [sp, #40]                   @ 4-byte Spill
	umull	r11, r6, r2, r12
	str	r3, [sp, #20]                   @ 4-byte Spill
	ldr	r3, [sp, #60]                   @ 4-byte Reload
	adds	r3, r0, r3
	str	r6, [sp, #68]                   @ 4-byte Spill
	ldr	r3, [sp, #80]                   @ 4-byte Reload
	str	r11, [sp, #64]                  @ 4-byte Spill
	adcs	r3, r3, r1
	adcs	r1, r5, r4
	str	r1, [sp, #44]                   @ 4-byte Spill
	adcs	r1, r8, r11
	str	r1, [sp, #36]                   @ 4-byte Spill
	adc	r1, r6, #0
	str	r1, [sp, #32]                   @ 4-byte Spill
	umull	r8, r1, r2, r7
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	adds	r11, lr, r6
	umull	r5, r2, r9, r7
	str	r1, [sp, #80]                   @ 4-byte Spill
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r8, [sp, #60]                   @ 4-byte Spill
	str	r5, [sp, #28]                   @ 4-byte Spill
	umull	r1, r4, r1, r7
	adcs	r3, r0, r5
	ldr	r3, [sp, #80]                   @ 4-byte Reload
	str	r1, [sp, #48]                   @ 4-byte Spill
	adcs	r1, r2, r1
	str	r4, [sp, #24]                   @ 4-byte Spill
	adcs	r11, r4, r8
	mov	r8, r5
	umlal	lr, r8, r12, r7
	adc	r4, r3, #0
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r5, [sp, #72]                   @ 4-byte Reload
	adds	r7, r6, lr
	str	r7, [r10, #4]
	mov	r7, r3
	ldr	lr, [sp, #76]                   @ 4-byte Reload
	umlal	r0, r7, r12, r12
	adcs	r0, r0, r8
	str	r0, [sp, #8]                    @ 4-byte Spill
	adcs	r0, r7, r1
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	umull	r1, r6, lr, r9
	adcs	r0, r0, r11
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	str	r6, [sp, #12]                   @ 4-byte Spill
	adcs	r0, r0, r4
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	umull	r8, r4, r5, r9
	adc	r0, r0, #0
	str	r0, [sp, #32]                   @ 4-byte Spill
	umull	r0, r7, r9, r9
	adds	r11, r2, r3
	ldr	r3, [sp, #40]                   @ 4-byte Reload
	str	r4, [sp, #44]                   @ 4-byte Spill
	str	r7, [sp, #4]                    @ 4-byte Spill
	adcs	r3, r3, r0
	umlal	r2, r0, r9, r12
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	adcs	r3, r3, r1
	str	r3, [sp, #40]                   @ 4-byte Spill
	adcs	r6, r6, r8
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	adc	r11, r4, #0
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	adds	r3, r3, r4
	str	r3, [r10, #8]
	ldr	r3, [sp]                        @ 4-byte Reload
	mov	r4, lr
	adcs	r2, r2, r3
	str	r2, [sp, #28]                   @ 4-byte Spill
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	adcs	r9, r0, r2
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	adc	r0, r11, #0
	umull	r3, r11, r5, lr
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	ldr	r5, [sp, #24]                   @ 4-byte Reload
	str	r0, [sp, #32]                   @ 4-byte Spill
	umull	r0, r2, lr, lr
	adds	lr, r5, r6
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	adcs	r6, r6, r1
	umlal	r5, r1, r4, r12
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	lr, r6, r0
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r7, r2, r3
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	adc	r6, r11, #0
	adds	r0, r0, r2
	str	r0, [r10, #12]
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r4, r5, r9
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	adcs	r9, r1, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r2, [sp, #72]                   @ 4-byte Reload
	adcs	r7, r7, r0
	adc	r0, r6, #0
	adds	r5, r1, r5
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	str	r0, [sp, #76]                   @ 4-byte Spill
	umull	r6, r0, r2, r2
	adcs	r5, r5, r8
	ldr	r5, [sp, #44]                   @ 4-byte Reload
	umlal	r1, r8, r2, r12
	adcs	r3, r5, r3
	adcs	r5, r11, r6
	adc	r6, r0, #0
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adds	r0, r0, r4
	str	r0, [r10, #16]
	adcs	r0, r1, r9
	str	r0, [r10, #20]
	adcs	r0, r8, lr
	str	r0, [r10, #24]
	adcs	r0, r3, r7
	str	r0, [r10, #28]
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [r10, #32]
	adc	r1, r6, #0
	str	r1, [r10, #36]
	add	sp, sp, #84
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end152:
	.size	mclb_sqr5, .Lfunc_end152-mclb_sqr5
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner192                @ -- Begin function mulUnit_inner192
	.p2align	2
	.type	mulUnit_inner192,%function
	.code	32                              @ @mulUnit_inner192
mulUnit_inner192:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r1, [r1, #20]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #20]
	adc	r1, r2, #0
	str	r1, [r0, #24]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end153:
	.size	mulUnit_inner192, .Lfunc_end153-mulUnit_inner192
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit6                   @ -- Begin function mclb_mulUnit6
	.p2align	2
	.type	mclb_mulUnit6,%function
	.code	32                              @ @mclb_mulUnit6
mclb_mulUnit6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	ldr	r1, [r1, #20]
	umull	r3, r7, r3, r2
	umull	r1, r2, r1, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	adcs	r1, r7, r1
	str	r1, [r0, #20]
	adc	r0, r2, #0
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end154:
	.size	mclb_mulUnit6, .Lfunc_end154-mclb_mulUnit6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd6                @ -- Begin function mclb_mulUnitAdd6
	.p2align	2
	.type	mclb_mulUnitAdd6,%function
	.code	32                              @ @mclb_mulUnitAdd6
mclb_mulUnitAdd6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #16
	ldm	r1, {r3, r8, lr}
	ldr	r4, [r1, #12]
	umull	lr, r11, lr, r2
	ldr	r9, [r0, #12]
	umull	r3, r7, r3, r2
	str	r7, [sp, #8]                    @ 4-byte Spill
	ldm	r0, {r6, r7, r10}
	adds	r3, r3, r6
	str	r3, [r0]
	ldr	r3, [r1, #20]
	mov	r6, #0
	ldr	r1, [r1, #16]
	umull	r5, r3, r3, r2
	umull	r12, r1, r1, r2
	str	r3, [sp, #12]                   @ 4-byte Spill
	ldr	r3, [r0, #20]
	str	r1, [sp, #4]                    @ 4-byte Spill
	umull	r4, r1, r4, r2
	umull	r2, r8, r8, r2
	str	r1, [sp]                        @ 4-byte Spill
	ldr	r1, [r0, #16]
	adcs	r2, r2, r7
	adcs	r7, lr, r10
	adcs	r4, r4, r9
	adcs	r1, r12, r1
	adcs	r3, r5, r3
	adc	r5, r6, #0
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	adds	r2, r2, r6
	str	r2, [r0, #4]
	adcs	r2, r7, r8
	str	r2, [r0, #8]
	adcs	r2, r4, r11
	str	r2, [r0, #12]
	ldr	r2, [sp]                        @ 4-byte Reload
	adcs	r1, r1, r2
	str	r1, [r0, #16]
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #20]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r5, r0
	add	sp, sp, #16
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end155:
	.size	mclb_mulUnitAdd6, .Lfunc_end155-mclb_mulUnitAdd6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul6                       @ -- Begin function mclb_mul6
	.p2align	2
	.type	mclb_mul6,%function
	.code	32                              @ @mclb_mul6
mclb_mul6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #72
	ldm	r1, {r8, r9, r10}
	mov	r11, r0
	ldm	r2, {r4, r5, r7}
	mov	r3, r8
	ldr	r0, [r2, #12]
	str	r2, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r12, [r1, #12]
	ldr	r2, [r1, #16]
	ldr	r0, [r1, #20]
	umull	r1, r6, r8, r4
	str	r0, [sp, #56]                   @ 4-byte Spill
	str	r10, [sp, #64]                  @ 4-byte Spill
	str	r2, [sp, #48]                   @ 4-byte Spill
	str	r1, [r11]
	umull	r1, r0, r0, r4
	str	r12, [sp, #60]                  @ 4-byte Spill
	str	r8, [sp, #68]                   @ 4-byte Spill
	umull	r8, r12, r12, r4
	str	r1, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #32]                   @ 4-byte Spill
	umull	r1, r0, r2, r4
	str	r0, [sp, #28]                   @ 4-byte Spill
	umull	r0, lr, r10, r4
	str	r1, [sp, #24]                   @ 4-byte Spill
	umull	r10, r2, r9, r4
	adds	r1, r6, r10
	adcs	r1, r2, r0
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	adcs	r1, lr, r8
	str	r1, [sp, #40]                   @ 4-byte Spill
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	umlal	r6, r0, r9, r4
	ldr	lr, [sp, #48]                   @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adc	r1, r1, #0
	str	r1, [sp, #32]                   @ 4-byte Spill
	umull	r4, r1, r5, r3
	ldr	r3, [sp, #56]                   @ 4-byte Reload
	str	r1, [sp, #28]                   @ 4-byte Spill
	umull	r2, r1, r5, r3
	adds	r4, r6, r4
	str	r4, [r11, #4]
	str	r1, [sp, #24]                   @ 4-byte Spill
	umull	r10, r1, r5, lr
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	umull	r4, r2, r5, r1
	str	r2, [sp, #12]                   @ 4-byte Spill
	ldr	r2, [sp, #64]                   @ 4-byte Reload
	umull	r8, r6, r5, r2
	str	r6, [sp, #8]                    @ 4-byte Spill
	umull	r5, r6, r5, r9
	str	r6, [sp]                        @ 4-byte Spill
	adcs	r12, r0, r5
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r8, r5, r8
	adcs	r5, r0, r4
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r6, r4, r10
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	adcs	r4, r4, r0
	mov	r0, #0
	adc	r10, r0, #0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adds	r0, r12, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp]                        @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	umull	r5, r8, r7, r1
	adcs	r0, r6, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	umull	r1, r4, r7, r2
	adc	r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	umull	r3, r0, r7, r3
	mov	r10, lr
	str	r0, [sp, #16]                   @ 4-byte Spill
	umull	r12, r0, r7, lr
	str	r3, [sp, #12]                   @ 4-byte Spill
	ldr	r3, [sp, #68]                   @ 4-byte Reload
	umull	r6, lr, r7, r9
	str	r0, [sp, #8]                    @ 4-byte Spill
	umull	r2, r0, r7, r3
	adds	r6, r0, r6
	adcs	r6, lr, r1
	umlal	r0, r1, r7, r9
	adcs	r6, r4, r5
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	adcs	r12, r8, r12
	adcs	lr, r5, r4
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	adc	r8, r4, #0
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adds	r4, r2, r4
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	str	r4, [r11, #8]
	adcs	r0, r0, r2
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r12, [sp, #56]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	lr, [sp, #64]                   @ 4-byte Reload
	umull	r2, r1, r0, r12
	umull	r5, r4, r0, r9
	str	r2, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #16]                   @ 4-byte Spill
	umull	r2, r1, r0, r10
	umull	r8, r10, r0, r6
	str	r2, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #8]                    @ 4-byte Spill
	umull	r1, r7, r0, lr
	mov	r2, r0
	umull	r3, r0, r0, r3
	str	r3, [sp]                        @ 4-byte Spill
	adds	r5, r0, r5
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	adcs	r5, r4, r1
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	adcs	r7, r7, r8
	umlal	r0, r1, r2, r9
	adcs	r8, r10, r3
	ldr	r3, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	adcs	r5, r4, r3
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adc	r10, r3, #0
	ldr	r3, [sp]                        @ 4-byte Reload
	adds	r4, r3, r4
	str	r4, [r11, #12]
	adcs	r0, r0, r2
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [r0, #16]
	umull	r2, r0, r1, r12
	ldr	r12, [sp, #48]                  @ 4-byte Reload
	umull	r3, r8, r1, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	str	r2, [sp, #16]                   @ 4-byte Spill
	umull	r10, r0, r1, r12
	umull	r2, r5, r1, lr
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	umull	lr, r4, r1, r9
	umull	r6, r0, r1, r0
	adds	r7, r0, lr
	adcs	r7, r4, r2
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	adcs	r7, r5, r3
	ldr	r5, [sp, #16]                   @ 4-byte Reload
	adcs	r3, r8, r10
	umlal	r0, r2, r1, r9
	adcs	r5, r4, r5
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adc	lr, r4, #0
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adds	r4, r6, r4
	str	r4, [r11, #16]
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	adc	r0, lr, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r6, [r0, #20]
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	umull	r2, lr, r6, r9
	umull	r1, r0, r6, r0
	umull	r3, r10, r6, r12
	add	r12, r11, #32
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	str	r1, [sp, #52]                   @ 4-byte Spill
	umull	r5, r8, r6, r0
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	umull	r1, r4, r6, r0
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	umull	r7, r0, r6, r0
	adds	r2, r0, r2
	adcs	r2, lr, r1
	umlal	r0, r1, r6, r9
	adcs	r2, r4, r5
	adcs	r5, r8, r3
	ldr	r3, [sp, #52]                   @ 4-byte Reload
	adcs	r4, r10, r3
	ldr	r3, [sp, #56]                   @ 4-byte Reload
	adc	lr, r3, #0
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	adds	r7, r7, r3
	ldr	r3, [sp, #20]                   @ 4-byte Reload
	str	r7, [r11, #20]
	adcs	r0, r0, r3
	str	r0, [r11, #24]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [r11, #28]
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	ldr	r2, [sp, #36]                   @ 4-byte Reload
	adcs	r1, r5, r1
	adcs	r2, r4, r2
	adc	r3, lr, #0
	stm	r12, {r0, r1, r2, r3}
	add	sp, sp, #72
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end156:
	.size	mclb_mul6, .Lfunc_end156-mclb_mul6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr6                       @ -- Begin function mclb_sqr6
	.p2align	2
	.type	mclb_sqr6,%function
	.code	32                              @ @mclb_sqr6
mclb_sqr6:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #124
	mov	r2, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	r1, {r0, r9, lr}
	ldr	r7, [r1, #16]
	ldr	r6, [r1, #12]
	ldr	r3, [r1, #20]
	umull	r1, r4, r0, r0
	str	r3, [sp, #116]                  @ 4-byte Spill
	str	r6, [sp, #120]                  @ 4-byte Spill
	umull	r12, r6, r6, r9
	str	r7, [sp, #104]                  @ 4-byte Spill
	str	r1, [r2]
	umull	r11, r1, r3, r9
	str	r6, [sp, #68]                   @ 4-byte Spill
	str	r12, [sp, #64]                  @ 4-byte Spill
	umull	r2, r5, lr, r9
	str	r1, [sp, #112]                  @ 4-byte Spill
	str	r11, [sp, #96]                  @ 4-byte Spill
	umull	r3, r1, r9, r9
	str	r2, [sp, #28]                   @ 4-byte Spill
	str	r5, [sp, #44]                   @ 4-byte Spill
	umull	r10, r8, r7, r9
	str	r3, [sp, #92]                   @ 4-byte Spill
	str	r1, [sp, #108]                  @ 4-byte Spill
	umull	r3, r1, r9, r0
	str	r10, [sp, #84]                  @ 4-byte Spill
	str	r8, [sp, #88]                   @ 4-byte Spill
	str	r3, [sp, #100]                  @ 4-byte Spill
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	adds	r3, r1, r3
	ldr	r3, [sp, #108]                  @ 4-byte Reload
	adcs	r3, r3, r2
	adcs	r2, r5, r12
	str	r2, [sp, #72]                   @ 4-byte Spill
	adcs	r2, r6, r10
	str	r2, [sp, #52]                   @ 4-byte Spill
	adcs	r2, r8, r11
	str	r2, [sp, #48]                   @ 4-byte Spill
	ldr	r2, [sp, #112]                  @ 4-byte Reload
	umull	r8, r6, lr, r0
	adc	r2, r2, #0
	str	r2, [sp, #40]                   @ 4-byte Spill
	umull	r3, r12, r7, r0
	ldr	r2, [sp, #116]                  @ 4-byte Reload
	ldr	r7, [sp, #100]                  @ 4-byte Reload
	str	r8, [sp, #32]                   @ 4-byte Spill
	umull	r10, r2, r2, r0
	adds	r11, r4, r7
	adcs	r7, r1, r8
	str	r3, [sp, #80]                   @ 4-byte Spill
	umlal	r4, r8, r9, r0
	ldr	r11, [sp, #28]                  @ 4-byte Reload
	str	r2, [sp, #108]                  @ 4-byte Spill
	ldr	r2, [sp, #120]                  @ 4-byte Reload
	str	r10, [sp, #92]                  @ 4-byte Spill
	str	r12, [sp, #76]                  @ 4-byte Spill
	umull	r2, r5, r2, r0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r2, [sp, #60]                   @ 4-byte Spill
	adcs	r2, r6, r2
	str	r5, [sp, #56]                   @ 4-byte Spill
	adcs	r7, r5, r3
	ldr	r3, [sp, #108]                  @ 4-byte Reload
	adcs	r5, r12, r10
	ldr	r10, [sp, #36]                  @ 4-byte Reload
	adc	r12, r3, #0
	adds	r0, r0, r4
	str	r0, [r10, #4]
	mov	r0, r11
	umlal	r1, r0, r9, r9
	adcs	r1, r1, r8
	str	r1, [sp, #4]                    @ 4-byte Spill
	adcs	r0, r0, r2
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r8, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r0, r5
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	umull	r4, r5, r8, lr
	adcs	r0, r0, r12
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r5, [sp, #72]                   @ 4-byte Spill
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adds	r11, r6, r11
	str	r4, [sp, #100]                  @ 4-byte Spill
	umull	r3, r12, r0, lr
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	umull	r2, r1, r0, lr
	str	r3, [sp, #52]                   @ 4-byte Spill
	str	r12, [sp, #48]                  @ 4-byte Spill
	umull	r0, r7, lr, lr
	str	r1, [sp, #8]                    @ 4-byte Spill
	str	r7, [sp]                        @ 4-byte Spill
	ldr	r7, [sp, #44]                   @ 4-byte Reload
	adcs	r7, r7, r0
	umlal	r6, r0, lr, r9
	ldr	r7, [sp]                        @ 4-byte Reload
	adcs	r7, r7, r2
	str	r7, [sp, #44]                   @ 4-byte Spill
	adcs	r3, r1, r3
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	adcs	r11, r12, r4
	adc	r5, r5, #0
	ldr	r4, [sp, #56]                   @ 4-byte Reload
	adds	r7, r1, r7
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	str	r7, [r10, #8]
	adcs	r1, r6, r1
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	ldr	r6, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r3, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r5, #0
	str	r0, [sp, #16]                   @ 4-byte Spill
	umull	r0, r1, r8, r6
	adds	r8, r4, r7
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	umull	lr, r11, r6, r6
	adcs	r7, r7, r2
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	str	r1, [sp, #40]                   @ 4-byte Spill
	umull	r12, r5, r3, r6
	str	r0, [sp, #44]                   @ 4-byte Spill
	adcs	lr, r7, lr
	umlal	r4, r2, r6, r9
	mov	r6, r3
	adcs	r7, r11, r12
	str	r7, [sp, #64]                   @ 4-byte Spill
	adcs	r7, r5, r0
	adc	r8, r1, #0
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adds	r11, r0, r1
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r4, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	lr, r6
	ldr	r6, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r11, [r10, #12]
	adcs	r0, r7, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adds	r6, r2, r6
	ldr	r6, [sp, #88]                   @ 4-byte Reload
	umull	r7, r8, r0, r3
	adcs	r6, r6, r4
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	umull	r1, r3, r3, r3
	adcs	r12, r6, r12
	umlal	r2, r4, lr, r9
	adcs	r11, r5, r1
	adcs	r1, r3, r7
	ldr	r3, [sp, #80]                   @ 4-byte Reload
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	adc	r6, r8, #0
	adds	r5, r3, r5
	ldr	r3, [sp, #120]                  @ 4-byte Reload
	str	r5, [r10, #16]
	adcs	r5, r2, r3
	ldr	r2, [sp, #68]                   @ 4-byte Reload
	adcs	r2, r4, r2
	str	r2, [sp, #84]                   @ 4-byte Spill
	ldr	r2, [sp, #64]                   @ 4-byte Reload
	ldr	r4, [sp, #44]                   @ 4-byte Reload
	adcs	r2, r12, r2
	str	r2, [sp, #88]                   @ 4-byte Spill
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	mov	r12, r0
	adcs	r11, r11, r2
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	adcs	r1, r1, r2
	str	r1, [sp, #120]                  @ 4-byte Spill
	adc	r1, r6, #0
	str	r1, [sp, #104]                  @ 4-byte Spill
	ldr	r6, [sp, #96]                   @ 4-byte Reload
	umull	r2, r3, r0, r0
	ldr	r1, [sp, #108]                  @ 4-byte Reload
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adds	r6, r1, r6
	ldr	r6, [sp, #112]                  @ 4-byte Reload
	adcs	r6, r6, r0
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	adcs	r6, r6, r4
	ldr	r4, [sp, #40]                   @ 4-byte Reload
	adcs	lr, r4, r7
	adcs	r8, r8, r2
	ldr	r2, [sp, #92]                   @ 4-byte Reload
	adc	r4, r3, #0
	adds	r5, r2, r5
	str	r5, [r10, #20]
	mov	r5, r1
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	umlal	r5, r0, r12, r9
	adcs	r7, r5, r1
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	str	r7, [r10, #24]
	adcs	r3, r0, r1
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	str	r3, [r10, #28]
	adcs	r3, r6, r11
	adcs	r2, lr, r0
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	str	r3, [r10, #32]
	adcs	r0, r8, r0
	str	r2, [r10, #36]
	adc	r1, r4, #0
	str	r0, [r10, #40]
	str	r1, [r10, #44]
	add	sp, sp, #124
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end157:
	.size	mclb_sqr6, .Lfunc_end157-mclb_sqr6
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner224                @ -- Begin function mulUnit_inner224
	.p2align	2
	.type	mulUnit_inner224,%function
	.code	32                              @ @mulUnit_inner224
mulUnit_inner224:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r1, [r1, #24]
	umull	r1, r2, r1, r2
	adcs	r1, r6, r1
	str	r1, [r0, #24]
	adc	r1, r2, #0
	str	r1, [r0, #28]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end158:
	.size	mulUnit_inner224, .Lfunc_end158-mulUnit_inner224
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit7                   @ -- Begin function mclb_mulUnit7
	.p2align	2
	.type	mclb_mulUnit7,%function
	.code	32                              @ @mclb_mulUnit7
mclb_mulUnit7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, lr}
	sub	sp, sp, #32
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner224
	ldm	sp, {r1, r2, r3, r12, lr}
	ldr	r5, [sp, #20]
	ldr	r6, [sp, #24]
	ldr	r0, [sp, #28]
	stm	r4, {r1, r2, r3, r12, lr}
	str	r5, [r4, #20]
	str	r6, [r4, #24]
	add	sp, sp, #32
	pop	{r4, r5, r6, pc}
.Lfunc_end159:
	.size	mclb_mulUnit7, .Lfunc_end159-mclb_mulUnit7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd7                @ -- Begin function mclb_mulUnitAdd7
	.p2align	2
	.type	mclb_mulUnitAdd7,%function
	.code	32                              @ @mclb_mulUnitAdd7
mclb_mulUnitAdd7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #24
	ldm	r1, {r3, r8, lr}
	add	r12, r0, #16
	ldm	r0, {r6, r11}
	umull	r3, r7, r3, r2
	ldr	r5, [r0, #12]
	ldr	r4, [r1, #12]
	str	r5, [sp]                        @ 4-byte Spill
	umull	lr, r10, lr, r2
	str	r7, [sp, #16]                   @ 4-byte Spill
	adds	r3, r3, r6
	ldr	r7, [r0, #8]
	str	r3, [r0]
	ldr	r3, [r1, #24]
	ldr	r6, [r1, #20]
	ldr	r1, [r1, #16]
	umull	r9, r3, r3, r2
	umull	r5, r1, r1, r2
	str	r3, [sp, #20]                   @ 4-byte Spill
	umull	r6, r3, r6, r2
	str	r1, [sp, #8]                    @ 4-byte Spill
	umull	r4, r1, r4, r2
	str	r3, [sp, #12]                   @ 4-byte Spill
	umull	r2, r8, r8, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldm	r12, {r1, r3, r12}
	adcs	r2, r2, r11
	adcs	lr, lr, r7
	ldr	r7, [sp]                        @ 4-byte Reload
	adcs	r4, r4, r7
	mov	r7, #0
	adcs	r1, r5, r1
	adcs	r3, r6, r3
	adcs	r6, r9, r12
	adc	r5, r7, #0
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adds	r2, r2, r7
	str	r2, [r0, #4]
	adcs	r2, lr, r8
	str	r2, [r0, #8]
	adcs	r2, r4, r10
	str	r2, [r0, #12]
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r1, r2
	str	r1, [r0, #16]
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r1, r6, r1
	str	r1, [r0, #24]
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adc	r0, r5, r0
	add	sp, sp, #24
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end160:
	.size	mclb_mulUnitAdd7, .Lfunc_end160-mclb_mulUnitAdd7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul7                       @ -- Begin function mclb_mul7
	.p2align	2
	.type	mclb_mul7,%function
	.code	32                              @ @mclb_mul7
mclb_mul7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #252
	mov	r8, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #216
	mov	r11, r1
	bl	mulUnit_inner224
	ldr	r0, [sp, #244]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #240]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #236]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #232]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r1, [sp, #224]
	ldr	r0, [sp, #216]
	ldr	r10, [sp, #220]
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r1, r11
	ldr	r2, [r8, #4]
	ldr	r9, [sp, #228]
	str	r0, [r4]
	add	r0, sp, #184
	bl	mulUnit_inner224
	ldr	r7, [sp, #184]
	ldr	r12, [sp, #212]
	adds	r7, r7, r10
	ldr	r1, [sp, #208]
	ldr	r2, [sp, #204]
	ldr	r3, [sp, #200]
	ldr	r5, [sp, #188]
	ldr	r6, [sp, #192]
	ldr	r0, [sp, #196]
	str	r7, [r4, #4]
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	adcs	r10, r5, r7
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r9, r6, r9
	adcs	r0, r0, r7
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r8, #8]
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #152
	mov	r1, r11
	bl	mulUnit_inner224
	ldr	r6, [sp, #152]
	ldr	r7, [sp, #156]
	adds	r6, r6, r10
	ldr	r5, [sp, #160]
	adcs	r9, r7, r9
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	ldr	r12, [sp, #180]
	adcs	r7, r5, r7
	ldr	r1, [sp, #176]
	ldr	r2, [sp, #172]
	ldr	r3, [sp, #168]
	ldr	r0, [sp, #164]
	str	r7, [sp, #8]                    @ 4-byte Spill
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	str	r6, [r4, #8]
	adcs	r0, r0, r7
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r2, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [r8, #12]
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #120
	mov	r1, r11
	bl	mulUnit_inner224
	ldr	r5, [sp, #120]
	ldr	r12, [sp, #148]
	adds	r5, r5, r9
	ldr	r1, [sp, #144]
	ldr	r2, [sp, #140]
	ldr	r3, [sp, #136]
	ldr	r7, [sp, #124]
	ldr	r6, [sp, #128]
	ldr	r0, [sp, #132]
	str	r5, [r4, #12]
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	adcs	r9, r7, r5
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	adcs	r7, r6, r7
	str	r7, [sp, #12]                   @ 4-byte Spill
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r0, r3, r10
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r2, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [r8, #16]
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #88
	mov	r1, r11
	bl	mulUnit_inner224
	ldr	r6, [sp, #88]
	ldr	r12, [sp, #116]
	adds	r6, r6, r9
	ldr	r1, [sp, #112]
	ldr	r2, [sp, #108]
	ldr	r3, [sp, #104]
	ldr	r7, [sp, #92]
	ldr	r5, [sp, #96]
	ldr	r0, [sp, #100]
	str	r6, [r4, #16]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	r9, r7, r6
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adcs	r7, r5, r7
	str	r7, [sp, #16]                   @ 4-byte Spill
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #12]                   @ 4-byte Spill
	adcs	r0, r3, r10
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r2, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [r8, #20]
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #56
	mov	r1, r11
	bl	mulUnit_inner224
	ldr	r5, [sp, #56]
	ldr	r12, [sp, #84]
	adds	r5, r5, r9
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #76]
	ldr	r3, [sp, #72]
	ldr	r7, [sp, #60]
	ldr	r6, [sp, #64]
	ldr	r0, [sp, #68]
	str	r5, [r4, #20]
	ldr	r5, [sp, #16]                   @ 4-byte Reload
	adcs	r7, r7, r5
	str	r7, [sp, #16]                   @ 4-byte Spill
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	adcs	r7, r6, r7
	str	r7, [sp, #12]                   @ 4-byte Spill
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r9, r3, r10
	adcs	r10, r2, r0
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [r8, #24]
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #24
	mov	r1, r11
	bl	mulUnit_inner224
	add	r7, sp, #24
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #36]
	ldm	r7, {r5, r6, r7}
	adds	r5, r5, r1
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	ldr	r3, [sp, #40]
	adcs	r6, r6, r1
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [sp, #44]
	adcs	r7, r7, r1
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r0, r9
	ldr	lr, [sp, #48]
	adcs	r3, r3, r10
	ldr	r12, [sp, #52]
	adcs	r2, r2, r1
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	r0, [r4, #36]
	adcs	r1, lr, r1
	add	lr, r4, #24
	adc	r12, r12, #0
	stm	lr, {r5, r6, r7}
	str	r3, [r4, #40]
	str	r2, [r4, #44]
	str	r1, [r4, #48]
	str	r12, [r4, #52]
	add	sp, sp, #252
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end161:
	.size	mclb_mul7, .Lfunc_end161-mclb_mul7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr7                       @ -- Begin function mclb_sqr7
	.p2align	2
	.type	mclb_sqr7,%function
	.code	32                              @ @mclb_sqr7
mclb_sqr7:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #252
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #216
	mov	r5, r1
	bl	mulUnit_inner224
	ldr	r0, [sp, #244]
	mov	r1, r5
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #240]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #236]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #216]
	ldr	r2, [r5, #4]
	ldr	r11, [sp, #232]
	ldr	r10, [sp, #220]
	ldr	r9, [sp, #224]
	ldr	r8, [sp, #228]
	str	r0, [r4]
	add	r0, sp, #184
	bl	mulUnit_inner224
	ldr	r7, [sp, #184]
	add	r3, sp, #192
	ldr	r6, [sp, #188]
	adds	r7, r7, r10
	ldm	r3, {r0, r1, r3}
	adcs	r9, r6, r9
	adcs	r0, r0, r8
	ldr	r12, [sp, #212]
	ldr	lr, [sp, #208]
	adcs	r8, r1, r11
	ldr	r2, [sp, #204]
	mov	r1, r5
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r7, [r4, #4]
	adcs	r0, r3, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r10, r2, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r11, lr, r0
	adc	r0, r12, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #152
	bl	mulUnit_inner224
	add	lr, sp, #152
	ldr	r7, [sp, #180]
	ldr	r6, [sp, #176]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r9
	str	r0, [r4, #8]
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r9, r1, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r8, r2, r8
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r10, r12, r10
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r11, lr, r11
	mov	r1, r5
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, sp, #120
	bl	mulUnit_inner224
	ldr	r6, [sp, #120]
	add	r3, sp, #128
	ldr	r7, [sp, #124]
	adds	r6, r6, r9
	ldr	r12, [sp, #148]
	ldr	lr, [sp, #144]
	adcs	r8, r7, r8
	ldr	r2, [sp, #140]
	ldm	r3, {r0, r1, r3}
	str	r6, [r4, #12]
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r0, r1, r10
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r9, r3, r11
	mov	r1, r5
	adcs	r10, r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r11, lr, r0
	adc	r0, r12, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #88
	bl	mulUnit_inner224
	add	lr, sp, #88
	ldr	r7, [sp, #116]
	ldr	r6, [sp, #112]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r8
	str	r0, [r4, #16]
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r8, r1, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r9, r3, r9
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r12, r10
	ldr	r2, [r5, #20]
	adcs	r11, lr, r11
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, sp, #56
	bl	mulUnit_inner224
	ldr	r6, [sp, #56]
	add	r3, sp, #64
	ldr	r12, [sp, #84]
	adds	r6, r6, r8
	ldr	lr, [sp, #80]
	ldr	r2, [sp, #76]
	ldr	r7, [sp, #60]
	ldm	r3, {r0, r1, r3}
	str	r6, [r4, #20]
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #16]                   @ 4-byte Spill
	adcs	r0, r0, r9
	str	r0, [sp, #8]                    @ 4-byte Spill
	adcs	r6, r1, r10
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r9, r3, r11
	mov	r1, r5
	adcs	r10, r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [r5, #24]
	adcs	r11, lr, r0
	adc	r0, r12, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #24
	bl	mulUnit_inner224
	add	lr, sp, #28
	ldr	r5, [sp, #24]
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r5, r5, r7
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	ldr	r8, [sp, #52]
	adcs	r0, r0, r7
	str	r5, [r4, #24]
	adcs	r1, r1, r6
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	adcs	r2, r2, r9
	adcs	r3, r3, r10
	adcs	r7, r12, r11
	adcs	r12, lr, r6
	add	lr, r4, #28
	adc	r6, r8, #0
	stm	lr, {r0, r1, r2, r3, r7, r12}
	str	r6, [r4, #52]
	add	sp, sp, #252
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end162:
	.size	mclb_sqr7, .Lfunc_end162-mclb_sqr7
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner256                @ -- Begin function mulUnit_inner256
	.p2align	2
	.type	mulUnit_inner256,%function
	.code	32                              @ @mulUnit_inner256
mulUnit_inner256:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r1, [r1, #28]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #28]
	adc	r1, r2, #0
	str	r1, [r0, #32]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end163:
	.size	mulUnit_inner256, .Lfunc_end163-mulUnit_inner256
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit8                   @ -- Begin function mclb_mulUnit8
	.p2align	2
	.type	mclb_mulUnit8,%function
	.code	32                              @ @mclb_mulUnit8
mclb_mulUnit8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r11, lr}
	sub	sp, sp, #40
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner256
	add	r7, sp, #20
	ldm	sp, {r1, r2, r3, r12, lr}
	ldm	r7, {r5, r6, r7}
	ldr	r0, [sp, #32]
	stm	r4, {r1, r2, r3, r12, lr}
	add	r1, r4, #20
	stm	r1, {r5, r6, r7}
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r11, pc}
.Lfunc_end164:
	.size	mclb_mulUnit8, .Lfunc_end164-mclb_mulUnit8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd8                @ -- Begin function mclb_mulUnitAdd8
	.p2align	2
	.type	mclb_mulUnitAdd8,%function
	.code	32                              @ @mclb_mulUnitAdd8
mclb_mulUnitAdd8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #44
	ldm	r1, {r3, lr}
	ldr	r4, [r1, #8]
	umull	r3, r7, r3, r2
	ldr	r5, [r1, #12]
	ldr	r12, [r1, #20]
	str	r7, [sp, #32]                   @ 4-byte Spill
	ldm	r0, {r6, r7}
	str	r7, [sp, #16]                   @ 4-byte Spill
	adds	r3, r3, r6
	ldr	r7, [r0, #8]
	str	r7, [sp, #12]                   @ 4-byte Spill
	ldr	r7, [r0, #12]
	str	r3, [r0]
	ldr	r3, [r1, #28]
	str	r7, [sp, #8]                    @ 4-byte Spill
	ldr	r11, [sp, #16]                  @ 4-byte Reload
	umull	r7, r3, r3, r2
	str	r3, [sp, #40]                   @ 4-byte Spill
	ldr	r3, [r1, #24]
	ldr	r1, [r1, #16]
	str	r7, [sp, #4]                    @ 4-byte Spill
	umull	r10, r3, r3, r2
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	umull	r6, r1, r1, r2
	str	r3, [sp, #36]                   @ 4-byte Spill
	umull	r8, r3, r12, r2
	str	r1, [sp, #24]                   @ 4-byte Spill
	umull	r5, r1, r5, r2
	str	r3, [sp, #28]                   @ 4-byte Spill
	str	r1, [sp, #20]                   @ 4-byte Spill
	umull	r4, r1, r4, r2
	umull	r2, r9, lr, r2
	add	lr, r0, #16
	str	r1, [sp]                        @ 4-byte Spill
	ldm	lr, {r1, r3, r12, lr}
	adcs	r2, r2, r11
	adcs	r4, r4, r7
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r5, r5, r7
	adcs	r1, r6, r1
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	adcs	r3, r8, r3
	adcs	r7, r10, r12
	adcs	lr, r6, lr
	mov	r6, #0
	adc	r12, r6, #0
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	adds	r2, r2, r6
	str	r2, [r0, #4]
	adcs	r2, r4, r9
	str	r2, [r0, #8]
	ldr	r2, [sp]                        @ 4-byte Reload
	adcs	r2, r5, r2
	str	r2, [r0, #12]
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	adcs	r1, r1, r2
	str	r1, [r0, #16]
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r1, r7, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r1, lr, r1
	str	r1, [r0, #28]
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adc	r0, r12, r0
	add	sp, sp, #44
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end165:
	.size	mclb_mulUnitAdd8, .Lfunc_end165-mclb_mulUnitAdd8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul8                       @ -- Begin function mclb_mul8
	.p2align	2
	.type	mclb_mul8,%function
	.code	32                              @ @mclb_mul8
mclb_mul8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #356
	mov	r9, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #312
	mov	r11, r1
	bl	mulUnit_inner256
	ldr	r0, [sp, #344]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #340]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #336]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #332]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #328]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r1, [sp, #320]
	ldr	r0, [sp, #312]
	ldr	r8, [sp, #316]
	str	r1, [sp, #8]                    @ 4-byte Spill
	mov	r1, r11
	ldr	r2, [r9, #4]
	ldr	r10, [sp, #324]
	str	r0, [r4]
	add	r0, sp, #272
	bl	mulUnit_inner256
	ldr	r5, [sp, #272]
	add	r7, sp, #280
	ldr	r12, [sp, #304]
	adds	r5, r5, r8
	ldr	lr, [sp, #300]
	ldr	r2, [sp, #296]
	ldr	r3, [sp, #292]
	ldr	r6, [sp, #276]
	ldm	r7, {r0, r1, r7}
	str	r5, [r4, #4]
	ldr	r5, [sp, #8]                    @ 4-byte Reload
	adcs	r8, r6, r5
	adcs	r0, r0, r10
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r11
	adcs	r0, r7, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r3, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [r9, #8]
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #232
	bl	mulUnit_inner256
	ldr	r1, [sp, #232]
	add	r7, sp, #256
	add	lr, sp, #236
	adds	r1, r1, r8
	ldm	r7, {r5, r6, r7}
	ldm	lr, {r0, r2, r3, r12, lr}
	str	r1, [r4, #8]
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r8, r0, r1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r11
	adcs	r0, r2, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [r9, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r10, r12, r10
	adcs	r0, lr, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #192
	bl	mulUnit_inner256
	ldr	r6, [sp, #192]
	add	r5, sp, #200
	ldr	r12, [sp, #224]
	adds	r6, r6, r8
	ldr	lr, [sp, #220]
	ldr	r2, [sp, #216]
	ldr	r3, [sp, #212]
	ldr	r7, [sp, #196]
	ldm	r5, {r0, r1, r5}
	str	r6, [r4, #12]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	r8, r7, r6
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r0, r1, r10
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r11
	adcs	r0, r5, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r10, r3, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r9, #16]
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #152
	bl	mulUnit_inner256
	ldr	r1, [sp, #152]
	add	r7, sp, #176
	add	lr, sp, #156
	adds	r1, r1, r8
	ldm	r7, {r5, r6, r7}
	ldm	lr, {r0, r2, r3, r12, lr}
	str	r1, [r4, #16]
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r8, r0, r1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r11
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [r9, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r10, r12, r10
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #112
	bl	mulUnit_inner256
	ldr	r6, [sp, #112]
	add	r5, sp, #120
	ldr	r12, [sp, #144]
	adds	r6, r6, r8
	ldr	lr, [sp, #140]
	ldr	r2, [sp, #136]
	ldr	r3, [sp, #132]
	ldr	r7, [sp, #116]
	ldm	r5, {r0, r1, r5}
	str	r6, [r4, #20]
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r8, r7, r6
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r10, r1, r10
	mov	r1, r11
	adcs	r0, r5, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r9, #24]
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r12, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #72
	bl	mulUnit_inner256
	ldr	r1, [sp, #72]
	add	r7, sp, #96
	add	lr, sp, #76
	adds	r1, r1, r8
	ldm	r7, {r5, r6, r7}
	ldm	lr, {r0, r2, r3, r12, lr}
	str	r1, [r4, #24]
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r8, r0, r1
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r10, r2, r10
	ldr	r2, [r9, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, r11
	adcs	r0, r12, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #32
	bl	mulUnit_inner256
	add	r7, sp, #32
	ldr	r2, [sp, #28]                   @ 4-byte Reload
	add	lr, sp, #48
	ldr	r1, [sp, #44]
	ldm	r7, {r5, r6, r7}
	adds	r5, r5, r8
	ldm	lr, {r0, r3, r9, lr}
	adcs	r6, r6, r10
	adcs	r7, r7, r2
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	ldr	r12, [sp, #64]
	adcs	r1, r1, r2
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	str	r1, [r4, #40]
	adcs	r8, r0, r2
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r3, r3, r2
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	str	r8, [r4, #44]
	adcs	r2, r9, r2
	str	r3, [r4, #48]
	adcs	lr, lr, r0
	add	r0, r4, #28
	stm	r0, {r5, r6, r7}
	adc	r0, r12, #0
	str	r2, [r4, #52]
	str	lr, [r4, #56]
	str	r0, [r4, #60]
	add	sp, sp, #356
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end166:
	.size	mclb_mul8, .Lfunc_end166-mclb_mul8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr8                       @ -- Begin function mclb_sqr8
	.p2align	2
	.type	mclb_sqr8,%function
	.code	32                              @ @mclb_sqr8
mclb_sqr8:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #348
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #304
	mov	r5, r1
	bl	mulUnit_inner256
	ldr	r0, [sp, #336]
	mov	r1, r5
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #332]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #328]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #324]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #320]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #304]
	ldr	r2, [r5, #4]
	ldr	r11, [sp, #308]
	ldr	r10, [sp, #312]
	ldr	r9, [sp, #316]
	str	r0, [r4]
	add	r0, sp, #264
	bl	mulUnit_inner256
	add	r6, sp, #268
	ldr	r7, [sp, #264]
	add	lr, sp, #284
	ldr	r8, [sp, #296]
	ldm	r6, {r0, r1, r2, r6}
	adds	r7, r7, r11
	adcs	r10, r0, r10
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r9, r1, r9
	ldm	lr, {r3, r12, lr}
	adcs	r0, r2, r0
	str	r0, [sp, #4]                    @ 4-byte Spill
	mov	r1, r5
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r6, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r7, [r4, #4]
	adcs	r11, r3, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, sp, #224
	bl	mulUnit_inner256
	add	lr, sp, #228
	ldr	r1, [sp, #224]
	add	r8, sp, #248
	ldm	lr, {r0, r2, r3, r12, lr}
	adds	r1, r1, r10
	adcs	r9, r0, r9
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adcs	r10, r2, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r11, r12, r11
	str	r1, [r4, #8]
	mov	r1, r5
	adcs	r0, lr, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #184
	bl	mulUnit_inner256
	add	r6, sp, #188
	ldr	r7, [sp, #184]
	add	lr, sp, #204
	ldr	r8, [sp, #216]
	ldm	r6, {r0, r1, r2, r6}
	adds	r7, r7, r9
	adcs	r9, r0, r10
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldm	lr, {r3, r12, lr}
	adcs	r0, r1, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adcs	r10, r2, r11
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r5
	ldr	r2, [r5, #16]
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	str	r7, [r4, #12]
	adcs	r11, r3, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #144
	bl	mulUnit_inner256
	ldr	r1, [sp, #144]
	add	r8, sp, #168
	add	lr, sp, #148
	adds	r1, r1, r9
	ldm	r8, {r6, r7, r8}
	ldm	lr, {r0, r2, r3, r12, lr}
	str	r1, [r4, #16]
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r9, r0, r1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r10, r2, r10
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r11, r12, r11
	mov	r1, r5
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #104
	bl	mulUnit_inner256
	add	r6, sp, #108
	ldr	r7, [sp, #104]
	add	lr, sp, #124
	ldr	r8, [sp, #136]
	ldm	r6, {r0, r1, r2, r6}
	adds	r7, r7, r9
	adcs	r9, r0, r10
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldm	lr, {r3, r12, lr}
	adcs	r0, r1, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	adcs	r10, r2, r11
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, r5
	ldr	r2, [r5, #24]
	adcs	r11, r6, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r7, [r4, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r8, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #64
	bl	mulUnit_inner256
	ldr	r1, [sp, #64]
	add	r8, sp, #88
	add	lr, sp, #68
	adds	r1, r1, r9
	ldm	r8, {r6, r7, r8}
	ldm	lr, {r0, r2, r3, r12, lr}
	str	r1, [r4, #24]
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r9, r0, r1
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r2, r10
	ldr	r2, [r5, #28]
	adcs	r11, r3, r11
	mov	r1, r5
	adcs	r0, r12, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #24
	adc	r8, r8, #0
	bl	mulUnit_inner256
	ldr	r0, [sp, #56]
	add	r7, sp, #24
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	lr, sp, #44
	ldm	r7, {r0, r6, r7}
	adds	r0, r0, r9
	ldr	r1, [sp, #36]
	adcs	r6, r6, r10
	ldr	r2, [sp, #20]                   @ 4-byte Reload
	adcs	r7, r7, r11
	ldr	r5, [sp, #40]
	adcs	r1, r1, r2
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	ldm	lr, {r3, r12, lr}
	adcs	r5, r5, r2
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	str	r1, [r4, #40]
	adcs	r3, r3, r2
	ldr	r2, [sp, #8]                    @ 4-byte Reload
	str	r5, [r4, #44]
	adcs	r2, r12, r2
	add	r12, r4, #28
	stm	r12, {r0, r6, r7}
	adcs	lr, lr, r8
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r3, [r4, #48]
	adc	r0, r0, #0
	str	r2, [r4, #52]
	str	lr, [r4, #56]
	str	r0, [r4, #60]
	add	sp, sp, #348
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end167:
	.size	mclb_sqr8, .Lfunc_end167-mclb_sqr8
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner288                @ -- Begin function mulUnit_inner288
	.p2align	2
	.type	mulUnit_inner288,%function
	.code	32                              @ @mulUnit_inner288
mulUnit_inner288:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r1, [r1, #32]
	umull	r1, r2, r1, r2
	adcs	r4, r6, r1
	adc	r5, r2, #0
	strd	r4, r5, [r0, #32]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end168:
	.size	mulUnit_inner288, .Lfunc_end168-mulUnit_inner288
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit9                   @ -- Begin function mclb_mulUnit9
	.p2align	2
	.type	mclb_mulUnit9,%function
	.code	32                              @ @mclb_mulUnit9
mclb_mulUnit9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner288
	add	r7, sp, #20
	ldmib	sp, {r2, r3, r12, lr}
	ldm	r7, {r5, r6, r7}
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #36]
	ldr	r8, [sp]
	str	r1, [r4, #32]
	add	r1, r4, #20
	str	r8, [r4]
	stmib	r4, {r2, r3, r12, lr}
	stm	r1, {r5, r6, r7}
	add	sp, sp, #40
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end169:
	.size	mclb_mulUnit9, .Lfunc_end169-mclb_mulUnit9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd9                @ -- Begin function mclb_mulUnitAdd9
	.p2align	2
	.type	mclb_mulUnitAdd9,%function
	.code	32                              @ @mclb_mulUnitAdd9
mclb_mulUnitAdd9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #56
	ldm	r1, {r3, r12}
	add	lr, r0, #16
	ldr	r6, [r1, #8]
	umull	r4, r3, r3, r2
	ldr	r7, [r1, #12]
	str	r3, [sp, #44]                   @ 4-byte Spill
	ldm	r0, {r3, r5}
	str	r5, [sp, #24]                   @ 4-byte Spill
	adds	r3, r4, r3
	ldr	r5, [r0, #8]
	str	r5, [sp, #20]                   @ 4-byte Spill
	ldr	r5, [r0, #12]
	str	r3, [r0]
	ldr	r3, [r1, #32]
	str	r5, [sp, #16]                   @ 4-byte Spill
	ldr	r4, [r1, #28]
	umull	r5, r3, r3, r2
	ldr	r11, [sp, #24]                  @ 4-byte Reload
	str	r5, [sp, #28]                   @ 4-byte Spill
	str	r3, [sp, #52]                   @ 4-byte Spill
	umull	r5, r3, r4, r2
	ldr	r4, [r1, #24]
	str	r3, [sp, #48]                   @ 4-byte Spill
	umull	r10, r3, r4, r2
	ldr	r4, [r1, #20]
	ldr	r1, [r1, #16]
	str	r5, [sp, #8]                    @ 4-byte Spill
	str	r3, [sp, #40]                   @ 4-byte Spill
	umull	r9, r3, r4, r2
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	ldr	r5, [r0, #32]
	umull	r8, r1, r1, r2
	str	r3, [sp, #36]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
	umull	r7, r1, r7, r2
	str	r1, [sp, #12]                   @ 4-byte Spill
	umull	r6, r1, r6, r2
	str	r1, [sp, #4]                    @ 4-byte Spill
	umull	r2, r1, r12, r2
	str	r1, [sp]                        @ 4-byte Spill
	adcs	r2, r2, r11
	ldm	lr, {r1, r3, r12, lr}
	adcs	r6, r6, r4
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	adcs	r7, r7, r4
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	adcs	r1, r8, r1
	adcs	r3, r9, r3
	adcs	r10, r10, r12
	adcs	r12, r4, lr
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	adcs	r8, r4, r5
	mov	r5, #0
	adc	lr, r5, #0
	ldr	r5, [sp, #44]                   @ 4-byte Reload
	adds	r2, r2, r5
	str	r2, [r0, #4]
	ldr	r2, [sp]                        @ 4-byte Reload
	adcs	r2, r6, r2
	str	r2, [r0, #8]
	ldr	r2, [sp, #4]                    @ 4-byte Reload
	adcs	r2, r7, r2
	str	r2, [r0, #12]
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	adcs	r1, r1, r2
	str	r1, [r0, #16]
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r1, r10, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r1, r8, r1
	str	r1, [r0, #32]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adc	r0, lr, r0
	add	sp, sp, #56
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end170:
	.size	mclb_mulUnitAdd9, .Lfunc_end170-mclb_mulUnitAdd9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul9                       @ -- Begin function mclb_mul9
	.p2align	2
	.type	mclb_mul9,%function
	.code	32                              @ @mclb_mul9
mclb_mul9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #412
	mov	r3, r2
	ldr	r2, [r2]
	mov	r8, r0
	add	r0, sp, #368
	mov	r5, r3
	str	r3, [sp, #40]                   @ 4-byte Spill
	mov	r4, r1
	str	r1, [sp, #44]                   @ 4-byte Spill
	bl	mulUnit_inner288
	ldr	r0, [sp, #404]
	add	r11, sp, #368
	str	r0, [sp, #36]                   @ 4-byte Spill
	mov	r1, r4
	ldr	r0, [sp, #400]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #396]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #392]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #388]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #384]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldm	r11, {r0, r9, r10, r11}
	ldr	r2, [r5, #4]
	str	r0, [r8]
	add	r0, sp, #328
	bl	mulUnit_inner288
	add	r7, sp, #332
	ldr	r6, [sp, #328]
	add	lr, sp, #352
	ldr	r4, [sp, #364]
	ldm	r7, {r0, r1, r2, r5, r7}
	adds	r6, r6, r9
	adcs	r0, r0, r10
	ldm	lr, {r3, r12, lr}
	str	r0, [sp, #8]                    @ 4-byte Spill
	adcs	r0, r1, r11
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r9, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r9, #8]
	adcs	r0, r5, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	str	r6, [r8, #4]
	adcs	r0, r7, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	adc	r0, r4, #0
	ldr	r4, [sp, #44]                   @ 4-byte Reload
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r0, sp, #288
	mov	r1, r4
	bl	mulUnit_inner288
	add	lr, sp, #288
	ldr	r11, [sp, #8]                   @ 4-byte Reload
	add	r10, sp, #312
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r11
	ldm	r10, {r5, r6, r7, r10}
	str	r0, [r8, #8]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r11, r1, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r9, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #248
	mov	r10, r4
	bl	mulUnit_inner288
	ldr	r7, [sp, #248]
	add	lr, sp, #272
	add	r6, sp, #252
	ldr	r4, [sp, #284]
	adds	r7, r7, r11
	ldm	lr, {r3, r12, lr}
	ldr	r5, [sp, #268]
	ldm	r6, {r0, r1, r2, r6}
	str	r7, [r8, #12]
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adcs	r11, r0, r7
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r10
	adcs	r0, r2, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [r9, #16]
	adcs	r0, r6, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r4, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #208
	mov	r4, r10
	bl	mulUnit_inner288
	add	lr, sp, #208
	add	r10, sp, #232
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r11
	ldm	r10, {r5, r6, r7, r10}
	str	r0, [r8, #16]
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r11, r1, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r2, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [r9, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #168
	mov	r10, r4
	bl	mulUnit_inner288
	ldr	r7, [sp, #168]
	add	lr, sp, #192
	add	r6, sp, #172
	ldr	r4, [sp, #204]
	adds	r7, r7, r11
	ldm	lr, {r3, r12, lr}
	ldr	r5, [sp, #188]
	ldm	r6, {r0, r1, r2, r6}
	str	r7, [r8, #20]
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	adcs	r11, r0, r7
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r10
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [r9, #24]
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r5, r9
	adcs	r0, r3, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r4, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #128
	mov	r4, r10
	bl	mulUnit_inner288
	add	lr, sp, #128
	add	r10, sp, #152
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r11
	ldm	r10, {r6, r7, r9, r10}
	str	r0, [r8, #24]
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r11, r1, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r0, sp, #88
	bl	mulUnit_inner288
	ldr	r7, [sp, #88]
	add	lr, sp, #112
	add	r6, sp, #92
	ldr	r4, [sp, #124]
	adds	r7, r7, r11
	ldm	lr, {r3, r12, lr}
	ldr	r5, [sp, #108]
	ldm	r6, {r0, r1, r2, r6}
	str	r7, [r8, #28]
	ldr	r7, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r9, r1, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r10, r2, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r11, r3, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	adc	r0, r4, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [r0, #32]
	add	r0, sp, #48
	bl	mulUnit_inner288
	ldr	r0, [sp, #84]
	add	lr, sp, #48
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r7, sp, #72
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	ldm	r7, {r5, r6, r7}
	adds	r0, r0, r4
	adcs	r1, r1, r9
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	adcs	r2, r2, r10
	adcs	r3, r3, r4
	ldr	r4, [sp, #24]                   @ 4-byte Reload
	adcs	r12, r12, r4
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adcs	lr, lr, r11
	adcs	r5, r5, r4
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	str	r5, [r8, #56]
	adcs	r6, r6, r4
	add	r4, r8, #32
	stm	r4, {r0, r1, r2, r3, r12, lr}
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r6, [r8, #60]
	adc	r1, r1, #0
	str	r0, [r8, #64]
	str	r1, [r8, #68]
	add	sp, sp, #412
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end171:
	.size	mclb_mul9, .Lfunc_end171-mclb_mul9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr9                       @ -- Begin function mclb_sqr9
	.p2align	2
	.type	mclb_sqr9,%function
	.code	32                              @ @mclb_sqr9
mclb_sqr9:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #396
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #352
	mov	r5, r1
	bl	mulUnit_inner288
	ldr	r0, [sp, #388]
	add	r11, sp, #352
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #384]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #380]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #376]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #372]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #368]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldm	r11, {r0, r10, r11}
	ldr	r2, [r5, #4]
	ldr	r1, [sp, #364]
	str	r0, [r4]
	add	r0, sp, #312
	str	r1, [sp, #4]                    @ 4-byte Spill
	mov	r1, r5
	bl	mulUnit_inner288
	add	r7, sp, #312
	add	lr, sp, #332
	ldr	r9, [sp, #348]
	ldm	r7, {r0, r1, r2, r3, r7}
	adds	r0, r0, r10
	ldr	r8, [sp, #344]
	ldm	lr, {r6, r12, lr}
	adcs	r10, r1, r11
	mov	r1, r5
	str	r0, [r4, #4]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #272
	bl	mulUnit_inner288
	add	lr, sp, #272
	add	r9, sp, #296
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r10
	ldm	r9, {r6, r7, r8, r9}
	adcs	r10, r1, r11
	str	r0, [r4, #8]
	mov	r1, r5
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #232
	bl	mulUnit_inner288
	add	r7, sp, #232
	add	lr, sp, #252
	ldr	r9, [sp, #268]
	ldm	r7, {r0, r1, r2, r3, r7}
	adds	r0, r0, r10
	ldr	r8, [sp, #264]
	ldm	lr, {r6, r12, lr}
	adcs	r10, r1, r11
	mov	r1, r5
	str	r0, [r4, #12]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #192
	bl	mulUnit_inner288
	add	lr, sp, #192
	add	r9, sp, #216
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r10
	ldm	r9, {r6, r7, r8, r9}
	adcs	r10, r1, r11
	str	r0, [r4, #16]
	mov	r1, r5
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #152
	bl	mulUnit_inner288
	add	r7, sp, #152
	add	lr, sp, #172
	ldr	r9, [sp, #188]
	ldm	r7, {r0, r1, r2, r3, r7}
	adds	r0, r0, r10
	ldr	r8, [sp, #184]
	ldm	lr, {r6, r12, lr}
	adcs	r10, r1, r11
	mov	r1, r5
	str	r0, [r4, #20]
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [r5, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #112
	bl	mulUnit_inner288
	add	lr, sp, #112
	add	r9, sp, #136
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r10
	ldm	r9, {r6, r7, r8, r9}
	adcs	r10, r1, r11
	str	r0, [r4, #24]
	mov	r1, r5
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r0, sp, #72
	bl	mulUnit_inner288
	add	r7, sp, #72
	add	lr, sp, #92
	ldr	r9, [sp, #108]
	ldm	r7, {r0, r1, r2, r3, r7}
	adds	r0, r0, r10
	ldr	r8, [sp, #104]
	ldm	lr, {r6, r12, lr}
	adcs	r10, r1, r11
	mov	r1, r5
	str	r0, [r4, #28]
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r11, r2, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #4]                    @ 4-byte Spill
	adc	r0, r9, #0
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r0, sp, #32
	bl	mulUnit_inner288
	add	r12, sp, #36
	ldr	r1, [sp, #32]
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	add	r9, sp, #60
	ldm	r12, {r0, r2, r3, r12}
	adds	r1, r1, r10
	adcs	r0, r0, r11
	ldr	r5, [sp, #52]
	adcs	r2, r2, r7
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	ldr	lr, [sp, #56]
	adcs	r3, r3, r7
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	ldm	r9, {r6, r8, r9}
	adcs	r12, r12, r7
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	str	r1, [r4, #32]
	add	r1, r4, #36
	adcs	r5, r5, r7
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	stm	r1, {r0, r2, r3, r12}
	adcs	lr, lr, r7
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r6, r6, r7
	str	r5, [r4, #52]
	adcs	r0, r8, r0
	str	lr, [r4, #56]
	adc	r1, r9, #0
	str	r6, [r4, #60]
	str	r0, [r4, #64]
	str	r1, [r4, #68]
	add	sp, sp, #396
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end172:
	.size	mclb_sqr9, .Lfunc_end172-mclb_sqr9
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner320                @ -- Begin function mulUnit_inner320
	.p2align	2
	.type	mulUnit_inner320,%function
	.code	32                              @ @mulUnit_inner320
mulUnit_inner320:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r1, [r1, #36]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #36]
	adc	r1, r2, #0
	str	r1, [r0, #40]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end173:
	.size	mulUnit_inner320, .Lfunc_end173-mulUnit_inner320
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit10                  @ -- Begin function mclb_mulUnit10
	.p2align	2
	.type	mclb_mulUnit10,%function
	.code	32                              @ @mclb_mulUnit10
mclb_mulUnit10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r11, lr}
	sub	sp, sp, #48
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner320
	add	lr, sp, #8
	add	r7, sp, #20
	ldm	sp, {r8, r9}
	ldm	lr, {r3, r12, lr}
	ldm	r7, {r5, r6, r7}
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #40]
	ldr	r2, [sp, #36]
	str	r1, [r4, #32]
	add	r1, r4, #8
	stm	r1, {r3, r12, lr}
	add	r1, r4, #20
	str	r2, [r4, #36]
	stm	r4, {r8, r9}
	stm	r1, {r5, r6, r7}
	add	sp, sp, #48
	pop	{r4, r5, r6, r7, r8, r9, r11, pc}
.Lfunc_end174:
	.size	mclb_mulUnit10, .Lfunc_end174-mclb_mulUnit10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd10               @ -- Begin function mclb_mulUnitAdd10
	.p2align	2
	.type	mclb_mulUnitAdd10,%function
	.code	32                              @ @mclb_mulUnitAdd10
mclb_mulUnitAdd10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #68
	ldm	r1, {r3, r12}
	add	lr, r0, #16
	ldr	r4, [r1, #8]
	umull	r3, r7, r3, r2
	ldr	r5, [r1, #12]
	str	r7, [sp, #52]                   @ 4-byte Spill
	ldm	r0, {r6, r7}
	adds	r3, r3, r6
	ldr	r6, [r1, #36]
	str	r7, [sp, #32]                   @ 4-byte Spill
	ldr	r7, [r0, #8]
	str	r7, [sp, #28]                   @ 4-byte Spill
	ldr	r7, [r0, #12]
	str	r7, [sp, #24]                   @ 4-byte Spill
	umull	r6, r7, r6, r2
	str	r3, [r0]
	ldr	r3, [r1, #32]
	ldr	r10, [sp, #32]                  @ 4-byte Reload
	str	r7, [sp, #64]                   @ 4-byte Spill
	umull	r7, r3, r3, r2
	str	r6, [sp, #36]                   @ 4-byte Spill
	ldr	r6, [r1, #28]
	ldr	r9, [r0, #32]
	str	r7, [sp, #20]                   @ 4-byte Spill
	str	r3, [sp, #60]                   @ 4-byte Spill
	umull	r7, r3, r6, r2
	ldr	r6, [r1, #24]
	str	r7, [sp, #12]                   @ 4-byte Spill
	str	r3, [sp, #56]                   @ 4-byte Spill
	umull	r7, r3, r6, r2
	ldr	r6, [r1, #20]
	ldr	r1, [r1, #16]
	str	r3, [sp, #48]                   @ 4-byte Spill
	umull	r11, r3, r6, r2
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	str	r7, [sp, #4]                    @ 4-byte Spill
	umull	r8, r1, r1, r2
	ldr	r7, [r0, #36]
	str	r3, [sp, #44]                   @ 4-byte Spill
	str	r1, [sp, #40]                   @ 4-byte Spill
	umull	r5, r1, r5, r2
	str	r1, [sp, #16]                   @ 4-byte Spill
	umull	r4, r1, r4, r2
	str	r1, [sp, #8]                    @ 4-byte Spill
	umull	r3, r1, r12, r2
	str	r1, [sp]                        @ 4-byte Spill
	adcs	r3, r3, r10
	ldm	lr, {r1, r2, r12, lr}
	adcs	r4, r4, r6
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	adcs	r5, r5, r6
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r8, r1
	adcs	r2, r11, r2
	adcs	r12, r6, r12
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	lr, r6, lr
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	adcs	r9, r6, r9
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	adcs	r7, r6, r7
	mov	r6, #0
	adc	r8, r6, #0
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	adds	r3, r3, r6
	str	r3, [r0, #4]
	ldr	r3, [sp]                        @ 4-byte Reload
	adcs	r3, r4, r3
	str	r3, [r0, #8]
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	adcs	r3, r5, r3
	str	r3, [r0, #12]
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	adcs	r1, r1, r3
	str	r1, [r0, #16]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r1, lr, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r1, r9, r1
	str	r1, [r0, #32]
	adcs	r2, r7, r2
	str	r2, [r0, #36]
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adc	r0, r8, r0
	add	sp, sp, #68
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end175:
	.size	mclb_mulUnitAdd10, .Lfunc_end175-mclb_mulUnitAdd10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul10                      @ -- Begin function mclb_mul10
	.p2align	2
	.type	mclb_mul10,%function
	.code	32                              @ @mclb_mul10
mclb_mul10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #172
	mov	r6, r2
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul5
	add	r0, r4, #40
	add	r1, r5, #20
	add	r2, r6, #20
	bl	mclb_mul5
	add	lr, r6, #20
	ldm	r6, {r2, r3, r7, r8, r9}
	mov	r10, #0
	ldm	lr, {r0, r1, r6, r12, lr}
	adds	r2, r2, r0
	str	r2, [sp, #76]                   @ 4-byte Spill
	adcs	r1, r3, r1
	ldr	r3, [r5, #28]
	adcs	r11, r7, r6
	ldr	r6, [r5, #20]
	adcs	r0, r8, r12
	str	r0, [sp, #60]                   @ 4-byte Spill
	adcs	r9, r9, lr
	ldr	r7, [r5, #24]
	adc	r0, r10, #0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldm	r5, {r0, r10}
	adds	r0, r0, r6
	ldr	r8, [r5, #8]
	str	r0, [sp, #80]                   @ 4-byte Spill
	mov	r6, r1
	str	r0, [sp, #108]
	adcs	r0, r10, r7
	str	r0, [sp, #72]                   @ 4-byte Spill
	str	r0, [sp, #112]
	adcs	r0, r8, r3
	ldr	lr, [r5, #12]
	str	r0, [sp, #68]                   @ 4-byte Spill
	str	r0, [sp, #116]
	ldr	r0, [r5, #32]
	str	r1, [sp, #92]
	ldr	r12, [r5, #16]
	adcs	r0, lr, r0
	ldr	r1, [r5, #36]
	str	r0, [sp, #64]                   @ 4-byte Spill
	adcs	r8, r12, r1
	str	r0, [sp, #120]
	mov	r0, #0
	str	r2, [sp, #88]
	adc	r10, r0, #0
	add	r0, sp, #128
	add	r1, sp, #108
	add	r2, sp, #88
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	str	r11, [sp, #96]
	str	r5, [sp, #100]
	str	r8, [sp, #124]
	str	r9, [sp, #104]
	bl	mclb_mul5
	rsb	r0, r10, #0
	and	r2, r9, r0
	and	r9, r6, r0
	and	r12, r5, r0
	and	r11, r11, r0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	sub	r6, r10, r10, lsl #1
	and	lr, r0, r6
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adds	r7, lr, r0
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r5, r9, r0
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r1, r11, r0
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r6, r12, r0
	mov	r0, #0
	adcs	r8, r2, r8
	adc	r3, r0, #0
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	cmp	r0, #0
	and	r3, r3, r0
	str	r3, [sp, #80]                   @ 4-byte Spill
	moveq	r7, lr
	add	lr, sp, #156
	ldr	r3, [sp, #148]
	moveq	r8, r2
	ldr	r2, [sp, #152]
	moveq	r6, r12
	moveq	r1, r11
	moveq	r5, r9
	adds	r3, r7, r3
	and	r12, r0, r10
	ldm	lr, {r0, r9, lr}
	adcs	r2, r5, r2
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	adcs	r0, r6, r9
	str	r0, [sp, #52]                   @ 4-byte Spill
	adcs	r0, r8, lr
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldm	r4, {r10, r11}
	adc	r0, r0, r12
	ldr	r12, [sp, #128]
	ldr	lr, [sp, #132]
	subs	r10, r12, r10
	ldr	r9, [r4, #8]
	ldr	r5, [sp, #136]
	sbcs	r11, lr, r11
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, r4, #40
	ldr	r0, [r4, #12]
	sbcs	r5, r5, r9
	str	r0, [sp, #32]                   @ 4-byte Spill
	str	r3, [sp, #64]                   @ 4-byte Spill
	str	r5, [sp, #36]                   @ 4-byte Spill
	ldr	r3, [sp, #140]
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	ldr	r0, [r4, #16]
	sbcs	r3, r3, r5
	str	r0, [sp, #40]                   @ 4-byte Spill
	str	r3, [sp, #32]                   @ 4-byte Spill
	ldr	r8, [sp, #144]
	ldr	r3, [sp, #40]                   @ 4-byte Reload
	str	r2, [sp, #60]                   @ 4-byte Spill
	sbcs	r3, r8, r3
	ldr	r2, [r4, #20]
	str	r3, [sp, #28]                   @ 4-byte Spill
	ldr	r3, [sp, #64]                   @ 4-byte Reload
	str	r2, [sp, #68]                   @ 4-byte Spill
	sbcs	r2, r3, r2
	ldr	r1, [r4, #24]
	str	r2, [sp, #24]                   @ 4-byte Spill
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	str	r1, [sp, #72]                   @ 4-byte Spill
	sbcs	r1, r2, r1
	ldr	r0, [r4, #28]
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	str	r0, [sp, #76]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	ldr	r6, [r4, #32]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r7, [r4, #36]
	sbcs	r0, r0, r6
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldm	lr, {r3, r12, lr}
	sbcs	r0, r0, r7
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r6, [sp, #80]                   @ 4-byte Spill
	sbc	r0, r0, #0
	subs	r10, r10, r3
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	sbcs	r11, r11, r12
	ldr	r5, [r4, #52]
	sbcs	r6, r6, lr
	str	r6, [sp]                        @ 4-byte Spill
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	str	r7, [sp, #84]                   @ 4-byte Spill
	ldr	r7, [r4, #56]
	str	r5, [sp, #40]                   @ 4-byte Spill
	sbcs	r5, r6, r5
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	ldr	r8, [r4, #60]
	str	r7, [sp, #44]                   @ 4-byte Spill
	sbcs	r6, r6, r7
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	ldr	r9, [r4, #64]
	sbcs	r7, r7, r8
	str	r7, [sp, #24]                   @ 4-byte Spill
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r4, #68]
	str	r8, [sp, #48]                   @ 4-byte Spill
	sbcs	r8, r7, r9
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	str	r9, [sp, #52]                   @ 4-byte Spill
	ldr	r1, [r4, #72]
	sbcs	r9, r7, r2
	str	r2, [sp, #56]                   @ 4-byte Spill
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	str	r1, [sp, #60]                   @ 4-byte Spill
	sbcs	r1, r2, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r4, #76]
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #64]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	sbc	r0, r0, #0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adds	r10, r0, r10
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	str	r10, [r4, #20]
	adcs	r11, r0, r11
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	str	r11, [r4, #24]
	adcs	r7, r0, r1
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r7, [r4, #28]
	adcs	r5, r0, r5
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	r6, r0, r6
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	str	r6, [r4, #36]
	adcs	r0, r3, r0
	add	r3, r4, #40
	adcs	r1, r12, r8
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	adcs	r2, lr, r9
	stm	r3, {r0, r1, r2}
	add	r12, r4, #52
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	adcs	r1, r1, r2
	ldr	r2, [sp, #48]                   @ 4-byte Reload
	str	r5, [r4, #32]
	adcs	r2, r2, r3
	ldr	r3, [sp, #52]                   @ 4-byte Reload
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	adcs	r3, r3, #0
	adcs	r7, r7, #0
	stm	r12, {r0, r1, r2, r3, r7}
	adcs	r6, r6, #0
	adc	r5, r5, #0
	str	r6, [r4, #72]
	str	r5, [r4, #76]
	add	sp, sp, #172
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end176:
	.size	mclb_mul10, .Lfunc_end176-mclb_mul10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr10                      @ -- Begin function mclb_sqr10
	.p2align	2
	.type	mclb_sqr10,%function
	.code	32                              @ @mclb_sqr10
mclb_sqr10:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #180
	mov	r2, r1
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul5
	add	r1, r5, #20
	add	r0, r4, #40
	mov	r2, r1
	bl	mclb_mul5
	ldm	r5, {r0, r1, r8, lr}
	ldr	r7, [r5, #20]
	ldr	r3, [r5, #24]
	adds	r9, r0, r7
	ldr	r2, [r5, #28]
	adcs	r10, r1, r3
	ldr	r0, [r5, #32]
	adcs	r6, r8, r2
	ldr	r12, [r5, #16]
	ldr	r1, [r5, #36]
	adcs	r5, lr, r0
	mov	r0, #0
	add	r2, sp, #96
	adcs	r7, r12, r1
	add	r1, sp, #116
	adc	r8, r0, #0
	add	r0, sp, #136
	str	r9, [sp, #116]
	str	r9, [sp, #96]
	str	r10, [sp, #120]
	str	r10, [sp, #100]
	str	r6, [sp, #124]
	str	r6, [sp, #104]
	str	r5, [sp, #128]
	str	r5, [sp, #108]
	str	r7, [sp, #132]
	str	r7, [sp, #112]
	bl	mclb_mul5
	rsb	r0, r8, #0
	ldr	r11, [r4, #16]
	and	r1, r7, r0
	and	r7, r6, r0
	and	r2, r5, r0
	and	r0, r10, r0
	lsr	r6, r7, #31
	lsl	r7, r7, #1
	orr	lr, r6, r2, lsl #1
	sub	r6, r8, r8, lsl #1
	and	r6, r9, r6
	lsr	r3, r2, #31
	orr	r10, r7, r0, lsr #31
	orr	r12, r3, r1, lsl #1
	lsr	r5, r6, #31
	orr	r0, r5, r0, lsl #1
	add	r5, sp, #164
	lsr	r9, r1, #31
	ldr	r1, [sp, #156]
	ldr	r7, [sp, #160]
	adds	r1, r1, r6, lsl #1
	ldm	r5, {r2, r3, r5}
	adcs	r0, r0, r7
	str	r0, [sp, #68]                   @ 4-byte Spill
	adcs	r0, r10, r2
	str	r0, [sp, #64]                   @ 4-byte Spill
	adcs	r0, lr, r3
	str	r0, [sp, #60]                   @ 4-byte Spill
	adcs	r0, r12, r5
	str	r0, [sp, #56]                   @ 4-byte Spill
	adc	r0, r9, r8
	ldr	r7, [r4]
	ldr	r12, [sp, #136]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [r4, #4]
	subs	r7, r12, r7
	str	r0, [sp, #48]                   @ 4-byte Spill
	str	r7, [sp, #44]                   @ 4-byte Spill
	ldr	lr, [sp, #140]
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	ldr	r0, [r4, #8]
	sbcs	r7, lr, r7
	str	r0, [sp, #36]                   @ 4-byte Spill
	str	r7, [sp, #40]                   @ 4-byte Spill
	add	lr, r4, #40
	ldr	r5, [sp, #144]
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	ldr	r10, [r4, #12]
	ldr	r3, [sp, #148]
	sbcs	r7, r5, r7
	ldr	r9, [sp, #152]
	sbcs	r3, r3, r10
	str	r1, [sp, #72]                   @ 4-byte Spill
	str	r3, [sp, #32]                   @ 4-byte Spill
	sbcs	r3, r9, r11
	ldr	r2, [r4, #20]
	str	r3, [sp, #28]                   @ 4-byte Spill
	ldr	r3, [sp, #72]                   @ 4-byte Reload
	str	r2, [sp, #76]                   @ 4-byte Spill
	sbcs	r2, r3, r2
	ldr	r1, [r4, #24]
	str	r2, [sp, #24]                   @ 4-byte Spill
	ldr	r2, [sp, #68]                   @ 4-byte Reload
	str	r1, [sp, #80]                   @ 4-byte Spill
	sbcs	r1, r2, r1
	ldr	r0, [r4, #28]
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	str	r0, [sp, #84]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	ldr	r6, [r4, #32]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r8, [r4, #36]
	sbcs	r0, r0, r6
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	str	r6, [sp, #88]                   @ 4-byte Spill
	sbcs	r0, r0, r8
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldm	lr, {r3, r12, lr}
	sbc	r0, r0, #0
	ldr	r6, [sp, #44]                   @ 4-byte Reload
	str	r7, [sp, #36]                   @ 4-byte Spill
	subs	r10, r6, r3
	ldr	r6, [sp, #40]                   @ 4-byte Reload
	ldr	r5, [r4, #52]
	sbcs	r11, r6, r12
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	ldr	r7, [r4, #56]
	sbcs	r6, r6, lr
	str	r6, [sp]                        @ 4-byte Spill
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	str	r5, [sp, #48]                   @ 4-byte Spill
	sbcs	r5, r6, r5
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	str	r8, [sp, #92]                   @ 4-byte Spill
	ldr	r8, [r4, #60]
	sbcs	r6, r6, r7
	str	r7, [sp, #52]                   @ 4-byte Spill
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	ldr	r9, [r4, #64]
	sbcs	r7, r7, r8
	str	r7, [sp, #32]                   @ 4-byte Spill
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [r4, #68]
	str	r8, [sp, #56]                   @ 4-byte Spill
	sbcs	r8, r7, r9
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	str	r9, [sp, #60]                   @ 4-byte Spill
	ldr	r1, [r4, #72]
	sbcs	r9, r7, r2
	str	r2, [sp, #64]                   @ 4-byte Spill
	ldr	r2, [sp, #12]                   @ 4-byte Reload
	str	r1, [sp, #68]                   @ 4-byte Spill
	sbcs	r1, r2, r1
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [r4, #76]
	str	r1, [sp, #44]                   @ 4-byte Spill
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r0, [sp, #72]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	ldr	r1, [sp]                        @ 4-byte Reload
	sbc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adds	r10, r0, r10
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r10, [r4, #20]
	adcs	r11, r0, r11
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r11, [r4, #24]
	adcs	r7, r0, r1
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r7, [r4, #28]
	adcs	r5, r0, r5
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adcs	r6, r0, r6
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	r6, [r4, #36]
	adcs	r0, r3, r0
	add	r3, r4, #40
	adcs	r1, r12, r8
	ldr	r6, [sp, #68]                   @ 4-byte Reload
	adcs	r2, lr, r9
	stm	r3, {r0, r1, r2}
	add	r12, r4, #52
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	adcs	r1, r1, r2
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	str	r5, [r4, #32]
	adcs	r2, r2, r3
	ldr	r3, [sp, #60]                   @ 4-byte Reload
	ldr	r5, [sp, #72]                   @ 4-byte Reload
	adcs	r3, r3, #0
	adcs	r7, r7, #0
	stm	r12, {r0, r1, r2, r3, r7}
	adcs	r6, r6, #0
	adc	r5, r5, #0
	str	r6, [r4, #72]
	str	r5, [r4, #76]
	add	sp, sp, #180
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end177:
	.size	mclb_sqr10, .Lfunc_end177-mclb_sqr10
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner352                @ -- Begin function mulUnit_inner352
	.p2align	2
	.type	mulUnit_inner352,%function
	.code	32                              @ @mulUnit_inner352
mulUnit_inner352:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r1, [r1, #40]
	umull	r1, r2, r1, r2
	adcs	r1, r6, r1
	str	r1, [r0, #40]
	adc	r1, r2, #0
	str	r1, [r0, #44]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end178:
	.size	mulUnit_inner352, .Lfunc_end178-mulUnit_inner352
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit11                  @ -- Begin function mclb_mulUnit11
	.p2align	2
	.type	mclb_mulUnit11,%function
	.code	32                              @ @mclb_mulUnit11
mclb_mulUnit11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #48
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner352
	add	r7, sp, #20
	add	r3, sp, #32
	ldm	sp, {r8, r9, r10, r12, lr}
	ldm	r7, {r5, r6, r7}
	ldm	r3, {r1, r2, r3}
	ldr	r0, [sp, #44]
	str	r1, [r4, #32]
	add	r1, r4, #20
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	stm	r4, {r8, r9, r10, r12, lr}
	stm	r1, {r5, r6, r7}
	add	sp, sp, #48
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.Lfunc_end179:
	.size	mclb_mulUnit11, .Lfunc_end179-mclb_mulUnit11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd11               @ -- Begin function mclb_mulUnitAdd11
	.p2align	2
	.type	mclb_mulUnitAdd11,%function
	.code	32                              @ @mclb_mulUnitAdd11
mclb_mulUnitAdd11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #80
	ldm	r1, {r3, r12, lr}
	add	r9, r0, #32
	ldr	r4, [r0, #4]
	str	r4, [sp, #40]                   @ 4-byte Spill
	umull	r3, r7, r3, r2
	ldr	r4, [r0, #8]
	str	r4, [sp, #36]                   @ 4-byte Spill
	ldr	r4, [r0, #12]
	str	r4, [sp, #32]                   @ 4-byte Spill
	ldr	r4, [r1, #40]
	str	r7, [sp, #64]                   @ 4-byte Spill
	ldr	r7, [r0]
	umull	r5, r4, r4, r2
	ldr	r6, [r1, #12]
	adds	r3, r3, r7
	ldr	r7, [r1, #36]
	str	r3, [r0]
	str	r4, [sp, #76]                   @ 4-byte Spill
	umull	r4, r7, r7, r2
	ldr	r3, [r1, #32]
	str	r5, [sp, #48]                   @ 4-byte Spill
	ldr	r11, [sp, #40]                  @ 4-byte Reload
	str	r4, [sp, #28]                   @ 4-byte Spill
	umull	r4, r3, r3, r2
	str	r7, [sp, #72]                   @ 4-byte Spill
	ldr	r7, [r1, #28]
	str	r4, [sp, #20]                   @ 4-byte Spill
	str	r3, [sp, #68]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	ldr	r7, [r1, #24]
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r3, [sp, #60]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	ldr	r7, [r1, #20]
	ldr	r1, [r1, #16]
	str	r4, [sp, #4]                    @ 4-byte Spill
	umull	r10, r1, r1, r2
	str	r3, [sp, #56]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	str	r1, [sp, #44]                   @ 4-byte Spill
	umull	r6, r1, r6, r2
	str	r4, [sp]                        @ 4-byte Spill
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	str	r3, [sp, #52]                   @ 4-byte Spill
	str	r1, [sp, #24]                   @ 4-byte Spill
	umull	r5, r1, lr, r2
	add	lr, r0, #16
	ldm	r9, {r7, r8, r9}
	str	r1, [sp, #16]                   @ 4-byte Spill
	umull	r12, r1, r12, r2
	str	r1, [sp, #8]                    @ 4-byte Spill
	adcs	r12, r12, r11
	ldm	lr, {r1, r2, r3, lr}
	adcs	r5, r5, r4
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	adcs	r6, r6, r4
	ldr	r4, [sp]                        @ 4-byte Reload
	adcs	r1, r10, r1
	adcs	r2, r4, r2
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	adcs	r3, r4, r3
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	adcs	r11, r4, lr
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adcs	r10, r4, r7
	ldr	r7, [sp, #28]                   @ 4-byte Reload
	mov	r4, #0
	adcs	lr, r7, r8
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	adcs	r8, r7, r9
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adc	r9, r4, #0
	adds	r7, r12, r7
	str	r7, [r0, #4]
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r7, r5, r7
	str	r7, [r0, #8]
	ldr	r7, [sp, #16]                   @ 4-byte Reload
	adcs	r7, r6, r7
	str	r7, [r0, #12]
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	adcs	r1, r1, r7
	str	r1, [r0, #16]
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [sp, #68]                   @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	ldr	r3, [sp, #72]                   @ 4-byte Reload
	adcs	r1, r11, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	add	r0, r0, #32
	adcs	r1, r10, r1
	adcs	r2, lr, r2
	adcs	r3, r8, r3
	stm	r0, {r1, r2, r3}
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adc	r0, r9, r0
	add	sp, sp, #80
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end180:
	.size	mclb_mulUnitAdd11, .Lfunc_end180-mclb_mulUnitAdd11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul11                      @ -- Begin function mclb_mul11
	.p2align	2
	.type	mclb_mul11,%function
	.code	32                              @ @mclb_mul11
mclb_mul11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #604
	mov	r3, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #552
	mov	r6, r3
	str	r3, [sp, #60]                   @ 4-byte Spill
	mov	r5, r1
	str	r1, [sp, #68]                   @ 4-byte Spill
	bl	mulUnit_inner352
	ldr	r0, [sp, #596]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #592]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #588]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #584]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #580]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #576]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #572]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #568]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r1, [sp, #560]
	ldr	r0, [sp, #552]
	ldr	r11, [sp, #556]
	str	r1, [sp, #28]                   @ 4-byte Spill
	ldr	r2, [r6, #4]
	ldr	r1, [sp, #564]
	str	r0, [r4]
	add	r0, sp, #504
	str	r1, [sp, #20]                   @ 4-byte Spill
	mov	r1, r5
	bl	mulUnit_inner352
	ldr	r0, [sp, #548]
	add	r10, sp, #532
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r12, sp, #508
	ldr	r1, [sp, #504]
	mov	r6, r4
	ldm	r10, {r5, r8, r9, r10}
	adds	r1, r1, r11
	ldr	lr, [sp, #528]
	ldr	r7, [sp, #524]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #4]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	str	r4, [sp, #64]                   @ 4-byte Spill
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #456
	bl	mulUnit_inner352
	ldr	r0, [sp, #500]
	add	r10, sp, #484
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r12, sp, #460
	ldr	r0, [sp, #496]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r1, [sp, #456]
	ldr	r11, [sp, #16]                  @ 4-byte Reload
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r11
	ldr	lr, [sp, #480]
	ldr	r7, [sp, #476]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r6, #8]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #408
	bl	mulUnit_inner352
	ldr	r1, [sp, #408]
	add	r10, sp, #444
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	add	lr, sp, #432
	add	r12, sp, #412
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r4
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	ldm	lr, {r6, r11, lr}
	ldr	r7, [sp, #428]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #12]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #360
	bl	mulUnit_inner352
	ldr	r0, [sp, #404]
	add	r10, sp, #392
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r12, sp, #364
	ldr	r1, [sp, #360]
	ldr	r11, [sp, #16]                  @ 4-byte Reload
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r11
	ldr	lr, [sp, #388]
	ldr	r6, [sp, #384]
	ldr	r7, [sp, #380]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #16]
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r4, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [r4, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #312
	bl	mulUnit_inner352
	ldr	r1, [sp, #312]
	add	r11, sp, #344
	ldr	r5, [sp, #16]                   @ 4-byte Reload
	add	r12, sp, #316
	ldm	r11, {r8, r9, r10, r11}
	adds	r1, r1, r5
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	ldr	lr, [sp, #340]
	ldr	r6, [sp, #336]
	ldr	r7, [sp, #332]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r5, #20]
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [r4, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r7, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	adc	r0, r11, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #264
	bl	mulUnit_inner352
	ldr	r0, [sp, #308]
	add	r10, sp, #296
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r12, sp, #268
	ldr	r1, [sp, #264]
	ldr	r11, [sp, #16]                  @ 4-byte Reload
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r11
	ldr	lr, [sp, #292]
	ldr	r6, [sp, #288]
	ldr	r7, [sp, #284]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r5, #24]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r4
	adcs	r0, r2, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #216
	bl	mulUnit_inner352
	ldr	r1, [sp, #216]
	add	r10, sp, #252
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	add	lr, sp, #240
	add	r12, sp, #220
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r4
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	ldm	lr, {r6, r11, lr}
	ldr	r7, [sp, #236]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #28]
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	adc	r0, r10, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #168
	bl	mulUnit_inner352
	ldr	r0, [sp, #212]
	add	r10, sp, #200
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	r12, sp, #172
	ldr	r1, [sp, #168]
	ldr	r11, [sp, #16]                  @ 4-byte Reload
	ldm	r10, {r8, r9, r10}
	adds	r1, r1, r11
	ldr	lr, [sp, #196]
	ldr	r6, [sp, #192]
	ldr	r7, [sp, #188]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #32]
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r11, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r0, sp, #120
	bl	mulUnit_inner352
	ldr	r0, [sp, #164]
	add	r12, sp, #124
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r1, [sp, #120]
	ldr	r10, [sp, #16]                  @ 4-byte Reload
	ldr	r9, [sp, #160]
	adds	r1, r1, r10
	ldr	r8, [sp, #156]
	ldr	lr, [sp, #152]
	ldr	r5, [sp, #148]
	ldr	r6, [sp, #144]
	ldr	r7, [sp, #140]
	ldm	r12, {r0, r2, r3, r12}
	str	r1, [r4, #36]
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r4, r0, r1
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r2, [r11, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #48]                   @ 4-byte Spill
	add	r0, sp, #72
	bl	mulUnit_inner352
	add	lr, sp, #72
	add	r10, sp, #96
	ldr	r9, [sp, #116]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	adds	r0, r0, r4
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r10}
	adcs	r1, r1, r4
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	ldr	r8, [sp, #112]
	adcs	r2, r2, r4
	ldr	r4, [sp, #44]                   @ 4-byte Reload
	adcs	r3, r3, r4
	ldr	r4, [sp, #40]                   @ 4-byte Reload
	adcs	r12, r12, r4
	ldr	r4, [sp, #36]                   @ 4-byte Reload
	adcs	lr, lr, r4
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	adcs	r5, r5, r4
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	adcs	r6, r6, r4
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	add	r11, r4, #40
	stm	r11, {r0, r1, r2, r3, r12, lr}
	add	r12, r4, #72
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	ldr	r2, [sp, #48]                   @ 4-byte Reload
	adcs	r1, r10, r1
	str	r5, [r4, #64]
	adcs	r2, r8, r2
	str	r6, [r4, #68]
	adc	r3, r9, #0
	stm	r12, {r0, r1, r2, r3}
	add	sp, sp, #604
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end181:
	.size	mclb_mul11, .Lfunc_end181-mclb_mul11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr11                      @ -- Begin function mclb_sqr11
	.p2align	2
	.type	mclb_sqr11,%function
	.code	32                              @ @mclb_sqr11
mclb_sqr11:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #596
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #544
	mov	r5, r1
	bl	mulUnit_inner352
	ldr	r0, [sp, #588]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #584]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #580]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #576]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #572]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #568]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #564]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #560]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r1, [sp, #548]
	ldr	r0, [sp, #544]
	str	r1, [sp, #20]                   @ 4-byte Spill
	ldr	r1, [sp, #552]
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r2, [r5, #4]
	ldr	r1, [sp, #556]
	str	r0, [r4]
	add	r0, sp, #496
	str	r1, [sp, #24]                   @ 4-byte Spill
	mov	r1, r5
	bl	mulUnit_inner352
	ldr	r0, [sp, #540]
	add	lr, sp, #496
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #520
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #4]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #448
	bl	mulUnit_inner352
	ldr	r0, [sp, #492]
	add	lr, sp, #448
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #476
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #472]
	str	r0, [r4, #8]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #400
	bl	mulUnit_inner352
	ldr	r0, [sp, #444]
	add	lr, sp, #400
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #428
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #424]
	str	r0, [r4, #12]
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #352
	bl	mulUnit_inner352
	ldr	r0, [sp, #396]
	add	lr, sp, #352
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #380
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #376]
	str	r0, [r4, #16]
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #304
	bl	mulUnit_inner352
	ldr	r0, [sp, #348]
	add	lr, sp, #304
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #332
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #328]
	str	r0, [r4, #20]
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r2, [r5, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #256
	bl	mulUnit_inner352
	ldr	r0, [sp, #300]
	add	lr, sp, #256
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #284
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #280]
	str	r0, [r4, #24]
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #208
	bl	mulUnit_inner352
	ldr	r0, [sp, #252]
	add	lr, sp, #208
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #236
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #232]
	str	r0, [r4, #28]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #160
	bl	mulUnit_inner352
	ldr	r0, [sp, #204]
	add	lr, sp, #160
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r10, sp, #188
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #184]
	str	r0, [r4, #32]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [r5, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #24]                   @ 4-byte Spill
	add	r0, sp, #112
	bl	mulUnit_inner352
	ldr	r0, [sp, #156]
	add	lr, sp, #112
	str	r0, [sp, #8]                    @ 4-byte Spill
	add	r10, sp, #140
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #20]                  @ 4-byte Reload
	ldm	r10, {r6, r8, r9, r10}
	adds	r0, r0, r11
	ldr	r7, [sp, #136]
	str	r0, [r4, #36]
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adcs	r0, r2, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [r5, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #64
	bl	mulUnit_inner352
	ldr	r0, [sp, #108]
	add	r7, sp, #72
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	lr, sp, #84
	ldr	r1, [sp, #64]
	ldr	r10, [sp, #20]                  @ 4-byte Reload
	ldr	r2, [sp, #68]
	ldr	r5, [sp, #16]                   @ 4-byte Reload
	adds	r1, r1, r10
	ldm	r7, {r0, r3, r7}
	adcs	r2, r2, r5
	ldr	r5, [sp, #12]                   @ 4-byte Reload
	ldm	lr, {r6, r12, lr}
	adcs	r0, r0, r5
	ldr	r5, [sp, #48]                   @ 4-byte Reload
	ldr	r9, [sp, #104]
	adcs	r3, r3, r5
	ldr	r5, [sp, #44]                   @ 4-byte Reload
	ldr	r11, [sp, #100]
	adcs	r7, r7, r5
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	ldr	r8, [sp, #96]
	adcs	r6, r6, r5
	ldr	r5, [sp, #36]                   @ 4-byte Reload
	str	r1, [r4, #40]
	add	r1, r4, #48
	adcs	r12, r12, r5
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	stm	r1, {r0, r3, r7}
	adcs	r5, lr, r5
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r2, [r4, #44]
	ldr	r2, [sp, #52]                   @ 4-byte Reload
	adcs	r1, r11, r1
	ldr	r3, [sp, #28]                   @ 4-byte Reload
	str	r12, [r4, #64]
	adcs	r2, r9, r2
	add	r12, r4, #72
	adc	r3, r3, #0
	str	r6, [r4, #60]
	str	r5, [r4, #68]
	stm	r12, {r0, r1, r2, r3}
	add	sp, sp, #596
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end182:
	.size	mclb_sqr11, .Lfunc_end182-mclb_sqr11
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner384                @ -- Begin function mulUnit_inner384
	.p2align	2
	.type	mulUnit_inner384,%function
	.code	32                              @ @mulUnit_inner384
mulUnit_inner384:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r1, [r1, #44]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #44]
	adc	r1, r2, #0
	str	r1, [r0, #48]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end183:
	.size	mulUnit_inner384, .Lfunc_end183-mulUnit_inner384
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit12                  @ -- Begin function mclb_mulUnit12
	.p2align	2
	.type	mclb_mulUnit12,%function
	.code	32                              @ @mclb_mulUnit12
mclb_mulUnit12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #60
	mov	r4, r0
	mov	r0, sp
	bl	mulUnit_inner384
	add	r5, sp, #32
	ldm	sp, {r8, r9, r10, r12, lr}
	ldr	r11, [sp, #20]
	ldr	r6, [sp, #24]
	ldr	r7, [sp, #28]
	ldm	r5, {r1, r2, r3, r5}
	ldr	r0, [sp, #48]
	str	r1, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	str	r5, [r4, #44]
	stm	r4, {r8, r9, r10, r12, lr}
	str	r11, [r4, #20]
	str	r6, [r4, #24]
	str	r7, [r4, #28]
	add	sp, sp, #60
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end184:
	.size	mclb_mulUnit12, .Lfunc_end184-mclb_mulUnit12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd12               @ -- Begin function mclb_mulUnitAdd12
	.p2align	2
	.type	mclb_mulUnitAdd12,%function
	.code	32                              @ @mclb_mulUnitAdd12
mclb_mulUnitAdd12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #92
	ldm	r1, {r3, r10, lr}
	add	r11, r1, #32
	ldr	r7, [r0]
	umull	r8, r3, r3, r2
	ldr	r12, [r1, #12]
	ldr	r6, [r1, #24]
	ldr	r5, [r1, #20]
	str	r3, [sp, #72]                   @ 4-byte Spill
	ldr	r3, [r0, #4]
	adds	r7, r8, r7
	str	r3, [sp, #52]                   @ 4-byte Spill
	ldr	r3, [r0, #8]
	str	r3, [sp, #48]                   @ 4-byte Spill
	ldr	r3, [r0, #12]
	str	r7, [r0]
	ldr	r7, [r1, #44]
	str	r3, [sp, #44]                   @ 4-byte Spill
	ldm	r11, {r8, r9, r11}
	umull	r4, r3, r7, r2
	ldr	r7, [r1, #28]
	ldr	r1, [r1, #16]
	str	r4, [sp, #56]                   @ 4-byte Spill
	str	r3, [sp, #88]                   @ 4-byte Spill
	umull	r4, r3, r11, r2
	ldr	r11, [sp, #52]                  @ 4-byte Reload
	str	r4, [sp, #36]                   @ 4-byte Spill
	str	r3, [sp, #84]                   @ 4-byte Spill
	umull	r4, r3, r9, r2
	str	r4, [sp, #32]                   @ 4-byte Spill
	str	r3, [sp, #80]                   @ 4-byte Spill
	umull	r4, r3, r8, r2
	str	r4, [sp, #24]                   @ 4-byte Spill
	str	r3, [sp, #76]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	umull	r7, r1, r1, r2
	str	r4, [sp, #16]                   @ 4-byte Spill
	str	r3, [sp, #68]                   @ 4-byte Spill
	umull	r4, r3, r6, r2
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r4, [sp, #8]                    @ 4-byte Spill
	str	r3, [sp, #64]                   @ 4-byte Spill
	umull	r4, r3, r5, r2
	umull	r5, r1, r12, r2
	str	r4, [sp, #4]                    @ 4-byte Spill
	str	r3, [sp, #60]                   @ 4-byte Spill
	str	r1, [sp, #28]                   @ 4-byte Spill
	umull	r4, r1, lr, r2
	add	lr, r0, #16
	str	r1, [sp, #20]                   @ 4-byte Spill
	umull	r12, r1, r10, r2
	add	r10, r0, #32
	ldm	r10, {r8, r9, r10}
	adcs	r12, r12, r11
	str	r1, [sp, #12]                   @ 4-byte Spill
	ldr	r1, [r0, #44]
	adcs	r4, r4, r6
	ldr	r6, [sp, #44]                   @ 4-byte Reload
	str	r1, [sp]                        @ 4-byte Spill
	ldm	lr, {r1, r2, r3, lr}
	adcs	r5, r5, r6
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r7, r1
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	r2, r6, r2
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	lr, r6, lr
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	adcs	r6, r6, r8
	str	r6, [sp, #52]                   @ 4-byte Spill
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	adcs	r8, r6, r9
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	adcs	r9, r6, r10
	ldr	r6, [sp]                        @ 4-byte Reload
	adcs	r11, r7, r6
	mov	r6, #0
	adc	r10, r6, #0
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	adds	r6, r12, r6
	str	r6, [r0, #4]
	adcs	r6, r4, r7
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	str	r6, [r0, #8]
	adcs	r6, r5, r7
	ldr	r7, [sp, #28]                   @ 4-byte Reload
	str	r6, [r0, #12]
	adcs	r1, r1, r7
	str	r1, [r0, #16]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r7, [sp, #84]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [sp, #52]                   @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r3, [sp, #80]                   @ 4-byte Reload
	adcs	r1, lr, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	add	r0, r0, #32
	adcs	r1, r2, r1
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	adcs	r2, r8, r2
	adcs	r3, r9, r3
	adcs	r7, r11, r7
	stm	r0, {r1, r2, r3, r7}
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adc	r0, r10, r0
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end185:
	.size	mclb_mulUnitAdd12, .Lfunc_end185-mclb_mulUnitAdd12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul12                      @ -- Begin function mclb_mul12
	.p2align	2
	.type	mclb_mul12,%function
	.code	32                              @ @mclb_mul12
mclb_mul12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #236
	mov	r6, r2
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul6
	add	r0, r4, #48
	add	r1, r5, #24
	add	r2, r6, #24
	bl	mclb_mul6
	ldr	r0, [r6, #44]
	str	r0, [sp, #132]                  @ 4-byte Spill
	ldm	r6, {r7, r11}
	ldr	r0, [r6, #24]
	ldr	r12, [r6, #32]
	ldr	lr, [r6, #36]
	adds	r2, r7, r0
	ldr	r8, [r6, #40]
	ldr	r1, [r6, #8]
	ldr	r9, [r6, #12]
	ldr	r3, [r6, #16]
	ldr	r10, [r6, #20]
	ldr	r6, [r6, #28]
	ldr	r7, [r5, #24]
	adcs	r11, r11, r6
	str	r11, [sp, #116]                 @ 4-byte Spill
	adcs	r6, r1, r12
	ldr	r1, [r5, #28]
	adcs	r0, r9, lr
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #132]                  @ 4-byte Reload
	adcs	r9, r3, r8
	ldr	r12, [r5, #20]
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	mov	r0, #0
	str	r11, [sp, #140]
	adc	r0, r0, #0
	str	r0, [sp, #132]                  @ 4-byte Spill
	ldm	r5, {r0, r3, r8, r10, lr}
	adds	r0, r0, r7
	add	r7, r5, #32
	str	r0, [sp, #128]                  @ 4-byte Spill
	str	r0, [sp, #160]
	adcs	r0, r3, r1
	str	r0, [sp, #120]                  @ 4-byte Spill
	str	r0, [sp, #164]
	ldm	r7, {r0, r1, r7}
	adcs	r0, r8, r0
	ldr	r3, [r5, #44]
	adcs	r11, r10, r1
	str	r0, [sp, #112]                  @ 4-byte Spill
	str	r0, [sp, #168]
	adcs	r0, lr, r7
	str	r0, [sp, #104]                  @ 4-byte Spill
	mov	r7, r9
	str	r0, [sp, #176]
	mov	r0, #0
	str	r9, [sp, #152]
	adcs	r9, r12, r3
	adc	r10, r0, #0
	str	r2, [sp, #124]                  @ 4-byte Spill
	str	r2, [sp, #136]
	add	r0, sp, #184
	add	r1, sp, #160
	add	r2, sp, #136
	ldr	r5, [sp, #108]                  @ 4-byte Reload
	mov	r8, r6
	str	r6, [sp, #144]
	ldr	r6, [sp, #100]                  @ 4-byte Reload
	str	r11, [sp, #172]
	str	r6, [sp, #148]
	str	r9, [sp, #180]
	str	r5, [sp, #156]
	bl	mclb_mul6
	rsb	r0, r10, #0
	str	r10, [sp, #96]                  @ 4-byte Spill
	and	r12, r6, r0
	ldr	r6, [sp, #116]                  @ 4-byte Reload
	and	r3, r7, r0
	and	r2, r5, r0
	and	r7, r6, r0
	and	lr, r8, r0
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	sub	r6, r10, r10, lsl #1
	str	r7, [sp, #108]                  @ 4-byte Spill
	and	r1, r0, r6
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	str	r1, [sp, #116]                  @ 4-byte Spill
	adds	r5, r1, r0
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r6, r7, r0
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r1, lr, r0
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r11, r12, r11
	adcs	r10, r3, r0
	mov	r0, #0
	adcs	r8, r2, r9
	adc	r9, r0, #0
	ldr	r0, [sp, #132]                  @ 4-byte Reload
	cmp	r0, #0
	and	r7, r9, r0
	mov	r9, r0
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	moveq	r8, r2
	moveq	r10, r3
	moveq	r1, lr
	moveq	r11, r12
	moveq	r6, r0
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	cmp	r9, #0
	ldr	r2, [sp, #212]
	str	r7, [sp, #124]                  @ 4-byte Spill
	moveq	r5, r0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r7, [sp, #220]
	and	r12, r9, r0
	ldr	r9, [sp, #208]
	ldr	r0, [sp, #216]
	adds	r5, r5, r9
	ldr	r3, [sp, #224]
	adcs	r2, r6, r2
	ldr	lr, [sp, #228]
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	adcs	r0, r11, r7
	str	r0, [sp, #96]                   @ 4-byte Spill
	adcs	r0, r10, r3
	str	r0, [sp, #92]                   @ 4-byte Spill
	adcs	r0, r8, lr
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	add	r11, sp, #192
	ldr	r7, [r4]
	adc	r0, r0, r12
	ldr	r12, [sp, #184]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [r4, #4]
	subs	r7, r12, r7
	str	r0, [sp, #72]                   @ 4-byte Spill
	str	r7, [sp, #68]                   @ 4-byte Spill
	ldr	lr, [sp, #188]
	ldr	r7, [sp, #72]                   @ 4-byte Reload
	ldr	r0, [r4, #8]
	sbcs	r7, lr, r7
	str	r0, [sp, #64]                   @ 4-byte Spill
	str	r2, [sp, #128]                  @ 4-byte Spill
	str	r7, [sp, #72]                   @ 4-byte Spill
	ldm	r11, {r2, r3, r8, r11}
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	ldr	r0, [r4, #12]
	sbcs	r2, r2, r7
	str	r0, [sp, #60]                   @ 4-byte Spill
	str	r2, [sp, #64]                   @ 4-byte Spill
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	ldr	r0, [r4, #16]
	sbcs	r2, r3, r2
	str	r0, [sp, #76]                   @ 4-byte Spill
	str	r2, [sp, #60]                   @ 4-byte Spill
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	ldr	r0, [r4, #20]
	sbcs	r2, r8, r2
	str	r0, [sp, #80]                   @ 4-byte Spill
	str	r2, [sp, #56]                   @ 4-byte Spill
	ldr	r2, [sp, #80]                   @ 4-byte Reload
	str	r5, [sp, #132]                  @ 4-byte Spill
	sbcs	r2, r11, r2
	ldr	r1, [r4, #24]
	str	r2, [sp, #52]                   @ 4-byte Spill
	ldr	r2, [sp, #132]                  @ 4-byte Reload
	str	r1, [sp, #104]                  @ 4-byte Spill
	sbcs	r1, r2, r1
	ldr	r0, [r4, #28]
	str	r1, [sp, #48]                   @ 4-byte Spill
	ldr	r1, [sp, #128]                  @ 4-byte Reload
	str	r0, [sp, #108]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	ldr	r5, [r4, #32]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r6, [r4, #36]
	sbcs	r0, r0, r5
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r9, [r4, #40]
	sbcs	r0, r0, r6
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r10, [r4, #44]
	sbcs	r0, r0, r9
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r5, [sp, #112]                  @ 4-byte Spill
	sbcs	r0, r0, r10
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r10, [sp, #124]                 @ 4-byte Spill
	ldr	r10, [r4, #48]
	sbc	r0, r0, #0
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [r4, #52]
	subs	r5, r5, r10
	str	r10, [sp, #20]                  @ 4-byte Spill
	ldr	r10, [sp, #72]                  @ 4-byte Reload
	str	r5, [sp, #12]                   @ 4-byte Spill
	ldr	r11, [r4, #56]
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	str	r0, [sp, #16]                   @ 4-byte Spill
	sbcs	r0, r10, r0
	str	r6, [sp, #116]                  @ 4-byte Spill
	mov	r10, r11
	ldr	r6, [r4, #60]
	str	r0, [sp, #8]                    @ 4-byte Spill
	sbcs	r0, r5, r11
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	ldr	r7, [r4, #64]
	str	r0, [sp, #4]                    @ 4-byte Spill
	sbcs	r0, r5, r6
	str	r6, [sp, #76]                   @ 4-byte Spill
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	ldr	r8, [r4, #68]
	str	r7, [sp, #80]                   @ 4-byte Spill
	sbcs	r6, r6, r7
	ldr	r7, [sp, #52]                   @ 4-byte Reload
	str	r9, [sp, #120]                  @ 4-byte Spill
	ldr	r9, [r4, #72]
	sbcs	r7, r7, r8
	ldr	r5, [sp, #48]                   @ 4-byte Reload
	str	r8, [sp, #84]                   @ 4-byte Spill
	ldr	r12, [r4, #76]
	sbcs	r8, r5, r9
	ldr	r5, [sp, #44]                   @ 4-byte Reload
	str	r9, [sp, #88]                   @ 4-byte Spill
	ldr	r3, [r4, #80]
	sbcs	r9, r5, r12
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	ldr	r2, [r4, #84]
	str	r3, [sp, #96]                   @ 4-byte Spill
	sbcs	r5, r5, r3
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [r4, #88]
	str	r2, [sp, #100]                  @ 4-byte Spill
	sbcs	r11, r3, r2
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	ldr	lr, [r4, #92]
	str	r0, [sp, #60]                   @ 4-byte Spill
	sbcs	r0, r2, r1
	str	r1, [sp, #128]                  @ 4-byte Spill
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #72]                   @ 4-byte Spill
	sbcs	r0, r1, lr
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	sbc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	str	lr, [sp, #132]                  @ 4-byte Spill
	adds	lr, r0, r1
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r12, [sp, #92]                  @ 4-byte Spill
	adcs	r2, r0, r1
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	str	lr, [r4, #24]
	add	lr, r4, #28
	adcs	r3, r0, r1
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	adcs	r12, r0, r1
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r6, r0, r6
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	stm	lr, {r2, r3, r12}
	adcs	r7, r0, r7
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r0, r8
	str	r0, [r4, #48]
	adcs	r1, r1, r9
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	lr, r10, r5
	str	r1, [r4, #52]
	adcs	r1, r0, r11
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r3, [sp, #68]                   @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r7, [r4, #44]
	adcs	r3, r0, r3
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	str	r6, [r4, #40]
	adcs	r7, r0, r7
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	str	lr, [r4, #56]
	adcs	r6, r0, #0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	str	r6, [r4, #76]
	adcs	r5, r0, #0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r5, [r4, #80]
	adcs	r12, r0, #0
	add	r0, r4, #60
	stm	r0, {r1, r2, r3, r7}
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r0, #0
	str	r12, [r4, #84]
	adc	r1, r1, #0
	str	r0, [r4, #88]
	str	r1, [r4, #92]
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end186:
	.size	mclb_mul12, .Lfunc_end186-mclb_mul12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr12                      @ -- Begin function mclb_sqr12
	.p2align	2
	.type	mclb_sqr12,%function
	.code	32                              @ @mclb_sqr12
mclb_sqr12:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #236
	mov	r2, r1
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul6
	add	r1, r5, #24
	add	r0, r4, #48
	mov	r2, r1
	bl	mclb_mul6
	ldm	r5, {r0, r1, r10}
	add	r3, r5, #32
	add	lr, r5, #12
	ldr	r6, [r5, #24]
	ldr	r7, [r5, #28]
	adds	r9, r0, r6
	ldm	lr, {r8, r12, lr}
	adcs	r11, r1, r7
	ldm	r3, {r0, r1, r3}
	adcs	r10, r10, r0
	ldr	r2, [r5, #44]
	adcs	r5, r8, r1
	mov	r0, #0
	adcs	r7, r12, r3
	add	r1, sp, #160
	adcs	r6, lr, r2
	add	r2, sp, #136
	adc	r8, r0, #0
	add	r0, sp, #184
	str	r9, [sp, #160]
	str	r9, [sp, #136]
	str	r11, [sp, #164]
	str	r11, [sp, #140]
	str	r10, [sp, #168]
	str	r10, [sp, #144]
	str	r5, [sp, #172]
	str	r5, [sp, #148]
	str	r7, [sp, #176]
	str	r7, [sp, #152]
	str	r6, [sp, #180]
	str	r6, [sp, #156]
	bl	mclb_mul6
	rsb	r0, r8, #0
	ldr	r12, [sp, #208]
	and	r1, r7, r0
	and	r7, r5, r0
	and	r2, r6, r0
	lsr	r6, r7, #31
	orr	lr, r6, r1, lsl #1
	and	r6, r10, r0
	and	r0, r11, r0
	lsl	r7, r7, #1
	lsl	r3, r2, #1
	lsr	r5, r0, #31
	orr	r10, r7, r6, lsr #31
	orr	r11, r5, r6, lsl #1
	sub	r5, r8, r8, lsl #1
	add	r7, sp, #212
	and	r5, r9, r5
	lsl	r0, r0, #1
	lsr	r9, r2, #31
	ldm	r7, {r2, r6, r7}
	orr	r0, r0, r5, lsr #31
	adds	r5, r12, r5, lsl #1
	adcs	r0, r0, r2
	orr	r3, r3, r1, lsr #31
	str	r0, [sp, #128]                  @ 4-byte Spill
	adcs	r0, r11, r6
	ldr	r1, [sp, #224]
	add	r11, sp, #192
	str	r0, [sp, #100]                  @ 4-byte Spill
	adcs	r0, r10, r7
	str	r3, [sp, #124]                  @ 4-byte Spill
	str	r0, [sp, #96]                   @ 4-byte Spill
	adcs	r0, lr, r1
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r3, [sp, #228]
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r7, [r4]
	adcs	r0, r0, r3
	str	r0, [sp, #88]                   @ 4-byte Spill
	adc	r0, r9, r8
	ldr	r12, [sp, #184]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [r4, #4]
	subs	r7, r12, r7
	str	r0, [sp, #68]                   @ 4-byte Spill
	str	r7, [sp, #72]                   @ 4-byte Spill
	ldr	lr, [sp, #188]
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	ldr	r0, [r4, #8]
	sbcs	r7, lr, r7
	str	r0, [sp, #64]                   @ 4-byte Spill
	str	r7, [sp, #68]                   @ 4-byte Spill
	add	lr, r4, #48
	ldm	r11, {r2, r3, r8, r11}
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	ldr	r0, [r4, #12]
	sbcs	r2, r2, r7
	str	r0, [sp, #60]                   @ 4-byte Spill
	str	r2, [sp, #64]                   @ 4-byte Spill
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	ldr	r0, [r4, #16]
	sbcs	r2, r3, r2
	str	r0, [sp, #76]                   @ 4-byte Spill
	str	r2, [sp, #60]                   @ 4-byte Spill
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	ldr	r0, [r4, #20]
	sbcs	r2, r8, r2
	str	r0, [sp, #80]                   @ 4-byte Spill
	str	r2, [sp, #56]                   @ 4-byte Spill
	ldr	r2, [sp, #80]                   @ 4-byte Reload
	str	r5, [sp, #132]                  @ 4-byte Spill
	sbcs	r2, r11, r2
	ldr	r1, [r4, #24]
	str	r2, [sp, #52]                   @ 4-byte Spill
	ldr	r2, [sp, #132]                  @ 4-byte Reload
	str	r1, [sp, #104]                  @ 4-byte Spill
	sbcs	r1, r2, r1
	ldr	r0, [r4, #28]
	str	r1, [sp, #48]                   @ 4-byte Spill
	ldr	r1, [sp, #128]                  @ 4-byte Reload
	str	r0, [sp, #108]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	ldr	r5, [r4, #32]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r6, [r4, #36]
	sbcs	r0, r0, r5
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r9, [r4, #40]
	sbcs	r0, r0, r6
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r10, [r4, #44]
	sbcs	r0, r0, r9
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r5, [sp, #112]                  @ 4-byte Spill
	sbcs	r0, r0, r10
	str	r10, [sp, #124]                 @ 4-byte Spill
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldm	lr, {r10, r11, lr}
	sbc	r0, r0, #0
	ldr	r5, [sp, #72]                   @ 4-byte Reload
	str	r6, [sp, #116]                  @ 4-byte Spill
	subs	r5, r5, r10
	str	r5, [sp, #20]                   @ 4-byte Spill
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	ldr	r6, [r4, #60]
	sbcs	r5, r5, r11
	str	r5, [sp, #16]                   @ 4-byte Spill
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	ldr	r7, [r4, #64]
	sbcs	r5, r5, lr
	str	r5, [sp, #12]                   @ 4-byte Spill
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	ldr	r8, [r4, #68]
	sbcs	r5, r5, r6
	str	r5, [sp, #8]                    @ 4-byte Spill
	ldr	r5, [sp, #56]                   @ 4-byte Reload
	str	r6, [sp, #76]                   @ 4-byte Spill
	sbcs	r6, r5, r7
	ldr	r5, [sp, #52]                   @ 4-byte Reload
	str	r9, [sp, #120]                  @ 4-byte Spill
	str	r7, [sp, #80]                   @ 4-byte Spill
	sbcs	r7, r5, r8
	ldr	r9, [r4, #72]
	ldr	r5, [sp, #48]                   @ 4-byte Reload
	str	r8, [sp, #84]                   @ 4-byte Spill
	ldr	r12, [r4, #76]
	sbcs	r8, r5, r9
	ldr	r5, [sp, #44]                   @ 4-byte Reload
	str	r9, [sp, #88]                   @ 4-byte Spill
	ldr	r3, [r4, #80]
	sbcs	r9, r5, r12
	ldr	r5, [sp, #40]                   @ 4-byte Reload
	str	r3, [sp, #96]                   @ 4-byte Spill
	sbcs	r3, r5, r3
	ldr	r2, [r4, #84]
	str	r3, [sp, #72]                   @ 4-byte Spill
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	str	r2, [sp, #100]                  @ 4-byte Spill
	sbcs	r2, r3, r2
	ldr	r1, [r4, #88]
	str	r2, [sp, #68]                   @ 4-byte Spill
	ldr	r2, [sp, #32]                   @ 4-byte Reload
	str	r1, [sp, #128]                  @ 4-byte Spill
	sbcs	r1, r2, r1
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [r4, #92]
	str	r1, [sp, #64]                   @ 4-byte Spill
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	str	r0, [sp, #132]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	sbc	r0, r0, #0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	str	r12, [sp, #92]                  @ 4-byte Spill
	adds	r5, r0, r1
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	str	r5, [r4, #24]
	add	r5, r4, #28
	adcs	r2, r0, r1
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r3, r0, r1
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r12, r0, r1
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	stm	r5, {r2, r3, r12}
	adcs	r6, r0, r6
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r2, [sp, #64]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r3, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r10, r8
	str	r0, [r4, #48]
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r1, r11, r9
	str	r1, [r4, #52]
	adcs	lr, lr, r0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	str	r7, [r4, #44]
	adcs	r1, r0, r1
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r6, [r4, #40]
	adcs	r3, r0, r3
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	lr, [r4, #56]
	adcs	r7, r0, r7
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r6, r0, #0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	str	r6, [r4, #76]
	adcs	r5, r0, #0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r5, [r4, #80]
	adcs	r12, r0, #0
	add	r0, r4, #60
	stm	r0, {r1, r2, r3, r7}
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r0, #0
	str	r12, [r4, #84]
	adc	r1, r1, #0
	str	r0, [r4, #88]
	str	r1, [r4, #92]
	add	sp, sp, #236
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end187:
	.size	mclb_sqr12, .Lfunc_end187-mclb_sqr12
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner416                @ -- Begin function mulUnit_inner416
	.p2align	2
	.type	mulUnit_inner416,%function
	.code	32                              @ @mulUnit_inner416
mulUnit_inner416:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r1, [r1, #48]
	umull	r1, r2, r1, r2
	adcs	r1, r6, r1
	str	r1, [r0, #48]
	adc	r1, r2, #0
	str	r1, [r0, #52]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end188:
	.size	mulUnit_inner416, .Lfunc_end188-mulUnit_inner416
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit13                  @ -- Begin function mclb_mulUnit13
	.p2align	2
	.type	mclb_mulUnit13,%function
	.code	32                              @ @mclb_mulUnit13
mclb_mulUnit13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #68
	mov	r4, r0
	add	r0, sp, #8
	bl	mulUnit_inner416
	ldr	r0, [sp, #60]
	add	lr, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r5, sp, #40
	ldm	lr, {r8, r9, r10, r12, lr}
	ldr	r11, [sp, #28]
	ldr	r6, [sp, #32]
	ldr	r7, [sp, #36]
	ldm	r5, {r1, r2, r3, r5}
	ldr	r0, [sp, #56]
	str	r0, [r4, #48]
	str	r1, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	str	r5, [r4, #44]
	stm	r4, {r8, r9, r10, r12, lr}
	str	r11, [r4, #20]
	str	r6, [r4, #24]
	str	r7, [r4, #28]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	sp, sp, #68
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end189:
	.size	mclb_mulUnit13, .Lfunc_end189-mclb_mulUnit13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd13               @ -- Begin function mclb_mulUnitAdd13
	.p2align	2
	.type	mclb_mulUnitAdd13,%function
	.code	32                              @ @mclb_mulUnitAdd13
mclb_mulUnitAdd13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #100
	ldm	r1, {r3, r9, lr}
	add	r6, r1, #40
	ldr	r5, [r0]
	umull	r3, r4, r3, r2
	ldr	r11, [r1, #36]
	ldr	r10, [r1, #32]
	ldr	r7, [r1, #28]
	ldr	r12, [r1, #12]
	str	r4, [sp, #80]                   @ 4-byte Spill
	ldr	r4, [r0, #4]
	adds	r3, r3, r5
	str	r4, [sp, #56]                   @ 4-byte Spill
	ldr	r4, [r0, #8]
	str	r4, [sp, #52]                   @ 4-byte Spill
	ldr	r4, [r0, #12]
	str	r3, [r0]
	ldm	r6, {r3, r5, r6}
	str	r4, [sp, #48]                   @ 4-byte Spill
	umull	r6, r4, r6, r2
	str	r4, [sp, #96]                   @ 4-byte Spill
	umull	r5, r4, r5, r2
	str	r6, [sp, #60]                   @ 4-byte Spill
	ldr	r6, [r1, #24]
	str	r4, [sp, #92]                   @ 4-byte Spill
	umull	r4, r3, r3, r2
	str	r5, [sp, #44]                   @ 4-byte Spill
	ldr	r5, [r1, #20]
	ldr	r1, [r1, #16]
	str	r4, [sp, #36]                   @ 4-byte Spill
	str	r3, [sp, #88]                   @ 4-byte Spill
	umull	r4, r3, r11, r2
	add	r11, r0, #32
	umull	r8, r1, r1, r2
	str	r4, [sp, #28]                   @ 4-byte Spill
	str	r3, [sp, #84]                   @ 4-byte Spill
	umull	r4, r3, r10, r2
	str	r1, [sp, #40]                   @ 4-byte Spill
	str	r4, [sp, #24]                   @ 4-byte Spill
	str	r3, [sp, #76]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	ldr	r7, [r0, #48]
	str	r4, [sp, #16]                   @ 4-byte Spill
	str	r3, [sp, #72]                   @ 4-byte Spill
	umull	r4, r3, r6, r2
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	str	r4, [sp, #8]                    @ 4-byte Spill
	str	r3, [sp, #68]                   @ 4-byte Spill
	umull	r4, r3, r5, r2
	umull	r5, r1, r12, r2
	str	r4, [sp, #4]                    @ 4-byte Spill
	str	r3, [sp, #64]                   @ 4-byte Spill
	str	r1, [sp, #32]                   @ 4-byte Spill
	umull	r4, r1, lr, r2
	add	lr, r0, #16
	str	r1, [sp, #20]                   @ 4-byte Spill
	umull	r12, r1, r9, r2
	ldm	r11, {r9, r10, r11}
	adcs	r12, r12, r6
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	str	r1, [sp, #12]                   @ 4-byte Spill
	ldr	r1, [r0, #44]
	adcs	r4, r4, r6
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	str	r1, [sp]                        @ 4-byte Spill
	ldm	lr, {r1, r2, r3, lr}
	adcs	r5, r5, r6
	ldr	r6, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r8, r1
	adcs	r2, r6, r2
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	adcs	r8, r6, r3
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	lr, r6, lr
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	adcs	r3, r6, r9
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	str	r3, [sp, #56]                   @ 4-byte Spill
	adcs	r9, r6, r10
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	ldr	r3, [sp]                        @ 4-byte Reload
	adcs	r10, r6, r11
	ldr	r6, [sp, #44]                   @ 4-byte Reload
	adcs	r11, r6, r3
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	mov	r3, #0
	adcs	r7, r6, r7
	adc	r6, r3, #0
	str	r6, [sp, #60]                   @ 4-byte Spill
	ldr	r6, [sp, #80]                   @ 4-byte Reload
	ldr	r3, [sp, #84]                   @ 4-byte Reload
	adds	r6, r12, r6
	str	r6, [r0, #4]
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	r6, r4, r6
	str	r6, [r0, #8]
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	adcs	r6, r5, r6
	str	r6, [r0, #12]
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	adcs	r1, r1, r6
	str	r1, [r0, #16]
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	ldr	r6, [sp, #88]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	adcs	r1, r8, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	adcs	r1, lr, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	add	r0, r0, #32
	adcs	r1, r2, r1
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	adcs	r2, r9, r2
	adcs	r3, r10, r3
	adcs	r6, r11, r6
	adcs	r7, r7, r5
	stm	r0, {r1, r2, r3, r6, r7}
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	adc	r0, r1, r0
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end190:
	.size	mclb_mulUnitAdd13, .Lfunc_end190-mclb_mulUnitAdd13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul13                      @ -- Begin function mclb_mul13
	.p2align	2
	.type	mclb_mul13,%function
	.code	32                              @ @mclb_mul13
mclb_mul13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #828
	mov	r6, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #768
	mov	r7, r1
	bl	mulUnit_inner416
	ldr	r0, [sp, #820]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #816]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #812]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #808]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #804]
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #800]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #796]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #792]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #788]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #784]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r1, [sp, #772]
	ldr	r0, [sp, #768]
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r1, [sp, #776]
	str	r1, [sp, #48]                   @ 4-byte Spill
	ldr	r2, [r6, #4]
	ldr	r1, [sp, #780]
	str	r0, [r4]
	add	r0, sp, #712
	str	r1, [sp, #28]                   @ 4-byte Spill
	mov	r1, r7
	str	r4, [sp, #92]                   @ 4-byte Spill
	str	r7, [sp, #84]                   @ 4-byte Spill
	bl	mulUnit_inner416
	ldr	r0, [sp, #764]
	add	lr, sp, #712
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r10, sp, #736
	ldr	r0, [sp, #760]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #756]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #752]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #32]                  @ 4-byte Reload
	ldm	r10, {r5, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #4]
	mov	r4, r6
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	str	r6, [sp, #88]                   @ 4-byte Spill
	adcs	r0, r1, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r2, [r6, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #656
	bl	mulUnit_inner416
	ldr	r0, [sp, #708]
	add	r12, sp, #664
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #704]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r1, [sp, #656]
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	ldr	r11, [sp, #700]
	adds	r1, r1, r5
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	ldr	lr, [sp, #696]
	ldr	r6, [sp, #692]
	ldr	r7, [sp, #688]
	ldr	r8, [sp, #660]
	ldm	r12, {r0, r2, r3, r9, r10, r12}
	str	r1, [r5, #8]
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r1, r8, r1
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r2, [r4, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r4, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #600
	bl	mulUnit_inner416
	ldr	r0, [sp, #652]
	add	lr, sp, #620
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r7, sp, #608
	ldr	r0, [sp, #648]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #644]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #600]
	ldr	r10, [sp, #32]                  @ 4-byte Reload
	ldr	r8, [sp, #640]
	adds	r0, r0, r10
	ldr	r6, [sp, #636]
	ldr	r11, [sp, #632]
	ldm	lr, {r3, r12, lr}
	ldr	r9, [sp, #604]
	ldm	r7, {r1, r2, r7}
	str	r0, [r5, #12]
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r5, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #544
	bl	mulUnit_inner416
	ldr	r0, [sp, #596]
	add	r7, sp, #548
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #592]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #588]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r8, [sp, #544]
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	ldr	r11, [sp, #584]
	adds	r6, r8, r4
	ldr	r4, [sp, #92]                   @ 4-byte Reload
	ldr	r9, [sp, #580]
	ldr	lr, [sp, #576]
	ldr	r10, [sp, #572]
	ldr	r12, [sp, #568]
	ldr	r3, [sp, #564]
	ldm	r7, {r0, r1, r2, r7}
	str	r6, [r4, #16]
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r7, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r5, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #488
	bl	mulUnit_inner416
	ldr	r0, [sp, #540]
	add	r10, sp, #488
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r12, sp, #508
	ldr	r0, [sp, #536]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #532]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldm	r10, {r0, r1, r10}
	ldr	r8, [sp, #32]                   @ 4-byte Reload
	ldr	lr, [sp, #528]
	adds	r0, r0, r8
	ldr	r6, [sp, #524]
	ldr	r11, [sp, #520]
	ldm	r12, {r3, r9, r12}
	ldr	r7, [sp, #504]
	ldr	r2, [sp, #500]
	str	r0, [r4, #20]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r4, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r2, [r4, #24]
	adcs	r0, r7, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #432
	bl	mulUnit_inner416
	ldr	r0, [sp, #484]
	add	r11, sp, #464
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	lr, sp, #436
	ldr	r0, [sp, #480]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #476]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r8, [sp, #432]
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	ldm	r11, {r7, r9, r11}
	adds	r6, r8, r5
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	ldr	r10, [sp, #460]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r6, [r5, #24]
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r2, [r4, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r4, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #376
	bl	mulUnit_inner416
	ldr	r0, [sp, #428]
	add	r10, sp, #376
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r12, sp, #396
	ldr	r0, [sp, #424]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #420]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldm	r10, {r0, r1, r10}
	ldr	r8, [sp, #32]                   @ 4-byte Reload
	ldr	lr, [sp, #416]
	adds	r0, r0, r8
	ldr	r6, [sp, #412]
	ldr	r11, [sp, #408]
	ldm	r12, {r3, r9, r12}
	ldr	r7, [sp, #392]
	ldr	r2, [sp, #388]
	str	r0, [r5, #28]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r5, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r7, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #320
	bl	mulUnit_inner416
	ldr	r0, [sp, #372]
	add	r11, sp, #352
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	lr, sp, #324
	ldr	r0, [sp, #368]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #364]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r8, [sp, #320]
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	ldm	r11, {r7, r9, r11}
	adds	r6, r8, r4
	ldr	r4, [sp, #92]                   @ 4-byte Reload
	ldr	r10, [sp, #348]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r6, [r4, #32]
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r5, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r5, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #264
	bl	mulUnit_inner416
	ldr	r0, [sp, #316]
	add	r10, sp, #264
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r12, sp, #284
	ldr	r0, [sp, #312]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #308]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldm	r10, {r0, r1, r10}
	ldr	r8, [sp, #32]                   @ 4-byte Reload
	ldr	lr, [sp, #304]
	adds	r0, r0, r8
	ldr	r6, [sp, #300]
	ldr	r11, [sp, #296]
	ldm	r12, {r3, r9, r12}
	ldr	r7, [sp, #280]
	ldr	r2, [sp, #276]
	str	r0, [r4, #36]
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r4, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r4, #40]
	adcs	r0, r7, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #208
	bl	mulUnit_inner416
	ldr	r0, [sp, #260]
	add	r11, sp, #240
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	lr, sp, #212
	ldr	r0, [sp, #256]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #252]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r8, [sp, #208]
	ldr	r5, [sp, #32]                   @ 4-byte Reload
	ldm	r11, {r7, r9, r11}
	adds	r6, r8, r5
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	ldr	r10, [sp, #236]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r6, [r5, #40]
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r0, r6
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r2, [r4, #44]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r4, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #36]                   @ 4-byte Spill
	add	r0, sp, #152
	bl	mulUnit_inner416
	ldr	r0, [sp, #204]
	add	r12, sp, #156
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #200]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #196]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [sp, #152]
	ldr	r10, [sp, #32]                  @ 4-byte Reload
	ldr	r8, [sp, #192]
	adds	r1, r1, r10
	ldr	lr, [sp, #188]
	ldr	r6, [sp, #184]
	ldr	r11, [sp, #180]
	ldm	r12, {r0, r2, r3, r7, r9, r12}
	str	r1, [r5, #44]
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r2, [r0, #48]
	add	r0, sp, #96
	bl	mulUnit_inner416
	ldr	r0, [sp, #148]
	add	lr, sp, #96
	str	r0, [sp, #88]                   @ 4-byte Spill
	add	r10, sp, #120
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r4, [sp, #32]                   @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r8, r10}
	adds	r0, r0, r4
	ldr	r4, [sp, #28]                   @ 4-byte Reload
	ldr	r11, [sp, #144]
	adcs	r1, r1, r4
	ldr	r4, [sp, #24]                   @ 4-byte Reload
	ldr	r9, [sp, #140]
	adcs	r2, r2, r4
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adcs	r3, r3, r4
	ldr	r4, [sp, #16]                   @ 4-byte Reload
	adcs	r12, r12, r4
	ldr	r4, [sp, #60]                   @ 4-byte Reload
	adcs	lr, lr, r4
	ldr	r4, [sp, #56]                   @ 4-byte Reload
	adcs	r5, r5, r4
	ldr	r4, [sp, #52]                   @ 4-byte Reload
	adcs	r6, r6, r4
	ldr	r4, [sp, #92]                   @ 4-byte Reload
	str	r0, [r4, #48]
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r1, [r4, #52]
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r2, [r4, #56]
	ldr	r2, [sp, #72]                   @ 4-byte Reload
	adcs	r1, r8, r1
	str	r3, [r4, #60]
	ldr	r3, [sp, #68]                   @ 4-byte Reload
	adcs	r2, r10, r2
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adcs	r3, r9, r3
	str	r6, [r4, #76]
	ldr	r6, [sp, #88]                   @ 4-byte Reload
	adcs	r7, r11, r7
	str	r12, [r4, #64]
	add	r12, r4, #80
	adc	r6, r6, #0
	str	lr, [r4, #68]
	str	r5, [r4, #72]
	stm	r12, {r0, r1, r2, r3, r7}
	str	r6, [r4, #100]
	add	sp, sp, #828
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end191:
	.size	mclb_mul13, .Lfunc_end191-mclb_mul13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr13                      @ -- Begin function mclb_sqr13
	.p2align	2
	.type	mclb_sqr13,%function
	.code	32                              @ @mclb_sqr13
mclb_sqr13:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #820
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #760
	mov	r5, r1
	bl	mulUnit_inner416
	ldr	r0, [sp, #812]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #808]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #804]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #800]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #796]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #792]
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #788]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #784]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #780]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #776]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r1, [sp, #764]
	ldr	r0, [sp, #760]
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #768]
	str	r1, [sp, #52]                   @ 4-byte Spill
	ldr	r2, [r5, #4]
	ldr	r1, [sp, #772]
	str	r0, [r4]
	add	r0, sp, #704
	str	r1, [sp, #32]                   @ 4-byte Spill
	mov	r1, r5
	bl	mulUnit_inner416
	ldr	r0, [sp, #756]
	add	lr, sp, #704
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r10, sp, #728
	ldr	r0, [sp, #752]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #748]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #36]                  @ 4-byte Reload
	ldm	r10, {r6, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #4]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #648
	bl	mulUnit_inner416
	ldr	r0, [sp, #700]
	add	lr, sp, #680
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r11, sp, #656
	ldr	r0, [sp, #696]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #692]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r8, [sp, #648]
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	ldm	lr, {r6, r12, lr}
	adds	r7, r8, r7
	ldr	r10, [sp, #652]
	ldm	r11, {r0, r1, r2, r3, r9, r11}
	str	r7, [r4, #8]
	ldr	r7, [sp, #52]                   @ 4-byte Reload
	adcs	r7, r10, r7
	str	r7, [sp, #36]                   @ 4-byte Spill
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #592
	bl	mulUnit_inner416
	ldr	r0, [sp, #644]
	add	r9, sp, #620
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	lr, sp, #600
	ldr	r0, [sp, #640]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #636]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #592]
	ldr	r10, [sp, #36]                  @ 4-byte Reload
	ldm	r9, {r6, r7, r8, r9}
	adds	r0, r0, r10
	ldr	r11, [sp, #596]
	ldm	lr, {r1, r2, r3, r12, lr}
	str	r0, [r4, #12]
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #536
	bl	mulUnit_inner416
	ldr	r0, [sp, #588]
	add	r12, sp, #540
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #584]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #580]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r8, [sp, #536]
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	ldr	r11, [sp, #576]
	adds	r7, r8, r7
	ldr	lr, [sp, #572]
	ldr	r6, [sp, #568]
	ldm	r12, {r0, r1, r2, r3, r9, r10, r12}
	str	r7, [r4, #16]
	ldr	r7, [sp, #52]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #480
	bl	mulUnit_inner416
	ldr	r0, [sp, #532]
	add	r10, sp, #512
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	lr, sp, #484
	ldr	r0, [sp, #528]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #524]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r9, [sp, #480]
	ldm	r10, {r6, r8, r10}
	adds	r7, r9, r7
	ldr	r11, [sp, #508]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r4, #20]
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r2, [r5, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #424
	bl	mulUnit_inner416
	ldr	r0, [sp, #476]
	add	r8, sp, #456
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r12, sp, #432
	ldr	r0, [sp, #472]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #468]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #424]
	ldr	r9, [sp, #36]                   @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r9
	ldr	lr, [sp, #452]
	ldr	r10, [sp, #448]
	ldr	r11, [sp, #428]
	ldm	r12, {r1, r2, r3, r12}
	str	r0, [r4, #24]
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #368
	bl	mulUnit_inner416
	ldr	r0, [sp, #420]
	add	r11, sp, #400
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	lr, sp, #372
	ldr	r0, [sp, #416]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #412]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r10, [sp, #368]
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	ldm	r11, {r6, r8, r11}
	adds	r7, r10, r7
	ldm	lr, {r0, r1, r2, r3, r9, r12, lr}
	str	r7, [r4, #28]
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #312
	bl	mulUnit_inner416
	ldr	r0, [sp, #364]
	add	r10, sp, #344
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	lr, sp, #316
	ldr	r0, [sp, #360]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #356]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r9, [sp, #312]
	ldm	r10, {r6, r8, r10}
	adds	r7, r9, r7
	ldr	r11, [sp, #340]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r4, #32]
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r5, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #256
	bl	mulUnit_inner416
	ldr	r0, [sp, #308]
	add	r8, sp, #288
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r12, sp, #264
	ldr	r0, [sp, #304]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #300]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #256]
	ldr	r9, [sp, #36]                   @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r9
	ldr	lr, [sp, #284]
	ldr	r10, [sp, #280]
	ldr	r11, [sp, #260]
	ldm	r12, {r1, r2, r3, r12}
	str	r0, [r4, #36]
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r5, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #200
	bl	mulUnit_inner416
	ldr	r0, [sp, #252]
	add	r11, sp, #232
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	lr, sp, #204
	ldr	r0, [sp, #248]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #244]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r10, [sp, #200]
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	ldm	r11, {r6, r8, r11}
	adds	r7, r10, r7
	ldm	lr, {r0, r1, r2, r3, r9, r12, lr}
	str	r7, [r4, #40]
	ldr	r7, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #44]
	adcs	r0, r3, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #40]                   @ 4-byte Spill
	add	r0, sp, #144
	bl	mulUnit_inner416
	ldr	r0, [sp, #196]
	add	lr, sp, #144
	str	r0, [sp, #16]                   @ 4-byte Spill
	add	r9, sp, #172
	ldr	r0, [sp, #192]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #188]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r10, [sp, #36]                  @ 4-byte Reload
	ldm	r9, {r6, r7, r8, r9}
	adds	r0, r0, r10
	ldr	r11, [sp, #168]
	str	r0, [r4, #44]
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r5, #48]
	adcs	r0, r3, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #88
	bl	mulUnit_inner416
	ldr	r0, [sp, #140]
	add	lr, sp, #96
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r10, sp, #116
	ldr	r0, [sp, #136]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #132]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r3, [sp, #88]
	ldr	r11, [sp, #36]                  @ 4-byte Reload
	ldr	r7, [sp, #92]
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	adds	r3, r3, r11
	ldm	lr, {r0, r1, r2, r12, lr}
	adcs	r7, r7, r6
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	ldr	r9, [sp, #128]
	adcs	r0, r0, r6
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	ldm	r10, {r5, r8, r10}
	adcs	r1, r1, r6
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	str	r3, [r4, #48]
	add	r3, r4, #56
	adcs	r2, r2, r6
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	str	r7, [r4, #52]
	adcs	r12, r12, r6
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	ldr	r7, [sp, #44]                   @ 4-byte Reload
	adcs	lr, lr, r6
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	stm	r3, {r0, r1, r2, r12, lr}
	add	r12, r4, #80
	adcs	r5, r5, r6
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r8, r0
	ldr	r2, [sp, #76]                   @ 4-byte Reload
	adcs	r1, r10, r1
	ldr	r3, [sp, #72]                   @ 4-byte Reload
	adcs	r2, r9, r2
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	adcs	r3, r7, r3
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	str	r5, [r4, #76]
	adcs	r7, r6, r7
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	stm	r12, {r0, r1, r2, r3, r7}
	adc	r6, r6, #0
	str	r6, [r4, #100]
	add	sp, sp, #820
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end192:
	.size	mclb_sqr13, .Lfunc_end192-mclb_sqr13
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner448                @ -- Begin function mulUnit_inner448
	.p2align	2
	.type	mulUnit_inner448,%function
	.code	32                              @ @mulUnit_inner448
mulUnit_inner448:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #48]
	ldr	r1, [r1, #52]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #52]
	adc	r1, r2, #0
	str	r1, [r0, #56]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end193:
	.size	mulUnit_inner448, .Lfunc_end193-mulUnit_inner448
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit14                  @ -- Begin function mclb_mulUnit14
	.p2align	2
	.type	mclb_mulUnit14,%function
	.code	32                              @ @mclb_mulUnit14
mclb_mulUnit14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #76
	mov	r4, r0
	add	r0, sp, #8
	bl	mulUnit_inner448
	ldr	r0, [sp, #64]
	add	r10, sp, #8
	str	r0, [sp, #4]                    @ 4-byte Spill
	add	r5, sp, #40
	ldr	r0, [sp, #20]
	ldm	r10, {r8, r9, r10}
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #56]
	ldr	lr, [sp, #24]
	ldr	r11, [sp, #28]
	ldr	r6, [sp, #32]
	ldr	r7, [sp, #36]
	ldm	r5, {r1, r2, r3, r5}
	ldr	r12, [sp, #60]
	str	r0, [r4, #48]
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [r4, #12]
	str	r1, [r4, #32]
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	str	r5, [r4, #44]
	str	r12, [r4, #52]
	stm	r4, {r8, r9, r10}
	str	lr, [r4, #16]
	str	r11, [r4, #20]
	str	r6, [r4, #24]
	str	r7, [r4, #28]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	add	sp, sp, #76
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end194:
	.size	mclb_mulUnit14, .Lfunc_end194-mclb_mulUnit14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd14               @ -- Begin function mclb_mulUnitAdd14
	.p2align	2
	.type	mclb_mulUnitAdd14,%function
	.code	32                              @ @mclb_mulUnitAdd14
mclb_mulUnitAdd14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #112
	ldm	r1, {r3, r11, r12, lr}
	add	r9, r1, #36
	ldr	r5, [r0]
	umull	r3, r4, r3, r2
	ldr	r10, [r1, #32]
	str	r4, [sp, #92]                   @ 4-byte Spill
	ldr	r4, [r0, #4]
	adds	r3, r3, r5
	str	r4, [sp, #64]                   @ 4-byte Spill
	ldr	r4, [r0, #8]
	str	r4, [sp, #60]                   @ 4-byte Spill
	ldr	r4, [r0, #12]
	str	r3, [r0]
	str	r4, [sp, #56]                   @ 4-byte Spill
	ldm	r9, {r3, r5, r7, r8, r9}
	umull	r6, r4, r9, r2
	str	r6, [sp, #68]                   @ 4-byte Spill
	str	r4, [sp, #108]                  @ 4-byte Spill
	umull	r6, r4, r8, r2
	ldr	r8, [r0, #52]
	str	r6, [sp, #52]                   @ 4-byte Spill
	str	r4, [sp, #104]                  @ 4-byte Spill
	umull	r6, r4, r7, r2
	ldr	r7, [r1, #28]
	str	r4, [sp, #100]                  @ 4-byte Spill
	umull	r5, r4, r5, r2
	str	r6, [sp, #44]                   @ 4-byte Spill
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	str	r4, [sp, #96]                   @ 4-byte Spill
	umull	r4, r3, r3, r2
	str	r5, [sp, #40]                   @ 4-byte Spill
	ldr	r5, [r1, #24]
	str	r4, [sp, #32]                   @ 4-byte Spill
	str	r3, [sp, #88]                   @ 4-byte Spill
	umull	r4, r3, r10, r2
	ldr	r10, [r0, #32]
	str	r4, [sp, #24]                   @ 4-byte Spill
	str	r3, [sp, #84]                   @ 4-byte Spill
	umull	r4, r3, r7, r2
	ldr	r7, [r0, #48]
	str	r4, [sp, #16]                   @ 4-byte Spill
	str	r3, [sp, #80]                   @ 4-byte Spill
	umull	r4, r3, r5, r2
	ldr	r5, [r1, #20]
	ldr	r1, [r1, #16]
	str	r4, [sp, #12]                   @ 4-byte Spill
	umull	r9, r1, r1, r2
	str	r3, [sp, #76]                   @ 4-byte Spill
	umull	r4, r3, r5, r2
	str	r1, [sp, #48]                   @ 4-byte Spill
	umull	r5, r1, lr, r2
	str	r4, [sp, #8]                    @ 4-byte Spill
	str	r3, [sp, #72]                   @ 4-byte Spill
	str	r1, [sp, #36]                   @ 4-byte Spill
	umull	r4, r1, r12, r2
	add	r12, r0, #16
	str	r1, [sp, #28]                   @ 4-byte Spill
	umull	lr, r1, r11, r2
	ldr	r11, [r0, #36]
	str	r1, [sp, #20]                   @ 4-byte Spill
	adcs	lr, lr, r6
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [r0, #40]
	str	r1, [sp]                        @ 4-byte Spill
	adcs	r4, r4, r6
	ldr	r1, [r0, #44]
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldm	r12, {r1, r2, r3, r12}
	adcs	r5, r5, r6
	ldr	r6, [sp, #8]                    @ 4-byte Reload
	adcs	r1, r9, r1
	ldr	r9, [sp, #4]                    @ 4-byte Reload
	adcs	r2, r6, r2
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	str	r3, [sp, #56]                   @ 4-byte Spill
	adcs	r12, r6, r12
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp]                        @ 4-byte Reload
	adcs	r6, r6, r10
	str	r6, [sp, #60]                   @ 4-byte Spill
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	adcs	r10, r6, r11
	ldr	r6, [sp, #40]                   @ 4-byte Reload
	adcs	r11, r6, r3
	ldr	r6, [sp, #44]                   @ 4-byte Reload
	mov	r3, #0
	adcs	r6, r6, r9
	str	r6, [sp, #64]                   @ 4-byte Spill
	ldr	r6, [sp, #52]                   @ 4-byte Reload
	adcs	r7, r6, r7
	ldr	r6, [sp, #68]                   @ 4-byte Reload
	adcs	r8, r6, r8
	adc	r6, r3, #0
	str	r6, [sp, #68]                   @ 4-byte Spill
	ldr	r6, [sp, #92]                   @ 4-byte Reload
	ldr	r3, [sp, #88]                   @ 4-byte Reload
	adds	r6, lr, r6
	str	r6, [r0, #4]
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	adcs	r6, r4, r6
	str	r6, [r0, #8]
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	adcs	r6, r5, r6
	str	r6, [r0, #12]
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	adcs	r1, r1, r6
	str	r1, [r0, #16]
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	ldr	r6, [sp, #96]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [sp, #56]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	add	r12, r0, #32
	adcs	r1, r2, r1
	ldr	r2, [sp, #84]                   @ 4-byte Reload
	adcs	r2, r10, r2
	adcs	r3, r11, r3
	adcs	r6, r5, r6
	ldr	r5, [sp, #100]                  @ 4-byte Reload
	adcs	r7, r7, r5
	ldr	r5, [sp, #104]                  @ 4-byte Reload
	stm	r12, {r1, r2, r3, r6, r7}
	adcs	r5, r8, r5
	str	r5, [r0, #52]
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	adc	r0, r1, r0
	add	sp, sp, #112
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end195:
	.size	mclb_mulUnitAdd14, .Lfunc_end195-mclb_mulUnitAdd14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul14                      @ -- Begin function mclb_mul14
	.p2align	2
	.type	mclb_mul14,%function
	.code	32                              @ @mclb_mul14
mclb_mul14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #468
	mov	r6, r2
	mov	r5, r1
	mov	r4, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	bl	mclb_mul7
	add	r0, r4, #56
	add	r1, r5, #28
	add	r2, r6, #28
	bl	mclb_mul7
	ldr	r0, [r6, #32]
	add	r11, r6, #36
	str	r0, [sp, #460]                  @ 4-byte Spill
	ldr	r4, [r6, #52]
	ldm	r6, {r0, r1, r2, r3, r7, r12, lr}
	ldr	r6, [r6, #28]
	ldm	r11, {r8, r9, r10, r11}
	adds	r0, r0, r6
	str	r0, [sp, #464]                  @ 4-byte Spill
	ldr	r0, [sp, #460]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #460]                  @ 4-byte Spill
	adcs	r8, r2, r8
	ldr	r2, [r5, #28]
	adcs	r9, r3, r9
	mov	r0, #0
	adcs	r10, r7, r10
	ldm	r5, {r3, r6, r7}
	adcs	r11, r12, r11
	adcs	lr, lr, r4
	ldr	r1, [r5, #32]
	adc	r0, r0, #0
	adds	r2, r3, r2
	ldr	r12, [r5, #36]
	adcs	r6, r6, r1
	str	r0, [sp, #456]                  @ 4-byte Spill
	ldr	r0, [r5, #12]
	str	r0, [sp, #448]                  @ 4-byte Spill
	adcs	r0, r7, r12
	str	r2, [sp, #400]                  @ 4-byte Spill
	umull	r7, r1, lr, r0
	str	r0, [sp, #404]                  @ 4-byte Spill
	str	r8, [sp, #452]                  @ 4-byte Spill
	str	r11, [sp, #392]                 @ 4-byte Spill
	str	lr, [sp, #396]                  @ 4-byte Spill
	str	r1, [sp, #432]                  @ 4-byte Spill
	umull	r1, r3, lr, r2
	str	r7, [sp, #428]                  @ 4-byte Spill
	str	r10, [sp, #384]                 @ 4-byte Spill
	str	r9, [sp, #380]                  @ 4-byte Spill
	str	r1, [sp, #444]                  @ 4-byte Spill
	str	r3, [sp, #424]                  @ 4-byte Spill
	mov	r1, r3
	mov	r3, r7
	umlal	r1, r3, lr, r6
	str	r6, [sp, #356]                  @ 4-byte Spill
	str	r1, [sp, #436]                  @ 4-byte Spill
	umull	r7, r1, r11, r0
	str	r3, [sp, #440]                  @ 4-byte Spill
	str	r1, [sp, #348]                  @ 4-byte Spill
	umull	r1, r3, r11, r2
	str	r7, [sp, #340]                  @ 4-byte Spill
	str	r1, [sp, #420]                  @ 4-byte Spill
	str	r3, [sp, #336]                  @ 4-byte Spill
	mov	r1, r3
	mov	r3, r7
	umlal	r1, r3, r11, r6
	str	r1, [sp, #412]                  @ 4-byte Spill
	umull	r7, r1, r10, r0
	str	r3, [sp, #416]                  @ 4-byte Spill
	str	r1, [sp, #324]                  @ 4-byte Spill
	umull	r1, r3, r10, r2
	str	r7, [sp, #304]                  @ 4-byte Spill
	str	r1, [sp, #344]                  @ 4-byte Spill
	str	r3, [sp, #296]                  @ 4-byte Spill
	mov	r1, r3
	mov	r3, r7
	umlal	r1, r3, r10, r6
	str	r1, [sp, #328]                  @ 4-byte Spill
	umull	r7, r1, r9, r0
	str	r3, [sp, #332]                  @ 4-byte Spill
	str	r1, [sp, #272]                  @ 4-byte Spill
	umull	r1, r3, r9, r2
	str	r7, [sp, #236]                  @ 4-byte Spill
	str	r1, [sp, #352]                  @ 4-byte Spill
	str	r3, [sp, #228]                  @ 4-byte Spill
	mov	r1, r3
	mov	r3, r7
	umlal	r1, r3, r9, r6
	str	r1, [sp, #264]                  @ 4-byte Spill
	umull	r7, r1, r8, r0
	str	r3, [sp, #268]                  @ 4-byte Spill
	str	r1, [sp, #212]                  @ 4-byte Spill
	umull	r1, r3, r8, r2
	str	r7, [sp, #168]                  @ 4-byte Spill
	str	r1, [sp, #364]                  @ 4-byte Spill
	str	r3, [sp, #164]                  @ 4-byte Spill
	mov	r1, r3
	mov	r3, r7
	umlal	r1, r3, r8, r6
	ldr	r8, [r5, #52]
	str	r1, [sp, #196]                  @ 4-byte Spill
	ldr	r1, [sp, #460]                  @ 4-byte Reload
	str	r3, [sp, #204]                  @ 4-byte Spill
	umull	r3, r7, r1, r2
	str	r3, [sp, #388]                  @ 4-byte Spill
	umull	r12, r3, r1, r0
	str	r7, [sp, #92]                   @ 4-byte Spill
	str	r3, [sp, #100]                  @ 4-byte Spill
	mov	r3, r7
	str	r12, [sp, #88]                  @ 4-byte Spill
	mov	r7, r12
	ldr	r12, [sp, #448]                 @ 4-byte Reload
	umlal	r3, r7, r1, r6
	str	r3, [sp, #152]                  @ 4-byte Spill
	ldr	r3, [sp, #464]                  @ 4-byte Reload
	str	r7, [sp, #148]                  @ 4-byte Spill
	ldr	r7, [r5, #44]
	umull	r1, r2, r3, r2
	str	r1, [sp, #408]                  @ 4-byte Spill
	umull	r1, r0, r3, r0
	str	r2, [sp, #112]                  @ 4-byte Spill
	str	r0, [sp, #120]                  @ 4-byte Spill
	mov	r0, r2
	str	r1, [sp, #108]                  @ 4-byte Spill
	umlal	r0, r1, r3, r6
	add	r3, r5, #16
	ldr	r2, [r5, #48]
	ldr	r5, [r5, #40]
	str	r1, [sp, #140]                  @ 4-byte Spill
	str	r0, [sp, #144]                  @ 4-byte Spill
	adcs	r5, r12, r5
	ldm	r3, {r0, r1, r3}
	adcs	r0, r0, r7
	str	r5, [sp, #360]                  @ 4-byte Spill
	adcs	r1, r1, r2
	str	r1, [sp, #372]                  @ 4-byte Spill
	adcs	r3, r3, r8
	ldr	r8, [sp, #452]                  @ 4-byte Reload
	str	r3, [sp, #376]                  @ 4-byte Spill
	umull	r7, r2, lr, r3
	str	r7, [sp, #316]                  @ 4-byte Spill
	str	r2, [sp, #320]                  @ 4-byte Spill
	umull	r7, r2, lr, r1
	str	r7, [sp, #308]                  @ 4-byte Spill
	str	r2, [sp, #312]                  @ 4-byte Spill
	umull	r7, r2, lr, r0
	str	r7, [sp, #292]                  @ 4-byte Spill
	str	r2, [sp, #300]                  @ 4-byte Spill
	umull	r7, r2, lr, r5
	str	r7, [sp, #284]                  @ 4-byte Spill
	str	r2, [sp, #288]                  @ 4-byte Spill
	umull	r7, r2, lr, r6
	str	r7, [sp, #276]                  @ 4-byte Spill
	str	r2, [sp, #280]                  @ 4-byte Spill
	umull	r7, r2, r11, r3
	str	r2, [sp, #260]                  @ 4-byte Spill
	mov	r2, r1
	str	r7, [sp, #256]                  @ 4-byte Spill
	umull	r7, r1, r11, r1
	str	r1, [sp, #252]                  @ 4-byte Spill
	mov	r1, r0
	str	r7, [sp, #248]                  @ 4-byte Spill
	umull	r7, r0, r11, r0
	str	r1, [sp, #368]                  @ 4-byte Spill
	str	r7, [sp, #240]                  @ 4-byte Spill
	str	r0, [sp, #244]                  @ 4-byte Spill
	umull	r7, r0, r11, r5
	str	r7, [sp, #224]                  @ 4-byte Spill
	str	r0, [sp, #232]                  @ 4-byte Spill
	umull	r7, r0, r11, r6
	str	r7, [sp, #216]                  @ 4-byte Spill
	str	r0, [sp, #220]                  @ 4-byte Spill
	umull	r7, r0, r10, r3
	str	r7, [sp, #200]                  @ 4-byte Spill
	str	r0, [sp, #208]                  @ 4-byte Spill
	umull	r7, r0, r10, r2
	str	r7, [sp, #188]                  @ 4-byte Spill
	str	r0, [sp, #192]                  @ 4-byte Spill
	umull	r7, r0, r10, r1
	str	r7, [sp, #180]                  @ 4-byte Spill
	str	r0, [sp, #184]                  @ 4-byte Spill
	umull	r7, r0, r10, r5
	str	r7, [sp, #172]                  @ 4-byte Spill
	str	r0, [sp, #176]                  @ 4-byte Spill
	umull	r7, r0, r10, r6
	str	r7, [sp, #156]                  @ 4-byte Spill
	str	r0, [sp, #160]                  @ 4-byte Spill
	umull	r7, r0, r9, r3
	str	r7, [sp, #132]                  @ 4-byte Spill
	str	r0, [sp, #136]                  @ 4-byte Spill
	umull	r7, r0, r9, r2
	str	r7, [sp, #124]                  @ 4-byte Spill
	str	r0, [sp, #128]                  @ 4-byte Spill
	umull	r7, r0, r9, r1
	str	r7, [sp, #104]                  @ 4-byte Spill
	str	r0, [sp, #116]                  @ 4-byte Spill
	umull	r7, r0, r9, r5
	str	r7, [sp, #84]                   @ 4-byte Spill
	str	r0, [sp, #96]                   @ 4-byte Spill
	umull	r7, r0, r9, r6
	str	r7, [sp, #76]                   @ 4-byte Spill
	str	r0, [sp, #80]                   @ 4-byte Spill
	umull	r7, r0, r8, r3
	str	r7, [sp, #68]                   @ 4-byte Spill
	str	r0, [sp, #72]                   @ 4-byte Spill
	umull	r7, r0, r8, r2
	str	r7, [sp, #60]                   @ 4-byte Spill
	str	r0, [sp, #64]                   @ 4-byte Spill
	umull	r7, r0, r8, r1
	str	r7, [sp, #52]                   @ 4-byte Spill
	str	r0, [sp, #56]                   @ 4-byte Spill
	umull	r7, r0, r8, r5
	str	r7, [sp, #44]                   @ 4-byte Spill
	str	r0, [sp, #48]                   @ 4-byte Spill
	umull	r7, r0, r8, r6
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #464]                  @ 4-byte Reload
	str	r7, [sp, #36]                   @ 4-byte Spill
	umull	r4, r7, r0, r3
	str	r4, [sp, #28]                   @ 4-byte Spill
	str	r7, [sp, #32]                   @ 4-byte Spill
	umull	r7, r4, r0, r2
	str	r4, [sp, #8]                    @ 4-byte Spill
	str	r7, [sp, #20]                   @ 4-byte Spill
	umull	r4, r7, r0, r1
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r7, [sp, #16]                   @ 4-byte Spill
	umull	r7, r4, r0, r5
	umull	r11, r0, r0, r6
	str	r7, [sp, #4]                    @ 4-byte Spill
	str	r0, [sp]                        @ 4-byte Spill
	ldr	r0, [sp, #460]                  @ 4-byte Reload
	umull	r9, r10, r0, r3
	umull	r7, r8, r0, r2
	umull	r2, r3, r0, r5
	mov	r5, #0
	adc	r5, r5, #0
	str	r5, [sp, #448]                  @ 4-byte Spill
	umull	r12, lr, r0, r1
	ldr	r5, [sp, #92]                   @ 4-byte Reload
	umull	r0, r1, r0, r6
	ldr	r6, [sp, #144]                  @ 4-byte Reload
	adds	r0, r5, r0
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r0, r2
	str	r0, [sp, #100]                  @ 4-byte Spill
	adcs	r12, r3, r12
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	lr, lr, r7
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	adcs	r8, r8, r9
	ldr	r3, [sp, #8]                    @ 4-byte Reload
	adc	r9, r10, #0
	adds	r5, r0, r11
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r5, r1, r0
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adcs	r5, r0, r1
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	adcs	r1, r4, r0
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r4, [sp, #24]                   @ 4-byte Reload
	adcs	r2, r2, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	r3, r3, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adc	r7, r0, #0
	ldr	r0, [sp, #388]                  @ 4-byte Reload
	adds	r0, r0, r6
	str	r0, [sp, #388]                  @ 4-byte Spill
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r6, [sp, #140]                  @ 4-byte Reload
	adcs	r10, r0, r6
	ldr	r0, [sp, #148]                  @ 4-byte Reload
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	adcs	r5, r0, r5
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r11, r0, r1
	ldr	r0, [sp, #164]                  @ 4-byte Reload
	adcs	r12, r12, r2
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	lr, lr, r3
	ldr	r2, [sp, #48]                   @ 4-byte Reload
	adcs	r8, r8, r7
	ldr	r3, [sp, #56]                   @ 4-byte Reload
	adc	r9, r9, #0
	adds	r0, r0, r1
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	ldr	r0, [sp, #212]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #60]                   @ 4-byte Reload
	adcs	r2, r3, r2
	ldr	r3, [sp, #68]                   @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	adc	r7, r6, #0
	ldr	r6, [sp, #364]                  @ 4-byte Reload
	adds	r6, r6, r10
	str	r6, [sp, #364]                  @ 4-byte Spill
	ldr	r6, [sp, #196]                  @ 4-byte Reload
	adcs	r5, r6, r5
	ldr	r6, [sp, #204]                  @ 4-byte Reload
	adcs	r10, r6, r11
	ldr	r6, [sp, #128]                  @ 4-byte Reload
	adcs	r12, r0, r12
	ldr	r0, [sp, #228]                  @ 4-byte Reload
	adcs	lr, r1, lr
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r8, r2, r8
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	adcs	r9, r3, r9
	ldr	r3, [sp, #116]                  @ 4-byte Reload
	adc	r11, r7, #0
	adds	r0, r0, r1
	ldr	r0, [sp, #236]                  @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r0, [sp, #272]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #104]                  @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #124]                  @ 4-byte Reload
	adcs	r2, r3, r2
	ldr	r3, [sp, #132]                  @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #136]                  @ 4-byte Reload
	adc	r7, r6, #0
	ldr	r6, [sp, #352]                  @ 4-byte Reload
	adds	r5, r6, r5
	str	r5, [sp, #352]                  @ 4-byte Spill
	ldr	r5, [sp, #264]                  @ 4-byte Reload
	ldr	r6, [sp, #268]                  @ 4-byte Reload
	adcs	r5, r5, r10
	adcs	r12, r6, r12
	ldr	r6, [sp, #192]                  @ 4-byte Reload
	adcs	lr, r0, lr
	ldr	r0, [sp, #296]                  @ 4-byte Reload
	adcs	r8, r1, r8
	ldr	r1, [sp, #156]                  @ 4-byte Reload
	adcs	r9, r2, r9
	ldr	r2, [sp, #176]                  @ 4-byte Reload
	adcs	r10, r3, r11
	ldr	r3, [sp, #184]                  @ 4-byte Reload
	adc	r11, r7, #0
	adds	r0, r0, r1
	ldr	r0, [sp, #304]                  @ 4-byte Reload
	ldr	r1, [sp, #160]                  @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #172]                  @ 4-byte Reload
	ldr	r0, [sp, #324]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #180]                  @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #188]                  @ 4-byte Reload
	adcs	r2, r3, r2
	ldr	r3, [sp, #200]                  @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #208]                  @ 4-byte Reload
	adc	r7, r6, #0
	ldr	r6, [sp, #344]                  @ 4-byte Reload
	adds	r5, r6, r5
	str	r5, [sp, #344]                  @ 4-byte Spill
	ldr	r5, [sp, #328]                  @ 4-byte Reload
	ldr	r6, [sp, #332]                  @ 4-byte Reload
	adcs	r5, r5, r12
	adcs	r12, r6, lr
	ldr	r6, [sp, #252]                  @ 4-byte Reload
	adcs	lr, r0, r8
	ldr	r0, [sp, #336]                  @ 4-byte Reload
	adcs	r8, r1, r9
	ldr	r1, [sp, #216]                  @ 4-byte Reload
	adcs	r9, r2, r10
	ldr	r2, [sp, #232]                  @ 4-byte Reload
	adcs	r10, r3, r11
	ldr	r3, [sp, #244]                  @ 4-byte Reload
	adc	r11, r7, #0
	adds	r0, r0, r1
	ldr	r0, [sp, #340]                  @ 4-byte Reload
	ldr	r1, [sp, #220]                  @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #224]                  @ 4-byte Reload
	ldr	r0, [sp, #348]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #240]                  @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #248]                  @ 4-byte Reload
	adcs	r2, r3, r2
	ldr	r3, [sp, #256]                  @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #260]                  @ 4-byte Reload
	adc	r7, r6, #0
	ldr	r6, [sp, #420]                  @ 4-byte Reload
	adds	r5, r6, r5
	str	r5, [sp, #348]                  @ 4-byte Spill
	ldr	r5, [sp, #412]                  @ 4-byte Reload
	ldr	r6, [sp, #416]                  @ 4-byte Reload
	adcs	r5, r5, r12
	ldr	r12, [sp, #444]                 @ 4-byte Reload
	adcs	r6, r6, lr
	adcs	lr, r0, r8
	ldr	r0, [sp, #424]                  @ 4-byte Reload
	adcs	r8, r1, r9
	ldr	r1, [sp, #276]                  @ 4-byte Reload
	adcs	r9, r2, r10
	ldr	r2, [sp, #288]                  @ 4-byte Reload
	adcs	r10, r3, r11
	ldr	r3, [sp, #300]                  @ 4-byte Reload
	adc	r11, r7, #0
	adds	r0, r0, r1
	ldr	r0, [sp, #428]                  @ 4-byte Reload
	ldr	r1, [sp, #280]                  @ 4-byte Reload
	ldr	r7, [sp, #312]                  @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #284]                  @ 4-byte Reload
	ldr	r0, [sp, #432]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #292]                  @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #308]                  @ 4-byte Reload
	adcs	r2, r3, r2
	ldr	r3, [sp, #316]                  @ 4-byte Reload
	adcs	r3, r7, r3
	ldr	r7, [sp, #320]                  @ 4-byte Reload
	adc	r7, r7, #0
	adds	r5, r12, r5
	str	r5, [sp, #340]                  @ 4-byte Spill
	ldr	r5, [sp, #436]                  @ 4-byte Reload
	ldr	r12, [r4, #76]
	adcs	r6, r5, r6
	str	r6, [sp, #336]                  @ 4-byte Spill
	ldr	r6, [sp, #440]                  @ 4-byte Reload
	str	r12, [sp, #292]                 @ 4-byte Spill
	adcs	r6, r6, lr
	ldr	lr, [r4, #80]
	adcs	r0, r0, r8
	str	r0, [sp, #328]                  @ 4-byte Spill
	adcs	r0, r1, r9
	str	r0, [sp, #324]                  @ 4-byte Spill
	adcs	r0, r2, r10
	str	r0, [sp, #320]                  @ 4-byte Spill
	adcs	r0, r3, r11
	str	r0, [sp, #316]                  @ 4-byte Spill
	adc	r0, r7, #0
	str	r0, [sp, #312]                  @ 4-byte Spill
	ldr	r0, [sp, #456]                  @ 4-byte Reload
	ldr	r1, [sp, #448]                  @ 4-byte Reload
	ldr	r10, [r4, #64]
	and	r0, r0, r1
	str	r0, [sp, #260]                  @ 4-byte Spill
	ldr	r0, [r4, #52]
	str	r0, [sp, #428]                  @ 4-byte Spill
	ldr	r0, [r4, #96]
	str	r0, [sp, #432]                  @ 4-byte Spill
	ldr	r0, [r4, #100]
	str	r0, [sp, #436]                  @ 4-byte Spill
	ldr	r0, [r4, #104]
	str	r0, [sp, #444]                  @ 4-byte Spill
	ldr	r0, [r4, #108]
	str	r0, [sp, #440]                  @ 4-byte Spill
	ldr	r0, [r4, #48]
	str	r0, [sp, #424]                  @ 4-byte Spill
	ldr	r0, [r4, #44]
	str	r0, [sp, #420]                  @ 4-byte Spill
	ldr	r0, [r4, #40]
	str	r0, [sp, #416]                  @ 4-byte Spill
	ldr	r0, [r4, #36]
	str	r0, [sp, #412]                  @ 4-byte Spill
	ldr	r0, [r4]
	str	r0, [sp, #256]                  @ 4-byte Spill
	ldr	r0, [r4, #4]
	str	r0, [sp, #252]                  @ 4-byte Spill
	ldr	r0, [r4, #8]
	str	r0, [sp, #248]                  @ 4-byte Spill
	ldr	r0, [r4, #12]
	str	r0, [sp, #244]                  @ 4-byte Spill
	ldr	r0, [r4, #16]
	str	r0, [sp, #232]                  @ 4-byte Spill
	ldr	r0, [r4, #20]
	str	r0, [sp, #236]                  @ 4-byte Spill
	ldr	r0, [r4, #24]
	str	r0, [sp, #240]                  @ 4-byte Spill
	ldr	r0, [r4, #56]
	ldr	r11, [sp, #256]                 @ 4-byte Reload
	str	r0, [sp, #272]                  @ 4-byte Spill
	adds	r0, r0, r11
	ldr	r1, [r4, #60]
	str	r0, [sp, #256]                  @ 4-byte Spill
	ldr	r0, [sp, #252]                  @ 4-byte Reload
	ldr	r9, [r4, #68]
	adcs	r0, r1, r0
	str	r0, [sp, #252]                  @ 4-byte Spill
	ldr	r0, [sp, #248]                  @ 4-byte Reload
	ldr	r7, [r4, #72]
	adcs	r0, r10, r0
	str	r0, [sp, #248]                  @ 4-byte Spill
	ldr	r0, [sp, #244]                  @ 4-byte Reload
	str	r7, [sp, #288]                  @ 4-byte Spill
	adcs	r0, r9, r0
	str	r0, [sp, #244]                  @ 4-byte Spill
	ldr	r0, [sp, #232]                  @ 4-byte Reload
	ldr	r8, [r4, #84]
	adcs	r7, r7, r0
	ldr	r0, [sp, #236]                  @ 4-byte Reload
	ldr	r2, [r4, #28]
	adcs	r0, r12, r0
	str	r0, [sp, #236]                  @ 4-byte Spill
	ldr	r0, [sp, #240]                  @ 4-byte Reload
	str	r6, [sp, #332]                  @ 4-byte Spill
	ldr	r6, [r4, #88]
	adcs	r12, lr, r0
	ldr	r3, [r4, #32]
	str	lr, [sp, #296]                  @ 4-byte Spill
	adcs	lr, r8, r2
	ldr	r5, [r4, #92]
	ldr	r0, [sp, #412]                  @ 4-byte Reload
	str	r8, [sp, #300]                  @ 4-byte Spill
	adcs	r8, r6, r3
	str	r9, [sp, #284]                  @ 4-byte Spill
	adcs	r9, r5, r0
	str	r1, [sp, #276]                  @ 4-byte Spill
	ldr	r0, [sp, #432]                  @ 4-byte Reload
	ldr	r1, [sp, #416]                  @ 4-byte Reload
	str	r10, [sp, #280]                 @ 4-byte Spill
	adcs	r10, r0, r1
	ldr	r0, [sp, #436]                  @ 4-byte Reload
	ldr	r1, [sp, #420]                  @ 4-byte Reload
	str	r6, [sp, #304]                  @ 4-byte Spill
	adcs	r11, r0, r1
	ldr	r6, [sp, #444]                  @ 4-byte Reload
	ldr	r0, [sp, #424]                  @ 4-byte Reload
	str	r2, [sp, #264]                  @ 4-byte Spill
	adcs	r1, r6, r0
	ldr	r6, [sp, #440]                  @ 4-byte Reload
	ldr	r0, [sp, #428]                  @ 4-byte Reload
	str	r3, [sp, #268]                  @ 4-byte Spill
	adcs	r2, r6, r0
	mov	r0, #0
	adc	r3, r0, #0
	ldr	r0, [sp, #256]                  @ 4-byte Reload
	str	r5, [sp, #308]                  @ 4-byte Spill
	rsbs	r0, r0, #0
	str	r0, [sp, #256]                  @ 4-byte Spill
	ldr	r0, [sp, #252]                  @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #252]                  @ 4-byte Spill
	ldr	r0, [sp, #248]                  @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #248]                  @ 4-byte Spill
	ldr	r0, [sp, #244]                  @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #244]                  @ 4-byte Spill
	rscs	r0, r7, #0
	str	r0, [sp, #240]                  @ 4-byte Spill
	ldr	r0, [sp, #236]                  @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #236]                  @ 4-byte Spill
	rscs	r0, r12, #0
	str	r0, [sp, #232]                  @ 4-byte Spill
	rscs	r0, lr, #0
	str	r0, [sp, #228]                  @ 4-byte Spill
	rscs	r0, r8, #0
	str	r0, [sp, #224]                  @ 4-byte Spill
	rscs	r0, r9, #0
	str	r0, [sp, #220]                  @ 4-byte Spill
	rscs	r0, r10, #0
	str	r0, [sp, #216]                  @ 4-byte Spill
	rscs	r0, r11, #0
	str	r0, [sp, #212]                  @ 4-byte Spill
	rscs	r0, r1, #0
	str	r0, [sp, #208]                  @ 4-byte Spill
	rscs	r0, r2, #0
	str	r0, [sp, #204]                  @ 4-byte Spill
	ldr	r0, [sp, #260]                  @ 4-byte Reload
	sbc	r0, r0, r3
	str	r0, [sp, #260]                  @ 4-byte Spill
	ldr	r0, [sp, #448]                  @ 4-byte Reload
	rsb	r7, r0, #0
	ldr	r0, [sp, #396]                  @ 4-byte Reload
	and	r8, r0, r7
	ldr	r0, [sp, #392]                  @ 4-byte Reload
	and	r9, r0, r7
	ldr	r0, [sp, #384]                  @ 4-byte Reload
	and	r10, r0, r7
	ldr	r0, [sp, #380]                  @ 4-byte Reload
	and	r11, r0, r7
	ldr	r0, [sp, #452]                  @ 4-byte Reload
	and	r3, r0, r7
	ldr	r0, [sp, #460]                  @ 4-byte Reload
	str	r3, [sp, #452]                  @ 4-byte Spill
	and	r2, r0, r7
	ldr	r0, [sp, #464]                  @ 4-byte Reload
	str	r2, [sp, #460]                  @ 4-byte Spill
	and	r1, r0, r7
	ldr	r0, [sp, #400]                  @ 4-byte Reload
	str	r1, [sp, #464]                  @ 4-byte Spill
	adds	r5, r1, r0
	ldr	r0, [sp, #356]                  @ 4-byte Reload
	adcs	r6, r2, r0
	ldr	r0, [sp, #404]                  @ 4-byte Reload
	adcs	r1, r3, r0
	ldr	r0, [sp, #360]                  @ 4-byte Reload
	adcs	r2, r11, r0
	ldr	r0, [sp, #368]                  @ 4-byte Reload
	adcs	r3, r10, r0
	ldr	r0, [sp, #372]                  @ 4-byte Reload
	adcs	r12, r9, r0
	ldr	r0, [sp, #376]                  @ 4-byte Reload
	adcs	lr, r8, r0
	mov	r0, #0
	adc	r7, r0, #0
	ldr	r0, [sp, #456]                  @ 4-byte Reload
	and	r7, r0, r7
	str	r7, [sp, #448]                  @ 4-byte Spill
	ldr	r7, [sp, #452]                  @ 4-byte Reload
	cmp	r0, #0
	moveq	lr, r8
	moveq	r12, r9
	moveq	r3, r10
	moveq	r2, r11
	moveq	r1, r7
	cmp	r0, #0
	ldr	r0, [sp, #460]                  @ 4-byte Reload
	moveq	r6, r0
	ldr	r0, [sp, #464]                  @ 4-byte Reload
	moveq	r5, r0
	ldr	r0, [sp, #228]                  @ 4-byte Reload
	adds	r0, r0, r5
	str	r0, [sp, #464]                  @ 4-byte Spill
	ldr	r0, [sp, #224]                  @ 4-byte Reload
	adcs	r5, r0, r6
	ldr	r0, [sp, #220]                  @ 4-byte Reload
	adcs	r0, r0, r1
	str	r0, [sp, #460]                  @ 4-byte Spill
	ldr	r0, [sp, #216]                  @ 4-byte Reload
	ldr	r1, [sp, #448]                  @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #212]                  @ 4-byte Reload
	adcs	r3, r0, r3
	ldr	r0, [sp, #208]                  @ 4-byte Reload
	adcs	r6, r0, r12
	ldr	r0, [sp, #204]                  @ 4-byte Reload
	adcs	r12, r0, lr
	ldr	r0, [sp, #260]                  @ 4-byte Reload
	adc	r7, r0, r1
	ldr	r0, [sp, #408]                  @ 4-byte Reload
	ldr	r1, [sp, #256]                  @ 4-byte Reload
	adds	lr, r1, r0
	ldr	r0, [sp, #388]                  @ 4-byte Reload
	ldr	r1, [sp, #252]                  @ 4-byte Reload
	adcs	r8, r1, r0
	ldr	r0, [sp, #364]                  @ 4-byte Reload
	ldr	r1, [sp, #248]                  @ 4-byte Reload
	adcs	r9, r1, r0
	ldr	r0, [sp, #352]                  @ 4-byte Reload
	ldr	r1, [sp, #244]                  @ 4-byte Reload
	adcs	r10, r1, r0
	ldr	r0, [sp, #344]                  @ 4-byte Reload
	ldr	r1, [sp, #240]                  @ 4-byte Reload
	adcs	r11, r1, r0
	ldr	r0, [sp, #348]                  @ 4-byte Reload
	ldr	r1, [sp, #236]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #456]                  @ 4-byte Spill
	ldr	r0, [sp, #340]                  @ 4-byte Reload
	ldr	r1, [sp, #232]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #452]                  @ 4-byte Spill
	ldr	r0, [sp, #336]                  @ 4-byte Reload
	ldr	r1, [sp, #464]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #448]                  @ 4-byte Spill
	ldr	r0, [sp, #332]                  @ 4-byte Reload
	ldr	r1, [sp, #460]                  @ 4-byte Reload
	adcs	r5, r5, r0
	ldr	r0, [sp, #328]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #464]                  @ 4-byte Spill
	ldr	r0, [sp, #324]                  @ 4-byte Reload
	ldr	r1, [sp, #456]                  @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #460]                  @ 4-byte Spill
	ldr	r0, [sp, #320]                  @ 4-byte Reload
	ldr	r2, [sp, #452]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #408]                  @ 4-byte Spill
	ldr	r0, [sp, #316]                  @ 4-byte Reload
	ldr	r3, [sp, #448]                  @ 4-byte Reload
	adcs	r6, r6, r0
	ldr	r0, [sp, #312]                  @ 4-byte Reload
	adcs	r12, r12, r0
	ldr	r0, [sp, #264]                  @ 4-byte Reload
	adc	r7, r7, #0
	adds	lr, r0, lr
	ldr	r0, [sp, #268]                  @ 4-byte Reload
	str	lr, [r4, #28]
	adcs	r8, r0, r8
	ldr	r0, [sp, #412]                  @ 4-byte Reload
	adcs	r9, r0, r9
	ldr	r0, [sp, #416]                  @ 4-byte Reload
	adcs	r10, r0, r10
	ldr	r0, [sp, #420]                  @ 4-byte Reload
	adcs	r11, r0, r11
	ldr	r0, [sp, #424]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #428]                  @ 4-byte Reload
	adcs	r1, r1, r2
	ldr	r2, [sp, #272]                  @ 4-byte Reload
	adcs	r2, r2, r3
	add	r3, r4, #32
	stm	r3, {r8, r9, r10, r11}
	add	r3, r4, #48
	stm	r3, {r0, r1, r2}
	ldr	r0, [sp, #276]                  @ 4-byte Reload
	ldr	r1, [sp, #464]                  @ 4-byte Reload
	adcs	lr, r0, r5
	ldr	r0, [sp, #280]                  @ 4-byte Reload
	ldr	r2, [sp, #460]                  @ 4-byte Reload
	adcs	r1, r0, r1
	ldr	r0, [sp, #284]                  @ 4-byte Reload
	ldr	r3, [sp, #408]                  @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #288]                  @ 4-byte Reload
	str	lr, [r4, #60]
	adcs	r3, r0, r3
	ldr	r0, [sp, #292]                  @ 4-byte Reload
	adcs	r6, r0, r6
	ldr	r0, [sp, #296]                  @ 4-byte Reload
	adcs	r5, r0, r12
	ldr	r0, [sp, #300]                  @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #304]                  @ 4-byte Reload
	adcs	r12, r0, #0
	add	r0, r4, #64
	stm	r0, {r1, r2, r3, r6}
	add	r0, r4, #80
	stm	r0, {r5, r7, r12}
	add	r12, r4, #92
	ldr	r0, [sp, #308]                  @ 4-byte Reload
	ldr	r1, [sp, #432]                  @ 4-byte Reload
	adcs	r0, r0, #0
	ldr	r2, [sp, #436]                  @ 4-byte Reload
	adcs	r1, r1, #0
	ldr	r3, [sp, #444]                  @ 4-byte Reload
	adcs	r2, r2, #0
	ldr	r7, [sp, #440]                  @ 4-byte Reload
	adcs	r3, r3, #0
	adc	r7, r7, #0
	stm	r12, {r0, r1, r2, r3, r7}
	add	sp, sp, #468
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end196:
	.size	mclb_mul14, .Lfunc_end196-mclb_mul14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr14                      @ -- Begin function mclb_sqr14
	.p2align	2
	.type	mclb_sqr14,%function
	.code	32                              @ @mclb_sqr14
mclb_sqr14:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #276
	mov	r2, r1
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul7
	add	r1, r5, #28
	add	r0, r4, #56
	mov	r2, r1
	bl	mclb_mul7
	ldr	r0, [r5, #36]
	str	r0, [sp, #268]                  @ 4-byte Spill
	ldr	r0, [r5, #52]
	str	r0, [sp, #272]                  @ 4-byte Spill
	ldr	r11, [r5, #32]
	ldr	r8, [r5, #40]
	ldr	r9, [r5, #44]
	ldr	r7, [r5, #48]
	ldm	r5, {r0, r1, r2, r3, r10}
	ldr	r6, [r5, #20]
	ldr	lr, [r5, #24]
	ldr	r5, [r5, #28]
	adds	r12, r0, r5
	ldr	r0, [sp, #268]                  @ 4-byte Reload
	adcs	r11, r1, r11
	adcs	r1, r2, r0
	ldr	r0, [sp, #272]                  @ 4-byte Reload
	adcs	r2, r3, r8
	str	r2, [sp, #244]                  @ 4-byte Spill
	adcs	r3, r10, r9
	str	r1, [sp, #156]                  @ 4-byte Spill
	adcs	r7, r6, r7
	str	r7, [sp, #228]                  @ 4-byte Spill
	adcs	r6, lr, r0
	str	r6, [sp, #128]                  @ 4-byte Spill
	umull	r10, r9, r7, r11
	str	r3, [sp, #240]                  @ 4-byte Spill
	umull	lr, r0, r6, r1
	str	r9, [sp, #96]                   @ 4-byte Spill
	str	r10, [sp, #92]                  @ 4-byte Spill
	str	r0, [sp, #264]                  @ 4-byte Spill
	umull	r5, r0, r6, r12
	str	lr, [sp, #260]                  @ 4-byte Spill
	str	r5, [sp, #268]                  @ 4-byte Spill
	str	r0, [sp, #256]                  @ 4-byte Spill
	mov	r5, r0
	mov	r0, lr
	umlal	r5, r0, r6, r11
	str	r0, [sp, #168]                  @ 4-byte Spill
	umull	lr, r0, r7, r1
	str	r5, [sp, #164]                  @ 4-byte Spill
	str	r0, [sp, #248]                  @ 4-byte Spill
	umull	r0, r5, r7, r12
	str	lr, [sp, #236]                  @ 4-byte Spill
	str	r0, [sp, #252]                  @ 4-byte Spill
	str	r5, [sp, #232]                  @ 4-byte Spill
	mov	r0, r5
	mov	r5, lr
	umlal	r0, r5, r7, r11
	str	r0, [sp, #148]                  @ 4-byte Spill
	umull	lr, r0, r3, r1
	str	r5, [sp, #152]                  @ 4-byte Spill
	str	r0, [sp, #104]                  @ 4-byte Spill
	umull	r0, r5, r3, r12
	str	lr, [sp, #184]                  @ 4-byte Spill
	str	r0, [sp, #216]                  @ 4-byte Spill
	str	r5, [sp, #208]                  @ 4-byte Spill
	mov	r0, r5
	mov	r5, lr
	umlal	r0, r5, r3, r11
	str	r0, [sp, #132]                  @ 4-byte Spill
	umull	lr, r0, r2, r1
	str	r5, [sp, #136]                  @ 4-byte Spill
	str	r0, [sp, #84]                   @ 4-byte Spill
	umull	r0, r5, r2, r12
	str	lr, [sp, #76]                   @ 4-byte Spill
	str	r0, [sp, #204]                  @ 4-byte Spill
	str	r5, [sp, #192]                  @ 4-byte Spill
	mov	r0, r5
	mov	r5, lr
	umlal	r0, r5, r2, r11
	mov	lr, r12
	str	lr, [sp, #160]                  @ 4-byte Spill
	str	r0, [sp, #108]                  @ 4-byte Spill
	str	r5, [sp, #112]                  @ 4-byte Spill
	umull	r0, r5, r11, r12
	str	r0, [sp, #180]                  @ 4-byte Spill
	umull	r12, r0, r1, r11
	str	r5, [sp, #36]                   @ 4-byte Spill
	str	r0, [sp, #64]                   @ 4-byte Spill
	str	r12, [sp, #48]                  @ 4-byte Spill
	mov	r0, r12
	mov	r12, r2
	umlal	r5, r0, r11, r11
	str	r0, [sp, #68]                   @ 4-byte Spill
	str	r5, [sp, #172]                  @ 4-byte Spill
	umull	r5, r0, r6, r7
	str	r5, [sp, #140]                  @ 4-byte Spill
	str	r0, [sp, #144]                  @ 4-byte Spill
	umull	r5, r0, r6, r3
	str	r5, [sp, #124]                  @ 4-byte Spill
	str	r0, [sp, #212]                  @ 4-byte Spill
	umull	r5, r0, r7, r3
	str	r5, [sp, #116]                  @ 4-byte Spill
	str	r0, [sp, #120]                  @ 4-byte Spill
	umull	r5, r0, r6, r2
	str	r5, [sp, #220]                  @ 4-byte Spill
	str	r0, [sp, #224]                  @ 4-byte Spill
	umull	r5, r0, r7, r2
	str	r5, [sp, #188]                  @ 4-byte Spill
	str	r0, [sp, #100]                  @ 4-byte Spill
	umull	r5, r0, r3, r2
	mov	r2, lr
	umull	lr, r8, r1, lr
	str	r5, [sp, #80]                   @ 4-byte Spill
	str	r0, [sp, #88]                   @ 4-byte Spill
	umull	r5, r0, r1, r1
	str	r8, [sp, #20]                   @ 4-byte Spill
	str	lr, [sp, #32]                   @ 4-byte Spill
	str	r0, [sp, #56]                   @ 4-byte Spill
	mov	r0, r8
	str	r5, [sp, #52]                   @ 4-byte Spill
	umlal	r0, r5, r1, r11
	mov	r8, lr
	str	r0, [sp, #60]                   @ 4-byte Spill
	umull	r1, r0, r2, r2
	str	r5, [sp, #72]                   @ 4-byte Spill
	mov	r5, lr
	umull	lr, r7, r12, r11
	ldr	r12, [sp, #36]                  @ 4-byte Reload
	str	r1, [sp, #176]                  @ 4-byte Spill
	mov	r1, r0
	umlal	r1, r8, r11, r2
	str	lr, [sp, #24]                   @ 4-byte Spill
	str	r7, [sp, #28]                   @ 4-byte Spill
	umull	r6, r2, r6, r11
	str	r2, [sp, #200]                  @ 4-byte Spill
	mov	r2, #0
	adc	r2, r2, #0
	str	r2, [sp, #272]                  @ 4-byte Spill
	ldr	r2, [sp, #180]                  @ 4-byte Reload
	str	r6, [sp, #196]                  @ 4-byte Spill
	umull	r3, r6, r3, r11
	adds	r0, r0, r2
	adcs	r0, r12, r5
	ldr	r0, [sp, #204]                  @ 4-byte Reload
	ldr	r5, [sp, #20]                   @ 4-byte Reload
	ldr	r2, [sp, #192]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #216]                  @ 4-byte Reload
	str	r3, [sp, #40]                   @ 4-byte Spill
	adcs	r0, r2, r0
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #252]                  @ 4-byte Reload
	ldr	r2, [sp, #208]                  @ 4-byte Reload
	str	r6, [sp, #44]                   @ 4-byte Spill
	adcs	r0, r2, r0
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #268]                  @ 4-byte Reload
	ldr	r2, [sp, #232]                  @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #256]                  @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp]                        @ 4-byte Spill
	umull	r0, r2, r11, r11
	adds	r0, r12, r0
	ldr	r12, [sp, #48]                  @ 4-byte Reload
	adcs	r0, r2, r12
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	lr, r0, lr
	adcs	r2, r7, r3
	ldr	r7, [sp, #196]                  @ 4-byte Reload
	adcs	r3, r6, r10
	ldr	r6, [sp, #200]                  @ 4-byte Reload
	adcs	r7, r9, r7
	ldr	r10, [sp, #104]                 @ 4-byte Reload
	adc	r9, r6, #0
	ldr	r6, [sp, #180]                  @ 4-byte Reload
	adds	r1, r6, r1
	str	r1, [sp, #180]                  @ 4-byte Spill
	ldr	r1, [sp, #172]                  @ 4-byte Reload
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r1, r1, r8
	str	r1, [sp, #172]                  @ 4-byte Spill
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	adcs	r1, r1, r6
	str	r1, [sp, #68]                   @ 4-byte Spill
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r8, lr, r1
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	ldr	r2, [sp, #248]                  @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp]                        @ 4-byte Reload
	ldr	r3, [sp, #32]                   @ 4-byte Reload
	adcs	lr, r7, r1
	adc	r1, r9, #0
	str	r1, [sp, #12]                   @ 4-byte Spill
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adds	r6, r5, r12
	ldr	r12, [sp, #76]                  @ 4-byte Reload
	adcs	r6, r0, r1
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r6, [sp, #84]                   @ 4-byte Reload
	adcs	r7, r0, r12
	ldr	r0, [sp, #184]                  @ 4-byte Reload
	ldr	r1, [sp, #236]                  @ 4-byte Reload
	adcs	r0, r6, r0
	ldr	r5, [sp, #172]                  @ 4-byte Reload
	adcs	r9, r10, r1
	ldr	r1, [sp, #260]                  @ 4-byte Reload
	adcs	r1, r2, r1
	ldr	r2, [sp, #264]                  @ 4-byte Reload
	adc	r2, r2, #0
	adds	r3, r3, r5
	str	r3, [sp, #172]                  @ 4-byte Spill
	ldr	r3, [sp, #60]                   @ 4-byte Reload
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	adcs	r3, r3, r5
	str	r3, [sp, #68]                   @ 4-byte Spill
	ldr	r3, [sp, #72]                   @ 4-byte Reload
	adcs	r3, r3, r8
	str	r3, [sp, #72]                   @ 4-byte Spill
	ldr	r3, [sp, #36]                   @ 4-byte Reload
	ldr	r8, [sp, #100]                  @ 4-byte Reload
	adcs	r3, r7, r3
	str	r3, [sp, #64]                   @ 4-byte Spill
	ldr	r3, [sp, #16]                   @ 4-byte Reload
	ldr	r5, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r0, r3
	str	r0, [sp, #60]                   @ 4-byte Spill
	adcs	r0, r9, lr
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	ldr	r3, [sp, #224]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	adc	r0, r2, #0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #244]                  @ 4-byte Reload
	ldr	r1, [sp, #192]                  @ 4-byte Reload
	ldr	r2, [sp, #24]                   @ 4-byte Reload
	umull	r7, r0, r0, r0
	ldr	r9, [sp, #68]                   @ 4-byte Reload
	adds	r1, r1, r2
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r2, [sp, #188]                  @ 4-byte Reload
	adcs	r1, r1, r12
	ldr	r12, [sp, #80]                  @ 4-byte Reload
	adcs	lr, r6, r7
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r0, r12
	ldr	r6, [sp, #204]                  @ 4-byte Reload
	adcs	r7, r1, r2
	ldr	r2, [sp, #220]                  @ 4-byte Reload
	adcs	r2, r8, r2
	adc	r3, r3, #0
	adds	r6, r6, r9
	str	r6, [sp, #204]                  @ 4-byte Spill
	ldr	r6, [sp, #108]                  @ 4-byte Reload
	adcs	r9, r6, r5
	ldr	r6, [sp, #112]                  @ 4-byte Reload
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	adcs	r6, r6, r5
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	adcs	r5, lr, r5
	str	r5, [sp, #192]                  @ 4-byte Spill
	ldr	r5, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r0, r5
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r5, [sp, #212]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r7, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	adc	r0, r3, #0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #240]                  @ 4-byte Reload
	ldr	r2, [sp, #208]                  @ 4-byte Reload
	adds	r2, r2, r7
	umull	r0, r3, r0, r0
	ldr	r2, [sp, #44]                   @ 4-byte Reload
	ldr	r7, [sp, #184]                  @ 4-byte Reload
	adcs	r2, r2, r7
	ldr	r7, [sp, #116]                  @ 4-byte Reload
	adcs	r2, r10, r12
	ldr	r10, [sp, #124]                 @ 4-byte Reload
	adcs	r0, r1, r0
	adcs	r1, r3, r7
	ldr	r3, [sp, #120]                  @ 4-byte Reload
	adcs	r12, r3, r10
	adc	lr, r5, #0
	ldr	r5, [sp, #216]                  @ 4-byte Reload
	adds	r5, r5, r9
	str	r5, [sp, #216]                  @ 4-byte Spill
	ldr	r5, [sp, #132]                  @ 4-byte Reload
	adcs	r5, r5, r6
	str	r5, [sp, #104]                  @ 4-byte Spill
	ldr	r5, [sp, #136]                  @ 4-byte Reload
	ldr	r6, [sp, #192]                  @ 4-byte Reload
	adcs	r5, r5, r6
	str	r5, [sp, #208]                  @ 4-byte Spill
	ldr	r5, [sp, #112]                  @ 4-byte Reload
	adcs	r2, r2, r5
	str	r2, [sp, #192]                  @ 4-byte Spill
	ldr	r2, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r0, r2
	str	r0, [sp, #184]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #136]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #232]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #132]                  @ 4-byte Spill
	adc	r0, lr, #0
	adds	r2, r1, r2
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #228]                  @ 4-byte Reload
	ldr	r1, [sp, #236]                  @ 4-byte Reload
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	umull	r0, r5, r0, r0
	ldr	r12, [sp, #252]                 @ 4-byte Reload
	adcs	r2, r2, r1
	ldr	r2, [sp, #248]                  @ 4-byte Reload
	ldr	r1, [sp, #188]                  @ 4-byte Reload
	adcs	r2, r2, r1
	ldr	r1, [sp, #140]                  @ 4-byte Reload
	adcs	r9, r8, r7
	adcs	lr, r3, r0
	ldr	r0, [sp, #144]                  @ 4-byte Reload
	ldr	r3, [sp, #104]                  @ 4-byte Reload
	adcs	r8, r5, r1
	adc	r7, r0, #0
	ldr	r5, [sp, #152]                  @ 4-byte Reload
	adds	r6, r12, r3
	str	r6, [sp, #232]                  @ 4-byte Spill
	ldr	r6, [sp, #148]                  @ 4-byte Reload
	ldr	r3, [sp, #208]                  @ 4-byte Reload
	ldr	r12, [sp, #128]                 @ 4-byte Reload
	adcs	r3, r6, r3
	str	r3, [sp, #252]                  @ 4-byte Spill
	ldr	r3, [sp, #192]                  @ 4-byte Reload
	ldr	r6, [sp, #196]                  @ 4-byte Reload
	adcs	r3, r5, r3
	str	r3, [sp, #248]                  @ 4-byte Spill
	ldr	r3, [sp, #184]                  @ 4-byte Reload
	adcs	r2, r2, r3
	str	r2, [sp, #236]                  @ 4-byte Spill
	ldr	r2, [sp, #136]                  @ 4-byte Reload
	umull	r5, r3, r12, r12
	adcs	r2, r9, r2
	str	r2, [sp, #208]                  @ 4-byte Spill
	ldr	r2, [sp, #132]                  @ 4-byte Reload
	adcs	lr, lr, r2
	ldr	r2, [sp, #112]                  @ 4-byte Reload
	adcs	r8, r8, r2
	adc	r2, r7, #0
	str	r2, [sp, #192]                  @ 4-byte Spill
	ldr	r2, [sp, #256]                  @ 4-byte Reload
	ldr	r7, [sp, #220]                  @ 4-byte Reload
	adds	r2, r2, r6
	ldr	r6, [sp, #200]                  @ 4-byte Reload
	ldr	r2, [sp, #260]                  @ 4-byte Reload
	adcs	r2, r6, r2
	ldr	r6, [sp, #212]                  @ 4-byte Reload
	ldr	r2, [sp, #264]                  @ 4-byte Reload
	adcs	r2, r2, r7
	ldr	r7, [sp, #224]                  @ 4-byte Reload
	adcs	r7, r7, r10
	ldr	r10, [r4, #68]
	adcs	r9, r6, r1
	ldr	r6, [sp, #168]                  @ 4-byte Reload
	adcs	r0, r0, r5
	ldr	r5, [sp, #268]                  @ 4-byte Reload
	adc	r1, r3, #0
	ldr	r3, [sp, #252]                  @ 4-byte Reload
	str	r10, [sp, #132]                 @ 4-byte Spill
	adds	r3, r5, r3
	str	r3, [sp, #224]                  @ 4-byte Spill
	ldr	r5, [sp, #164]                  @ 4-byte Reload
	ldr	r3, [sp, #248]                  @ 4-byte Reload
	adcs	r3, r5, r3
	str	r3, [sp, #220]                  @ 4-byte Spill
	ldr	r3, [sp, #236]                  @ 4-byte Reload
	ldr	r5, [r4, #80]
	adcs	r3, r6, r3
	str	r3, [sp, #212]                  @ 4-byte Spill
	ldr	r3, [sp, #208]                  @ 4-byte Reload
	ldr	r6, [r4, #84]
	adcs	r2, r2, r3
	str	r2, [sp, #208]                  @ 4-byte Spill
	adcs	r2, r7, lr
	str	r2, [sp, #200]                  @ 4-byte Spill
	adcs	r2, r9, r8
	str	r2, [sp, #196]                  @ 4-byte Spill
	ldr	r2, [sp, #192]                  @ 4-byte Reload
	ldr	r9, [r4, #72]
	adcs	r0, r0, r2
	str	r0, [sp, #192]                  @ 4-byte Spill
	adc	r0, r1, #0
	str	r0, [sp, #188]                  @ 4-byte Spill
	ldr	r0, [sp, #272]                  @ 4-byte Reload
	ldr	r1, [sp, #228]                  @ 4-byte Reload
	rsb	r0, r0, #0
	ldr	r7, [r4, #76]
	and	r1, r1, r0
	and	r3, r12, r0
	str	r3, [sp, #184]                  @ 4-byte Spill
	lsr	r2, r1, #31
	ldr	r12, [r4, #64]
	orr	r2, r2, r3, lsl #1
	str	r2, [sp, #228]                  @ 4-byte Spill
	ldr	r2, [sp, #240]                  @ 4-byte Reload
	str	r12, [sp, #128]                 @ 4-byte Spill
	and	r2, r2, r0
	str	r7, [sp, #140]                  @ 4-byte Spill
	ldr	r8, [r4, #88]
	lsr	r3, r2, #31
	orr	r1, r3, r1, lsl #1
	str	r1, [sp, #168]                  @ 4-byte Spill
	ldr	r1, [sp, #244]                  @ 4-byte Reload
	ldr	lr, [r4, #92]
	and	r1, r1, r0
	str	r5, [sp, #144]                  @ 4-byte Spill
	str	r6, [sp, #148]                  @ 4-byte Spill
	lsr	r3, r1, #31
	orr	r2, r3, r2, lsl #1
	str	r2, [sp, #152]                  @ 4-byte Spill
	ldr	r2, [sp, #156]                  @ 4-byte Reload
	str	r9, [sp, #136]                  @ 4-byte Spill
	and	r2, r2, r0
	str	lr, [sp, #164]                  @ 4-byte Spill
	lsr	r3, r2, #31
	orr	r1, r3, r1, lsl #1
	str	r1, [sp, #156]                  @ 4-byte Spill
	and	r1, r11, r0
	lsr	r3, r1, #31
	orr	r2, r3, r2, lsl #1
	str	r2, [sp, #120]                  @ 4-byte Spill
	ldr	r2, [sp, #160]                  @ 4-byte Reload
	ldr	r3, [r4, #32]
	and	r0, r2, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r2, [r4, #28]
	lsr	r0, r0, #31
	str	r8, [sp, #160]                  @ 4-byte Spill
	orr	r0, r0, r1, lsl #1
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [r4, #52]
	str	r0, [sp, #252]                  @ 4-byte Spill
	ldr	r0, [r4, #96]
	str	r0, [sp, #260]                  @ 4-byte Spill
	ldr	r0, [r4, #100]
	str	r0, [sp, #256]                  @ 4-byte Spill
	ldr	r0, [r4, #104]
	str	r0, [sp, #264]                  @ 4-byte Spill
	ldr	r0, [r4, #108]
	str	r0, [sp, #268]                  @ 4-byte Spill
	ldr	r0, [r4, #48]
	str	r0, [sp, #248]                  @ 4-byte Spill
	ldr	r0, [r4, #44]
	str	r0, [sp, #244]                  @ 4-byte Spill
	ldr	r0, [r4, #40]
	str	r0, [sp, #240]                  @ 4-byte Spill
	ldr	r0, [r4, #36]
	str	r0, [sp, #236]                  @ 4-byte Spill
	ldr	r0, [r4]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [r4, #4]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [r4, #8]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [r4, #12]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [r4, #16]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [r4, #20]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [r4, #24]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [r4, #56]
	ldr	r11, [sp, #96]                  @ 4-byte Reload
	str	r0, [sp, #108]                  @ 4-byte Spill
	adds	r0, r0, r11
	ldr	r1, [r4, #60]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	str	r1, [sp, #124]                  @ 4-byte Spill
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #236]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r2, [sp, #100]                  @ 4-byte Spill
	adcs	r0, r10, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r3, [sp, #104]                  @ 4-byte Spill
	adcs	r0, r9, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r12, r7, r0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r7, r5, r0
	ldr	r0, [sp, #260]                  @ 4-byte Reload
	adcs	r5, r6, r2
	adcs	r6, r8, r3
	adcs	r8, lr, r1
	ldr	r1, [sp, #240]                  @ 4-byte Reload
	adcs	r9, r0, r1
	ldr	r0, [sp, #256]                  @ 4-byte Reload
	ldr	r1, [sp, #244]                  @ 4-byte Reload
	adcs	r10, r0, r1
	ldr	r0, [sp, #264]                  @ 4-byte Reload
	ldr	r1, [sp, #248]                  @ 4-byte Reload
	adcs	r11, r0, r1
	ldr	r0, [sp, #268]                  @ 4-byte Reload
	ldr	r1, [sp, #252]                  @ 4-byte Reload
	adcs	r1, r0, r1
	mov	r0, #0
	adc	r2, r0, #0
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	rsbs	lr, r0, #0
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	rscs	r3, r0, #0
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	rscs	r0, r0, #0
	str	r0, [sp, #88]                   @ 4-byte Spill
	rscs	r0, r12, #0
	str	r0, [sp, #84]                   @ 4-byte Spill
	rscs	r0, r7, #0
	str	r0, [sp, #80]                   @ 4-byte Spill
	rscs	r5, r5, #0
	rscs	r6, r6, #0
	rscs	r8, r8, #0
	rscs	r9, r9, #0
	rscs	r10, r10, #0
	rscs	r11, r11, #0
	rscs	r0, r1, #0
	ldr	r1, [sp, #272]                  @ 4-byte Reload
	sbc	r1, r1, r2
	ldr	r2, [sp, #112]                  @ 4-byte Reload
	adds	r5, r5, r2, lsl #1
	ldr	r2, [sp, #116]                  @ 4-byte Reload
	adcs	r6, r6, r2
	ldr	r2, [sp, #120]                  @ 4-byte Reload
	adcs	r8, r8, r2
	ldr	r2, [sp, #156]                  @ 4-byte Reload
	adcs	r9, r9, r2
	ldr	r2, [sp, #152]                  @ 4-byte Reload
	adcs	r10, r10, r2
	ldr	r2, [sp, #168]                  @ 4-byte Reload
	adcs	r11, r11, r2
	ldr	r2, [sp, #228]                  @ 4-byte Reload
	adcs	r0, r0, r2
	str	r0, [sp, #228]                  @ 4-byte Spill
	ldr	r0, [sp, #184]                  @ 4-byte Reload
	ldr	r2, [sp, #176]                  @ 4-byte Reload
	adc	r0, r1, r0, lsr #31
	adds	r7, lr, r2
	ldr	r2, [sp, #180]                  @ 4-byte Reload
	str	r0, [sp, #184]                  @ 4-byte Spill
	adcs	r2, r3, r2
	ldr	r3, [sp, #172]                  @ 4-byte Reload
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	adcs	r3, r0, r3
	ldr	r0, [sp, #204]                  @ 4-byte Reload
	adcs	r12, r1, r0
	ldr	r0, [sp, #216]                  @ 4-byte Reload
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	adcs	lr, r1, r0
	ldr	r0, [sp, #232]                  @ 4-byte Reload
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #216]                  @ 4-byte Spill
	ldr	r0, [sp, #224]                  @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #224]                  @ 4-byte Spill
	ldr	r0, [sp, #220]                  @ 4-byte Reload
	ldr	r1, [sp, #228]                  @ 4-byte Reload
	adcs	r5, r5, r0
	ldr	r0, [sp, #212]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #272]                  @ 4-byte Spill
	ldr	r0, [sp, #208]                  @ 4-byte Reload
	ldr	r6, [sp, #224]                  @ 4-byte Reload
	adcs	r8, r8, r0
	ldr	r0, [sp, #200]                  @ 4-byte Reload
	adcs	r9, r9, r0
	ldr	r0, [sp, #196]                  @ 4-byte Reload
	adcs	r10, r10, r0
	ldr	r0, [sp, #192]                  @ 4-byte Reload
	adcs	r11, r11, r0
	ldr	r0, [sp, #188]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #232]                  @ 4-byte Spill
	ldr	r0, [sp, #184]                  @ 4-byte Reload
	ldr	r1, [sp, #216]                  @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #228]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adds	r7, r0, r7
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	str	r7, [r4, #28]
	adcs	r2, r0, r2
	ldr	r0, [sp, #236]                  @ 4-byte Reload
	adcs	r3, r0, r3
	ldr	r0, [sp, #240]                  @ 4-byte Reload
	adcs	r12, r0, r12
	ldr	r0, [sp, #244]                  @ 4-byte Reload
	adcs	lr, r0, lr
	ldr	r0, [sp, #248]                  @ 4-byte Reload
	adcs	r0, r0, r1
	ldr	r1, [sp, #252]                  @ 4-byte Reload
	adcs	r1, r1, r6
	ldr	r6, [sp, #108]                  @ 4-byte Reload
	adcs	r5, r6, r5
	add	r6, r4, #32
	stm	r6, {r2, r3, r12, lr}
	add	r2, r4, #48
	stm	r2, {r0, r1, r5}
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #272]                  @ 4-byte Reload
	ldr	r6, [sp, #232]                  @ 4-byte Reload
	adcs	lr, r0, r1
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r5, [sp, #228]                  @ 4-byte Reload
	adcs	r1, r0, r8
	ldr	r0, [sp, #132]                  @ 4-byte Reload
	str	lr, [r4, #60]
	adcs	r2, r0, r9
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	adcs	r3, r0, r10
	ldr	r0, [sp, #140]                  @ 4-byte Reload
	adcs	r7, r0, r11
	ldr	r0, [sp, #144]                  @ 4-byte Reload
	adcs	r6, r0, r6
	ldr	r0, [sp, #148]                  @ 4-byte Reload
	str	r6, [r4, #80]
	adcs	r5, r0, r5
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	str	r5, [r4, #84]
	adcs	r12, r0, #0
	add	r0, r4, #64
	stm	r0, {r1, r2, r3, r7}
	ldr	r0, [sp, #164]                  @ 4-byte Reload
	ldr	r1, [sp, #260]                  @ 4-byte Reload
	adcs	r0, r0, #0
	ldr	r2, [sp, #256]                  @ 4-byte Reload
	adcs	r1, r1, #0
	ldr	r3, [sp, #264]                  @ 4-byte Reload
	adcs	r2, r2, #0
	ldr	r7, [sp, #268]                  @ 4-byte Reload
	str	r12, [r4, #88]
	adcs	r3, r3, #0
	add	r12, r4, #92
	adc	r7, r7, #0
	stm	r12, {r0, r1, r2, r3, r7}
	add	sp, sp, #276
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end197:
	.size	mclb_sqr14, .Lfunc_end197-mclb_sqr14
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner480                @ -- Begin function mulUnit_inner480
	.p2align	2
	.type	mulUnit_inner480,%function
	.code	32                              @ @mulUnit_inner480
mulUnit_inner480:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r1, [r1, #56]
	umull	r1, r2, r1, r2
	adcs	r1, r6, r1
	str	r1, [r0, #56]
	adc	r1, r2, #0
	str	r1, [r0, #60]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end198:
	.size	mulUnit_inner480, .Lfunc_end198-mulUnit_inner480
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit15                  @ -- Begin function mclb_mulUnit15
	.p2align	2
	.type	mclb_mulUnit15,%function
	.code	32                              @ @mclb_mulUnit15
mclb_mulUnit15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #84
	mov	r4, r0
	add	r0, sp, #16
	bl	mulUnit_inner480
	ldr	r0, [sp, #76]
	add	r10, sp, #16
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	lr, sp, #64
	ldr	r0, [sp, #28]
	add	r5, sp, #48
	ldm	r10, {r8, r9, r10}
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #32]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldm	lr, {r0, r12, lr}
	ldm	r5, {r1, r2, r3, r5}
	ldr	r11, [sp, #36]
	ldr	r6, [sp, #40]
	ldr	r7, [sp, #44]
	str	r1, [r4, #32]
	add	r1, r4, #48
	stm	r1, {r0, r12, lr}
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r4, #12]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [r4, #16]
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	str	r5, [r4, #44]
	stm	r4, {r8, r9, r10}
	str	r11, [r4, #20]
	str	r6, [r4, #24]
	str	r7, [r4, #28]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #84
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end199:
	.size	mclb_mulUnit15, .Lfunc_end199-mclb_mulUnit15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd15               @ -- Begin function mclb_mulUnitAdd15
	.p2align	2
	.type	mclb_mulUnitAdd15,%function
	.code	32                              @ @mclb_mulUnitAdd15
mclb_mulUnitAdd15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #124
	ldm	r1, {r3, r7}
	add	r10, r1, #36
	str	r7, [sp, #36]                   @ 4-byte Spill
	umull	r3, r4, r3, r2
	ldr	r11, [r1, #32]
	ldr	lr, [r1, #8]
	ldr	r12, [r1, #12]
	str	r4, [sp, #104]                  @ 4-byte Spill
	ldm	r0, {r4, r5}
	str	r5, [sp, #72]                   @ 4-byte Spill
	adds	r3, r3, r4
	ldr	r5, [r0, #8]
	str	r5, [sp, #68]                   @ 4-byte Spill
	ldr	r5, [r0, #12]
	str	r3, [r0]
	str	r5, [sp, #64]                   @ 4-byte Spill
	ldm	r10, {r3, r4, r6, r8, r9, r10}
	umull	r7, r5, r10, r2
	str	r7, [sp, #80]                   @ 4-byte Spill
	str	r5, [sp, #120]                  @ 4-byte Spill
	umull	r7, r5, r9, r2
	add	r9, r0, #48
	str	r7, [sp, #60]                   @ 4-byte Spill
	str	r5, [sp, #116]                  @ 4-byte Spill
	umull	r7, r5, r8, r2
	str	r5, [sp, #112]                  @ 4-byte Spill
	umull	r6, r5, r6, r2
	str	r7, [sp, #56]                   @ 4-byte Spill
	ldm	r9, {r7, r8, r9}
	str	r5, [sp, #108]                  @ 4-byte Spill
	umull	r5, r4, r4, r2
	str	r6, [sp, #48]                   @ 4-byte Spill
	ldr	r6, [r1, #28]
	str	r4, [sp, #100]                  @ 4-byte Spill
	umull	r4, r3, r3, r2
	str	r5, [sp, #40]                   @ 4-byte Spill
	str	r4, [sp, #32]                   @ 4-byte Spill
	str	r3, [sp, #96]                   @ 4-byte Spill
	umull	r4, r3, r11, r2
	ldr	r11, [r0, #32]
	str	r4, [sp, #24]                   @ 4-byte Spill
	str	r3, [sp, #92]                   @ 4-byte Spill
	umull	r4, r3, r6, r2
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	str	r4, [sp, #20]                   @ 4-byte Spill
	ldr	r4, [r1, #24]
	str	r3, [sp, #88]                   @ 4-byte Spill
	umull	r4, r3, r4, r2
	str	r4, [sp, #16]                   @ 4-byte Spill
	ldr	r4, [r1, #20]
	ldr	r1, [r1, #16]
	str	r3, [sp, #84]                   @ 4-byte Spill
	umull	r4, r3, r4, r2
	umull	r10, r1, r1, r2
	str	r4, [sp, #12]                   @ 4-byte Spill
	str	r3, [sp, #76]                   @ 4-byte Spill
	str	r1, [sp, #52]                   @ 4-byte Spill
	umull	r5, r1, r12, r2
	add	r12, r0, #16
	str	r1, [sp, #44]                   @ 4-byte Spill
	umull	r4, r1, lr, r2
	str	r1, [sp, #28]                   @ 4-byte Spill
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	umull	lr, r1, r1, r2
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [r0, #36]
	adcs	lr, lr, r6
	ldr	r6, [sp, #68]                   @ 4-byte Reload
	str	r1, [sp]                        @ 4-byte Spill
	ldr	r1, [r0, #40]
	adcs	r4, r4, r6
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [r0, #44]
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	str	r1, [sp, #8]                    @ 4-byte Spill
	ldm	r12, {r1, r2, r3, r12}
	adcs	r5, r5, r6
	ldr	r6, [sp, #12]                   @ 4-byte Reload
	adcs	r1, r10, r1
	ldr	r10, [sp, #8]                   @ 4-byte Reload
	adcs	r2, r6, r2
	ldr	r6, [sp, #16]                   @ 4-byte Reload
	adcs	r3, r6, r3
	ldr	r6, [sp, #20]                   @ 4-byte Reload
	str	r3, [sp, #16]                   @ 4-byte Spill
	adcs	r12, r6, r12
	ldr	r6, [sp, #24]                   @ 4-byte Reload
	ldr	r3, [sp]                        @ 4-byte Reload
	adcs	r6, r6, r11
	str	r6, [sp, #64]                   @ 4-byte Spill
	ldr	r6, [sp, #32]                   @ 4-byte Reload
	adcs	r11, r6, r3
	ldr	r6, [sp, #40]                   @ 4-byte Reload
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	adcs	r6, r6, r3
	str	r6, [sp, #72]                   @ 4-byte Spill
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	mov	r3, #0
	adcs	r6, r6, r10
	str	r6, [sp, #68]                   @ 4-byte Spill
	ldr	r6, [sp, #56]                   @ 4-byte Reload
	adcs	r7, r6, r7
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	adcs	r8, r6, r8
	ldr	r6, [sp, #80]                   @ 4-byte Reload
	adcs	r9, r6, r9
	adc	r6, r3, #0
	str	r6, [sp, #80]                   @ 4-byte Spill
	ldr	r6, [sp, #104]                  @ 4-byte Reload
	ldr	r3, [sp, #96]                   @ 4-byte Reload
	adds	r6, lr, r6
	str	r6, [r0, #4]
	ldr	r6, [sp, #36]                   @ 4-byte Reload
	adcs	r6, r4, r6
	str	r6, [r0, #8]
	ldr	r6, [sp, #28]                   @ 4-byte Reload
	ldr	r4, [sp, #116]                  @ 4-byte Reload
	adcs	r6, r5, r6
	str	r6, [r0, #12]
	ldr	r6, [sp, #44]                   @ 4-byte Reload
	ldr	r5, [sp, #68]                   @ 4-byte Reload
	adcs	r1, r1, r6
	str	r1, [r0, #16]
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	ldr	r6, [sp, #72]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [sp, #16]                   @ 4-byte Reload
	adcs	r1, r2, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [sp, #64]                   @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	add	r12, r0, #32
	adcs	r1, r2, r1
	ldr	r2, [sp, #92]                   @ 4-byte Reload
	adcs	r2, r11, r2
	adcs	r3, r6, r3
	ldr	r6, [sp, #100]                  @ 4-byte Reload
	adcs	r6, r5, r6
	ldr	r5, [sp, #108]                  @ 4-byte Reload
	adcs	r7, r7, r5
	ldr	r5, [sp, #112]                  @ 4-byte Reload
	stm	r12, {r1, r2, r3, r6, r7}
	adcs	r5, r8, r5
	adcs	r4, r9, r4
	str	r5, [r0, #52]
	str	r4, [r0, #56]
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	adc	r0, r1, r0
	add	sp, sp, #124
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end200:
	.size	mclb_mulUnitAdd15, .Lfunc_end200-mclb_mulUnitAdd15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul15                      @ -- Begin function mclb_mul15
	.p2align	2
	.type	mclb_mul15,%function
	.code	32                              @ @mclb_mul15
mclb_mul15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #60
	sub	sp, sp, #1024
	mov	r3, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #1016
	mov	r6, r3
	str	r3, [sp, #112]                  @ 4-byte Spill
	mov	r8, r1
	bl	mulUnit_inner480
	ldr	r0, [sp, #1076]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #1072]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #1068]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #1064]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #1060]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #1056]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #1052]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #1048]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #1044]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #1040]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1036]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1032]
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r1, [sp, #1020]
	ldr	r0, [sp, #1016]
	str	r1, [sp, #40]                   @ 4-byte Spill
	ldr	r1, [sp, #1024]
	str	r1, [sp, #68]                   @ 4-byte Spill
	ldr	r2, [r6, #4]
	ldr	r1, [sp, #1028]
	str	r0, [r4]
	add	r0, sp, #952
	str	r1, [sp, #44]                   @ 4-byte Spill
	mov	r1, r8
	str	r4, [sp, #116]                  @ 4-byte Spill
	str	r8, [sp, #108]                  @ 4-byte Spill
	bl	mulUnit_inner480
	ldr	r0, [sp, #1012]
	add	lr, sp, #952
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r10, sp, #976
	ldr	r0, [sp, #1008]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1004]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #1000]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #996]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #40]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #4]
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r4, r1, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r6, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r6, #8]
	adcs	r0, r9, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	mov	r1, r8
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #888
	bl	mulUnit_inner480
	ldr	r0, [sp, #948]
	add	r12, sp, #896
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #944]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #940]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #936]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #932]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r8, [sp, #888]
	ldr	r5, [sp, #116]                  @ 4-byte Reload
	adds	r4, r8, r4
	ldr	lr, [sp, #928]
	ldr	r7, [sp, #924]
	ldr	r11, [sp, #920]
	ldr	r9, [sp, #916]
	ldr	r10, [sp, #892]
	ldm	r12, {r0, r1, r2, r3, r12}
	str	r4, [r5, #8]
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r4, r10, r4
	str	r4, [sp, #48]                   @ 4-byte Spill
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r0, r4
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r4, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r6, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #824
	bl	mulUnit_inner480
	ldr	r0, [sp, #884]
	add	r9, sp, #852
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #832
	ldr	r0, [sp, #880]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #876]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #872]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #868]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #824]
	ldr	r10, [sp, #48]                  @ 4-byte Reload
	ldm	r9, {r6, r7, r8, r9}
	adds	r0, r0, r10
	ldr	r11, [sp, #828]
	ldm	lr, {r1, r2, r3, r12, lr}
	str	r0, [r5, #12]
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r5, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	mov	r6, r4
	adcs	r0, r7, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #760
	bl	mulUnit_inner480
	ldr	r0, [sp, #820]
	add	lr, sp, #784
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r12, sp, #764
	ldr	r0, [sp, #816]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #812]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #808]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #804]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #800]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r8, [sp, #760]
	ldr	r4, [sp, #48]                   @ 4-byte Reload
	ldr	r7, [sp, #116]                  @ 4-byte Reload
	adds	r4, r8, r4
	ldr	r11, [sp, #796]
	ldm	lr, {r9, r10, lr}
	ldm	r12, {r0, r1, r2, r3, r12}
	str	r4, [r7, #16]
	mov	r7, r5
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r4, r0, r4
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #696
	bl	mulUnit_inner480
	ldr	r0, [sp, #756]
	add	lr, sp, #700
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #752]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #748]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #744]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #740]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r9, [sp, #696]
	ldr	r5, [sp, #116]                  @ 4-byte Reload
	adds	r4, r9, r4
	ldr	r10, [sp, #736]
	ldr	r8, [sp, #732]
	ldr	r11, [sp, #728]
	ldr	r6, [sp, #724]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r4, [r5, #20]
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r0, r4
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r4, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r7, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #632
	bl	mulUnit_inner480
	ldr	r0, [sp, #692]
	add	r8, sp, #664
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #640
	ldr	r0, [sp, #688]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #684]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #680]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #676]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #632]
	ldr	r9, [sp, #48]                   @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r9
	ldr	r10, [sp, #660]
	ldr	r11, [sp, #636]
	ldm	lr, {r1, r2, r3, r12, lr}
	str	r0, [r5, #24]
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r5, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #568
	bl	mulUnit_inner480
	ldr	r0, [sp, #628]
	add	r11, sp, #600
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r12, sp, #572
	ldr	r0, [sp, #624]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #620]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #616]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #612]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r10, [sp, #568]
	ldr	r4, [sp, #48]                   @ 4-byte Reload
	ldr	r8, [sp, #116]                  @ 4-byte Reload
	adds	r4, r10, r4
	ldm	r11, {r6, r7, r11}
	ldr	lr, [sp, #596]
	ldr	r9, [sp, #592]
	ldm	r12, {r0, r1, r2, r3, r12}
	str	r4, [r8, #28]
	ldr	r4, [sp, #76]                   @ 4-byte Reload
	adcs	r4, r0, r4
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r5, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #504
	bl	mulUnit_inner480
	ldr	r0, [sp, #564]
	add	lr, sp, #508
	str	r0, [sp, #44]                   @ 4-byte Spill
	mov	r6, r8
	ldr	r0, [sp, #560]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #556]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #552]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #548]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #544]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r9, [sp, #504]
	ldr	r10, [sp, #540]
	adds	r4, r9, r4
	ldr	r11, [sp, #536]
	ldr	r7, [sp, #532]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r4, [r8, #32]
	ldr	r4, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r0, r4
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r4, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r4, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #440
	bl	mulUnit_inner480
	ldr	r0, [sp, #500]
	add	r8, sp, #472
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #448
	ldr	r0, [sp, #496]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #492]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #488]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #484]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #440]
	ldr	r9, [sp, #48]                   @ 4-byte Reload
	ldm	r8, {r5, r7, r8}
	adds	r0, r0, r9
	ldr	r10, [sp, #468]
	ldr	r11, [sp, #444]
	ldm	lr, {r1, r2, r3, r12, lr}
	str	r0, [r6, #36]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r4, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r5, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	mov	r8, r4
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #376
	bl	mulUnit_inner480
	ldr	r0, [sp, #436]
	add	r12, sp, #380
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #432]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #428]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #424]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #420]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #416]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r10, [sp, #376]
	ldr	r4, [sp, #48]                   @ 4-byte Reload
	ldr	r7, [sp, #116]                  @ 4-byte Reload
	adds	r4, r10, r4
	ldr	r11, [sp, #412]
	ldr	r6, [sp, #408]
	ldr	lr, [sp, #404]
	ldr	r9, [sp, #400]
	ldm	r12, {r0, r1, r2, r3, r12}
	str	r4, [r7, #40]
	ldr	r4, [sp, #88]                   @ 4-byte Reload
	adcs	r4, r0, r4
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r2, [r8, #44]
	adcs	r0, r3, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #312
	bl	mulUnit_inner480
	ldr	r0, [sp, #372]
	add	lr, sp, #316
	str	r0, [sp, #44]                   @ 4-byte Spill
	mov	r5, r7
	ldr	r0, [sp, #368]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #364]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #360]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #356]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r9, [sp, #312]
	ldr	r10, [sp, #352]
	adds	r4, r9, r4
	ldr	r8, [sp, #348]
	ldr	r11, [sp, #344]
	ldr	r6, [sp, #340]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r4, [r7, #44]
	ldr	r4, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r0, r4
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r4, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [r4, #48]
	adcs	r0, r3, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r6, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #248
	bl	mulUnit_inner480
	ldr	r0, [sp, #308]
	add	lr, sp, #256
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #304]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #300]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #296]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #292]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #288]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #248]
	ldr	r9, [sp, #48]                   @ 4-byte Reload
	ldr	r8, [sp, #284]
	adds	r0, r0, r9
	ldr	r7, [sp, #280]
	ldr	r10, [sp, #276]
	ldr	r11, [sp, #252]
	ldm	lr, {r1, r2, r3, r12, lr}
	str	r0, [r5, #48]
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r4, #52]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #184
	bl	mulUnit_inner480
	ldr	r0, [sp, #244]
	add	lr, sp, #184
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #240]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #236]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #232]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r8, r9, r12, lr}
	ldr	r4, [sp, #48]                   @ 4-byte Reload
	ldr	r10, [sp, #116]                 @ 4-byte Reload
	adds	r0, r0, r4
	ldr	r11, [sp, #228]
	ldr	r5, [sp, #224]
	ldr	r6, [sp, #220]
	ldr	r7, [sp, #216]
	str	r0, [r10, #52]
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	ldr	r1, [sp, #108]                  @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r2, [r0, #56]
	add	r0, sp, #120
	bl	mulUnit_inner480
	ldr	r0, [sp, #180]
	add	lr, sp, #120
	str	r0, [sp, #112]                  @ 4-byte Spill
	add	r11, sp, #144
	ldr	r0, [sp, #176]
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #172]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #168]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	ldm	r11, {r4, r5, r7, r8, r9, r11}
	adds	r6, r0, r6
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r6, [r10, #56]
	adcs	r1, r1, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	ldr	r6, [sp, #68]                   @ 4-byte Reload
	adcs	r2, r2, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r3, r3, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r12, r12, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r4, r4, r0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	str	r4, [r10, #80]
	adcs	r5, r5, r0
	add	r0, r10, #60
	stm	r0, {r1, r2, r3, r12, lr}
	add	r0, r10, #92
	ldr	r1, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	adcs	r12, r7, r1
	ldr	r1, [sp, #100]                  @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	adcs	r1, r8, r1
	ldr	r7, [sp, #88]                   @ 4-byte Reload
	adcs	r2, r9, r2
	str	r5, [r10, #84]
	adcs	r3, r11, r3
	ldr	r5, [sp, #72]                   @ 4-byte Reload
	adcs	r7, r6, r7
	ldr	r6, [sp, #84]                   @ 4-byte Reload
	ldr	r4, [sp, #108]                  @ 4-byte Reload
	adcs	r6, r5, r6
	ldr	r5, [sp, #80]                   @ 4-byte Reload
	str	r12, [r10, #88]
	adcs	r5, r4, r5
	ldr	r4, [sp, #112]                  @ 4-byte Reload
	stm	r0, {r1, r2, r3, r7}
	adc	r4, r4, #0
	str	r6, [r10, #108]
	str	r5, [r10, #112]
	str	r4, [r10, #116]
	add	sp, sp, #60
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end201:
	.size	mclb_mul15, .Lfunc_end201-mclb_mul15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr15                      @ -- Begin function mclb_sqr15
	.p2align	2
	.type	mclb_sqr15,%function
	.code	32                              @ @mclb_sqr15
mclb_sqr15:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #52
	sub	sp, sp, #1024
	ldr	r2, [r1]
	mov	r4, r0
	add	r0, sp, #1008
	mov	r5, r1
	bl	mulUnit_inner480
	ldr	r0, [sp, #1068]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #1064]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #1060]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #1056]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #1052]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #1048]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #1044]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #1040]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #1036]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #1032]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1028]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1024]
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r1, [sp, #1012]
	ldr	r0, [sp, #1008]
	str	r1, [sp, #40]                   @ 4-byte Spill
	ldr	r1, [sp, #1016]
	str	r1, [sp, #68]                   @ 4-byte Spill
	ldr	r2, [r5, #4]
	ldr	r1, [sp, #1020]
	str	r0, [r4]
	add	r0, sp, #944
	str	r1, [sp, #44]                   @ 4-byte Spill
	mov	r1, r5
	str	r4, [sp, #108]                  @ 4-byte Spill
	bl	mulUnit_inner480
	ldr	r0, [sp, #1004]
	add	lr, sp, #944
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r10, sp, #968
	ldr	r0, [sp, #1000]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #996]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #992]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #988]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #40]                  @ 4-byte Reload
	ldm	r10, {r6, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #4]
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r4, r1, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r2, [r5, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #880
	bl	mulUnit_inner480
	ldr	r0, [sp, #940]
	add	r12, sp, #904
	str	r0, [sp, #48]                   @ 4-byte Spill
	add	r10, sp, #884
	ldr	r0, [sp, #936]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #932]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #928]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #924]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r8, [sp, #880]
	ldr	r7, [sp, #108]                  @ 4-byte Reload
	adds	r4, r8, r4
	ldr	lr, [sp, #920]
	ldr	r6, [sp, #916]
	ldm	r12, {r9, r11, r12}
	ldm	r10, {r0, r1, r2, r3, r10}
	str	r4, [r7, #8]
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	adcs	r4, r0, r4
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #816
	bl	mulUnit_inner480
	ldr	r0, [sp, #876]
	add	r10, sp, #844
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #820
	ldr	r0, [sp, #872]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #868]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #864]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #860]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r11, [sp, #816]
	ldm	r10, {r6, r8, r9, r10}
	adds	r7, r11, r4
	ldr	r4, [sp, #108]                  @ 4-byte Reload
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r4, #12]
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #752
	bl	mulUnit_inner480
	ldr	r0, [sp, #812]
	add	r12, sp, #752
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r8, sp, #784
	ldr	r0, [sp, #808]
	add	lr, sp, #772
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #804]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #800]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #796]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r11, [sp, #48]                  @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r11
	ldm	lr, {r9, r10, lr}
	str	r0, [r4, #16]
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r2, [r5, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #688
	bl	mulUnit_inner480
	ldr	r0, [sp, #748]
	add	r8, sp, #720
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #692
	ldr	r0, [sp, #744]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #740]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #736]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #732]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r10, [sp, #688]
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	ldr	r9, [sp, #108]                  @ 4-byte Reload
	adds	r7, r10, r7
	ldm	r8, {r4, r6, r8}
	ldr	r11, [sp, #716]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #20]
	ldr	r7, [sp, #68]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r5, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #624
	bl	mulUnit_inner480
	ldr	r0, [sp, #684]
	add	r10, sp, #652
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #628
	ldr	r0, [sp, #680]
	mov	r4, r9
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #676]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #672]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #668]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #664]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r11, [sp, #624]
	ldm	r10, {r6, r8, r10}
	adds	r7, r11, r7
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #24]
	ldr	r7, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r5, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #560
	bl	mulUnit_inner480
	ldr	r0, [sp, #620]
	add	r12, sp, #560
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r8, sp, #592
	ldr	r0, [sp, #616]
	add	lr, sp, #580
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #612]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #608]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #604]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r11, [sp, #48]                  @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r11
	ldm	lr, {r9, r10, lr}
	str	r0, [r4, #28]
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #496
	bl	mulUnit_inner480
	ldr	r0, [sp, #556]
	add	r8, sp, #528
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #500
	ldr	r0, [sp, #552]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #548]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #544]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #540]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r10, [sp, #496]
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	ldr	r9, [sp, #108]                  @ 4-byte Reload
	adds	r7, r10, r7
	ldm	r8, {r4, r6, r8}
	ldr	r11, [sp, #524]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #32]
	ldr	r7, [sp, #80]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r5, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #432
	bl	mulUnit_inner480
	ldr	r0, [sp, #492]
	add	r10, sp, #460
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #436
	ldr	r0, [sp, #488]
	mov	r4, r9
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #484]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #480]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #476]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #472]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r11, [sp, #432]
	ldm	r10, {r6, r8, r10}
	adds	r7, r11, r7
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #36]
	ldr	r7, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r5, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #368
	bl	mulUnit_inner480
	ldr	r0, [sp, #428]
	add	r12, sp, #368
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	r8, sp, #400
	ldr	r0, [sp, #424]
	add	lr, sp, #388
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #420]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #416]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #412]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r11, [sp, #48]                  @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r11
	ldm	lr, {r9, r10, lr}
	str	r0, [r4, #40]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r5, #44]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #304
	bl	mulUnit_inner480
	ldr	r0, [sp, #364]
	add	r8, sp, #336
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #308
	ldr	r0, [sp, #360]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #356]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #352]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #348]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r10, [sp, #304]
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	ldr	r9, [sp, #108]                  @ 4-byte Reload
	adds	r7, r10, r7
	ldm	r8, {r4, r6, r8}
	ldr	r11, [sp, #332]
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #44]
	ldr	r7, [sp, #92]                   @ 4-byte Reload
	adcs	r7, r0, r7
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [r5, #48]
	adcs	r0, r3, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #240
	bl	mulUnit_inner480
	ldr	r0, [sp, #300]
	add	r10, sp, #268
	str	r0, [sp, #44]                   @ 4-byte Spill
	add	lr, sp, #244
	ldr	r0, [sp, #296]
	mov	r4, r9
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #292]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #288]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #284]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #280]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r11, [sp, #240]
	ldm	r10, {r6, r8, r10}
	adds	r7, r11, r7
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	str	r7, [r9, #48]
	ldr	r7, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r0, r7
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r5, #52]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #52]                   @ 4-byte Spill
	add	r0, sp, #176
	bl	mulUnit_inner480
	ldr	r0, [sp, #236]
	add	lr, sp, #176
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r8, sp, #208
	ldr	r0, [sp, #232]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #228]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #224]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #220]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r9, r10, r12, lr}
	ldr	r11, [sp, #48]                  @ 4-byte Reload
	ldm	r8, {r6, r7, r8}
	adds	r0, r0, r11
	str	r0, [r4, #52]
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r5, #56]
	adcs	r0, r3, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #80]                   @ 4-byte Spill
	add	r0, sp, #112
	bl	mulUnit_inner480
	ldr	r0, [sp, #172]
	add	lr, sp, #112
	str	r0, [sp, #72]                   @ 4-byte Spill
	add	r11, sp, #136
	ldr	r0, [sp, #168]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #164]
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r6, [sp, #48]                   @ 4-byte Reload
	ldm	r11, {r4, r5, r7, r8, r9, r10, r11}
	adds	r6, r0, r6
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r1, r1, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r2, r2, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r3, r3, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r12, r12, r0
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	adcs	r4, r4, r0
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r5, r5, r0
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	str	r6, [r0, #56]
	add	r6, r0, #60
	stm	r6, {r1, r2, r3, r12, lr}
	ldr	r1, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	adcs	r12, r7, r1
	ldr	r1, [sp, #100]                  @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	adcs	r1, r8, r1
	ldr	r7, [sp, #88]                   @ 4-byte Reload
	adcs	r2, r9, r2
	str	r5, [r0, #84]
	adcs	r3, r10, r3
	ldr	r6, [sp, #84]                   @ 4-byte Reload
	ldr	r5, [sp, #64]                   @ 4-byte Reload
	adcs	r7, r11, r7
	str	r4, [r0, #80]
	adcs	r6, r5, r6
	ldr	r5, [sp, #80]                   @ 4-byte Reload
	ldr	r4, [sp, #68]                   @ 4-byte Reload
	str	r12, [r0, #88]
	add	r12, r0, #92
	adcs	r5, r4, r5
	ldr	r4, [sp, #72]                   @ 4-byte Reload
	stm	r12, {r1, r2, r3, r7}
	adc	r4, r4, #0
	str	r6, [r0, #108]
	str	r5, [r0, #112]
	str	r4, [r0, #116]
	add	sp, sp, #52
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end202:
	.size	mclb_sqr15, .Lfunc_end202-mclb_sqr15
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner512                @ -- Begin function mulUnit_inner512
	.p2align	2
	.type	mulUnit_inner512,%function
	.code	32                              @ @mulUnit_inner512
mulUnit_inner512:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #56]
	ldr	r1, [r1, #60]
	umull	r1, r2, r1, r2
	adcs	r1, r7, r1
	str	r1, [r0, #60]
	adc	r1, r2, #0
	str	r1, [r0, #64]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end203:
	.size	mulUnit_inner512, .Lfunc_end203-mulUnit_inner512
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit16                  @ -- Begin function mclb_mulUnit16
	.p2align	2
	.type	mclb_mulUnit16,%function
	.code	32                              @ @mclb_mulUnit16
mclb_mulUnit16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #92
	mov	r4, r0
	add	r0, sp, #16
	bl	mulUnit_inner512
	ldr	r0, [sp, #80]
	add	r10, sp, #16
	str	r0, [sp, #12]                   @ 4-byte Spill
	add	lr, sp, #64
	ldr	r0, [sp, #28]
	add	r5, sp, #48
	ldm	r10, {r8, r9, r10}
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #32]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldr	r0, [sp, #40]
	ldr	r11, [sp, #36]
	str	r0, [sp]                        @ 4-byte Spill
	ldm	lr, {r0, r12, lr}
	ldm	r5, {r1, r2, r3, r5}
	ldr	r7, [sp, #44]
	ldr	r6, [sp, #76]
	str	r1, [r4, #32]
	add	r1, r4, #48
	stm	r1, {r0, r12, lr}
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r4, #12]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [r4, #16]
	ldr	r0, [sp]                        @ 4-byte Reload
	str	r0, [r4, #24]
	str	r2, [r4, #36]
	str	r3, [r4, #40]
	str	r5, [r4, #44]
	str	r6, [r4, #60]
	stm	r4, {r8, r9, r10}
	str	r11, [r4, #20]
	str	r7, [r4, #28]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	add	sp, sp, #92
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end204:
	.size	mclb_mulUnit16, .Lfunc_end204-mclb_mulUnit16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd16               @ -- Begin function mclb_mulUnitAdd16
	.p2align	2
	.type	mclb_mulUnitAdd16,%function
	.code	32                              @ @mclb_mulUnitAdd16
mclb_mulUnitAdd16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #144
	ldm	r1, {r3, r7}
	str	r7, [sp, #92]                   @ 4-byte Spill
	umull	r10, r3, r3, r2
	ldr	r7, [r1, #8]
	str	r7, [sp, #84]                   @ 4-byte Spill
	ldr	r7, [r1, #12]
	str	r7, [sp, #76]                   @ 4-byte Spill
	str	r3, [sp, #140]                  @ 4-byte Spill
	ldr	r3, [r0, #32]
	str	r3, [sp, #104]                  @ 4-byte Spill
	ldr	r3, [r0, #36]
	str	r3, [sp, #108]                  @ 4-byte Spill
	ldr	r3, [r0, #40]
	str	r3, [sp, #112]                  @ 4-byte Spill
	ldr	r3, [r0, #44]
	str	r3, [sp, #116]                  @ 4-byte Spill
	ldr	r3, [r0, #48]
	str	r3, [sp, #120]                  @ 4-byte Spill
	ldr	r3, [r0, #52]
	str	r3, [sp, #124]                  @ 4-byte Spill
	ldr	r3, [r0, #56]
	str	r3, [sp, #128]                  @ 4-byte Spill
	ldr	r3, [r0, #60]
	str	r3, [sp, #132]                  @ 4-byte Spill
	ldr	r3, [r0, #4]
	str	r3, [sp, #40]                   @ 4-byte Spill
	ldr	r3, [r0, #8]
	str	r3, [sp, #36]                   @ 4-byte Spill
	ldr	r3, [r0, #12]
	str	r3, [sp, #32]                   @ 4-byte Spill
	ldr	r3, [r0, #16]
	str	r3, [sp, #44]                   @ 4-byte Spill
	ldr	r3, [r0, #20]
	str	r3, [sp, #48]                   @ 4-byte Spill
	ldr	r3, [r0, #24]
	str	r3, [sp, #52]                   @ 4-byte Spill
	ldr	r3, [r0, #28]
	str	r3, [sp, #56]                   @ 4-byte Spill
	ldr	r3, [r1, #16]
	str	r3, [sp, #16]                   @ 4-byte Spill
	ldr	r3, [r1, #20]
	ldr	r7, [r0]
	str	r3, [sp, #24]                   @ 4-byte Spill
	ldr	r11, [r1, #24]
	adds	r7, r10, r7
	ldr	r8, [r1, #28]
	ldr	r9, [r1, #32]
	ldr	r6, [r1, #36]
	ldr	r5, [r1, #40]
	ldr	r4, [r1, #44]
	ldr	lr, [r1, #48]
	ldr	r12, [r1, #52]
	ldr	r3, [r1, #56]
	ldr	r1, [r1, #60]
	str	r7, [r0]
	umull	r7, r1, r1, r2
	str	r1, [sp, #136]                  @ 4-byte Spill
	umull	r3, r1, r3, r2
	str	r7, [sp, #20]                   @ 4-byte Spill
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #100]                  @ 4-byte Spill
	umull	r3, r1, r12, r2
	str	r3, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #96]                   @ 4-byte Spill
	umull	r3, r1, lr, r2
	str	r3, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #88]                   @ 4-byte Spill
	umull	r3, r1, r4, r2
	str	r1, [sp, #80]                   @ 4-byte Spill
	umull	r10, r1, r5, r2
	str	r3, [sp]                        @ 4-byte Spill
	str	r1, [sp, #72]                   @ 4-byte Spill
	umull	r5, r1, r6, r2
	str	r1, [sp, #68]                   @ 4-byte Spill
	umull	r6, r1, r9, r2
	str	r1, [sp, #64]                   @ 4-byte Spill
	umull	r4, r1, r8, r2
	str	r1, [sp, #60]                   @ 4-byte Spill
	umull	lr, r1, r11, r2
	str	r1, [sp, #28]                   @ 4-byte Spill
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	umull	r11, r1, r1, r2
	str	r1, [sp, #24]                   @ 4-byte Spill
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	umull	r12, r1, r1, r2
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	umull	r3, r1, r1, r2
	str	r1, [sp, #76]                   @ 4-byte Spill
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	umull	r1, r7, r1, r2
	str	r7, [sp, #84]                   @ 4-byte Spill
	ldr	r7, [sp, #92]                   @ 4-byte Reload
	umull	r2, r8, r7, r2
	ldr	r7, [sp, #40]                   @ 4-byte Reload
	adcs	r2, r2, r7
	ldr	r7, [sp, #36]                   @ 4-byte Reload
	adcs	r1, r1, r7
	ldr	r7, [sp, #32]                   @ 4-byte Reload
	adcs	r3, r3, r7
	ldr	r7, [sp, #44]                   @ 4-byte Reload
	adcs	r12, r12, r7
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	adcs	r11, r11, r7
	ldr	r7, [sp, #52]                   @ 4-byte Reload
	adcs	lr, lr, r7
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	r9, r4, r7
	ldr	r4, [sp, #104]                  @ 4-byte Reload
	adcs	r4, r6, r4
	ldr	r6, [sp, #108]                  @ 4-byte Reload
	str	r4, [sp, #104]                  @ 4-byte Spill
	adcs	r6, r5, r6
	ldr	r5, [sp, #112]                  @ 4-byte Reload
	ldr	r4, [sp]                        @ 4-byte Reload
	adcs	r7, r10, r5
	ldr	r5, [sp, #116]                  @ 4-byte Reload
	adcs	r10, r4, r5
	ldr	r5, [sp, #120]                  @ 4-byte Reload
	ldr	r4, [sp, #4]                    @ 4-byte Reload
	adcs	r4, r4, r5
	str	r4, [sp, #120]                  @ 4-byte Spill
	ldr	r5, [sp, #124]                  @ 4-byte Reload
	ldr	r4, [sp, #8]                    @ 4-byte Reload
	adcs	r4, r4, r5
	str	r4, [sp, #124]                  @ 4-byte Spill
	ldr	r5, [sp, #128]                  @ 4-byte Reload
	ldr	r4, [sp, #12]                   @ 4-byte Reload
	adcs	r4, r4, r5
	str	r4, [sp, #128]                  @ 4-byte Spill
	ldr	r5, [sp, #132]                  @ 4-byte Reload
	ldr	r4, [sp, #20]                   @ 4-byte Reload
	adcs	r4, r4, r5
	ldr	r5, [sp, #140]                  @ 4-byte Reload
	str	r4, [sp, #116]                  @ 4-byte Spill
	mov	r4, #0
	adc	r4, r4, #0
	adds	r2, r2, r5
	adcs	r1, r1, r8
	str	r1, [r0, #8]
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	str	r2, [r0, #4]
	adcs	r1, r3, r1
	str	r1, [r0, #12]
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [sp, #104]                  @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #16]
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	ldr	r5, [sp, #124]                  @ 4-byte Reload
	adcs	r1, r11, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	str	r4, [sp, #132]                  @ 4-byte Spill
	adcs	r1, lr, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	ldr	r4, [sp, #128]                  @ 4-byte Reload
	adcs	r1, r9, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	adcs	lr, r2, r1
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r2, [sp, #116]                  @ 4-byte Reload
	adcs	r8, r6, r1
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	ldr	r6, [sp, #120]                  @ 4-byte Reload
	adcs	r3, r7, r1
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	str	lr, [r0, #32]
	adcs	r7, r10, r1
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	str	r8, [r0, #36]
	adcs	r6, r6, r1
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	str	r3, [r0, #40]
	adcs	r5, r5, r1
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	str	r7, [r0, #44]
	adcs	r4, r4, r1
	ldr	r1, [sp, #100]                  @ 4-byte Reload
	str	r6, [r0, #48]
	adcs	r12, r2, r1
	str	r5, [r0, #52]
	str	r4, [r0, #56]
	str	r12, [r0, #60]
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	adc	r0, r1, r0
	add	sp, sp, #144
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end205:
	.size	mclb_mulUnitAdd16, .Lfunc_end205-mclb_mulUnitAdd16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul16                      @ -- Begin function mclb_mul16
	.p2align	2
	.type	mclb_mul16,%function
	.code	32                              @ @mclb_mul16
mclb_mul16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #308
	mov	r6, r2
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul8
	add	r0, r4, #64
	add	r1, r5, #32
	add	r2, r6, #32
	bl	mclb_mul8
	ldr	r0, [r6, #44]
	add	r11, r6, #32
	str	r0, [sp, #152]                  @ 4-byte Spill
	ldr	r0, [r6, #48]
	str	r0, [sp, #160]                  @ 4-byte Spill
	ldr	r0, [r6, #52]
	str	r0, [sp, #168]                  @ 4-byte Spill
	ldr	r0, [r6, #56]
	str	r0, [sp, #172]                  @ 4-byte Spill
	ldm	r11, {r9, r10, r11}
	ldm	r6, {r0, r1, r2, r3, r12, lr}
	adds	r9, r0, r9
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	adcs	r10, r1, r10
	ldr	r7, [r6, #24]
	adcs	r2, r2, r11
	ldr	r8, [r6, #60]
	adcs	r3, r3, r0
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	ldr	r6, [r6, #28]
	adcs	r11, r12, r0
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	str	r9, [sp, #164]                  @ 4-byte Spill
	adcs	r12, lr, r0
	ldr	r0, [sp, #172]                  @ 4-byte Reload
	str	r2, [sp, #148]                  @ 4-byte Spill
	adcs	r0, r7, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	adcs	r0, r6, r8
	str	r0, [sp, #144]                  @ 4-byte Spill
	mov	r0, #0
	ldm	r5, {r1, r6, r7, lr}
	adc	r0, r0, #0
	str	r0, [sp, #172]                  @ 4-byte Spill
	mov	r8, r11
	ldr	r0, [r5, #32]
	str	r2, [sp, #184]
	add	r2, sp, #176
	adds	r0, r1, r0
	str	r0, [sp, #168]                  @ 4-byte Spill
	str	r0, [sp, #208]
	ldr	r0, [r5, #36]
	ldr	r1, [r5, #16]
	adcs	r0, r6, r0
	str	r0, [sp, #160]                  @ 4-byte Spill
	str	r0, [sp, #212]
	ldr	r0, [r5, #40]
	str	r9, [sp, #176]
	adcs	r6, r7, r0
	ldr	r0, [r5, #44]
	str	r11, [sp, #192]
	adcs	r0, lr, r0
	str	r0, [sp, #152]                  @ 4-byte Spill
	str	r0, [sp, #220]
	ldr	r0, [r5, #48]
	ldr	r11, [sp, #128]                 @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #140]                  @ 4-byte Spill
	str	r0, [sp, #224]
	ldr	r0, [r5, #52]
	ldr	r1, [r5, #20]
	str	r10, [sp, #156]                 @ 4-byte Spill
	adcs	r0, r1, r0
	str	r0, [sp, #136]                  @ 4-byte Spill
	str	r0, [sp, #228]
	ldr	r0, [r5, #56]
	ldr	r1, [r5, #24]
	str	r10, [sp, #180]
	mov	r10, r12
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	str	r0, [sp, #232]
	ldr	r0, [r5, #60]
	ldr	r1, [r5, #28]
	ldr	r5, [sp, #144]                  @ 4-byte Reload
	adcs	r7, r1, r0
	mov	r0, #0
	adc	r9, r0, #0
	add	r0, sp, #240
	add	r1, sp, #208
	str	r3, [sp, #132]                  @ 4-byte Spill
	str	r6, [sp, #216]
	str	r3, [sp, #188]
	str	r12, [sp, #196]
	str	r11, [sp, #200]
	str	r7, [sp, #236]
	str	r5, [sp, #204]
	bl	mclb_mul8
	ldr	r3, [sp, #132]                  @ 4-byte Reload
	sub	r2, r9, r9, lsl #1
	rsb	r0, r9, #0
	str	r9, [sp, #120]                  @ 4-byte Spill
	and	r9, r3, r2
	ldr	r3, [sp, #148]                  @ 4-byte Reload
	and	r8, r8, r0
	and	r12, r5, r0
	and	lr, r3, r0
	and	r11, r11, r0
	and	r1, r10, r0
	ldr	r0, [sp, #156]                  @ 4-byte Reload
	str	lr, [sp, #144]                  @ 4-byte Spill
	and	r3, r0, r2
	ldr	r0, [sp, #164]                  @ 4-byte Reload
	str	r3, [sp, #156]                  @ 4-byte Spill
	and	r2, r0, r2
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	str	r8, [sp, #128]                  @ 4-byte Spill
	adds	r0, r2, r0
	str	r0, [sp, #148]                  @ 4-byte Spill
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	str	r9, [sp, #132]                  @ 4-byte Spill
	adcs	r5, r3, r0
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	adcs	r6, lr, r6
	str	r2, [sp, #164]                  @ 4-byte Spill
	adcs	r3, r9, r0
	ldr	r0, [sp, #140]                  @ 4-byte Reload
	adcs	r10, r8, r0
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	adcs	lr, r1, r0
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r8, r11, r0
	mov	r0, #0
	adcs	r7, r12, r7
	adc	r9, r0, #0
	ldr	r0, [sp, #172]                  @ 4-byte Reload
	cmp	r0, #0
	and	r2, r9, r0
	moveq	lr, r1
	ldr	r1, [sp, #128]                  @ 4-byte Reload
	moveq	r8, r11
	moveq	r7, r12
	str	r2, [sp, #168]                  @ 4-byte Spill
	add	r9, sp, #276
	moveq	r10, r1
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	ldr	r2, [sp, #148]                  @ 4-byte Reload
	ldr	r11, [sp, #272]
	moveq	r3, r1
	ldr	r1, [sp, #144]                  @ 4-byte Reload
	cmp	r0, #0
	moveq	r6, r1
	ldr	r1, [sp, #156]                  @ 4-byte Reload
	moveq	r5, r1
	ldr	r1, [sp, #164]                  @ 4-byte Reload
	moveq	r2, r1
	ldr	r1, [sp, #120]                  @ 4-byte Reload
	adds	r2, r2, r11
	str	r2, [sp, #164]                  @ 4-byte Spill
	and	r12, r0, r1
	ldr	r0, [sp, #300]
	str	r0, [sp, #172]                  @ 4-byte Spill
	ldr	r0, [sp, #296]
	str	r0, [sp, #148]                  @ 4-byte Spill
	ldr	r0, [sp, #292]
	str	r0, [sp, #144]                  @ 4-byte Spill
	ldr	r0, [sp, #288]
	str	r0, [sp, #140]                  @ 4-byte Spill
	ldm	r9, {r0, r1, r9}
	adcs	r0, r5, r0
	str	r0, [sp, #160]                  @ 4-byte Spill
	adcs	r0, r6, r1
	str	r0, [sp, #156]                  @ 4-byte Spill
	adcs	r0, r3, r9
	str	r0, [sp, #152]                  @ 4-byte Spill
	ldr	r0, [sp, #140]                  @ 4-byte Reload
	ldr	r9, [r4, #44]
	adcs	r0, r10, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #144]                  @ 4-byte Reload
	ldr	r10, [r4, #40]
	adcs	r0, lr, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #148]                  @ 4-byte Reload
	add	lr, sp, #240
	ldr	r6, [r4, #56]
	adcs	r0, r8, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #172]                  @ 4-byte Reload
	ldr	r8, [r4, #48]
	adcs	r0, r7, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	ldr	r7, [r4, #52]
	adc	r0, r0, r12
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [r4, #32]
	str	r0, [sp, #168]                  @ 4-byte Spill
	ldr	r0, [r4, #36]
	str	r0, [sp, #172]                  @ 4-byte Spill
	ldr	r0, [r4]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [r4, #4]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [r4, #8]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [r4, #12]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [r4, #16]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [r4, #20]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [r4, #24]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [r4, #28]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #268]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #264]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #104]                 @ 4-byte Reload
	ldr	r5, [r4, #60]
	subs	r0, r0, r11
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	str	r6, [sp, #144]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	sbcs	r0, r2, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	str	r5, [sp, #148]                  @ 4-byte Spill
	sbcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	r7, [sp, #140]                  @ 4-byte Spill
	sbcs	r0, r12, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r3, [r4, #76]
	sbcs	r0, lr, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	lr, [r4, #68]
	sbcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	str	r3, [sp, #28]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	ldr	r1, [sp, #164]                  @ 4-byte Reload
	ldr	r2, [r4, #80]
	sbcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #172]                  @ 4-byte Reload
	ldr	r1, [sp, #160]                  @ 4-byte Reload
	str	r2, [sp, #32]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #156]                  @ 4-byte Reload
	ldr	r1, [r4, #84]
	sbcs	r0, r0, r10
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r11, [r4, #88]
	sbcs	r0, r0, r9
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	str	r11, [sp, #36]                  @ 4-byte Spill
	sbcs	r0, r0, r8
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	str	r10, [sp, #128]                 @ 4-byte Spill
	sbcs	r0, r0, r7
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r7, [r4, #72]
	sbcs	r0, r0, r6
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r6, [sp, #104]                  @ 4-byte Reload
	sbcs	r0, r0, r5
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r5, [r4, #64]
	sbc	r0, r0, #0
	str	r0, [sp, #108]                  @ 4-byte Spill
	subs	r6, r6, r5
	str	r6, [sp, #20]                   @ 4-byte Spill
	ldr	r6, [sp, #100]                  @ 4-byte Reload
	ldr	r0, [r4, #96]
	sbcs	r6, r6, lr
	str	r6, [sp, #16]                   @ 4-byte Spill
	ldr	r6, [sp, #96]                   @ 4-byte Reload
	str	r0, [sp, #152]                  @ 4-byte Spill
	sbcs	r6, r6, r7
	str	r6, [sp, #12]                   @ 4-byte Spill
	ldr	r6, [sp, #92]                   @ 4-byte Reload
	ldr	r0, [r4, #100]
	sbcs	r3, r6, r3
	str	r3, [sp, #8]                    @ 4-byte Spill
	ldr	r3, [sp, #88]                   @ 4-byte Reload
	mov	r6, r1
	str	r0, [sp, #156]                  @ 4-byte Spill
	sbcs	r3, r3, r2
	ldr	r2, [sp, #84]                   @ 4-byte Reload
	ldr	r0, [r4, #104]
	sbcs	r2, r2, r1
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	str	r0, [sp, #160]                  @ 4-byte Spill
	ldr	r0, [r4, #108]
	sbcs	r1, r1, r11
	str	r0, [sp, #164]                  @ 4-byte Spill
	ldr	r0, [r4, #92]
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r0, [sp, #40]                   @ 4-byte Spill
	sbcs	r11, r1, r0
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	ldr	r10, [r4, #112]
	sbcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #156]                  @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	str	r9, [sp, #132]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	ldr	r9, [r4, #116]
	sbcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #164]                  @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	str	r8, [sp, #136]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r8, [r4, #120]
	sbcs	r0, r0, r10
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r12, [r4, #124]
	sbcs	r0, r0, r9
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	sbcs	r0, r0, r8
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	str	r12, [sp, #124]                 @ 4-byte Spill
	sbcs	r0, r0, r12
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	str	r7, [sp, #24]                   @ 4-byte Spill
	sbc	r0, r0, #0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	ldr	r12, [sp, #172]                 @ 4-byte Reload
	adds	r7, r0, r1
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r8, [sp, #120]                  @ 4-byte Spill
	adcs	r8, r12, r0
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	add	r12, r4, #32
	str	r9, [sp, #116]                  @ 4-byte Spill
	adcs	r9, r0, r1
	ldr	r0, [sp, #132]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r10, [sp, #112]                 @ 4-byte Spill
	adcs	r10, r0, r1
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	ldr	r1, [sp, #140]                  @ 4-byte Reload
	adcs	r0, r0, r3
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r1, r2
	ldr	r2, [sp, #144]                  @ 4-byte Reload
	stm	r12, {r7, r8, r9, r10}
	add	r12, r4, #48
	adcs	r2, r2, r3
	ldr	r3, [sp, #148]                  @ 4-byte Reload
	ldr	r7, [sp, #88]                   @ 4-byte Reload
	adcs	r3, r3, r11
	stm	r12, {r0, r1, r2, r3}
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	adcs	r8, r5, r0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r5, [sp, #80]                   @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r3, r0, r3
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	lr, [r4, #68]
	adcs	r7, r0, r7
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r8, [r4, #64]
	adcs	r6, r6, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	str	r6, [r4, #84]
	adcs	r5, r0, r5
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r5, [r4, #88]
	adcs	r12, r0, r1
	add	r0, r4, #72
	stm	r0, {r2, r3, r7}
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r1, [sp, #108]                  @ 4-byte Reload
	ldr	r2, [sp, #160]                  @ 4-byte Reload
	adcs	lr, r0, r1
	ldr	r1, [sp, #156]                  @ 4-byte Reload
	ldr	r3, [sp, #164]                  @ 4-byte Reload
	adcs	r1, r1, #0
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r2, r2, #0
	str	r12, [r4, #92]
	adcs	r3, r3, #0
	str	lr, [r4, #96]
	adcs	r7, r0, #0
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r6, r0, #0
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	str	r6, [r4, #116]
	adcs	r5, r0, #0
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	str	r5, [r4, #120]
	adc	r12, r0, #0
	add	r0, r4, #100
	stm	r0, {r1, r2, r3, r7}
	str	r12, [r4, #124]
	add	sp, sp, #308
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end206:
	.size	mclb_mul16, .Lfunc_end206-mclb_mul16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr16                      @ -- Begin function mclb_sqr16
	.p2align	2
	.type	mclb_sqr16,%function
	.code	32                              @ @mclb_sqr16
mclb_sqr16:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #308
	mov	r2, r1
	mov	r5, r1
	mov	r4, r0
	bl	mclb_mul8
	add	r1, r5, #32
	add	r0, r4, #64
	mov	r2, r1
	bl	mclb_mul8
	ldr	r0, [r5, #32]
	ldm	r5, {r1, r2, r3, r7}
	adds	r0, r1, r0
	str	r0, [sp, #172]                  @ 4-byte Spill
	str	r0, [sp, #208]
	str	r0, [sp, #176]
	ldr	r0, [r5, #36]
	ldr	r1, [r5, #16]
	adcs	r0, r2, r0
	str	r0, [sp, #168]                  @ 4-byte Spill
	str	r0, [sp, #212]
	add	r2, sp, #176
	str	r0, [sp, #180]
	ldr	r0, [r5, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #164]                  @ 4-byte Spill
	str	r0, [sp, #216]
	str	r0, [sp, #184]
	ldr	r0, [r5, #44]
	adcs	r11, r7, r0
	ldr	r0, [r5, #48]
	str	r11, [sp, #220]
	adcs	r6, r1, r0
	ldr	r0, [r5, #52]
	ldr	r1, [r5, #20]
	str	r11, [sp, #188]
	adcs	r7, r1, r0
	ldr	r0, [r5, #56]
	ldr	r1, [r5, #24]
	str	r6, [sp, #224]
	adcs	r8, r1, r0
	ldr	r0, [r5, #60]
	ldr	r1, [r5, #28]
	str	r6, [sp, #192]
	adcs	r9, r1, r0
	mov	r0, #0
	adc	r10, r0, #0
	add	r0, sp, #240
	add	r1, sp, #208
	str	r7, [sp, #228]
	str	r7, [sp, #196]
	str	r8, [sp, #232]
	str	r8, [sp, #200]
	str	r9, [sp, #236]
	str	r9, [sp, #204]
	bl	mclb_mul8
	rsb	r1, r10, #0
	add	lr, sp, #276
	and	r3, r9, r1
	and	r2, r8, r1
	and	r7, r7, r1
	ldr	r9, [sp, #272]
	lsl	r0, r3, #1
	orr	r0, r0, r2, lsr #31
	lsl	r2, r2, #1
	str	r0, [sp, #148]                  @ 4-byte Spill
	orr	r0, r2, r7, lsr #31
	and	r2, r6, r1
	str	r0, [sp, #144]                  @ 4-byte Spill
	lsl	r7, r7, #1
	sub	r6, r10, r10, lsl #1
	orr	r0, r7, r2, lsr #31
	str	r0, [sp, #140]                  @ 4-byte Spill
	and	r0, r11, r6
	lsl	r2, r2, #1
	lsr	r11, r3, #31
	ldr	r7, [sp, #300]
	orr	r2, r2, r0, lsr #31
	str	r2, [sp, #136]                  @ 4-byte Spill
	ldr	r2, [sp, #164]                  @ 4-byte Reload
	lsl	r0, r0, #1
	and	r1, r2, r1
	orr	r0, r0, r1, lsr #31
	str	r0, [sp, #152]                  @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	lsl	r1, r1, #1
	and	r0, r0, r6
	orr	r8, r1, r0, lsr #31
	ldr	r1, [sp, #172]                  @ 4-byte Reload
	lsl	r0, r0, #1
	and	r1, r1, r6
	ldr	r6, [sp, #296]
	orr	r5, r0, r1, lsr #31
	ldm	lr, {r0, r2, r3, r12, lr}
	adds	r1, r9, r1, lsl #1
	adcs	r0, r5, r0
	str	r0, [sp, #160]                  @ 4-byte Spill
	adcs	r0, r8, r2
	str	r0, [sp, #156]                  @ 4-byte Spill
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	str	r1, [sp, #164]                  @ 4-byte Spill
	adcs	r0, r0, r3
	str	r0, [sp, #152]                  @ 4-byte Spill
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	ldr	r9, [r4, #44]
	adcs	r0, r0, r12
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #140]                  @ 4-byte Reload
	add	r12, sp, #240
	ldr	r8, [r4, #48]
	adcs	r0, r0, lr
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #144]                  @ 4-byte Reload
	ldr	r5, [r4, #56]
	adcs	r0, r0, r6
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #148]                  @ 4-byte Reload
	ldr	lr, [r4, #60]
	adcs	r0, r0, r7
	str	r0, [sp, #112]                  @ 4-byte Spill
	adc	r0, r11, r10
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [r4, #32]
	str	r0, [sp, #168]                  @ 4-byte Spill
	ldr	r0, [r4, #36]
	str	r0, [sp, #172]                  @ 4-byte Spill
	ldr	r0, [r4]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [r4, #4]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [r4, #8]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [r4, #12]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [r4, #16]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [r4, #20]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [r4, #24]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [r4, #28]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #268]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #264]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r6, r12}
	ldr	r11, [sp, #104]                 @ 4-byte Reload
	ldr	r10, [r4, #40]
	subs	r0, r0, r11
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r7, [r4, #52]
	sbcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	sbcs	r0, r2, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	str	r5, [sp, #144]                  @ 4-byte Spill
	sbcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	str	lr, [sp, #148]                  @ 4-byte Spill
	sbcs	r0, r6, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r6, [sp, #172]                  @ 4-byte Reload
	sbcs	r0, r12, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	str	r7, [sp, #140]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	ldr	r3, [r4, #76]
	sbcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	ldr	r1, [sp, #164]                  @ 4-byte Reload
	str	r3, [sp, #28]                   @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	ldr	r2, [r4, #80]
	sbcs	r0, r0, r6
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #156]                  @ 4-byte Reload
	ldr	r6, [sp, #104]                  @ 4-byte Reload
	sbcs	r0, r0, r10
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r1, [r4, #84]
	sbcs	r0, r0, r9
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	str	r2, [sp, #32]                   @ 4-byte Spill
	sbcs	r0, r0, r8
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r11, [r4, #88]
	sbcs	r0, r0, r7
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r7, [r4, #72]
	sbcs	r0, r0, r5
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r5, [r4, #64]
	sbcs	r0, r0, lr
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	lr, [r4, #68]
	sbc	r0, r0, #0
	subs	r6, r6, r5
	str	r6, [sp, #20]                   @ 4-byte Spill
	ldr	r6, [sp, #100]                  @ 4-byte Reload
	str	r0, [sp, #108]                  @ 4-byte Spill
	sbcs	r6, r6, lr
	str	r6, [sp, #16]                   @ 4-byte Spill
	ldr	r6, [sp, #96]                   @ 4-byte Reload
	ldr	r0, [r4, #96]
	sbcs	r6, r6, r7
	str	r6, [sp, #12]                   @ 4-byte Spill
	ldr	r6, [sp, #92]                   @ 4-byte Reload
	str	r0, [sp, #152]                  @ 4-byte Spill
	sbcs	r3, r6, r3
	str	r3, [sp, #8]                    @ 4-byte Spill
	ldr	r3, [sp, #88]                   @ 4-byte Reload
	mov	r6, r1
	ldr	r0, [r4, #100]
	sbcs	r3, r3, r2
	ldr	r2, [sp, #84]                   @ 4-byte Reload
	str	r0, [sp, #156]                  @ 4-byte Spill
	sbcs	r2, r2, r1
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	ldr	r0, [r4, #104]
	str	r0, [sp, #160]                  @ 4-byte Spill
	sbcs	r1, r1, r11
	ldr	r0, [r4, #108]
	str	r0, [sp, #164]                  @ 4-byte Spill
	ldr	r0, [r4, #92]
	str	r1, [sp, #4]                    @ 4-byte Spill
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r11, [sp, #36]                  @ 4-byte Spill
	sbcs	r11, r1, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	str	r10, [sp, #128]                 @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #156]                  @ 4-byte Reload
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	ldr	r10, [r4, #112]
	sbcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #160]                  @ 4-byte Reload
	ldr	r1, [sp, #64]                   @ 4-byte Reload
	str	r9, [sp, #132]                  @ 4-byte Spill
	sbcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #164]                  @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	ldr	r9, [r4, #116]
	sbcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	str	r8, [sp, #136]                  @ 4-byte Spill
	sbcs	r0, r0, r10
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r8, [r4, #120]
	sbcs	r0, r0, r9
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r12, [r4, #124]
	sbcs	r0, r0, r8
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	sbcs	r0, r0, r12
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	str	r12, [sp, #124]                 @ 4-byte Spill
	sbc	r0, r0, #0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #168]                  @ 4-byte Reload
	str	r7, [sp, #24]                   @ 4-byte Spill
	adds	r7, r0, r1
	ldr	r12, [sp, #172]                 @ 4-byte Reload
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r8, [sp, #120]                  @ 4-byte Spill
	adcs	r8, r12, r0
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	add	r12, r4, #32
	str	r9, [sp, #116]                  @ 4-byte Spill
	adcs	r9, r0, r1
	ldr	r0, [sp, #132]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	str	r10, [sp, #112]                 @ 4-byte Spill
	adcs	r10, r0, r1
	ldr	r0, [sp, #136]                  @ 4-byte Reload
	ldr	r1, [sp, #140]                  @ 4-byte Reload
	adcs	r0, r0, r3
	ldr	r3, [sp, #4]                    @ 4-byte Reload
	adcs	r1, r1, r2
	ldr	r2, [sp, #144]                  @ 4-byte Reload
	stm	r12, {r7, r8, r9, r10}
	add	r12, r4, #48
	adcs	r2, r2, r3
	ldr	r3, [sp, #148]                  @ 4-byte Reload
	ldr	r7, [sp, #88]                   @ 4-byte Reload
	adcs	r3, r3, r11
	stm	r12, {r0, r1, r2, r3}
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [sp, #96]                   @ 4-byte Reload
	adcs	r8, r5, r0
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r3, [sp, #92]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #24]                   @ 4-byte Reload
	ldr	r5, [sp, #80]                   @ 4-byte Reload
	adcs	r2, r0, r2
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r3, r0, r3
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	str	lr, [r4, #68]
	adcs	r7, r0, r7
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	str	r8, [r4, #64]
	adcs	r6, r6, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	str	r6, [r4, #84]
	adcs	r5, r0, r5
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	str	r5, [r4, #88]
	adcs	r12, r0, r1
	add	r0, r4, #72
	stm	r0, {r2, r3, r7}
	ldr	r0, [sp, #152]                  @ 4-byte Reload
	ldr	r1, [sp, #108]                  @ 4-byte Reload
	ldr	r2, [sp, #160]                  @ 4-byte Reload
	adcs	lr, r0, r1
	ldr	r1, [sp, #156]                  @ 4-byte Reload
	ldr	r3, [sp, #164]                  @ 4-byte Reload
	adcs	r1, r1, #0
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r2, r2, #0
	str	r12, [r4, #92]
	adcs	r3, r3, #0
	str	lr, [r4, #96]
	adcs	r7, r0, #0
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r6, r0, #0
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	str	r6, [r4, #116]
	adcs	r5, r0, #0
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	str	r5, [r4, #120]
	adc	r12, r0, #0
	add	r0, r4, #100
	stm	r0, {r1, r2, r3, r7}
	str	r12, [r4, #124]
	add	sp, sp, #308
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end207:
	.size	mclb_sqr16, .Lfunc_end207-mclb_sqr16
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mulUnit_inner544                @ -- Begin function mulUnit_inner544
	.p2align	2
	.type	mulUnit_inner544,%function
	.code	32                              @ @mulUnit_inner544
mulUnit_inner544:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r12, [r1]
	ldmib	r1, {r3, lr}
	umull	r4, r7, r12, r2
	ldr	r8, [r1, #12]
	umull	r6, r12, lr, r2
	str	r4, [r0]
	mov	r5, r7
	mov	r4, r6
	umlal	r5, r4, r3, r2
	str	r4, [r0, #8]
	umull	r3, r4, r3, r2
	str	r5, [r0, #4]
	umull	r5, lr, r8, r2
	adds	r3, r7, r3
	adcs	r3, r4, r6
	adcs	r3, r12, r5
	str	r3, [r0, #12]
	ldr	r3, [r1, #16]
	umull	r3, r7, r3, r2
	adcs	r3, lr, r3
	str	r3, [r0, #16]
	ldr	r3, [r1, #20]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #20]
	ldr	r3, [r1, #24]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #24]
	ldr	r3, [r1, #28]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #28]
	ldr	r3, [r1, #32]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #32]
	ldr	r3, [r1, #36]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #36]
	ldr	r3, [r1, #40]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #40]
	ldr	r3, [r1, #44]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #44]
	ldr	r3, [r1, #48]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #48]
	ldr	r3, [r1, #52]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #52]
	ldr	r3, [r1, #56]
	umull	r3, r7, r3, r2
	adcs	r3, r6, r3
	str	r3, [r0, #56]
	ldr	r3, [r1, #60]
	umull	r3, r6, r3, r2
	adcs	r3, r7, r3
	str	r3, [r0, #60]
	ldr	r1, [r1, #64]
	umull	r1, r2, r1, r2
	adcs	r4, r6, r1
	adc	r5, r2, #0
	strd	r4, r5, [r0, #64]
	pop	{r4, r5, r6, r7, r8, pc}
.Lfunc_end208:
	.size	mulUnit_inner544, .Lfunc_end208-mulUnit_inner544
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnit17                  @ -- Begin function mclb_mulUnit17
	.p2align	2
	.type	mclb_mulUnit17,%function
	.code	32                              @ @mclb_mulUnit17
mclb_mulUnit17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #100
	mov	r4, r0
	add	r0, sp, #24
	bl	mulUnit_inner544
	ldr	r0, [sp, #92]
	add	r10, sp, #24
	str	r0, [sp, #20]                   @ 4-byte Spill
	add	r5, sp, #56
	ldr	r0, [sp, #36]
	add	lr, sp, #72
	ldm	r10, {r8, r9, r10}
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #40]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #48]
	ldr	r11, [sp, #44]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #52]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldm	r5, {r1, r2, r3, r5}
	ldm	lr, {r0, r12, lr}
	ldr	r7, [sp, #88]
	ldr	r6, [sp, #84]
	str	r7, [r4, #64]
	add	r7, r4, #32
	stm	r7, {r1, r2, r3, r5}
	add	r1, r4, #48
	stm	r1, {r0, r12, lr}
	ldr	r0, [sp, #16]                   @ 4-byte Reload
	str	r0, [r4, #12]
	ldr	r0, [sp, #12]                   @ 4-byte Reload
	str	r0, [r4, #16]
	ldr	r0, [sp, #8]                    @ 4-byte Reload
	str	r0, [r4, #24]
	ldr	r0, [sp, #4]                    @ 4-byte Reload
	str	r0, [r4, #28]
	str	r6, [r4, #60]
	stm	r4, {r8, r9, r10}
	str	r11, [r4, #20]
	ldr	r0, [sp, #20]                   @ 4-byte Reload
	add	sp, sp, #100
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end209:
	.size	mclb_mulUnit17, .Lfunc_end209-mclb_mulUnit17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mulUnitAdd17               @ -- Begin function mclb_mulUnitAdd17
	.p2align	2
	.type	mclb_mulUnitAdd17,%function
	.code	32                              @ @mclb_mulUnitAdd17
mclb_mulUnitAdd17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #156
	ldm	r1, {r3, r7}
	str	r7, [sp, #100]                  @ 4-byte Spill
	umull	r11, r3, r3, r2
	ldr	r7, [r1, #8]
	str	r7, [sp, #92]                   @ 4-byte Spill
	ldr	r7, [r1, #12]
	str	r7, [sp, #84]                   @ 4-byte Spill
	str	r3, [sp, #152]                  @ 4-byte Spill
	ldr	r3, [r0, #64]
	str	r3, [sp, #144]                  @ 4-byte Spill
	ldr	r3, [r0, #32]
	str	r3, [sp, #108]                  @ 4-byte Spill
	ldr	r3, [r0, #36]
	str	r3, [sp, #112]                  @ 4-byte Spill
	ldr	r3, [r0, #40]
	str	r3, [sp, #116]                  @ 4-byte Spill
	ldr	r3, [r0, #44]
	str	r3, [sp, #120]                  @ 4-byte Spill
	ldr	r3, [r0, #48]
	str	r3, [sp, #124]                  @ 4-byte Spill
	ldr	r3, [r0, #52]
	str	r3, [sp, #128]                  @ 4-byte Spill
	ldr	r3, [r0, #56]
	str	r3, [sp, #132]                  @ 4-byte Spill
	ldr	r3, [r0, #60]
	str	r3, [sp, #136]                  @ 4-byte Spill
	ldr	r3, [r0, #4]
	str	r3, [sp, #48]                   @ 4-byte Spill
	ldr	r3, [r0, #8]
	str	r3, [sp, #44]                   @ 4-byte Spill
	ldr	r3, [r0, #12]
	str	r3, [sp, #40]                   @ 4-byte Spill
	ldr	r3, [r0, #16]
	str	r3, [sp, #52]                   @ 4-byte Spill
	ldr	r3, [r0, #20]
	str	r3, [sp, #56]                   @ 4-byte Spill
	ldr	r3, [r0, #24]
	str	r3, [sp, #60]                   @ 4-byte Spill
	ldr	r3, [r0, #28]
	str	r3, [sp, #64]                   @ 4-byte Spill
	ldr	r3, [r1, #16]
	str	r3, [sp, #16]                   @ 4-byte Spill
	ldr	r3, [r1, #20]
	str	r3, [sp, #28]                   @ 4-byte Spill
	ldr	r3, [r1, #24]
	ldr	r7, [r0]
	str	r3, [sp, #32]                   @ 4-byte Spill
	ldr	r10, [r1, #28]
	adds	r7, r11, r7
	ldr	r8, [r1, #32]
	ldr	r9, [r1, #36]
	ldr	r6, [r1, #40]
	ldr	r5, [r1, #44]
	ldr	r4, [r1, #48]
	ldr	lr, [r1, #52]
	ldr	r12, [r1, #56]
	ldr	r3, [r1, #60]
	ldr	r1, [r1, #64]
	str	r7, [r0]
	umull	r7, r1, r1, r2
	str	r1, [sp, #148]                  @ 4-byte Spill
	umull	r3, r1, r3, r2
	str	r7, [sp, #24]                   @ 4-byte Spill
	str	r3, [sp, #20]                   @ 4-byte Spill
	str	r1, [sp, #140]                  @ 4-byte Spill
	umull	r3, r1, r12, r2
	str	r3, [sp, #12]                   @ 4-byte Spill
	str	r1, [sp, #104]                  @ 4-byte Spill
	umull	r3, r1, lr, r2
	str	r3, [sp, #8]                    @ 4-byte Spill
	str	r1, [sp, #96]                   @ 4-byte Spill
	umull	r3, r1, r4, r2
	str	r3, [sp, #4]                    @ 4-byte Spill
	str	r1, [sp, #88]                   @ 4-byte Spill
	umull	r3, r1, r5, r2
	str	r1, [sp, #80]                   @ 4-byte Spill
	umull	r11, r1, r6, r2
	str	r3, [sp]                        @ 4-byte Spill
	str	r1, [sp, #76]                   @ 4-byte Spill
	umull	r9, r1, r9, r2
	str	r1, [sp, #72]                   @ 4-byte Spill
	umull	r6, r1, r8, r2
	str	r1, [sp, #68]                   @ 4-byte Spill
	umull	r5, r1, r10, r2
	ldr	r10, [sp, #108]                 @ 4-byte Reload
	str	r1, [sp, #36]                   @ 4-byte Spill
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	umull	r4, r1, r1, r2
	str	r1, [sp, #32]                   @ 4-byte Spill
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	umull	lr, r1, r1, r2
	str	r1, [sp, #28]                   @ 4-byte Spill
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	umull	r12, r1, r1, r2
	str	r1, [sp, #16]                   @ 4-byte Spill
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	umull	r3, r1, r1, r2
	str	r1, [sp, #84]                   @ 4-byte Spill
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	umull	r1, r7, r1, r2
	str	r7, [sp, #92]                   @ 4-byte Spill
	ldr	r7, [sp, #100]                  @ 4-byte Reload
	umull	r2, r8, r7, r2
	ldr	r7, [sp, #48]                   @ 4-byte Reload
	adcs	r2, r2, r7
	ldr	r7, [sp, #44]                   @ 4-byte Reload
	adcs	r1, r1, r7
	ldr	r7, [sp, #40]                   @ 4-byte Reload
	adcs	r3, r3, r7
	ldr	r7, [sp, #52]                   @ 4-byte Reload
	adcs	r12, r12, r7
	ldr	r7, [sp, #56]                   @ 4-byte Reload
	adcs	lr, lr, r7
	ldr	r7, [sp, #60]                   @ 4-byte Reload
	adcs	r4, r4, r7
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	adcs	r5, r5, r7
	ldr	r7, [sp]                        @ 4-byte Reload
	adcs	r6, r6, r10
	str	r6, [sp, #108]                  @ 4-byte Spill
	ldr	r6, [sp, #112]                  @ 4-byte Reload
	adcs	r9, r9, r6
	ldr	r6, [sp, #116]                  @ 4-byte Reload
	adcs	r10, r11, r6
	ldr	r6, [sp, #120]                  @ 4-byte Reload
	adcs	r11, r7, r6
	ldr	r6, [sp, #124]                  @ 4-byte Reload
	ldr	r7, [sp, #4]                    @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #124]                  @ 4-byte Spill
	ldr	r6, [sp, #128]                  @ 4-byte Reload
	ldr	r7, [sp, #8]                    @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #128]                  @ 4-byte Spill
	ldr	r6, [sp, #132]                  @ 4-byte Reload
	ldr	r7, [sp, #12]                   @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #132]                  @ 4-byte Spill
	ldr	r6, [sp, #136]                  @ 4-byte Reload
	ldr	r7, [sp, #20]                   @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #120]                  @ 4-byte Spill
	ldr	r6, [sp, #144]                  @ 4-byte Reload
	ldr	r7, [sp, #24]                   @ 4-byte Reload
	adcs	r6, r7, r6
	str	r6, [sp, #136]                  @ 4-byte Spill
	mov	r6, #0
	adc	r6, r6, #0
	str	r6, [sp, #144]                  @ 4-byte Spill
	ldr	r6, [sp, #152]                  @ 4-byte Reload
	adds	r2, r2, r6
	str	r2, [r0, #4]
	adcs	r1, r1, r8
	str	r1, [r0, #8]
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [sp, #108]                  @ 4-byte Reload
	adcs	r1, r3, r1
	str	r1, [r0, #12]
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	ldr	r6, [sp, #124]                  @ 4-byte Reload
	adcs	r1, r12, r1
	str	r1, [r0, #16]
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r1, lr, r1
	str	r1, [r0, #20]
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r1, r4, r1
	str	r1, [r0, #24]
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	ldr	r4, [sp, #132]                  @ 4-byte Reload
	adcs	r1, r5, r1
	str	r1, [r0, #28]
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	ldr	r5, [sp, #128]                  @ 4-byte Reload
	adcs	lr, r2, r1
	ldr	r1, [sp, #68]                   @ 4-byte Reload
	ldr	r2, [sp, #120]                  @ 4-byte Reload
	adcs	r8, r9, r1
	ldr	r1, [sp, #72]                   @ 4-byte Reload
	str	lr, [r0, #32]
	adcs	r3, r10, r1
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	str	r8, [r0, #36]
	adcs	r7, r11, r1
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	str	r3, [r0, #40]
	adcs	r6, r6, r1
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	str	r7, [r0, #44]
	adcs	r5, r5, r1
	ldr	r1, [sp, #96]                   @ 4-byte Reload
	str	r6, [r0, #48]
	adcs	r4, r4, r1
	ldr	r1, [sp, #104]                  @ 4-byte Reload
	str	r5, [r0, #52]
	adcs	r12, r2, r1
	ldr	r1, [sp, #140]                  @ 4-byte Reload
	ldr	r2, [sp, #136]                  @ 4-byte Reload
	str	r4, [r0, #56]
	adcs	r1, r2, r1
	str	r1, [r0, #64]
	str	r12, [r0, #60]
	ldr	r0, [sp, #148]                  @ 4-byte Reload
	ldr	r1, [sp, #144]                  @ 4-byte Reload
	adc	r0, r1, r0
	add	sp, sp, #156
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end210:
	.size	mclb_mulUnitAdd17, .Lfunc_end210-mclb_mulUnitAdd17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_mul17                      @ -- Begin function mclb_mul17
	.p2align	2
	.type	mclb_mul17,%function
	.code	32                              @ @mclb_mul17
mclb_mul17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #348
	sub	sp, sp, #1024
	mov	r9, r2
	ldr	r2, [r2]
	mov	r4, r0
	add	r0, sp, #1296
	mov	r5, r1
	str	r1, [sp, #136]                  @ 4-byte Spill
	bl	mulUnit_inner544
	ldr	r0, [sp, #1364]
	add	lr, sp, #1024
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #1360]
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #1356]
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #1352]
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #1348]
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #1344]
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #1340]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #1336]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #1332]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #1328]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #1324]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #1320]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #1316]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #1312]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r1, [sp, #1300]
	ldr	r0, [sp, #1296]
	str	r1, [sp, #64]                   @ 4-byte Spill
	ldr	r1, [sp, #1304]
	str	r1, [sp, #88]                   @ 4-byte Spill
	ldr	r2, [r9, #4]
	ldr	r1, [sp, #1308]
	str	r0, [r4]
	add	r0, lr, #200
	str	r1, [sp, #52]                   @ 4-byte Spill
	mov	r1, r5
	str	r4, [sp, #140]                  @ 4-byte Spill
	str	r9, [sp, #132]                  @ 4-byte Spill
	bl	mulUnit_inner544
	ldr	r0, [sp, #1292]
	add	r10, sp, #1248
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #1288]
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1284]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1280]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1276]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1272]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1268]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #1224]
	ldr	r11, [sp, #64]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r8, r10}
	adds	r0, r0, r11
	ldr	lr, [sp, #1244]
	ldr	r12, [sp, #1240]
	ldr	r1, [sp, #1228]
	ldr	r2, [sp, #1232]
	ldr	r3, [sp, #1236]
	str	r0, [r4, #4]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r4, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r9, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #60]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #1152
	bl	mulUnit_inner544
	ldr	r0, [sp, #1220]
	add	lr, sp, #1152
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1216]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1212]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1208]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1204]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1200]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1196]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	ldr	r8, [sp, #140]                  @ 4-byte Reload
	adds	r0, r0, r7
	ldr	r6, [sp, #1192]
	ldr	r5, [sp, #1188]
	ldr	r11, [sp, #1184]
	ldr	r9, [sp, #1180]
	ldr	r10, [sp, #1176]
	str	r0, [r8, #8]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	add	lr, sp, #1024
	adcs	r0, r10, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r5, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r2, [r5, #12]
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, lr, #56
	bl	mulUnit_inner544
	ldr	r0, [sp, #1148]
	add	r11, sp, #1104
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1144]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1140]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1136]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1132]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1128]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1080]
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	ldm	r11, {r6, r7, r8, r9, r10, r11}
	adds	r0, r0, r4
	ldr	r4, [sp, #140]                  @ 4-byte Reload
	ldr	lr, [sp, #1100]
	ldr	r12, [sp, #1096]
	ldr	r1, [sp, #1084]
	ldr	r2, [sp, #1088]
	ldr	r3, [sp, #1092]
	str	r0, [r4, #12]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r5, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r6, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #1008
	bl	mulUnit_inner544
	ldr	r0, [sp, #1076]
	add	lr, sp, #1008
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #1072]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1068]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1064]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1060]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1056]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1052]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r8, [sp, #64]                   @ 4-byte Reload
	ldr	r7, [sp, #1048]
	adds	r0, r0, r8
	ldr	r5, [sp, #1044]
	ldr	r11, [sp, #1040]
	ldr	r10, [sp, #1036]
	ldr	r9, [sp, #1032]
	str	r0, [r4, #16]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r4, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r4, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	mov	r5, r6
	adcs	r0, r7, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #936
	bl	mulUnit_inner544
	ldr	r0, [sp, #1004]
	add	lr, sp, #936
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r11, sp, #960
	ldr	r0, [sp, #1000]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #996]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #992]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #988]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #984]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #980]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	ldm	r11, {r7, r8, r9, r10, r11}
	adds	r0, r0, r6
	ldr	r6, [sp, #140]                  @ 4-byte Reload
	str	r0, [r6, #20]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r4, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	mov	r7, r4
	adcs	r0, r8, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #864
	bl	mulUnit_inner544
	ldr	r0, [sp, #932]
	add	lr, sp, #864
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r11, sp, #888
	ldr	r0, [sp, #928]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #924]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #920]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #916]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #912]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #908]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r8, [sp, #64]                   @ 4-byte Reload
	ldr	r5, [sp, #904]
	adds	r0, r0, r8
	ldr	r4, [sp, #900]
	ldm	r11, {r9, r10, r11}
	str	r0, [r6, #24]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r7, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r4, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #792
	bl	mulUnit_inner544
	ldr	r0, [sp, #860]
	add	lr, sp, #792
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r10, sp, #816
	ldr	r0, [sp, #856]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #852]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #848]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #844]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #840]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #836]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #64]                  @ 4-byte Reload
	ldm	r10, {r5, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r6, #28]
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r5, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r2, [r5, #32]
	adcs	r0, r8, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #720
	bl	mulUnit_inner544
	ldr	r0, [sp, #788]
	add	lr, sp, #720
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r11, sp, #744
	ldr	r0, [sp, #784]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #780]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #776]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #772]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #768]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #764]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r8, [sp, #64]                   @ 4-byte Reload
	ldr	r7, [sp, #760]
	adds	r0, r0, r8
	ldr	r4, [sp, #756]
	ldm	r11, {r9, r10, r11}
	str	r0, [r6, #32]
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [r5, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r5, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #648
	bl	mulUnit_inner544
	ldr	r0, [sp, #716]
	add	lr, sp, #648
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r11, sp, #672
	ldr	r0, [sp, #712]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #708]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #704]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #700]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #696]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	ldm	r11, {r6, r7, r8, r9, r10, r11}
	adds	r0, r0, r4
	ldr	r4, [sp, #140]                  @ 4-byte Reload
	str	r0, [r4, #36]
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r6, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r2, [r6, #40]
	adcs	r0, r8, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #576
	bl	mulUnit_inner544
	ldr	r0, [sp, #644]
	add	lr, sp, #576
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r11, sp, #600
	ldr	r0, [sp, #640]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #636]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #632]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #628]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #624]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #620]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r8, [sp, #64]                   @ 4-byte Reload
	ldr	r7, [sp, #616]
	adds	r0, r0, r8
	ldr	r5, [sp, #612]
	ldm	r11, {r9, r10, r11}
	str	r0, [r4, #40]
	mov	r4, r6
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r2, [r6, #44]
	adcs	r0, r3, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r5, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #504
	bl	mulUnit_inner544
	ldr	r0, [sp, #572]
	add	lr, sp, #504
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r10, sp, #528
	ldr	r0, [sp, #568]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #564]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #560]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #556]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #552]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #548]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #544]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r7, [sp, #64]                   @ 4-byte Reload
	ldr	r11, [sp, #140]                 @ 4-byte Reload
	adds	r0, r0, r7
	ldm	r10, {r6, r8, r9, r10}
	str	r0, [r11, #44]
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r2, [r4, #48]
	adcs	r0, r3, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r5
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #432
	bl	mulUnit_inner544
	ldr	r0, [sp, #500]
	add	lr, sp, #432
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r8, sp, #468
	ldr	r0, [sp, #496]
	add	r11, sp, #456
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #492]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #488]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #484]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	ldm	r8, {r4, r5, r7, r8}
	adds	r0, r0, r6
	ldr	r6, [sp, #140]                  @ 4-byte Reload
	ldm	r11, {r9, r10, r11}
	str	r0, [r6, #48]
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r4, [sp, #136]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r5, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r2, [r5, #52]
	adcs	r0, r8, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #360
	bl	mulUnit_inner544
	ldr	r0, [sp, #428]
	add	lr, sp, #360
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r10, sp, #384
	ldr	r0, [sp, #424]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #420]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #416]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #412]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #408]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #404]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #400]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #64]                  @ 4-byte Reload
	ldm	r10, {r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r6, #52]
	mov	r6, r4
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r2, [r5, #56]
	adcs	r0, r3, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r4
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #288
	bl	mulUnit_inner544
	ldr	r0, [sp, #356]
	add	lr, sp, #288
	str	r0, [sp, #60]                   @ 4-byte Spill
	add	r8, sp, #324
	ldr	r0, [sp, #352]
	add	r11, sp, #312
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #348]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #344]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #340]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #336]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r4, [sp, #64]                   @ 4-byte Reload
	ldm	r8, {r5, r7, r8}
	adds	r0, r0, r4
	ldr	r4, [sp, #140]                  @ 4-byte Reload
	ldm	r11, {r9, r10, r11}
	str	r0, [r4, #56]
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #128]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r9, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r2, [r9, #60]
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	mov	r1, r6
	adc	r0, r0, #0
	str	r0, [sp, #68]                   @ 4-byte Spill
	add	r0, sp, #216
	bl	mulUnit_inner544
	ldr	r0, [sp, #284]
	add	lr, sp, #216
	str	r0, [sp, #32]                   @ 4-byte Spill
	add	r10, sp, #240
	ldr	r0, [sp, #280]
	str	r0, [sp, #28]                   @ 4-byte Spill
	ldr	r0, [sp, #276]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #272]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #268]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #264]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #260]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #64]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r8, r10}
	adds	r0, r0, r11
	str	r0, [r4, #60]
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r2, [r9, #64]
	adcs	r0, r3, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #28]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	ldr	r1, [sp, #136]                  @ 4-byte Reload
	adc	r0, r0, #0
	str	r0, [sp, #128]                  @ 4-byte Spill
	add	r0, sp, #144
	bl	mulUnit_inner544
	ldr	r0, [sp, #212]
	add	lr, sp, #144
	str	r0, [sp, #136]                  @ 4-byte Spill
	add	r11, sp, #168
	ldr	r0, [sp, #208]
	str	r0, [sp, #132]                  @ 4-byte Spill
	ldr	r0, [sp, #204]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #200]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #196]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r6, [sp, #64]                   @ 4-byte Reload
	ldm	r11, {r4, r5, r7, r8, r9, r10, r11}
	adds	r6, r0, r6
	ldr	r0, [sp, #60]                   @ 4-byte Reload
	adcs	r1, r1, r0
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	adcs	r2, r2, r0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	adcs	r3, r3, r0
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r12, r12, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r4, r4, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	r5, r5, r0
	ldr	r0, [sp, #140]                  @ 4-byte Reload
	str	r6, [r0, #64]
	add	r6, r0, #68
	stm	r6, {r1, r2, r3, r12, lr}
	ldr	r1, [sp, #124]                  @ 4-byte Reload
	ldr	r2, [sp, #116]                  @ 4-byte Reload
	adcs	r12, r7, r1
	ldr	r1, [sp, #120]                  @ 4-byte Reload
	ldr	r3, [sp, #112]                  @ 4-byte Reload
	adcs	lr, r8, r1
	ldr	r7, [sp, #108]                  @ 4-byte Reload
	adcs	r2, r9, r2
	ldr	r6, [sp, #104]                  @ 4-byte Reload
	adcs	r3, r10, r3
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	adcs	r7, r11, r7
	str	r5, [r0, #92]
	adcs	r6, r1, r6
	ldr	r5, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #88]                   @ 4-byte Reload
	str	r4, [r0, #88]
	adcs	r5, r1, r5
	ldr	r4, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #92]                   @ 4-byte Reload
	str	r12, [r0, #96]
	adcs	r4, r1, r4
	add	r1, r0, #104
	stm	r1, {r2, r3, r7}
	ldr	r1, [sp, #128]                  @ 4-byte Reload
	ldr	r2, [sp, #132]                  @ 4-byte Reload
	str	lr, [r0, #100]
	adcs	r2, r2, r1
	ldr	r1, [sp, #136]                  @ 4-byte Reload
	str	r6, [r0, #116]
	adc	r1, r1, #0
	str	r5, [r0, #120]
	str	r4, [r0, #124]
	str	r2, [r0, #128]
	str	r1, [r0, #132]
	add	sp, sp, #348
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end211:
	.size	mclb_mul17, .Lfunc_end211-mclb_mul17
	.cantunwind
	.fnend
                                        @ -- End function
	.globl	mclb_sqr17                      @ -- Begin function mclb_sqr17
	.p2align	2
	.type	mclb_sqr17,%function
	.code	32                              @ @mclb_sqr17
mclb_sqr17:
	.fnstart
@ %bb.0:
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	sub	sp, sp, #340
	sub	sp, sp, #1024
	ldr	r2, [r1]
	add	lr, sp, #1024
	mov	r4, r0
	add	r0, lr, #264
	mov	r7, r1
	bl	mulUnit_inner544
	ldr	r0, [sp, #1356]
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #1352]
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #1348]
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #1344]
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #1340]
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #1336]
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #1332]
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #1328]
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #1324]
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #1320]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #1316]
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #1312]
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #1308]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #1304]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r1, [sp, #1292]
	ldr	r0, [sp, #1288]
	str	r1, [sp, #60]                   @ 4-byte Spill
	ldr	r1, [sp, #1296]
	str	r1, [sp, #84]                   @ 4-byte Spill
	ldr	r2, [r7, #4]
	ldr	r1, [sp, #1300]
	str	r0, [r4]
	add	r0, sp, #1216
	str	r1, [sp, #48]                   @ 4-byte Spill
	mov	r1, r7
	str	r4, [sp, #128]                  @ 4-byte Spill
	bl	mulUnit_inner544
	ldr	r0, [sp, #1284]
	add	lr, sp, #1216
	str	r0, [sp, #64]                   @ 4-byte Spill
	ldr	r0, [sp, #1280]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1276]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1272]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1268]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1264]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #1260]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldr	r10, [sp, #1256]
	adds	r0, r0, r11
	ldr	r9, [sp, #1252]
	ldr	r8, [sp, #1248]
	ldr	r6, [sp, #1244]
	ldr	r5, [sp, #1240]
	str	r0, [r4, #4]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r2, [r7, #8]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	add	lr, sp, #1024
	adcs	r0, r5, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #56]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, lr, #120
	bl	mulUnit_inner544
	ldr	r0, [sp, #1212]
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1208]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1204]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1200]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1196]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1192]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #1188]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #1144]
	ldr	r5, [sp, #60]                   @ 4-byte Reload
	ldr	r8, [sp, #128]                  @ 4-byte Reload
	adds	r0, r0, r5
	ldr	r6, [sp, #1184]
	ldr	r4, [sp, #1180]
	ldr	lr, [sp, #1176]
	ldr	r11, [sp, #1172]
	ldr	r10, [sp, #1168]
	ldr	r9, [sp, #1164]
	ldr	r12, [sp, #1160]
	ldr	r1, [sp, #1148]
	ldr	r2, [sp, #1152]
	ldr	r3, [sp, #1156]
	str	r0, [r8, #8]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r7, #12]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #1072
	bl	mulUnit_inner544
	ldr	r0, [sp, #1140]
	add	lr, sp, #1072
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #1136]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1132]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1128]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1124]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1120]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r4, [sp, #60]                   @ 4-byte Reload
	ldr	r11, [sp, #1116]
	adds	r0, r0, r4
	ldr	r4, [sp, #128]                  @ 4-byte Reload
	ldr	r10, [sp, #1112]
	ldr	r9, [sp, #1108]
	ldr	r8, [sp, #1104]
	ldr	r6, [sp, #1100]
	ldr	r5, [sp, #1096]
	str	r0, [r4, #12]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r7, #16]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #1000
	bl	mulUnit_inner544
	ldr	r0, [sp, #1068]
	add	r12, sp, #1000
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	lr, sp, #1020
	ldr	r0, [sp, #1064]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #1060]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #1056]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #1052]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #1048]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #1044]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldr	r6, [sp, #1040]
	adds	r0, r0, r8
	ldr	r5, [sp, #1036]
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #16]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r2, [r7, #20]
	adcs	r0, r3, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #928
	bl	mulUnit_inner544
	ldr	r0, [sp, #996]
	add	lr, sp, #928
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r10, sp, #952
	ldr	r0, [sp, #992]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #988]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #984]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #980]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #976]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #972]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #20]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r2, [r7, #24]
	adcs	r0, r3, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #856
	bl	mulUnit_inner544
	ldr	r0, [sp, #924]
	add	r12, sp, #856
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	lr, sp, #876
	ldr	r0, [sp, #920]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #916]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #912]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #908]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #904]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #900]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldr	r6, [sp, #896]
	adds	r0, r0, r8
	ldr	r5, [sp, #892]
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #24]
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r2, [r7, #28]
	adcs	r0, r3, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #784
	bl	mulUnit_inner544
	ldr	r0, [sp, #852]
	add	lr, sp, #784
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r10, sp, #808
	ldr	r0, [sp, #848]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #844]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #840]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #836]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #832]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #828]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #28]
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r2, [r7, #32]
	adcs	r0, r3, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #712
	bl	mulUnit_inner544
	ldr	r0, [sp, #780]
	add	r12, sp, #712
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	lr, sp, #732
	ldr	r0, [sp, #776]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #772]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #768]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #764]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #760]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #756]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldr	r6, [sp, #752]
	adds	r0, r0, r8
	ldr	r5, [sp, #748]
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #32]
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r2, [r7, #36]
	adcs	r0, r3, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #640
	bl	mulUnit_inner544
	ldr	r0, [sp, #708]
	add	lr, sp, #640
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r10, sp, #664
	ldr	r0, [sp, #704]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #700]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #696]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #692]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #688]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #684]
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #36]
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	str	r7, [sp, #132]                  @ 4-byte Spill
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #32]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r2, [r7, #40]
	adcs	r0, r3, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r7
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #568
	bl	mulUnit_inner544
	ldr	r0, [sp, #636]
	add	r12, sp, #568
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r7, sp, #604
	ldr	r0, [sp, #632]
	add	lr, sp, #588
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #628]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #624]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #620]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #616]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldm	r7, {r5, r6, r7}
	adds	r0, r0, r8
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #40]
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r1, #44]
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #496
	bl	mulUnit_inner544
	ldr	r0, [sp, #564]
	add	lr, sp, #496
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r10, sp, #520
	ldr	r0, [sp, #560]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #556]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #552]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #548]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #544]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #44]
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r1, #48]
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #424
	bl	mulUnit_inner544
	ldr	r0, [sp, #492]
	add	r12, sp, #424
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r7, sp, #460
	ldr	r0, [sp, #488]
	add	lr, sp, #444
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #484]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #480]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #476]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #472]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldm	r7, {r5, r6, r7}
	adds	r0, r0, r8
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #48]
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r1, #52]
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #352
	bl	mulUnit_inner544
	ldr	r0, [sp, #420]
	add	lr, sp, #352
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r10, sp, #376
	ldr	r0, [sp, #416]
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #412]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #408]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #404]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #400]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r11, [sp, #60]                  @ 4-byte Reload
	ldm	r10, {r5, r6, r7, r8, r9, r10}
	adds	r0, r0, r11
	str	r0, [r4, #52]
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	r2, [r1, #56]
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #280
	bl	mulUnit_inner544
	ldr	r0, [sp, #348]
	add	r12, sp, #280
	str	r0, [sp, #56]                   @ 4-byte Spill
	add	r7, sp, #316
	ldr	r0, [sp, #344]
	add	lr, sp, #300
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #340]
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #336]
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #332]
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #328]
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r8, [sp, #60]                   @ 4-byte Reload
	ldm	r7, {r5, r6, r7}
	adds	r0, r0, r8
	ldm	lr, {r9, r10, r11, lr}
	str	r0, [r4, #56]
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	ldr	r1, [sp, #36]                   @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	adcs	r0, r3, r0
	str	r0, [sp, #124]                  @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, r9, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	ldr	r9, [sp, #132]                  @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	ldr	r2, [r9, #60]
	adcs	r0, r11, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r7, r0
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #40]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #44]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #48]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #72]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #52]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #68]                   @ 4-byte Spill
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	mov	r1, r9
	adc	r0, r0, #0
	str	r0, [sp, #64]                   @ 4-byte Spill
	add	r0, sp, #208
	bl	mulUnit_inner544
	ldr	r0, [sp, #276]
	add	lr, sp, #208
	str	r0, [sp, #28]                   @ 4-byte Spill
	add	r10, sp, #232
	ldr	r0, [sp, #272]
	str	r0, [sp, #24]                   @ 4-byte Spill
	ldr	r0, [sp, #268]
	str	r0, [sp, #20]                   @ 4-byte Spill
	ldr	r0, [sp, #264]
	str	r0, [sp, #16]                   @ 4-byte Spill
	ldr	r0, [sp, #260]
	str	r0, [sp, #12]                   @ 4-byte Spill
	ldr	r0, [sp, #256]
	str	r0, [sp, #8]                    @ 4-byte Spill
	ldr	r0, [sp, #252]
	str	r0, [sp, #4]                    @ 4-byte Spill
	ldm	lr, {r0, r1, r2, r3, r12, lr}
	ldr	r7, [sp, #60]                   @ 4-byte Reload
	ldr	r11, [sp, #128]                 @ 4-byte Reload
	adds	r0, r0, r7
	ldm	r10, {r4, r5, r6, r8, r10}
	str	r0, [r11, #60]
	ldr	r0, [sp, #120]                  @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #60]                   @ 4-byte Spill
	ldr	r0, [sp, #124]                  @ 4-byte Reload
	ldr	r1, [sp, #4]                    @ 4-byte Reload
	adcs	r0, r2, r0
	str	r0, [sp, #56]                   @ 4-byte Spill
	ldr	r0, [sp, #116]                  @ 4-byte Reload
	ldr	r2, [r9, #64]
	adcs	r0, r3, r0
	str	r0, [sp, #52]                   @ 4-byte Spill
	ldr	r0, [sp, #112]                  @ 4-byte Reload
	adcs	r0, r12, r0
	str	r0, [sp, #48]                   @ 4-byte Spill
	ldr	r0, [sp, #108]                  @ 4-byte Reload
	adcs	r0, lr, r0
	str	r0, [sp, #44]                   @ 4-byte Spill
	ldr	r0, [sp, #104]                  @ 4-byte Reload
	adcs	r0, r4, r0
	str	r0, [sp, #40]                   @ 4-byte Spill
	ldr	r0, [sp, #100]                  @ 4-byte Reload
	adcs	r0, r5, r0
	str	r0, [sp, #36]                   @ 4-byte Spill
	ldr	r0, [sp, #96]                   @ 4-byte Reload
	adcs	r0, r6, r0
	str	r0, [sp, #32]                   @ 4-byte Spill
	ldr	r0, [sp, #92]                   @ 4-byte Reload
	adcs	r0, r8, r0
	str	r0, [sp, #120]                  @ 4-byte Spill
	ldr	r0, [sp, #88]                   @ 4-byte Reload
	adcs	r0, r10, r0
	str	r0, [sp, #116]                  @ 4-byte Spill
	ldr	r0, [sp, #84]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #112]                  @ 4-byte Spill
	ldr	r0, [sp, #80]                   @ 4-byte Reload
	ldr	r1, [sp, #8]                    @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #108]                  @ 4-byte Spill
	ldr	r0, [sp, #76]                   @ 4-byte Reload
	ldr	r1, [sp, #12]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #104]                  @ 4-byte Spill
	ldr	r0, [sp, #72]                   @ 4-byte Reload
	ldr	r1, [sp, #16]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #100]                  @ 4-byte Spill
	ldr	r0, [sp, #68]                   @ 4-byte Reload
	ldr	r1, [sp, #20]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #96]                   @ 4-byte Spill
	ldr	r0, [sp, #64]                   @ 4-byte Reload
	ldr	r1, [sp, #24]                   @ 4-byte Reload
	adcs	r0, r1, r0
	str	r0, [sp, #92]                   @ 4-byte Spill
	ldr	r0, [sp, #28]                   @ 4-byte Reload
	mov	r1, r9
	adc	r0, r0, #0
	str	r0, [sp, #124]                  @ 4-byte Spill
	add	r0, sp, #136
	bl	mulUnit_inner544
	ldr	r0, [sp, #204]
	add	r12, sp, #136
	str	r0, [sp, #132]                  @ 4-byte Spill
	add	r11, sp, #164
	ldr	r0, [sp, #200]
	str	r0, [sp, #88]                   @ 4-byte Spill
	ldr	r0, [sp, #196]
	str	r0, [sp, #84]                   @ 4-byte Spill
	ldr	r0, [sp, #192]
	str	r0, [sp, #80]                   @ 4-byte Spill
	ldr	r0, [sp, #188]
	str	r0, [sp, #76]                   @ 4-byte Spill
	ldm	r12, {r0, r1, r2, r3, r12}
	ldr	r6, [sp, #60]                   @ 4-byte Reload
	ldr	r5, [sp, #156]
	adds	r6, r0, r6
	ldr	r0, [sp, #56]                   @ 4-byte Reload
	ldr	lr, [sp, #160]
	adcs	r1, r1, r0
	ldr	r0, [sp, #52]                   @ 4-byte Reload
	ldm	r11, {r4, r7, r8, r9, r10, r11}
	adcs	r2, r2, r0
	ldr	r0, [sp, #48]                   @ 4-byte Reload
	adcs	r3, r3, r0
	ldr	r0, [sp, #44]                   @ 4-byte Reload
	adcs	r12, r12, r0
	ldr	r0, [sp, #40]                   @ 4-byte Reload
	adcs	r5, r5, r0
	ldr	r0, [sp, #36]                   @ 4-byte Reload
	adcs	lr, lr, r0
	ldr	r0, [sp, #32]                   @ 4-byte Reload
	adcs	r4, r4, r0
	ldr	r0, [sp, #128]                  @ 4-byte Reload
	str	r6, [r0, #64]
	add	r6, r0, #68
	stm	r6, {r1, r2, r3, r12}
	ldr	r1, [sp, #120]                  @ 4-byte Reload
	ldr	r2, [sp, #112]                  @ 4-byte Reload
	adcs	r12, r7, r1
	ldr	r1, [sp, #116]                  @ 4-byte Reload
	str	lr, [r0, #88]
	adcs	lr, r8, r1
	ldr	r3, [sp, #108]                  @ 4-byte Reload
	adcs	r2, r9, r2
	ldr	r7, [sp, #104]                  @ 4-byte Reload
	adcs	r3, r10, r3
	ldr	r6, [sp, #100]                  @ 4-byte Reload
	ldr	r1, [sp, #76]                   @ 4-byte Reload
	adcs	r7, r11, r7
	str	r5, [r0, #84]
	adcs	r6, r1, r6
	ldr	r5, [sp, #96]                   @ 4-byte Reload
	ldr	r1, [sp, #80]                   @ 4-byte Reload
	str	r4, [r0, #92]
	adcs	r5, r1, r5
	ldr	r4, [sp, #92]                   @ 4-byte Reload
	ldr	r1, [sp, #84]                   @ 4-byte Reload
	str	r12, [r0, #96]
	adcs	r4, r1, r4
	add	r1, r0, #104
	stm	r1, {r2, r3, r7}
	ldr	r1, [sp, #124]                  @ 4-byte Reload
	ldr	r2, [sp, #88]                   @ 4-byte Reload
	str	lr, [r0, #100]
	adcs	r2, r2, r1
	ldr	r1, [sp, #132]                  @ 4-byte Reload
	str	r6, [r0, #116]
	adc	r1, r1, #0
	str	r5, [r0, #120]
	str	r4, [r0, #124]
	str	r2, [r0, #128]
	str	r1, [r0, #132]
	add	sp, sp, #340
	add	sp, sp, #1024
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Lfunc_end212:
	.size	mclb_sqr17, .Lfunc_end212-mclb_sqr17
	.cantunwind
	.fnend
                                        @ -- End function
	.section	".note.GNU-stack","",%progbits
