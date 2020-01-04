.model small
.code
.data

main proc
    mov al, 1
    mov bl, 2
    mov cl, 3
    
    add al, bl
    add al, cl
    
    mov dl, al
    add dl, 48  
    
    mov ah, 2h
    int 21h
endp
end main
    