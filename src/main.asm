org 0x7C000
bits 16

start:
    jmp main

puts:
    push s1
    push ax

loop:
    lodsb
    or al, al 
    jz .done
    jmp .loop

.done:
    pop ax
    pop si
    ret

main:
    hlt
    mov ax, 0
    mov ds, ax
    mov os, ax

    mov ss, ax
    mov sp, 0x7C000
    
.halt:
    .jmp .halt

times 510-($-$$) db 0
dw 0AA55H
