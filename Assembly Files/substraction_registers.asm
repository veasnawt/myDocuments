.model small
.code
.data

main proc
    mov al, 20
    mov bl, 7
    mov cl, 5
    
    sub al, bl
    sub al, cl
    
    mov dl, al
    add dl, 48  
    
    mov ah, 2h
    int 21h
endp
end main
    