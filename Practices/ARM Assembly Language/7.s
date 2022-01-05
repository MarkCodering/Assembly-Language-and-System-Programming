ZeroCount:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        push    {r4, r5, r6, r7, r8, lr}
        mov     r7, r3
        mov     r5, r1
        mov     r4, r0
        ldr     r1, [r2]
        ldr     r0, .L11
        mov     r6, r2
        bl      printf
        ldr     r1, [r7]
        ldr     r0, .L11+4
        bl      printf
        cmp     r5, #0
        ble     .L6
        sub     r3, r4, #4
        add     r1, r3, r5, lsl #2
        mov     r0, #0
.L5:
        ldr     ip, [r3, #4]!
        cmp     ip, #0
        addeq   r0, r0, #1
        beq     .L4
        ldrgt   ip, [r6]
        addgt   ip, ip, #1
        strgt   ip, [r6]
.L4:
        cmp     r3, r1
        bne     .L5
        pop     {r4, r5, r6, r7, r8, pc}
.L6:
        mov     r0, #0
        pop     {r4, r5, r6, r7, r8, pc}
.L12:
        .align  2
.L11:
        .word   .LC0
        .word   .LC1
        .size   ZeroCount, .-ZeroCount
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits