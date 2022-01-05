        .arch armv6
        .eabi_attribute 28, 1
        .eabi_attribute 20, 1
        .eabi_attribute 21, 1
        .eabi_attribute 23, 3
        .eabi_attribute 24, 1
        .eabi_attribute 25, 1
        .eabi_attribute 26, 2
        .eabi_attribute 30, 2
        .eabi_attribute 34, 1
        .eabi_attribute 18, 4
        .file   "9.c"
        .text
        .align  2
        .global fastcopy
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   fastcopy, %function
fastcopy:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        cmp     r2, #1
        bxls    lr
        sub     r3, r2, #2
        add     r2, r1, #4
        cmp     r0, r2
        cmpne   r3, #23
        orr     ip, r0, r1
        movhi   r2, #1
        movls   r2, #0
        tst     ip, #7
        movne   r2, #0
        andeq   r2, r2, #1
        cmp     r2, #0
        beq     .L3
        lsr     r3, r3, #1
        add     r3, r3, #1
        push    {r4, lr}
        mov     ip, r0
        sub     lr, r1, #8
        lsr     r4, r3, #1
        mov     r2, #0
.L4:
        vldr.64 d7, [lr, #8]    @ int
        add     r2, r2, #1
        cmp     r2, r4
        add     lr, lr, #8
        vstmia.64       ip!, {d7}       @ int
        bne     .L4
        tst     r3, #1
        bic     r3, r3, #1
        ldrne   r2, [r1, r3, lsl #2]
        strne   r2, [r0, r3, lsl #2]
        pop     {r4, pc}
.L3:
        sub     r1, r1, #4
.L6:
        ldr     r2, [r1, #4]!
        cmp     r3, #1
        str     r2, [r0], #4
        bxls    lr
        sub     r3, r3, #2
        b       .L6
        .size   fastcopy, .-fastcopy
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits