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
        .file   "1.c"
        .text
        .align  2
        .global Count1Bits
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   Count1Bits, %function
Count1Bits:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        mov     r2, #32 ;i = 32
        mov     r3, #1  ;mask = 1
        mov     r1, #0  ;count = 0;
.L3:
        tst     r0, r3
        addne   r1, r1, #1
        subs    r2, r2, #1
        lsl     r3, r3, #1
        bne     .L3
        mov     r0, r1
        bx      lr
        .size   Count1Bits, .-Count1Bits
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits