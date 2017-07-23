.NOLIST
.INCLUDE "tn4def.inc"
.LIST
.DEF    tmp = R15

    rjmp    main

main:
    ldi tmp,0b1111
    out DDRB,tmp
	out PORTB,tmp

loop:
    rjmp    loop
