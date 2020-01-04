.model small
.data
 msg db "Please enter a number: $"
 msg2 db "Please enter another number: $" 
 msg3 db "The result is: $"
 msg4 db "We cannot show the result right now $"
.code

main proc 
   
    ;firstInput 
    goto:                                 
    mov ax, seg msg
    mov ds, ax
    mov dx, offset msg
    mov ah, 9h
    int 21h 
    mov ah, 1h
    int 21h  
           
    ;getFirstInput 
    mov bl, al
    sub bl, 48
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h 
    
    ;secondInput
    mov dx, offset msg2
    mov ah, 9h
    int 21h
    mov ah, 1h
    int 21h 
              
    ;getSecondInput
    mov cl, al   
    sub cl, 48 
    
    ;multiply
    mov al, bl
    mul cl
    
    mov bh, al
    cmp bh, 9
    jnc goto_2
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h 
    
    ;Result
    mov dx, offset msg3
    mov ah, 9h
    int 21h
    
    mov dl, bh
    
    ;display 
    add dl, 48
    mov ah, 2h
    int 21h 
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h 
    
    ;redo
    jmp goto
    
    ;resultLessThan9
    goto_2:
     
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h 
    
    mov dx, offset msg4
    mov ah, 9h
    int 21h
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    jmp goto
    
endp
end main