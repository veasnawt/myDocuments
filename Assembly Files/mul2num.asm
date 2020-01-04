DATA SEGMENT

    a db "Please enter a number $"
    b db "Please enter another number $"
    result db "The result is $"


ENDS
CODE SEGMENT 
ASSUME DS:DATA CS:CODE
 
main proc
    
    call Input
    call Multi
    call Answer   
    call Final
   
    ret 
    
main endp
   
   
  Input proc 
    
    ;insertFirstNum
    first:
     mov ax, DATA
     mov DS, ax
     LEA DX, a
     mov ah, 9
     int 21h 
    
    mov ah, 1h
    int 21h
    mov ah, 0
    mov bl, al
    sub bl, 48
    
     ;newLine
     mov dl, 13
     mov ah, 2h
     int 21h
     mov dl, 10
     int 21h
    
     ;insertSecondNum
     mov ax, DATA
     mov DS, ax
     LEA DX, b
     mov ah, 9
     int 21h    

    mov ah, 1h
    int 21h
    mov ah, 0
    mov cl, al
    sub cl, 48 
    
      ;newLine
     mov dl, 13
     mov ah, 2h
     int 21h
     mov dl, 10
     int 21h      
    
    ret
  Input endp  
  
  Multi proc 
     
    mov al, bl
    mul cl
    mov bl, al
    
    ret
  Multi endp    
  

  Answer proc       
    
     mov ax, DATA
     mov DS, ax
     LEA DX, result
     mov dx, dx 
     mov ah, 9
     int 21h
        
    break:
    
    ret
  Answer endp 
  
Final proc
    
    mov ax, bx
    mov bx, 10
    mov cx, 0
    
    div:
        mov dx, 0
        div bx
        push dx
        
        mov dx, 0
        add cx, 1
        cmp ax, 0
        jnz div
        
    insert:
        pop dx
        add dx, 48
        mov ah, 2h
        int 21h
        loop insert
Final endp
 
end main
    
    
    