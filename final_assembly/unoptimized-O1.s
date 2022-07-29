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
	.file	"unoptimized.c"
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #20
	mov	r7, r0
	mov	r6, r1
	mov	r5, r2
	mov	r4, r3
	mov	r0, #3
	bl	malloc
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	vmov	s16, r3	@ int
	vcvt.f64.s32	d8, s16
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	vmov	s0, r3	@ int
	vcvt.f64.s32	d0, s0
	ldrb	r3, [r7]	@ zero_extendqisi2
	vmov	s2, r3	@ int
	vcvt.f64.s32	d1, s2
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	vmov	s4, r3	@ int
	vcvt.f64.s32	d2, s4
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	vmov	s6, r3	@ int
	vcvt.f64.s32	d3, s6
	ldrb	r3, [r6]	@ zero_extendqisi2
	vmov	s8, r3	@ int
	vcvt.f64.s32	d4, s8
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	vmov	s22, r3	@ int
	vcvt.f64.s32	d11, s22
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	vmov	s24, r3	@ int
	vcvt.f64.s32	d12, s24
	ldrb	r3, [r5]	@ zero_extendqisi2
	vmov	s28, r3	@ int
	vcvt.f64.s32	d14, s28
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	vmov	s30, r3	@ int
	vcvt.f64.s32	d15, s30
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d13, s15
	ldrb	r3, [r4]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vstr.64	d7, [sp]
	vldr.64	d10, .L7
	vmov.f64	d7, #1.6e+1
	vmov.f64	d6, d7
	vmla.f64	d6, d8, d10
	vldr.64	d9, .L7+8
	vmla.f64	d6, d0, d9
	vldr.64	d5, .L7+16
	vmla.f64	d6, d1, d5
	vcvt.f32.f64	s12, d6
	vcvt.u32.f32	s13, s12
	vmov	r3, s13	@ int
	strb	r3, [r0]
	vmov.f64	d6, d7
	vmla.f64	d6, d2, d10
	vmla.f64	d6, d3, d9
	vmla.f64	d6, d4, d5
	vcvt.f32.f64	s12, d6
	vcvt.u32.f32	s13, s12
	vmov	r3, s13	@ int
	strb	r3, [r0, #1]
	vmov.f64	d6, d7
	vmla.f64	d6, d11, d10
	vmla.f64	d6, d12, d9
	vmla.f64	d6, d14, d5
	vcvt.f32.f64	s12, d6
	vcvt.u32.f32	s13, s12
	vmov	r3, s13	@ int
	strb	r3, [r0, #2]
	vmla.f64	d7, d15, d10
	vstr.64	d13, [sp, #8]
	vmla.f64	d7, d13, d9
	vldr.64	d6, [sp]
	vmla.f64	d7, d6, d5
	vcvt.f32.f64	s14, d7
	vcvt.u32.f32	s15, s14
	vmov	r3, s15	@ int
	strb	r3, [r0, #3]
	vldr.64	d10, .L7+24
	vldr.64	d7, .L7+32
	vmov.f64	d6, d7
	vmla.f64	d6, d8, d10
	vldr.64	d9, .L7+40
	vmls.f64	d6, d0, d9
	vldr.64	d5, .L7+48
	vmla.f64	d6, d1, d5
	vcvt.f32.f64	s26, d6
	vmov.f64	d6, d7
	vmla.f64	d6, d2, d10
	vmls.f64	d6, d3, d9
	vmla.f64	d6, d4, d5
	vcvt.f32.f64	s12, d6
	vadd.f32	s26, s26, s12
	vmov.f64	d6, d7
	vmla.f64	d6, d11, d10
	vmls.f64	d6, d12, d9
	vmla.f64	d6, d14, d5
	vcvt.f32.f64	s12, d6
	vadd.f32	s12, s26, s12
	vmov.f64	d13, d7
	vmla.f64	d13, d15, d10
	vmov.f64	d10, d13
	vldr.64	d13, [sp, #8]
	vmls.f64	d10, d13, d9
	vldr.64	d9, [sp]
	vmla.f64	d10, d9, d5
	vcvt.f32.f64	s20, d10
	vadd.f32	s12, s12, s20
	vmov.f32	s18, #2.5e-1
	vmul.f32	s12, s12, s18
	vcvt.u32.f32	s13, s12
	vmov	r3, s13	@ int
	strb	r3, [r0, #4]
	vmov.f64	d6, d7
	vmla.f64	d6, d8, d5
	vldr.64	d8, .L7+56
	vmls.f64	d6, d0, d8
	vldr.64	d0, .L7+64
	vmls.f64	d6, d1, d0
	vcvt.f32.f64	s12, d6
	vmov.f64	d1, d7
	vmla.f64	d1, d2, d5
	vmov.f64	d2, d1
	vmls.f64	d2, d3, d8
	vmls.f64	d2, d4, d0
	vcvt.f32.f64	s4, d2
	vadd.f32	s12, s12, s4
	vmov.f64	d4, d7
	vmla.f64	d4, d11, d5
	vmls.f64	d4, d12, d8
	vmls.f64	d4, d14, d0
	vcvt.f32.f64	s8, d4
	vadd.f32	s12, s12, s8
	vmla.f64	d7, d15, d5
	vmls.f64	d7, d13, d8
	vldr.64	d5, [sp]
	vmls.f64	d7, d5, d0
	vcvt.f32.f64	s14, d7
	vadd.f32	s14, s12, s14
	vmul.f32	s18, s14, s18
	vcvt.u32.f32	s15, s18
	vmov	r3, s15	@ int
	strb	r3, [r0, #5]
	add	sp, sp, #20
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, pc}
.L8:
	.align	3
.L7:
	.word	549755814
	.word	1070625456
	.word	-1683627180
	.word	1071653060
	.word	721554506
	.word	1069094535
	.word	-68719477
	.word	-1077743191
	.word	0
	.word	1080033280
	.word	1992864825
	.word	1070768062
	.word	1958505087
	.word	1071388819
	.word	-549755814
	.word	1071091023
	.word	1443109011
	.word	1068641550
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
	vldr.32	s15, .L17
	vcmpe.f32	s0, s15
	vmrs	APSR_nzcv, FPSCR
	bgt	.L11
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L12
	sub	sp, sp, #8
	vcvt.u32.f32	s15, s0
	vstr.32	s15, [sp, #4]	@ int
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L11:
	mov	r0, #255
	bx	lr
.L12:
	mov	r0, #0
	bx	lr
.L18:
	.align	2
.L17:
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
	vldr.64	d12, .L21
	vmul.f64	d13, d13, d12
	ldrb	r3, [r6, #5]	@ zero_extendqisi2
	sub	r3, r3, #128
	vmov	s16, r3	@ int
	vcvt.f64.s32	d8, s16
	vldr.64	d10, .L21+8
	vmul.f64	d10, d8, d10
	vadd.f64	d0, d13, d10
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #2]
	vldr.64	d0, .L21+16
	vmul.f64	d8, d8, d0
	vcvt.f64.f32	d9, s18
	vldr.64	d11, .L21+24
	vmul.f64	d11, d9, d11
	vsub.f64	d0, d13, d8
	vsub.f64	d0, d0, d11
	vcvt.f32.f64	s0, d0
	bl	myRound
	strb	r0, [r4, #1]
	vldr.64	d0, .L21+32
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
.L22:
	.align	3
.L21:
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
	bne	.L36
	mov	r4, r1
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	ldr	r0, [r4, #4]
	bl	fopen
	subs	r5, r0, #0
	beq	.L37
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #8]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp, #16]
	beq	.L38
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	ldr	r0, [r4, #12]
	bl	fopen
	subs	r3, r0, #0
	str	r3, [sp, #20]
	beq	.L39
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
	ble	.L28
	add	r2, r3, r3, lsl #1
	str	r2, [sp, #24]
	sub	r3, r3, r3, lsl #2
	str	r3, [sp, #28]
	mov	r7, #0
	mov	r4, #1
	mov	r10, #3
	b	.L29
.L36:
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L37:
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
.L38:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L39:
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L31:
	add	r7, r7, #2
	cmp	r8, r7
	ble	.L28
.L29:
	cmp	fp, #0
	movgt	r6, #0
	ble	.L31
.L30:
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
	bgt	.L30
	b	.L31
.L28:
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
