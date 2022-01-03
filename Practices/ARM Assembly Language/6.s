_Min:
        @ args = 0, pretend = 0, frame = 0
        @ frame_needed = 0, uses_anonymous_args = 0
        @ link register save eliminated.
        cmp     r1, r2
        movge   r1, r2
        cmp     r1, r0
        movlt   r0, r1
        bx      lr
        .size   _Min, .-_Min
        .ident  "GCC: (Raspbian 10.2.1-6+rpi1) 10.2.1 20210110"
        .section        .note.GNU-stack,"",%progbits