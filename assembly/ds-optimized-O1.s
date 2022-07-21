downsampleRGBtoYCC:
        @ args = 0, pretend = 0, frame = 24
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, r7, r8, r9, r10, fp, lr}
        sub     sp, sp, #28
        mov     r6, r0
        mov     r10, r1
        mov     r9, r2
        mov     r8, r3
        mov     r0, #3
        bl      malloc
        ldrb    fp, [r6, #2]    @ zero_extendqisi2
        ldrb    r4, [r6, #1]    @ zero_extendqisi2
        ldrb    lr, [r6]        @ zero_extendqisi2
        ldrb    r6, [r10, #2]   @ zero_extendqisi2
        ldrb    r7, [r10, #1]   @ zero_extendqisi2
        ldrb    r3, [r10]       @ zero_extendqisi2
        str     r3, [sp]
        ldrb    r2, [r9, #2]    @ zero_extendqisi2
        str     r2, [sp, #4]
        ldrb    r10, [r9, #1]   @ zero_extendqisi2
        ldrb    r3, [r9]        @ zero_extendqisi2
        ldrb    r1, [r8, #2]    @ zero_extendqisi2
        str     r1, [sp, #8]
        ldrb    ip, [r8, #1]    @ zero_extendqisi2
        str     ip, [sp, #12]
        ldrb    r8, [r8]        @ zero_extendqisi2
        str     r8, [sp, #16]
        movw    ip, #16843
        movw    r8, #33030
        mul     r1, r8, r4
        mla     r1, ip, fp, r1
        movw    r2, #6423
        mla     r1, r2, lr, r1
        asr     r1, r1, #16
        add     r1, r1, #16
        strb    r1, [r0]
        mul     r1, r8, r7
        mla     r1, ip, r6, r1
        ldr     r9, [sp]
        mla     r1, r2, r9, r1
        asr     r1, r1, #16
        add     r1, r1, #16
        strb    r1, [r0, #1]
        mul     r1, r8, r10
        ldr     r9, [sp, #4]
        mla     r1, ip, r9, r1
        str     r3, [sp, #20]
        mla     r1, r2, r3, r1
        asr     r1, r1, #16
        add     r1, r1, #16
        strb    r1, [r0, #2]
        ldr     r9, [sp, #12]
        mul     r8, r8, r9
        ldr     r1, [sp, #8]
        mla     r8, ip, r1, r8
        ldr     r1, [sp, #16]
        mla     r8, r2, r1, r8
        asr     r8, r8, #16
        add     r8, r8, #16
        strb    r8, [r0, #3]
        movw    r1, #55837
        movt    r1, 65535
        movw    r9, #46465
        movt    r9, 65535
        mul     ip, r9, r4
        mla     ip, r1, fp, ip
        movw    r8, #28770
        mla     ip, r8, lr, ip
        asr     ip, ip, #16
        mul     r2, r9, r7
        mla     r2, r1, r6, r2
        ldr     r3, [sp]
        mla     r2, r8, r3, r2
        add     ip, ip, r2, asr #16
        mul     r2, r9, r10
        ldr     r3, [sp, #4]
        mla     r2, r1, r3, r2
        ldr     r3, [sp, #20]
        mla     r2, r8, r3, r2
        add     r2, ip, r2, asr #16
        ldr     ip, [sp, #12]
        mul     r9, r9, ip
        ldr     ip, [sp, #8]
        mla     r9, r1, ip, r9
        ldr     r1, [sp, #16]
        mla     ip, r8, r1, r9
        add     ip, r2, ip, asr #16
        add     ip, ip, #512
        asr     ip, ip, #2
        strb    ip, [r0, #4]
        movw    r2, #41419
        movt    r2, 65535
        mul     r4, r2, r4
        mla     fp, r8, fp, r4
        movw    r1, #60883
        movt    r1, 65535
        mla     fp, r1, lr, fp
        asr     fp, fp, #16
        mul     r7, r2, r7
        mla     r7, r8, r6, r7
        ldr     r3, [sp]
        mla     r3, r1, r3, r7
        add     fp, fp, r3, asr #16
        mul     r10, r2, r10
        ldr     r3, [sp, #4]
        mla     r10, r8, r3, r10
        ldr     r3, [sp, #20]
        mla     r10, r1, r3, r10
        add     fp, fp, r10, asr #16
        ldr     r9, [sp, #12]
        mul     r2, r2, r9
        ldr     ip, [sp, #8]
        mla     r2, r8, ip, r2
        ldr     r8, [sp, #16]
        mla     r1, r1, r8, r2
        add     r1, fp, r1, asr #16
        add     r1, r1, #512
        asr     r1, r1, #2
        strb    r1, [r0, #5]
        add     sp, sp, #28
        @ sp needed
        pop     {r4, r5, r6, r7, r8, r9, r10, fp, pc}
        .size   downsampleRGBtoYCC, .-downsampleRGBtoYCC
        .align  2
        .global clip
        .syntax unified
        .arm
        .fpu vfpv3-d16
        .type   clip, %function