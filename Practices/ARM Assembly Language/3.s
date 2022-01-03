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
        .file   "3.c"
        .text
        .align  2
        .global int_min
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   int_min, %function
int_min:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        cmp     r1, r2
        movge   r1, r2
        cmp     r1, r0
        movlt   r0, r1
        bx      lr
        .size   int_min, .-int_min
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits