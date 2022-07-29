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
	.size	read_header, .-read_header
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
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #80
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
	mov	r2, r3
	movw	r3, #16843
	mul	r2, r3, r2
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #33030
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #6423
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #16
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #16843
	mul	r2, r3, r2
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #33030
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #6423
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #16
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #16843
	mul	r2, r3, r2
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #33030
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #6423
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #16843
	mul	r2, r3, r2
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #33030
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #6423
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #16
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #55837
	movt	r3, 65535
	mul	r2, r3, r2
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #46465
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #28770
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #28770
	mul	r2, r3, r2
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #41419
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #60883
	movt	r3, 65535
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #55837
	movt	r3, 65535
	mul	r2, r3, r2
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #46465
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #28770
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #28770
	mul	r2, r3, r2
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #41419
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #60883
	movt	r3, 65535
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #55837
	movt	r3, 65535
	mul	r2, r3, r2
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #46465
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #28770
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #28770
	mul	r2, r3, r2
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #41419
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #60883
	movt	r3, 65535
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #55837
	movt	r3, 65535
	mul	r2, r3, r2
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #46465
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #28770
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #28770
	mul	r2, r3, r2
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #41419
	movt	r3, 65535
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #60883
	movt	r3, 65535
	mul	r3, r3, r1
	add	r3, r2, r3
	asr	r3, r3, #16
	add	r3, r3, #128
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	asr	r3, r3, #2
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-48]
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	add	r3, r2, r3
	asr	r3, r3, #2
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-12]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r3, [fp, #-20]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-24]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-60]
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #4]
	ldr	r3, [fp, #-64]
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mov	r3, r0
	cmp	r3, #255
	ble	.L7
	mov	r3, #255
	b	.L8
.L7:
	cmp	r3, #0
	bge	.L9
	mov	r3, #0
	b	.L8
.L9:
	uxtb	r3, r3
.L8:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	myRound, .-myRound
	.align	2
	.global	upsampleYCCtoRGB
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	upsampleYCCtoRGB, %function
upsampleYCCtoRGB:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	mov	r0, #3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #32506
	movt	r3, 74
	mul	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	sub	r3, r3, #128
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	sub	r3, r3, #128
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	movw	r3, #9437
	movt	r3, 102
	mul	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	movw	r3, #2097
	movt	r3, 52
	mul	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-20]
	movw	r3, #1573
	movt	r3, 25
	mul	r3, r3, r2
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-20]
	movw	r3, #9961
	movt	r3, 129
	mul	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	sub	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-44]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #32506
	movt	r3, 74
	mul	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	sub	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-44]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r2, [fp, #-48]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-44]
	bl	fseek
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #32506
	movt	r3, 74
	mul	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	sub	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-44]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #32506
	movt	r3, 74
	mul	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #2]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	sub	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3, #1]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	asr	r3, r3, #22
	mov	r0, r3
	bl	myRound
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	strb	r2, [r3]
	ldr	r3, [fp, #-44]
	mov	r2, #1
	mov	r1, #3
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r3, [fp, #-48]
	mov	r2, r3
	lsl	r3, r3, #2
	sub	r3, r2, r3
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-44]
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
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #56
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	ldr	r3, [fp, #-64]
	cmp	r3, #4
	beq	.L12
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mov	r0, #1
	bl	exit
.L12:
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
	bne	.L13
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r0, #1
	bl	exit
.L13:
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
	bne	.L14
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L14:
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
	bne	.L15
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r0, #1
	bl	exit
.L15:
	ldr	r0, [fp, #-16]
	bl	read_header
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
	ldr	r4, [fp, #-48]
	b	.L16
.L19:
	ldr	r5, [fp, #-52]
	b	.L17
.L18:
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
	sub	r5, r5, #2
.L17:
	cmp	r5, #0
	bne	.L18
	sub	r4, r4, #4
.L16:
	cmp	r4, #0
	bne	.L19
	ldr	r0, [fp, #-16]
	bl	fclose
	ldr	r0, [fp, #-20]
	bl	fclose
	ldr	r0, [fp, #-24]
	bl	fclose
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
