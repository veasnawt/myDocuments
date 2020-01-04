;Team 4
;Members
;Tep Veasna
;Tan Rathana
;Tol Yim Dara

.model small
.data  
    msg db "Enter a number: $" 
    msg2 db " is not a prime number. $"
    msg3 db " is a prime number. $"
.code

main proc 
    start: 
    mov ax, @data
    mov ds, ax
    mov dx, offset msg
    mov ah, 9h   
    int 21h 
    
    mov dl, 10
    mov bl, 0
    
    write: 
    mov ah, 1h
    int 21h 
    cmp al, 13 
    je exit 
    
    mov ah, 0
    sub al, 48
    
    mov cl, al
    mov al, bl
    
    mul dl
    
    add al, cl
    mov bl, al
    
    jmp write
      
    exit:  
    mov cl, 2
    mov al, bl
    
    
    loop1: 
        div cl
        inc cl
        cmp ax, 0
        je notPrime  
        cmp cl, bl
        je prime
        loop loop1
    
    notPrime:  
    mov dl, bl
    add dl, 48
    mov ah, 2h
    int 21h  
    
    mov dx, @data
    mov ds, dx
    mov dx, offset msg2
    mov ah, 9h
    int 21h
    jmp fin 
    
    prime: 
    mov dl, bl
    add dl, 48
    mov ah, 2h
    int 21h 
    
    mov dx, @data
    mov ds, dx
    mov dx, offset msg3
    mov ah, 9h
    int 21h
    
    fin:
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
        jmp start
    
endp
end main
    
