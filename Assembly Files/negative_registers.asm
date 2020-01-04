.model small
.code
.data

main proc
    mov al, 2
    mov bl, 7
    mov cl, 5 
    
    neg bl
    neg cl
    
    add al, bl
    add al, cl
    
    mov dl, al
    add dl, 48  
    
    mov ah, 2h
    int 21h
endp
end main
    