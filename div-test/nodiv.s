	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"optimized.c"
	.text
	.align	2
	.global	read_header
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	read_header, %function
read_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r0, #56
	bl	malloc
	mov	r4, r0
	mov	r3, r5
	mov	r2, #1
	mov	r1, #2
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, r1
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #2
	add	r0, r4, #8
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #2
	add	r0, r4, #10
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #12
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #16
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #20
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #24
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #2
	add	r0, r4, #28
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #2
	add	r0, r4, #30
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #32
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #36
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #40
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #44
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #48
	bl	fread
	mov	r3, r5
	mov	r2, #1
	mov	r1, #4
	add	r0, r4, #52
	bl	fread
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.size	read_header, .-read_header
	.align	2
	.global	write_header
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	write_header, %function
write_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r1
	mov	r3, r1
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, r1
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #2
	add	r0, r5, #8
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #2
	add	r0, r5, #10
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #12
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #16
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #20
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #24
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #2
	add	r0, r5, #28
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #2
	add	r0, r5, #30
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #32
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #36
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #40
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #44
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #48
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #4
	add	r0, r5, #52
	bl	fwrite
	pop	{r4, r5, r6, pc}
	.size	write_header, .-write_header
	.align	2
	.global	downsampleRGBtoYCC
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	downsampleRGBtoYCC, %function
downsampleRGBtoYCC:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	mov	r6, r0
	mov	r10, r1
	mov	r9, r2
	mov	r8, r3
	mov	r0, #3
	bl	malloc
	ldrb	fp, [r6, #2]	@ zero_extendqisi2
	ldrb	r4, [r6, #1]	@ zero_extendqisi2
	ldrb	lr, [r6]	@ zero_extendqisi2
	ldrb	r6, [r10, #2]	@ zero_extendqisi2
	ldrb	r7, [r10, #1]	@ zero_extendqisi2
	ldrb	r3, [r10]	@ zero_extendqisi2
	str	r3, [sp]
	ldrb	r2, [r9, #2]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r10, [r9, #1]	@ zero_extendqisi2
	ldrb	r3, [r9]	@ zero_extendqisi2
	ldrb	r1, [r8, #2]	@ zero_extendqisi2
	str	r1, [sp, #8]
	ldrb	ip, [r8, #1]	@ zero_extendqisi2
	str	ip, [sp, #12]
	ldrb	r8, [r8]	@ zero_extendqisi2
	str	r8, [sp, #16]
	movw	ip, #16843
	movw	r8, #33030
	mul	r1, r8, r4
	mla	r1, ip, fp, r1
	movw	r2, #6423
	mla	r1, r2, lr, r1
	asr	r1, r1, #16
	add	r1, r1, #16
	strb	r1, [r0]
	mul	r1, r8, r7
	mla	r1, ip, r6, r1
	ldr	r9, [sp]
	mla	r1, r2, r9, r1
	asr	r1, r1, #16
	add	r1, r1, #16
	strb	r1, [r0, #1]
	mul	r1, r8, r10
	ldr	r9, [sp, #4]
	mla	r1, ip, r9, r1
	str	r3, [sp, #20]
	mla	r1, r2, r3, r1
	asr	r1, r1, #16
	add	r1, r1, #16
	strb	r1, [r0, #2]
	ldr	r9, [sp, #12]
	mul	r8, r8, r9
	ldr	r1, [sp, #8]
	mla	r8, ip, r1, r8
	ldr	r1, [sp, #16]
	mla	r8, r2, r1, r8
	asr	r8, r8, #16
	add	r8, r8, #16
	strb	r8, [r0, #3]
	movw	r1, #55837
	movt	r1, 65535
	movw	r9, #46465
	movt	r9, 65535
	mul	ip, r9, r4
	mla	ip, r1, fp, ip
	movw	r8, #28770
	mla	ip, r8, lr, ip
	asr	ip, ip, #16
	mul	r2, r9, r7
	mla	r2, r1, r6, r2
	ldr	r3, [sp]
	mla	r2, r8, r3, r2
	add	ip, ip, r2, asr #16
	mul	r2, r9, r10
	ldr	r3, [sp, #4]
	mla	r2, r1, r3, r2
	ldr	r3, [sp, #20]
	mla	r2, r8, r3, r2
	add	r2, ip, r2, asr #16
	ldr	ip, [sp, #12]
	mul	r9, r9, ip
	ldr	ip, [sp, #8]
	mla	r9, r1, ip, r9
	ldr	r1, [sp, #16]
	mla	ip, r8, r1, r9
	add	ip, r2, ip, asr #16
	add	ip, ip, #512
	asr	ip, ip, #2
	strb	ip, [r0, #4]
	movw	r2, #41419
	movt	r2, 65535
	mul	r4, r2, r4
	mla	fp, r8, fp, r4
	movw	r1, #60883
	movt	r1, 65535
	mla	fp, r1, lr, fp
	asr	fp, fp, #16
	mul	r7, r2, r7
	mla	r7, r8, r6, r7
	ldr	r3, [sp]
	mla	r3, r1, r3, r7
	add	fp, fp, r3, asr #16
	mul	r10, r2, r10
	ldr	r3, [sp, #4]
	mla	r10, r8, r3, r10
	ldr	r3, [sp, #20]
	mla	r10, r1, r3, r10
	add	fp, fp, r10, asr #16
	ldr	r9, [sp, #12]
	mul	r2, r2, r9
	ldr	ip, [sp, #8]
	mla	r2, r8, ip, r2
	ldr	r8, [sp, #16]
	mla	r1, r1, r8, r2
	add	r1, fp, r1, asr #16
	add	r1, r1, #512
	asr	r1, r1, #2
	strb	r1, [r0, #5]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	downsampleRGBtoYCC, .-downsampleRGBtoYCC
	.align	2
	.global	myRound
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	myRound, %function
myRound:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #255
	bgt	.L9
	cmp	r0, #0
	blt	.L10
	uxtb	r0, r0
	bx	lr
.L9:
	mov	r0, #255
	bx	lr
.L10:
	mov	r0, #0
	bx	lr
	.size	myRound, .-myRound
	.align	2
	.global	upsampleYCCtoRGB
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	upsampleYCCtoRGB, %function
upsampleYCCtoRGB:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	mov	r10, r0
	str	r1, [sp]
	str	r2, [sp, #4]
	mov	r0, #3
	bl	malloc
	mov	r4, r0
	ldrb	r8, [r10]	@ zero_extendqisi2
	sub	r8, r8, #16
	movw	fp, #32506
	movt	fp, 74
	mul	r8, fp, r8
	ldrb	r5, [r10, #5]	@ zero_extendqisi2
	sub	r2, r5, #128
	ldrb	r6, [r10, #4]	@ zero_extendqisi2
	sub	r3, r6, #128
	movw	r7, #9437
	movt	r7, 102
	mul	r7, r7, r2
	movw	r5, #2097
	movt	r5, 52
	mul	r5, r5, r2
	movw	r9, #1573
	movt	r9, 25
	mul	r9, r9, r3
	movw	r6, #9961
	movt	r6, 129
	mul	r6, r6, r3
	add	r0, r8, r7
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #2]
	sub	r0, r8, r5
	sub	r0, r0, r9
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #1]
	add	r0, r8, r6
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4]
	ldr	r3, [sp]
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	ldrb	r8, [r10, #1]	@ zero_extendqisi2
	sub	r8, r8, #16
	mul	r8, fp, r8
	add	r0, r7, r8
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #2]
	sub	r0, r8, r5
	sub	r0, r0, r9
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #1]
	add	r0, r6, r8
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4]
	ldr	r8, [sp]
	mov	r3, r8
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	mov	r2, #1
	ldr	r3, [sp, #4]
	add	r1, r3, r3, lsl r2
	str	r8, [sp]
	mov	r0, r8
	bl	fseek
	ldrb	r8, [r10, #2]	@ zero_extendqisi2
	sub	r8, r8, #16
	mul	r8, fp, r8
	add	r0, r7, r8
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #2]
	sub	r0, r8, r5
	sub	r0, r0, r9
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #1]
	add	r0, r6, r8
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4]
	ldr	r8, [sp]
	mov	r3, r8
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	ldrb	r0, [r10, #3]	@ zero_extendqisi2
	sub	r0, r0, #16
	mul	fp, fp, r0
	add	r0, r7, fp
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #2]
	sub	r0, fp, r5
	sub	r0, r0, r9
	asr	r0, r0, #22
	bl	myRound
	strb	r0, [r4, #1]
	add	fp, r6, fp
	asr	r0, fp, #22
	bl	myRound
	strb	r0, [r4]
	mov	r3, r8
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	mov	r2, #1
	ldr	r3, [sp, #4]
	sub	r1, r3, r3, lsl #2
	mov	r0, r8
	bl	fseek
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	upsampleYCCtoRGB, .-upsampleYCCtoRGB
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	cmp	r0, #4
	bne	.L26
	mov	r4, r1
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	ldr	r0, [r4, #4]
	bl	fopen
	subs	r5, r0, #0
	beq	.L27
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #8]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp]
	beq	.L28
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #12]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp, #4]
	beq	.L29
	mov	r0, r5
	bl	read_header
	mov	r4, r0
	ldr	r1, [sp]
	bl	write_header
	ldr	r1, [sp, #4]
	mov	r0, r4
	bl	write_header
	mov	r2, #0
	ldr	r1, [r4, #12]
	mov	r0, r5
	bl	fseek
	mov	r0, #3
	bl	malloc
	mov	r7, r0
	mov	r0, #3
	bl	malloc
	mov	r8, r0
	mov	r0, #3
	bl	malloc
	mov	r9, r0
	mov	r0, #3
	bl	malloc
	mov	fp, r0
	ldr	r3, [r4, #20]
	str	r3, [sp, #8]
	ldr	r2, [r4, #24]
	str	r2, [sp, #28]
	cmp	r3, #0
	beq	.L18
	add	r2, r3, r3, lsl #1
	str	r2, [sp, #12]
	sub	r2, r3, r3, lsl #2
	str	r2, [sp, #16]
	str	r3, [sp, #24]
	mov	r4, #1
	mov	r6, #3
	mov	r10, r7
	b	.L19
.L26:
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L27:
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
.L28:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L29:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L21:
	ldr	r3, [sp, #24]
	subs	r3, r3, #4
	str	r3, [sp, #24]
	beq	.L18
.L19:
	ldr	r3, [sp, #28]
	cmp	r3, #0
	ldrne	r7, [sp, #28]
	beq	.L21
.L20:
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r10
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r8
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #12]
	mov	r0, r5
	bl	fseek
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r9
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, fp
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #16]
	mov	r0, r5
	bl	fseek
	mov	r3, fp
	mov	r2, r9
	mov	r1, r8
	mov	r0, r10
	bl	downsampleRGBtoYCC
	str	r0, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #4]
	bl	upsampleYCCtoRGB
	ldr	r3, [sp]
	mov	r2, r4
	mov	r1, #6
	ldr	r0, [sp, #20]
	bl	fwrite
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r10
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r8
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #12]
	mov	r0, r5
	bl	fseek
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, r9
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r6
	mov	r0, fp
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #16]
	mov	r0, r5
	bl	fseek
	mov	r3, fp
	mov	r2, r9
	mov	r1, r8
	mov	r0, r10
	bl	downsampleRGBtoYCC
	str	r0, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #4]
	bl	upsampleYCCtoRGB
	ldr	r3, [sp]
	mov	r2, r4
	mov	r1, #6
	ldr	r0, [sp, #20]
	bl	fwrite
	subs	r7, r7, #2
	bne	.L20
	b	.L21
.L18:
	mov	r0, r5
	bl	fclose
	ldr	r0, [sp]
	bl	fclose
	ldr	r0, [sp, #4]
	bl	fclose
	mov	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Please provide the correct arguments for RGB to YCC"
	.ascii	" conversion.\000"
.LC1:
	.ascii	"rb\000"
	.space	1
.LC2:
	.ascii	"Error! Opening input file\000"
	.space	2
.LC3:
	.ascii	"wb\000"
	.space	1
.LC4:
	.ascii	"Error! Opening Output file\000"
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
