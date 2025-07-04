_init_:
    ld SP, 8004h
    jp, poll_loop
    
poll_loop:
    ld A, (BC)
    ld L, A
    ld A, 01h
    cp L
    jp z, shift_intobytes
    jp s, shift_intobytes
    jp nz, poll_loop
    
shift_intobytes:
    RLC A
    RLC A
    RLC A
    RLC A; shift the instruction 4 bits
    or e
    ld e, a; preps for stack pushing :3
    ld a, 01h
    cp d
    jp z, stack_pusher
    jp s, stack_pusher; just in case it overflows :D
    ld d, e; finishes off the logic for this part.
    jp nz, poll_loop


stack_pusher:
    PUSH DE

run_func: 
    jp, 8004h ; jumps to execute code written
    
