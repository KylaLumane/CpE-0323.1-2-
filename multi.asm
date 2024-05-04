.model small
.stack 100h

.data

.code
main PROC

    mov ax, 32h
    mov bx, 10

    mov cx, bx
    xor dx, dx

multiply_loop:
    add dx, ax
    loop multiply_loop

    mov cx, 0Ah

display_loop:
    xor dx, dx
    div cx
    add dl, '0'
    mov ah, 02h
    int 21h
    loop display_loop

    mov ah, 4Ch
    int 21h

main ENDP
END main
