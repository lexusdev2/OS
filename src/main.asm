org 0x7C000
bits 16

main:
    hlt
    
.halt:
    .jmp .halt

times 510-($-$$) db 0
dw 0AA55H
