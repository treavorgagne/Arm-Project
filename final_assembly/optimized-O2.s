	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
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
	add	r0, r4, #4
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #8
	mov	r2, #1
	mov	r1, #2
	bl	fread
	mov	r3, r5
	add	r0, r4, #10
	mov	r2, #1
	mov	r1, #2
	bl	fread
	mov	r3, r5
	add	r0, r4, #12
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #16
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #20
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #24
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #28
	mov	r2, #1
	mov	r1, #2
	bl	fread
	mov	r3, r5
	add	r0, r4, #30
	mov	r2, #1
	mov	r1, #2
	bl	fread
	mov	r3, r5
	add	r0, r4, #32
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #36
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #40
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #44
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #48
	mov	r2, #1
	mov	r1, #4
	bl	fread
	mov	r3, r5
	add	r0, r4, #52
	mov	r2, #1
	mov	r1, #4
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
	mov	r4, r1
	mov	r5, r0
	mov	r3, r1
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #4
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #8
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #10
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #12
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #16
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #20
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #24
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #28
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #30
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #32
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #36
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #40
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #44
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #48
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	mov	r3, r4
	add	r0, r5, #52
	pop	{r4, r5, r6, lr}
	mov	r2, #1
	mov	r1, #4
	b	fwrite
	.size	write_header, .-write_header
	.align	2
	.global	downsampleRGBtoYCC
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	downsampleRGBtoYCC, %function
downsampleRGBtoYCC:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	movw	r6, #46465
	mov	r10, r2
	mov	r7, r0
	mov	r8, r3
	sub	sp, sp, #52
	mov	r0, #3
	bl	malloc
	movw	r3, #41419
	movw	r2, #55837
	movw	ip, #28770
	str	r4, [sp, #12]
	ldrb	r4, [r4, #1]	@ zero_extendqisi2
	movt	r6, 65535
	mul	lr, r6, r4
	ldrb	r9, [r10, #1]	@ zero_extendqisi2
	str	lr, [sp, #4]
	ldrb	lr, [r7, #2]	@ zero_extendqisi2
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
	str	r8, [sp, #20]
	ldrb	r8, [r8, #1]	@ zero_extendqisi2
	str	lr, [sp]
	mul	lr, r6, r9
	mul	fp, r6, r5
	mul	r6, r6, r8
	movt	r3, 65535
	str	lr, [sp, #36]
	ldr	lr, [sp, #12]
	str	r6, [sp, #40]
	mul	r6, r3, r5
	ldrb	lr, [lr, #2]	@ zero_extendqisi2
	str	r8, [sp, #16]
	ldrb	r7, [r7]	@ zero_extendqisi2
	ldr	r8, [sp]
	movt	r2, 65535
	str	lr, [sp, #8]
	mla	fp, r2, r8, fp
	mla	r6, ip, r8, r6
	ldmib	sp, {r8, lr}
	str	r7, [sp, #4]
	mul	r7, r3, r4
	mla	r8, r2, lr, r8
	mla	r7, ip, lr, r7
	movw	lr, #60883
	movt	lr, 65535
	str	r8, [sp, #32]
	ldr	r8, [sp, #12]
	str	lr, [sp, #12]
	ldr	lr, [sp, #4]
	movw	r1, #33030
	mla	fp, ip, lr, fp
	str	fp, [sp, #28]
	movw	fp, #16843
	mul	r5, r1, r5
	ldr	lr, [sp]
	ldrb	r8, [r8]	@ zero_extendqisi2
	mla	r5, fp, lr, r5
	ldr	lr, [sp, #12]
	str	r5, [sp]
	ldr	r5, [sp, #4]
	str	r0, [sp, #24]
	mla	r6, lr, r5, r6
	mul	r4, r1, r4
	str	r6, [sp, #44]
	ldr	lr, [sp, #8]
	ldr	r5, [sp, #16]
	mul	r6, r1, r9
	mul	r1, r1, r5
	mla	r4, fp, lr, r4
	str	r1, [sp, #16]
	ldr	lr, [sp, #36]
	ldrb	r1, [r10, #2]	@ zero_extendqisi2
	str	r4, [sp, #8]
	mul	r4, r3, r9
	mul	r3, r3, r5
	mla	r5, r2, r1, lr
	mov	lr, fp
	mla	r6, fp, r1, r6
	mla	r4, ip, r1, r4
	ldr	r1, [sp, #32]
	ldr	r9, [sp, #20]
	mla	r1, ip, r8, r1
	str	r1, [sp, #32]
	ldr	r1, [sp, #12]
	ldrb	fp, [r9]	@ zero_extendqisi2
	mla	r7, r1, r8, r7
	ldrb	r1, [r9, #2]	@ zero_extendqisi2
	ldr	r9, [sp, #40]
	mla	r3, ip, r1, r3
	mla	r2, r2, r1, r9
	mov	r9, lr
	ldr	lr, [sp, #16]
	ldrb	r10, [r10]	@ zero_extendqisi2
	mla	r1, r9, r1, lr
	movw	r9, #6423
	mla	r5, ip, r10, r5
	ldr	lr, [sp, #12]
	str	r5, [sp, #16]
	mla	r4, lr, r10, r4
	ldr	r5, [sp]
	mla	r3, lr, fp, r3
	ldr	lr, [sp, #4]
	mla	r2, ip, fp, r2
	mla	lr, r9, lr, r5
	ldr	r5, [sp, #44]
	ldr	ip, [sp, #28]
	asr	r5, r5, #16
	str	r5, [sp]
	ldr	r5, [sp, #8]
	asr	ip, ip, #16
	mla	r8, r9, r8, r5
	ldr	r5, [sp, #32]
	mla	r10, r9, r10, r6
	add	ip, ip, r5, asr #16
	ldr	r5, [sp]
	mla	r1, r9, fp, r1
	add	r7, r5, r7, asr #16
	ldr	r5, [sp, #16]
	add	r4, r7, r4, asr #16
	add	r5, ip, r5, asr #16
	add	r2, r5, r2, asr #16
	add	r3, r4, r3, asr #16
	add	r2, r2, #512
	asr	lr, lr, #16
	asr	r8, r8, #16
	add	r3, r3, #512
	asr	r10, r10, #16
	asr	r1, r1, #16
	asr	r2, r2, #2
	add	lr, lr, #16
	add	r8, r8, #16
	asr	r3, r3, #2
	add	r10, r10, #16
	add	r1, r1, #16
	strb	r2, [r0, #4]
	strb	lr, [r0]
	strb	r8, [r0, #1]
	strb	r3, [r0, #5]
	strb	r10, [r0, #2]
	strb	r1, [r0, #3]
	add	sp, sp, #52
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
	usat	r0, #8, r0
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
	mov	r10, r0
	sub	sp, sp, #12
	mov	r0, #3
	mov	r9, r1
	mov	fp, r2
	bl	malloc
	movw	r7, #32506
	movw	r5, #2097
	movw	lr, #9437
	movw	r8, #1573
	movw	ip, #9961
	mov	r4, r0
	ldrb	r6, [r10, #5]	@ zero_extendqisi2
	ldrb	r3, [r10]	@ zero_extendqisi2
	ldrb	r2, [r10, #4]	@ zero_extendqisi2
	movt	r7, 74
	sub	r1, r6, #128
	sub	r3, r3, #16
	movt	r5, 52
	mul	r5, r5, r1
	mul	r3, r7, r3
	movt	lr, 102
	sub	r2, r2, #128
	movt	r8, 25
	movt	ip, 129
	mul	r6, lr, r1
	mul	r8, r8, r2
	mul	ip, ip, r2
	sub	r2, r3, r5
	add	r1, r3, r6
	sub	r2, r2, r8
	add	r3, r3, ip
	str	ip, [sp, #4]
	usat	r2, #8, r2, asr #22
	usat	ip, #8, r3, asr #22
	usat	r1, #8, r1, asr #22
	mov	r3, r9
	strb	r2, [r0, #1]
	strb	r1, [r0, #2]
	mov	r2, #1
	mov	r1, #3
	strb	ip, [r0]
	bl	fwrite
	ldrb	r2, [r10, #1]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	sub	r2, r2, #16
	mul	r2, r7, r2
	sub	r1, r2, r5
	sub	r1, r1, r8
	add	lr, r6, r2
	usat	r1, #8, r1, asr #22
	add	r2, ip, r2
	usat	ip, #8, r2, asr #22
	mov	r3, r9
	usat	lr, #8, lr, asr #22
	strb	r1, [r4, #1]
	mov	r0, r4
	mov	r2, #1
	mov	r1, #3
	strb	lr, [r4, #2]
	strb	ip, [r4]
	bl	fwrite
	add	r1, fp, fp, lsl #1
	mov	r0, r9
	mov	r2, #1
	bl	fseek
	ldrb	r2, [r10, #2]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	sub	r2, r2, #16
	mul	r2, r7, r2
	sub	r1, r2, r5
	sub	r1, r1, r8
	add	lr, r6, r2
	usat	r1, #8, r1, asr #22
	add	r2, ip, r2
	usat	lr, #8, lr, asr #22
	usat	ip, #8, r2, asr #22
	mov	r3, r9
	strb	r1, [r4, #1]
	mov	r0, r4
	mov	r2, #1
	mov	r1, #3
	strb	lr, [r4, #2]
	strb	ip, [r4]
	bl	fwrite
	ldrb	r3, [r10, #3]	@ zero_extendqisi2
	ldr	ip, [sp, #4]
	sub	r3, r3, #16
	mul	r7, r7, r3
	sub	r5, r7, r5
	sub	r8, r5, r8
	add	r6, r6, r7
	add	r7, ip, r7
	mov	r0, r4
	usat	r8, #8, r8, asr #22
	usat	r6, #8, r6, asr #22
	usat	r7, #8, r7, asr #22
	mov	r3, r9
	mov	r2, #1
	mov	r1, #3
	strb	r8, [r4, #1]
	strb	r6, [r4, #2]
	strb	r7, [r4]
	bl	fwrite
	mov	r0, r9
	mov	r2, #1
	sub	r1, fp, fp, lsl #2
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	fseek
	.size	upsampleYCCtoRGB, .-upsampleYCCtoRGB
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r0, #4
	sub	sp, sp, #28
	bne	.L33
	mov	r5, r1
	movw	r1, #:lower16:.LC1
	ldr	r0, [r5, #4]
	movt	r1, #:upper16:.LC1
	bl	fopen
	subs	r4, r0, #0
	beq	.L34
	movw	r1, #:lower16:.LC3
	ldr	r0, [r5, #8]
	movt	r1, #:upper16:.LC3
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp]
	beq	.L15
	movw	r1, #:lower16:.LC3
	ldr	r0, [r5, #12]
	movt	r1, #:upper16:.LC3
	bl	fopen
	subs	r3, r0, #0
	mov	r5, r3
	str	r3, [sp, #4]
	beq	.L15
	mov	r0, r4
	bl	read_header
	mov	r9, r0
	ldr	r1, [sp]
	bl	write_header
	mov	r1, r5
	mov	r0, r9
	bl	write_header
	ldr	r1, [r9, #12]
	mov	r2, #0
	mov	r0, r4
	bl	fseek
	mov	r0, #3
	bl	malloc
	mov	r5, r0
	mov	r0, #3
	bl	malloc
	mov	r6, r0
	mov	r0, #3
	bl	malloc
	mov	r7, r0
	mov	r0, #3
	bl	malloc
	ldr	r10, [r9, #20]
	ldr	r3, [r9, #24]
	cmp	r10, #0
	mov	r8, r0
	str	r3, [sp, #20]
	beq	.L16
	add	r3, r10, r10, lsl #1
	str	r3, [sp, #8]
	sub	r3, r10, r10, lsl #2
	str	r3, [sp, #12]
	str	r10, [sp, #16]
.L17:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	ldrne	r9, [sp, #20]
	beq	.L19
.L18:
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r5
	bl	fread
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r6
	bl	fread
	mov	r2, #1
	ldr	r1, [sp, #8]
	mov	r0, r4
	bl	fseek
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r7
	bl	fread
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r8
	bl	fread
	mov	r2, #1
	ldr	r1, [sp, #12]
	mov	r0, r4
	bl	fseek
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	bl	downsampleRGBtoYCC
	mov	fp, r0
	mov	r2, r10
	ldr	r1, [sp, #4]
	bl	upsampleYCCtoRGB
	ldr	r3, [sp]
	mov	r0, fp
	mov	r2, #1
	mov	r1, #6
	bl	fwrite
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r5
	bl	fread
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r6
	bl	fread
	mov	r2, #1
	ldr	r1, [sp, #8]
	mov	r0, r4
	bl	fseek
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r7
	bl	fread
	mov	r3, r4
	mov	r2, #1
	mov	r1, #3
	mov	r0, r8
	bl	fread
	mov	r2, #1
	ldr	r1, [sp, #12]
	mov	r0, r4
	bl	fseek
	mov	r3, r8
	mov	r2, r7
	mov	r1, r6
	mov	r0, r5
	bl	downsampleRGBtoYCC
	mov	fp, r0
	mov	r2, r10
	ldr	r1, [sp, #4]
	bl	upsampleYCCtoRGB
	ldr	r3, [sp]
	mov	r0, fp
	mov	r2, #1
	mov	r1, #6
	bl	fwrite
	subs	r9, r9, #2
	bne	.L18
.L19:
	ldr	r3, [sp, #16]
	subs	r3, r3, #4
	str	r3, [sp, #16]
	bne	.L17
.L16:
	mov	r0, r4
	bl	fclose
	ldr	r0, [sp]
	bl	fclose
	ldr	r0, [sp, #4]
	bl	fclose
	mov	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L33:
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L15:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L34:
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
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
