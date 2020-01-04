.model small
.data
.code

main proc
    mov ah, 15
    mov al, 17
    
    mov bl, ah
    mov ah, al
    mov al, bl
    
    mov ah, 2h
    int 21h
endp
end main