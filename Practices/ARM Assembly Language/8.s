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
        .file   "8.c"
        .text
        .align  2
        .global len
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   len, %function
len:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        ldrb    r3, [r0]        @ zero_extendqisi2
        cmp     r3, #0
        beq     .L4
        mov     r3, r0
        rsb     r1, r0, #1
.L3:
        add     r0, r3, r1
        ldrb    r2, [r3, #1]!   @ zero_extendqisi2
        cmp     r2, #0
        bne     .L3
        bx      lr
.L4:
        mov     r0, r3
        bx      lr
        .size   len, .-len
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits