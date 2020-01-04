.model small
.data
.code

main proc 
    mov bl, 7
    mov cl, 3
    
    cmp bl, cl 
    jc goto_1
    jnz goto_2
             
    mov dl, 13
    jmp goto 
        
    goto_1:
        mov dl, 19  
        
        jmp goto
    
    goto_2:
        mov dl, 18
        
        jmp goto
                  
    goto:
        add dl, 48
        mov ah, 2h
        int 21h
endp
end main
    