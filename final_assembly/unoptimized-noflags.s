	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r0, #56
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #2
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #4
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #8
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #2
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #10
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #2
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #12
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #16
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #20
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #24
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #28
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #2
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #30
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #2
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #32
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #36
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #40
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #44
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #48
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	add	r0, r3, #52
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #4
	bl	fread
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	bmp_init, .-bmp_init
	.align	2
	.global	write_header
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	write_header, %function
write_header:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #4
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #8
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #10
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #12
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #16
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #20
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #24
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #28
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #30
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #2
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #32
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #36
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #40
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #44
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #48
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	ldr	r3, [fp, #-8]
	add	r0, r3, #52
	ldr	r3, [fp, #-12]
	mov	r2, #1
	mov	r1, #4
	bl	fwrite
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	write_header, .-write_header
	.align	2
	.global	downsampleRGBtoYCC
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	downsampleRGBtoYCC, %function
downsampleRGBtoYCC:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #88
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	str	r2, [fp, #-80]
	str	r3, [fp, #-84]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6
	vmul.f64	d7, d7, d6
	vmov.f64	d6, #1.6e+1
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+8
	vmul.f64	d7, d7, d5
	vadd.f64	d6, d6, d7
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+16
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-12]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6
	vmul.f64	d7, d7, d6
	vmov.f64	d6, #1.6e+1
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+8
	vmul.f64	d7, d7, d5
	vadd.f64	d6, d6, d7
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+16
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-16]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6
	vmul.f64	d7, d7, d6
	vmov.f64	d6, #1.6e+1
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+8
	vmul.f64	d7, d7, d5
	vadd.f64	d6, d6, d7
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+16
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-20]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6
	vmul.f64	d7, d7, d6
	vmov.f64	d6, #1.6e+1
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+8
	vmul.f64	d7, d7, d5
	vadd.f64	d6, d6, d7
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+16
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-24]
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+24
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+32
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+40
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-28]
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+40
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+56
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+64
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-32]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+24
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+32
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+40
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-36]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+40
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+56
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+64
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-40]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+24
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+32
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+40
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-44]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+40
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+56
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+64
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-48]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+24
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+32
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L7
.L8:
	.align	3
.L6:
	.word	549755814
	.word	1070625456
	.word	-1683627180
	.word	1071653060
	.word	721554506
	.word	1069094535
	.word	-68719477
	.word	-1077743191
	.word	1992864825
	.word	1070768062
	.word	1958505087
	.word	1071388819
	.word	0
	.word	1080033280
	.word	-549755814
	.word	1071091023
	.word	1443109011
	.word	1068641550
.L7:
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+40
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-52]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L6+40
	vmul.f64	d7, d7, d6
	vldr.64	d6, .L6+48
	vadd.f64	d6, d7, d6
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+56
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d5, .L6+64
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-56]
	vldr.32	s14, [fp, #-28]
	vldr.32	s15, [fp, #-36]
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-44]
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-52]
	vadd.f32	s14, s14, s15
	vmov.f32	s13, #4.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-60]
	vldr.32	s14, [fp, #-32]
	vldr.32	s15, [fp, #-40]
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-48]
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-56]
	vadd.f32	s14, s14, s15
	vmov.f32	s13, #4.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-64]
	vldr.32	s15, [fp, #-12]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	vldr.32	s15, [fp, #-16]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	vldr.32	s15, [fp, #-20]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	vldr.32	s15, [fp, #-24]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #3]
	vldr.32	s15, [fp, #-60]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #4]
	vldr.32	s15, [fp, #-64]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-88]	@ int
	ldr	r3, [fp, #-88]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #5]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	downsampleRGBtoYCC, .-downsampleRGBtoYCC
	.align	2
	.global	myRound
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	myRound, %function
myRound:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L19
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L17
	mov	r3, #255
	b	.L12
.L17:
	vldr.32	s15, [fp, #-8]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L18
	mov	r3, #0
	b	.L12
.L18:
	vldr.32	s15, [fp, #-8]
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-12]	@ int
	ldr	r3, [fp, #-12]
	uxtb	r3, r3
.L12:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L20:
	.align	2
.L19:
	.word	1132396544
	.size	myRound, .-myRound
	.align	2
	.global	upsampleYCCtoRGB
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	upsampleYCCtoRGB, %function
upsampleYCCtoRGB:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-12]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	sub	r3, r3, #128
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	sub	r3, r3, #128
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-20]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+8
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+16
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+24
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+32
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+8
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+16
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+24
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+32
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	fseek
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+8
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+16
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+24
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+32
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sub	r3, r3, #16
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [fp, #-12]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+8
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-20]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+16
	vmul.f64	d7, d7, d5
	vsub.f64	d6, d6, d7
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+24
	vmul.f64	d7, d7, d5
	vsub.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	vldr.32	s15, [fp, #-12]
	vcvt.f64.f32	d7, s15
	vldr.64	d6, .L22
	vmul.f64	d6, d7, d6
	vldr.32	s15, [fp, #-16]
	vcvt.f64.f32	d7, s15
	vldr.64	d5, .L22+32
	vmul.f64	d7, d7, d5
	vadd.f64	d7, d6, d7
	vcvt.f32.f64	s15, d7
	vmov.f32	s0, s15
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	mov	r2, #1
	b	.L23
.L24:
	.align	3
.L22:
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
.L23:
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-32]
	mov	r2, r3
	lsl	r3, r3, #2
	sub	r3, r2, r3
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	fseek
	nop
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	upsampleYCCtoRGB, .-upsampleYCCtoRGB
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Please provide the correct arguments for RGB to YCC"
	.ascii	" conversion.\000"
	.align	2
.LC1:
	.ascii	"rb\000"
	.align	2
.LC2:
	.ascii	"Error! Opening input file\000"
	.align	2
.LC3:
	.ascii	"wb\000"
	.align	2
.LC4:
	.ascii	"Error! Opening Output file\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	ldr	r3, [fp, #-64]
	cmp	r3, #4
	beq	.L26
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L26:
	ldr	r3, [fp, #-68]
	add	r3, r3, #4
	ldr	r3, [r3]
	movw	r1, #:lower16:.LC1
	movt	r1, #:upper16:.LC1
	mov	r0, r3
	bl	fopen
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L27
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
.L27:
	ldr	r3, [fp, #-68]
	add	r3, r3, #8
	ldr	r3, [r3]
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	mov	r0, r3
	bl	fopen
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L28
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L28:
	ldr	r3, [fp, #-68]
	add	r3, r3, #12
	ldr	r3, [r3]
	movw	r1, #:lower16:.LC3
	movt	r1, #:upper16:.LC3
	mov	r0, r3
	bl	fopen
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L29
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L29:
	ldr	r0, [fp, #-16]
	bl	bmp_init
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-28]
	bl	write_header
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-28]
	bl	write_header
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #12]
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	fseek
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-36]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L30
.L33:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L31
.L32:
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-32]
	bl	fread
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-36]
	bl	fread
	ldr	r2, [fp, #-48]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	fseek
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-40]
	bl	fread
	ldr	r3, [fp, #-16]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-44]
	bl	fread
	ldr	r3, [fp, #-48]
	mov	r2, r3
	lsl	r3, r3, #2
	sub	r3, r2, r3
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	fseek
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	downsampleRGBtoYCC
	str	r0, [fp, #-56]
	ldr	r2, [fp, #-48]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-56]
	bl	upsampleYCCtoRGB
	ldr	r3, [fp, #-20]
	mov	r2, #1
	mov	r1, #6
	ldr	r0, [fp, #-56]
	bl	fwrite
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
.L31:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	blt	.L32
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-8]
.L30:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L33
	ldr	r0, [fp, #-16]
	bl	fclose
	ldr	r0, [fp, #-20]
	bl	fclose
	ldr	r0, [fp, #-24]
	bl	fclose
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
