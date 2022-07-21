downsampleRGBtoYCC:
        @ args = 0, pretend = 0, frame = 24
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
        mov     r7, r2
        sub     sp, sp, #28
        mov     r4, r0
        mov     r0, #3
        mov     r8, r1
        str     r3, [sp, #8]
        bl      malloc
        ldrb    r3, [r7, #2]    @ zero_extendqisi2
        movw    lr, #33030
        str     r3, [sp]
        ldrb    r3, [r7]        @ zero_extendqisi2
        movw    ip, #16843
        str     r3, [sp, #4]
        ldr     r3, [sp, #8]
        ldrb    r5, [r4, #1]    @ zero_extendqisi2
        ldrb    r2, [r3, #2]    @ zero_extendqisi2
        ldrb    fp, [r4, #2]    @ zero_extendqisi2
        str     r2, [sp, #8]
        ldrb    r2, [r3, #1]    @ zero_extendqisi2
        ldrb    r3, [r3]        @ zero_extendqisi2
        str     r2, [sp, #12]
        str     r3, [sp, #16]
        movw    r3, #6423
        mul     r2, lr, r5
        mla     r2, ip, fp, r2
        ldrb    r4, [r4]        @ zero_extendqisi2
        ldrb    r10, [r8, #1]   @ zero_extendqisi2
        mla     r2, r3, r4, r2
        asr     r2, r2, #16
        add     r2, r2, #16
        strb    r2, [r0]
        mul     r2, lr, r10
        ldrb    r9, [r8, #2]    @ zero_extendqisi2
        ldrb    r1, [r8]        @ zero_extendqisi2
        mla     r2, ip, r9, r2
        mla     r2, r3, r1, r2
        ldrb    r8, [r7, #1]    @ zero_extendqisi2
        asr     r2, r2, #16
        add     r2, r2, #16
        strb    r2, [r0, #1]
        mul     r2, lr, r8
        ldr     r7, [sp]
        mla     r2, ip, r7, r2
        ldr     r7, [sp, #4]
        mla     r2, r3, r7, r2
        asr     r2, r2, #16
        add     r2, r2, #16
        strb    r2, [r0, #2]
        ldr     r2, [sp, #12]
        ldr     r7, .L7
        mul     lr, lr, r2
        ldr     r2, [sp, #8]
        mla     lr, ip, r2, lr
        movw    ip, #28770
        ldr     r2, [sp, #16]
        mla     lr, r3, r2, lr
        mul     r2, r7, r5
        asr     lr, lr, #16
        mul     r3, r7, r10
        add     lr, lr, #16
        strb    lr, [r0, #3]
        ldr     lr, .L7+4
        mla     r2, lr, fp, r2
        mla     r3, lr, r9, r3
        mla     r2, ip, r4, r2
        mla     r3, ip, r1, r3
        asr     r2, r2, #16
        add     r3, r2, r3, asr #16
        str     r3, [sp, #20]
        mul     r3, r7, r8
        ldr     r2, [sp]
        mla     r3, lr, r2, r3
        ldr     r2, [sp, #4]
        mla     r3, ip, r2, r3
        ldr     r2, [sp, #20]
        add     r3, r2, r3, asr #16
        ldr     r2, [sp, #12]
        mul     r7, r7, r2
        ldr     r2, [sp, #8]
        mla     r7, lr, r2, r7
        ldr     r2, [sp, #16]
        mla     r7, ip, r2, r7
        add     r3, r3, r7, asr #16
        add     r3, r3, #512
        asr     r3, r3, #2
        strb    r3, [r0, #4]
        ldr     r3, .L7+8
        ldr     r2, .L7+12
        mul     r5, r3, r5
        mul     r10, r3, r10
        mla     fp, ip, fp, r5
        mla     r10, ip, r9, r10
        mla     fp, r2, r4, fp
        mla     r1, r2, r1, r10
        mul     r8, r3, r8
        asr     fp, fp, #16
        add     fp, fp, r1, asr #16
        ldr     r1, [sp]
        mla     r8, ip, r1, r8
        ldr     r1, [sp, #4]
        mla     r8, r2, r1, r8
        ldr     r1, [sp, #12]
        add     fp, fp, r8, asr #16
        mul     r3, r3, r1
        ldr     r1, [sp, #8]
        mla     r3, ip, r1, r3
        ldr     r1, [sp, #16]
        mla     r2, r2, r1, r3
        add     r2, fp, r2, asr #16
        add     r2, r2, #512
        asr     r2, r2, #2
        strb    r2, [r0, #5]
        add     sp, sp, #28
        @ sp needed
        pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}
