downsampleRGBtoYCC:
        @ args = 0, pretend = 0, frame = 80
        @ frame_needed = 1, uses_anonymous_args = 0
        push    {fp, lr}
        add     fp, sp, #4
        sub     sp, sp, #80
        str     r0, [fp, #-72]
        str     r1, [fp, #-76]
        str     r2, [fp, #-80]
        str     r3, [fp, #-84]
        mov     r0, #3
        bl      malloc
        mov     r3, r0
        str     r3, [fp, #-8]
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #16843
        mul     r2, r3, r2
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #33030
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #6423
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #16
        str     r3, [fp, #-12]
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #16843
        mul     r2, r3, r2
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #33030
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #6423
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #16
        str     r3, [fp, #-16]
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #16843
        mul     r2, r3, r2
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #33030
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #6423
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #16
        str     r3, [fp, #-20]
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #16843
        mul     r2, r3, r2
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #33030
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #6423
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #16
        str     r3, [fp, #-24]
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #55837
        movt    r3, 65535
        mul     r2, r3, r2
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #46465
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #28770
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-28]
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #28770
        mul     r2, r3, r2
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #41419
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-72]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #60883
        movt    r3, 65535
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-32]
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #55837
        movt    r3, 65535
        mul     r2, r3, r2
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #46465
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #28770
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-36]
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #28770
        mul     r2, r3, r2
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #41419
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-76]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #60883
        movt    r3, 65535
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-40]
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #55837
        movt    r3, 65535
        mul     r2, r3, r2
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #46465
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #28770
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-44]
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #28770
        mul     r2, r3, r2
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #41419
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-80]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #60883
        movt    r3, 65535
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-48]
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #55837
        movt    r3, 65535
        mul     r2, r3, r2
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #46465
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #28770
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-52]
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #2]    @ zero_extendqisi2
        mov     r2, r3
        movw    r3, #28770
        mul     r2, r3, r2
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3, #1]    @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #41419
        movt    r3, 65535
        mul     r3, r3, r1
        add     r2, r2, r3
        ldr     r3, [fp, #-84]
        ldrb    r3, [r3]        @ zero_extendqisi2
        mov     r1, r3
        movw    r3, #60883
        movt    r3, 65535
        mul     r3, r3, r1
        add     r3, r2, r3
        asr     r3, r3, #16
        add     r3, r3, #128
        str     r3, [fp, #-56]
        ldr     r2, [fp, #-28]
        ldr     r3, [fp, #-36]
        add     r2, r2, r3
        ldr     r3, [fp, #-44]
        add     r2, r2, r3
        ldr     r3, [fp, #-52]
        add     r3, r2, r3
        asr     r3, r3, #2
        str     r3, [fp, #-60]
        ldr     r2, [fp, #-32]
        ldr     r3, [fp, #-40]
        add     r2, r2, r3
        ldr     r3, [fp, #-48]
        add     r2, r2, r3
        ldr     r3, [fp, #-56]
        add     r3, r2, r3
        asr     r3, r3, #2
        str     r3, [fp, #-64]
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
        ldr     r3, [fp, #-24]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #3]
        ldr     r3, [fp, #-60]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #4]
        ldr     r3, [fp, #-64]
        uxtb    r2, r3
        ldr     r3, [fp, #-8]
        strb    r2, [r3, #5]
        ldr     r3, [fp, #-8]
        mov     r0, r3
        sub     sp, fp, #4
        @ sp needed
        pop     {fp, pc}
        .size   downsampleRGBtoYCC, .-downsampleRGBtoYCC
        .align  2
        .global clip
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   clip, %function