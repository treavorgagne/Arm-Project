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
        .file   "optimized.c"
        .text
        .align  2
        .global bmp_init
        .arch armv7-a
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   bmp_init, %function
bmp_init:
        @ args = 0, pretend = 0, frame = 16
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #16
        str     r0, [fp, #-16]
        mov     r0, #56
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-8]
        ldr     r0, [fp, #-8]
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #2
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #4
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #8
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #2
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #10
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #2
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #12
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #16
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #20
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #24
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #28
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #2
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #30
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #2
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #32
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #36
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #40
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #44
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #48
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        add     r0, r3, #52
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #4
        bl      fread
        ldr     r3, [fp, #-8]
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   bmp_init, .-bmp_init
        .align  2
        .global write_header
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   write_header, %function
write_header:
        @ args = 0, pretend = 0, frame = 8
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #8
        str     r0, [fp, #-8]
        str     r1, [fp, #-12]
        ldr     r0, [fp, #-8]
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #2
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #4
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #8
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #2
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #10
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #2
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #12
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #16
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #20
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #24
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #28
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #2
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #30
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #2
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #32
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #36
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #40
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #44
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #48
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r0, r3, #52
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #4
        bl      fwrite
        nop
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   write_header, .-write_header
        .align  2
        .global convertRGBtoYCC
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   convertRGBtoYCC, %function
convertRGBtoYCC:
        @ args = 0, pretend = 0, frame = 24
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #24
        str     r0, [fp, #-24]
        mov     r0, #3
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-8]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #16843
        mul     r2, r3, r2
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #33030
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #6423
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #16
        str     r3, [fp, #-12]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #55837
        movt    r3, 65535
        mul     r2, r3, r2
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #46465
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #28770
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-16]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #28770
        mul     r2, r3, r2
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #41419
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #60883
        movt    r3, 65535
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-20]
        ldr     r3, [fp, #-12]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3]
        ldr     r3, [fp, #-16]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #1]
        ldr     r3, [fp, #-20]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #2]
        ldr     r3, [fp, #-8]
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   convertRGBtoYCC, .-convertRGBtoYCC
        .align  2
        .global convertYCCtoRGB
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   convertYCCtoRGB, %function
convertYCCtoRGB:
        @ args = 0, pretend = 0, frame = 32
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #32
        vstr.32 s0, [fp, #-24]
        vstr.32 s1, [fp, #-28]
        vstr.32 s2, [fp, #-32]
        mov     r0, #3
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-8]
        vldr.32 s15, [fp, #-24]
        vmov.f32        s14, #1.6e+1
        vsub.f32        s15, s15, s14
        vstr.32 s15, [fp, #-12]
        vldr.32 s15, [fp, #-28]
        vldr.32 s14, .L8+40
        vsub.f32        s15, s15, s14
        vstr.32 s15, [fp, #-16]
        vldr.32 s15, [fp, #-32]
        vldr.32 s14, .L8+40
        vsub.f32        s15, s15, s14
        vstr.32 s15, [fp, #-20]
        vldr.32 s15, [fp, #-12]
        vcvt.f64.f32    d7, s15
        vldr.64 d6, .L8
        vmul.f64        d6, d7, d6
        vldr.32 s15, [fp, #-20]
        vcvt.f64.f32    d7, s15
        vldr.64 d5, .L8+8
        vmul.f64        d7, d7, d5
        vadd.f64        d7, d6, d7
        vcvt.u32.f64    s15, d7
        vstr.32 s15, [fp, #-36] @ int
        ldr     r3, [fp, #-36]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3]
        vldr.32 s15, [fp, #-12]
        vcvt.f64.f32    d7, s15
        vldr.64 d6, .L8
        vmul.f64        d6, d7, d6
        vldr.32 s15, [fp, #-20]
        vcvt.f64.f32    d7, s15
        vldr.64 d5, .L8+16
        vmul.f64        d7, d7, d5
        vsub.f64        d6, d6, d7
        vldr.32 s15, [fp, #-16]
        vcvt.f64.f32    d7, s15
        vldr.64 d5, .L8+24
        vmul.f64        d7, d7, d5
        vsub.f64        d7, d6, d7
        vcvt.u32.f64    s15, d7
        vstr.32 s15, [fp, #-36] @ int
        ldr     r3, [fp, #-36]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #1]
        vldr.32 s15, [fp, #-12]
        vcvt.f64.f32    d7, s15
        vldr.64 d6, .L8
        vmul.f64        d6, d7, d6
        vldr.32 s15, [fp, #-16]
        vcvt.f64.f32    d7, s15
        vldr.64 d5, .L8+32
        vmul.f64        d7, d7, d5
        vadd.f64        d7, d6, d7
        vcvt.u32.f64    s15, d7
        vstr.32 s15, [fp, #-36] @ int
        ldr     r3, [fp, #-36]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #2]
        ldr     r3, [fp, #-8]
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
.L9:
        .align  3
.L8:
        .word   1992864825
        .word   1072865214
        .word   1271310320
        .word   1073318199
        .word   -1821066134
        .word   1072301080
        .word   -584115552
        .word   1071187492
        .word   790273982
        .word   1073751261
        .word   1124073472
        .size   convertYCCtoRGB, .-convertYCCtoRGB
        .align  2
        .global downsample
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   downsample, %function
downsample:
        @ args = 0, pretend = 0, frame = 40
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #40
        str     r0, [fp, #-24]
        str     r1, [fp, #-28]
        str     r2, [fp, #-32]
        str     r3, [fp, #-36]
        mov     r0, #3
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-8]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3]        @ zero_extendqisi2
        add     r3, r2, r3
        ldr     r2, [fp, #-32]
        ldrb    r2, [r2]        @ zero_extendqisi2
        add     r3, r3, r2
        ldr     r2, [fp, #-36]
        ldrb    r2, [r2]        @ zero_extendqisi2
        add     r3, r3, r2
        add     r2, r3, #3
        cmp     r3, #0
        movlt   r3, r2
        movge   r3, r3
        asr     r3, r3, #2
        vmov    s15, r3 @ int
        vcvt.f32.s32    s15, s15
        vstr.32 s15, [fp, #-12]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        add     r3, r2, r3
        ldr     r2, [fp, #-32]
        ldrb    r2, [r2, #1]    @ zero_extendqisi2
        add     r3, r3, r2
        ldr     r2, [fp, #-36]
        ldrb    r2, [r2, #1]    @ zero_extendqisi2
        add     r3, r3, r2
        add     r2, r3, #3
        cmp     r3, #0
        movlt   r3, r2
        movge   r3, r3
        asr     r3, r3, #2
        vmov    s15, r3 @ int
        vcvt.f32.s32    s15, s15
        vstr.32 s15, [fp, #-16]
        ldr     r3, [fp, #-24]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        add     r3, r2, r3
        ldr     r2, [fp, #-32]
        ldrb    r2, [r2, #2]    @ zero_extendqisi2
        add     r3, r3, r2
        ldr     r2, [fp, #-36]
        ldrb    r2, [r2, #2]    @ zero_extendqisi2
        add     r3, r3, r2
        add     r2, r3, #3
        cmp     r3, #0
        movlt   r3, r2
        movge   r3, r3
        asr     r3, r3, #2
        vmov    s15, r3 @ int
        vcvt.f32.s32    s15, s15
        vstr.32 s15, [fp, #-20]
        vldr.32 s15, [fp, #-12]
        vcvt.u32.f32    s15, s15
        vstr.32 s15, [fp, #-40] @ int
        ldr     r3, [fp, #-40]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3]
        vldr.32 s15, [fp, #-16]
        vcvt.u32.f32    s15, s15
        vstr.32 s15, [fp, #-40] @ int
        ldr     r3, [fp, #-40]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #1]
        vldr.32 s15, [fp, #-20]
        vcvt.u32.f32    s15, s15
        vstr.32 s15, [fp, #-40] @ int
        ldr     r3, [fp, #-40]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #2]
        ldr     r3, [fp, #-8]
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   downsample, .-downsample
        .section        .rodata
        .align  2
.LC0:
        .ascii  "Please provide 1 file .bmp file to convert to RGB t"
        .ascii  "o YCC.\000"
        .align  2
.LC1:
        .ascii  "rb\000"
        .align  2
.LC2:
        .ascii  "Error! Opening input file\000"
        .align  2
.LC3:
        .ascii  "wb\000"
        .align  2
.LC4:
        .ascii  "./output/ycc_output_optimized.bmp\000"
        .align  2
.LC5:
        .ascii  "Error! Opening Output file\000"
        .align  2
.LC6:
        .ascii  "./output/rgb_output_optimized.bmp\000"
        .align  2
.LC7:
        .ascii  "Width, Height: %d, %d\012\000"
        .align  2
.LC8:
        .ascii  "Pixel [%d]: %d %d %d\012\000"
        .align  2
.LC9:
        .ascii  "Converted [%d] RGB tp YCC: %d %d %d\012\000"
        .align  2
.LC10:
        .ascii  "Reverted [%d] YCC to RGB: %d %d %d\012\000"
        .text
        .align  2
        .global main
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   main, %function
main:
        @ args = 0, pretend = 0, frame = 48
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #56
        str     r0, [fp, #-48]
        str     r1, [fp, #-52]
        ldr     r3, [fp, #-48]
        cmp     r3, #2
        beq     .L13
        movw    r0, #:lower16:.LC0
        movt    r0, #:upper16:.LC0
        bl      printf
        mov     r0, #1
        bl      exit
.L13:
        ldr     r3, [fp, #-52]
        add     r3, r3, #4
        ldr     r3, [r3]
        movw    r1, #:lower16:.LC1
        movt    r1, #:upper16:.LC1
        mov     r0, r3
        bl      fopen
        str     r0, [fp, #-12]
        ldr     r3, [fp, #-12]
        cmp     r3, #0
        bne     .L14
        movw    r0, #:lower16:.LC2
        movt    r0, #:upper16:.LC2
        bl      printf
        mov     r0, #1
        bl      exit
.L14:
        movw    r1, #:lower16:.LC3
        movt    r1, #:upper16:.LC3
        movw    r0, #:lower16:.LC4
        movt    r0, #:upper16:.LC4
        bl      fopen
        str     r0, [fp, #-16]
        ldr     r3, [fp, #-16]
        cmp     r3, #0
        bne     .L15
        movw    r0, #:lower16:.LC5
        movt    r0, #:upper16:.LC5
        bl      printf
        mov     r0, #1
        bl      exit
.L15:
        movw    r1, #:lower16:.LC3
        movt    r1, #:upper16:.LC3
        movw    r0, #:lower16:.LC6
        movt    r0, #:upper16:.LC6
        bl      fopen
        str     r0, [fp, #-20]
        ldr     r3, [fp, #-20]
        cmp     r3, #0
        bne     .L16
        movw    r0, #:lower16:.LC5
        movt    r0, #:upper16:.LC5
        bl      printf
        mov     r0, #1
        bl      exit
.L16:
        ldr     r0, [fp, #-12]
        bl      bmp_init
        str     r0, [fp, #-24]
        ldr     r3, [fp, #-24]
        ldr     r1, [r3, #20]
        ldr     r3, [fp, #-24]
        ldr     r3, [r3, #24]
        mov     r2, r3
        movw    r0, #:lower16:.LC7
        movt    r0, #:upper16:.LC7
        bl      printf
        ldr     r1, [fp, #-16]
        ldr     r0, [fp, #-24]
        bl      write_header
        ldr     r1, [fp, #-20]
        ldr     r0, [fp, #-24]
        bl      write_header
        ldr     r3, [fp, #-24]
        ldr     r3, [r3, #12]
        mov     r2, #0
        mov     r1, r3
        ldr     r0, [fp, #-12]
        bl      fseek
        mov     r0, #3
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-28]
        ldr     r3, [fp, #-24]
        ldr     r3, [r3, #20]
        ldr     r2, [fp, #-24]
        ldr     r2, [r2, #24]
        mul     r3, r2, r3
        str     r3, [fp, #-32]
        mov     r3, #0
        str     r3, [fp, #-8]
        b       .L17
.L19:
        ldr     r3, [fp, #-12]
        mov     r2, #1
        mov     r1, #3
        ldr     r0, [fp, #-28]
        bl      fread
        ldr     r0, [fp, #-28]
        bl      convertRGBtoYCC
        str     r0, [fp, #-36]
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3]        @ zero_extendqisi2
        vmov    s15, r3 @ int
        vcvt.f32.u32    s15, s15
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        vmov    s14, r3 @ int
        vcvt.f32.u32    s14, s14
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        vmov    s13, r3 @ int
        vcvt.f32.u32    s13, s13
        vmov.f32        s2, s13
        vmov.f32        s1, s14
        vmov.f32        s0, s15
        bl      convertYCCtoRGB
        str     r0, [fp, #-40]
        ldr     r3, [fp, #-8]
        cmp     r3, #400
        bge     .L18
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        ldr     r3, [fp, #-28]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        str     r3, [sp]
        mov     r3, r1
        ldr     r1, [fp, #-8]
        movw    r0, #:lower16:.LC8
        movt    r0, #:upper16:.LC8
        bl      printf
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        ldr     r3, [fp, #-36]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        str     r3, [sp]
        mov     r3, r1
        ldr     r1, [fp, #-8]
        movw    r0, #:lower16:.LC9
        movt    r0, #:upper16:.LC9
        bl      printf
        ldr     r3, [fp, #-40]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r2, r3
        ldr     r3, [fp, #-40]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        ldr     r3, [fp, #-40]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        str     r3, [sp]
        mov     r3, r1
        ldr     r1, [fp, #-8]
        movw    r0, #:lower16:.LC10
        movt    r0, #:upper16:.LC10
        bl      printf
.L18:
        ldr     r3, [fp, #-16]
        mov     r2, #1
        mov     r1, #3
        ldr     r0, [fp, #-36]
        bl      fwrite
        ldr     r3, [fp, #-20]
        mov     r2, #1
        mov     r1, #3
        ldr     r0, [fp, #-40]
        bl      fwrite
        ldr     r3, [fp, #-8]
        add     r3, r3, #1
        str     r3, [fp, #-8]
.L17:
        ldr     r2, [fp, #-8]
        ldr     r3, [fp, #-32]
        cmp     r2, r3
        blt     .L19
        ldr     r0, [fp, #-12]
        bl      fclose
        ldr     r0, [fp, #-16]
        bl      fclose
        ldr     r0, [fp, #-20]
        bl      fclose
        mov     r3, #0
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   main, .-main
        .ident  "GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
        .section        .note.GNU-stack,"",%progbits