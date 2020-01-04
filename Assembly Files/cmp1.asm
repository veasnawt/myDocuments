.model small
.data
.code

main proc
    mov bl, 7
    mov cl, 3
    
    cmp bl, cl
    jz label_goto_1
    jc label_goto_2
    
    mov dl, 18
    jmp Label_goto
    
    label_goto_1:
        add dl, 19  
    label_goto_2:
        add dl, 19
    
    label_goto:  
        add dl, 48
        mov ah, 2h
        int 21h
endp
end main