.model small
.data
msg db "Please enter number of B: $"  
msg2 db "Please enter number of C: $" 
msg3 db "The biggest number is $"
msg4 db "B and C are equal$"
.code

main proc 
    
    goto: 
    mov ax, seg msg
    mov ds, ax
    mov dx, offset msg
    mov ah, 09h
    int 21h  
    mov ah, 1h
    int 21h
    
    mov bl, al 
    
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    cmp bl, 48 
    jc goto
    
    cmp bl, 58     
    jnc goto 
    
    goto_2:
    mov ax, seg msg2
    mov ds, ax
    mov dx, offset msg2
    mov ah, 09h
    int 21h 
    mov ah, 1h
    int 21h
    
    mov cl, al
    
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    cmp cl, 48
    jc goto_2
    
    cmp cl, 58
    jnc goto_2
    
    cmp bl, cl
    jc goto_3
    jnz goto_4
        
        mov ax, seg msg4
        mov ds, ax
        mov dx, offset msg4
        mov ah, 09h
        int 21h
        mov dl, 46
        jmp goto_5
    
    goto_3:  
        mov ax, seg msg3
        mov ds, ax
        mov dx, offset msg3
        mov ah, 09h
        int 21h
        mov dl, 67  
        jmp goto_5
    goto_4:
        mov ax, seg msg3  
        mov ds, ax
        mov dx, offset msg3
        mov ah, 09h
        int 21h
        mov dl, 66
        jmp goto_5
    goto_5:
        mov ah, 2h
        int 21h
    
endp
end main
    
    