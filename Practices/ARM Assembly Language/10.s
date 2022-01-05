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
        .file   "10.c"
        .text
        .align  2
        .global sum
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   sum, %function
sum:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        cmp     r0, #1
        bxeq    lr
        mov     r3, #0
.L2:
        mov     r2, r0
        sub     r0, r0, #1
        cmp     r0, #1
        add     r3, r3, r2
        bne     .L2
        add     r0, r3, #1
        bx      lr
        .size   sum, .-sum
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits