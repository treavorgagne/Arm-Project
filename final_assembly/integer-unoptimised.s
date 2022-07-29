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
	.file	"integer-unoptimized.c"
	.text
	.align	2
	.global	bmp_init
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	bmp_init, %function
bmp_init:
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
	.size	bmp_init, .-bmp_init
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
	add	r2, r2, ip, asr #16
	add	r2, r2, #512
	add	ip, r2, #3
	cmp	r2, #0
	movlt	r2, ip
	asr	r2, r2, #2
	strb	r2, [r0, #4]
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
	add	r3, r1, #3
	cmp	r1, #0
	movlt	r1, r3
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	vldr.32	s15, .L15
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bgt	.L9
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L10
	sub	sp, sp, #8
	vcvt.u32.f32	s15, s0
	vstr.32	s15, [sp, #4]	@ int
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L9:
	mov	r0, #255
	bx	lr
.L10:
	mov	r0, #0
	bx	lr
.L16:
	.align	2
.L15:
	.word	1132396544
	.size	myRound, .-myRound
	.align	2
	.global	upsampleYCCtoRGB
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	upsampleYCCtoRGB, %function
upsampleYCCtoRGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13}
	mov	r6, r0
	mov	r5, r1
	mov	r7, r2
	mov	r0, #3
	bl	malloc
	mov	r4, r0
	ldrb	r3, [r6, #4]	@ zero_extendqisi2
	sub	r3, r3, #128
	vmov	s18, r3	@ int
	vcvt.f32.s32	s18, s18
	ldrb	r3, [r6]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s26, r3	@ int
	vcvt.f64.s32	d13, s26
	vldr.64	d12, .L19
	vmul.f64	d13, d13, d12
	ldrb	r3, [r6, #5]	@ zero_extendqisi2
	sub	r3, r3, #128
	vmov	s16, r3	@ int
	vcvt.f64.s32	d8, s16
	vldr.64	d10, .L19+8
	vmul.f64	d10, d8, d10
	vadd.f64	d0, d13, d10
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #2]
	vldr.64	d0, .L19+16
	vmul.f64	d8, d8, d0
	vcvt.f64.f32	d9, s18
	vldr.64	d11, .L19+24
	vmul.f64	d11, d9, d11
	vsub.f64	d0, d13, d8
	vsub.f64	d0, d0, d11
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #1]
	vldr.64	d0, .L19+32
	vmul.f64	d9, d9, d0
	vadd.f64	d0, d13, d9
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4]
	mov	r3, r5
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s26, r3	@ int
	vcvt.f64.s32	d13, s26
	vmul.f64	d13, d13, d12
	vadd.f64	d0, d10, d13
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #2]
	vsub.f64	d0, d13, d8
	vsub.f64	d0, d0, d11
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #1]
	vadd.f64	d0, d9, d13
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4]
	mov	r3, r5
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	mov	r2, #1
	add	r1, r7, r7, lsl r2
	mov	r0, r5
	bl	fseek
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s26, r3	@ int
	vcvt.f64.s32	d13, s26
	vmul.f64	d13, d13, d12
	vadd.f64	d0, d10, d13
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #2]
	vsub.f64	d0, d13, d8
	vsub.f64	d0, d0, d11
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #1]
	vadd.f64	d0, d9, d13
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4]
	mov	r3, r5
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	ldrb	r3, [r6, #3]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s0, r3	@ int
	vcvt.f64.s32	d0, s0
	vmul.f64	d12, d0, d12
	vadd.f64	d0, d10, d12
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #2]
	vsub.f64	d0, d12, d8
	vsub.f64	d0, d0, d11
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #1]
	vadd.f64	d12, d9, d12
	vcvt.f32.f64	s0, d12
	bl	myRound
	strb	r0, [r4]
	mov	r3, r5
	mov	r2, #1
	mov	r1, #3
	mov	r0, r4
	bl	fwrite
	mov	r2, #1
	sub	r1, r7, r7, lsl #2
	mov	r0, r5
	bl	fseek
	vldm	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, pc}
.L20:
	.align	3
.L19:
	.word	1992864825
	.word	1072865214
	.word	1271310320
	.word	1073318199
	.word	-1821066134
	.word	1072301080
	.word	-584115552
	.word	1071187492
	.word	790273982
	.word	1073751261
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
	bne	.L34
	mov	r4, r1
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	ldr	r0, [r4, #4]
	bl	fopen
	subs	r5, r0, #0
	beq	.L35
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #8]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp, #16]
	beq	.L36
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #12]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp, #20]
	beq	.L37
	mov	r0, r5
	bl	bmp_init
	mov	r4, r0
	ldr	r1, [sp, #16]
	bl	write_header
	ldr	r1, [sp, #20]
	mov	r0, r4
	bl	write_header
	mov	r2, #0
	ldr	r1, [r4, #12]
	mov	r0, r5
	bl	fseek
	mov	r0, #3
	bl	malloc
	str	r0, [sp]
	mov	r0, #3
	bl	malloc
	str	r0, [sp, #4]
	mov	r0, #3
	bl	malloc
	mov	r9, r0
	mov	r0, #3
	bl	malloc
	str	r0, [sp, #8]
	ldr	r3, [r4, #20]
	mov	r8, r3
	ldr	fp, [r4, #24]
	cmp	r3, #0
	ble	.L26
	add	r2, r3, r3, lsl #1
	str	r2, [sp, #24]
	sub	r3, r3, r3, lsl #2
	str	r3, [sp, #28]
	mov	r7, #0
	mov	r4, #1
	mov	r10, #3
	b	.L27
.L34:
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L35:
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
.L36:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L37:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L29:
	add	r7, r7, #2
	cmp	r8, r7
	ble	.L26
.L27:
	cmp	fp, #0
	movgt	r6, #0
	ble	.L29
.L28:
	mov	r3, r5
	mov	r2, r4
	mov	r1, r10
	ldr	r0, [sp]
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r10
	ldr	r0, [sp, #4]
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #24]
	mov	r0, r5
	bl	fseek
	mov	r3, r5
	mov	r2, r4
	mov	r1, r10
	mov	r0, r9
	bl	fread
	mov	r3, r5
	mov	r2, r4
	mov	r1, r10
	ldr	r0, [sp, #8]
	bl	fread
	mov	r2, r4
	ldr	r1, [sp, #28]
	mov	r0, r5
	bl	fseek
	ldr	r3, [sp, #8]
	mov	r2, r9
	ldr	r1, [sp, #4]
	ldr	r0, [sp]
	bl	downsampleRGBtoYCC
	str	r0, [sp, #12]
	mov	r2, r8
	ldr	r1, [sp, #20]
	bl	upsampleYCCtoRGB
	ldr	r3, [sp, #16]
	mov	r2, r4
	mov	r1, #6
	ldr	r0, [sp, #12]
	bl	fwrite
	add	r6, r6, #2
	cmp	fp, r6
	bgt	.L28
	b	.L29
.L26:
	mov	r0, r5
	bl	fclose
	ldr	r0, [sp, #16]
	bl	fclose
	ldr	r0, [sp, #20]
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
