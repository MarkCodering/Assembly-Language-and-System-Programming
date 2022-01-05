MAX:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        cmp     r1, #0  
        beq     .L7  
        ldr     r3, [r0]
        mov     r0, #0
        cmp     r3, r0
        sub     r1, r1, #2
        sxth    r2, r3
        bxle    lr
        cmn     r1, #1
        beq     .L12
.L6:
        mov     r0, r2
        cmp     r3, r0
        sub     r1, r1, #1
        bxle    lr
        cmn     r1, #1
        bne     .L6
.L12:
        mov     r0, r2
        bx      lr
.L7:
        mov     r0, r1
        bx      lr
        .size   MAX, .-MAX
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"