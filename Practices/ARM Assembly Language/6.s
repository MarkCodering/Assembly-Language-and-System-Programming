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
        .file   "6.c"
        .text
        .align  2
        .global Positive
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   Positive, %function
Positive:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        ldr     r3, [r0]
        mov     r2, r0
        ldr     r1, [r0, #4]
        mvn     r0, r3
        ldr     r3, [r2, #8]
        lsr     r0, r0, #31
        cmp     r1, #0
        addge   r0, r0, #1
        cmp     r3, #0
        ldr     r3, [r2, #12]
        addge   r0, r0, #1
        cmp     r3, #0
        ldr     r3, [r2, #16]
        addge   r0, r0, #1
        cmp     r3, #0
        addge   r0, r0, #1
        bx      lr
        .size   Positive, .-Positive
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits