        .file   "4.c"
        .text
        .align  2
        .global Sum
        .arch armv6
        .syntax unified
        .arm
        .fpu vfp
        .type   Sum, %function
Sum:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        cmp     r1, #0
        ble     .L4
        sub     r3, r0, #4
        add     r1, r3, r1, lsl #2
        mov     r0, #0
.L3:
        ldr     r2, [r3, #4]!
        cmp     r1, r3
        add     r0, r0, r2
        bne     .L3
        bx      lr
.L4:
        mov     r0, #0
        bx      lr
        .size   Sum, .-Sum
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits