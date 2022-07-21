downsampleRGBtoYCC:
        @ args = 0, pretend = 0, frame = 48
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
        mov     r4, r1
        movw    r6, #46465
        mov     r10, r2
        mov     r7, r0
        mov     r8, r3
        sub     sp, sp, #52
        mov     r0, #3
        bl      malloc
        movw    r3, #41419
        movw    r2, #55837
        movw    ip, #28770
        str     r4, [sp, #12]
        ldrb    r4, [r4, #1]    @ zero_extendqisi2
        movt    r6, 65535
        mul     lr, r6, r4
        ldrb    r9, [r10, #1]   @ zero_extendqisi2
        str     lr, [sp, #4]
        ldrb    lr, [r7, #2]    @ zero_extendqisi2
        ldrb    r5, [r7, #1]    @ zero_extendqisi2
        str     r8, [sp, #20]
        ldrb    r8, [r8, #1]    @ zero_extendqisi2
        str     lr, [sp]
        mul     lr, r6, r9
        mul     fp, r6, r5
        mul     r6, r6, r8
        movt    r3, 65535
        str     lr, [sp, #36]
        ldr     lr, [sp, #12]
        str     r6, [sp, #40]
        mul     r6, r3, r5
        ldrb    lr, [lr, #2]    @ zero_extendqisi2
        str     r8, [sp, #16]
        ldrb    r7, [r7]        @ zero_extendqisi2
        ldr     r8, [sp]
        movt    r2, 65535
        str     lr, [sp, #8]
        mla     fp, r2, r8, fp
        mla     r6, ip, r8, r6
        ldmib   sp, {r8, lr}
        str     r7, [sp, #4]
        mul     r7, r3, r4
        mla     r8, r2, lr, r8
        mla     r7, ip, lr, r7
        movw    lr, #60883
        movt    lr, 65535
        str     r8, [sp, #32]
        ldr     r8, [sp, #12]
        str     lr, [sp, #12]
        ldr     lr, [sp, #4]
        movw    r1, #33030
        mla     fp, ip, lr, fp
        str     fp, [sp, #28]
        movw    fp, #16843
        mul     r5, r1, r5
        ldr     lr, [sp]
        ldrb    r8, [r8]        @ zero_extendqisi2
        mla     r5, fp, lr, r5
        ldr     lr, [sp, #12]
        str     r5, [sp]
        ldr     r5, [sp, #4]
        str     r0, [sp, #24]
        mla     r6, lr, r5, r6
        mul     r4, r1, r4
        str     r6, [sp, #44]
        ldr     lr, [sp, #8]
        ldr     r5, [sp, #16]
        mul     r6, r1, r9
        mul     r1, r1, r5
        mla     r4, fp, lr, r4
        str     r1, [sp, #16]
        ldr     lr, [sp, #36]
        ldrb    r1, [r10, #2]   @ zero_extendqisi2
        str     r4, [sp, #8]
        mul     r4, r3, r9
        mul     r3, r3, r5
        mla     r5, r2, r1, lr
        mov     lr, fp
        mla     r6, fp, r1, r6
        mla     r4, ip, r1, r4
        ldr     r1, [sp, #32]
        ldr     r9, [sp, #20]
        mla     r1, ip, r8, r1
        str     r1, [sp, #32]
        ldr     r1, [sp, #12]
        ldrb    fp, [r9]        @ zero_extendqisi2
        mla     r7, r1, r8, r7
        ldrb    r1, [r9, #2]    @ zero_extendqisi2
        ldr     r9, [sp, #40]
        mla     r3, ip, r1, r3
        mla     r2, r2, r1, r9
        mov     r9, lr
        ldr     lr, [sp, #16]
        ldrb    r10, [r10]      @ zero_extendqisi2
        mla     r1, r9, r1, lr
        movw    r9, #6423
        mla     r5, ip, r10, r5
        ldr     lr, [sp, #12]
        str     r5, [sp, #16]
        mla     r4, lr, r10, r4
        ldr     r5, [sp]
        mla     r3, lr, fp, r3
        ldr     lr, [sp, #4]
        mla     r2, ip, fp, r2
        mla     lr, r9, lr, r5
        ldr     r5, [sp, #44]
        ldr     ip, [sp, #28]
        asr     r5, r5, #16
        str     r5, [sp]
        ldr     r5, [sp, #8]
        asr     ip, ip, #16
        mla     r8, r9, r8, r5
        ldr     r5, [sp, #32]
        mla     r10, r9, r10, r6
        add     ip, ip, r5, asr #16
        ldr     r5, [sp]
        mla     r1, r9, fp, r1
        add     r7, r5, r7, asr #16
        ldr     r5, [sp, #16]
        add     r4, r7, r4, asr #16
        add     r5, ip, r5, asr #16
        add     r2, r5, r2, asr #16
        add     r3, r4, r3, asr #16
        add     r2, r2, #512
        asr     lr, lr, #16
        asr     r8, r8, #16
        add     r3, r3, #512
        asr     r10, r10, #16
        asr     r1, r1, #16
        asr     r2, r2, #2
        add     lr, lr, #16
        add     r8, r8, #16
        asr     r3, r3, #2
        add     r10, r10, #16
        add     r1, r1, #16
        strb    r2, [r0, #4]
        strb    lr, [r0]
        strb    r8, [r0, #1]
        strb    r3, [r0, #5]
        strb    r10, [r0, #2]
        strb    r1, [r0, #3]
        add     sp, sp, #52
        @ sp needed
        pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}
        .size   downsampleRGBtoYCC, .-downsampleRGBtoYCC
        .align  2
        .global clip
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   clip, %function
