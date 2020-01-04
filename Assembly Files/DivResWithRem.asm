.model small
.data
    msg1 db "Enter first number: $"
    msg2 db "Enter second number: $"
    msg3 db "The quotient is: $" 
    msg4 db "The remainder is: $"
.code              

main proc
    ;firstNum
    mov ax, @data
    mov ds, ax
    mov dx, offset msg1
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    mov bh, al
    sub bh, 48
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    ;secondNum
    mov ax, @data
    mov ds, ax
    mov dx, offset msg2
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    mov bl, al
    sub bl, 48 
    
    ;MovResultToAl
    mov al, bh
    mov ah, 0
    div bl
    
    
    mov ch, ah 
    mov cl, al
    
    ;newLine
    mov dl, 13
    mov ah, 2h
    int 21h
    mov dl, 10
    mov ah, 2h
    int 21h
    
    ;displayResult 
    mov ax, @data
    mov ds, ax
    mov dx, offset msg3
    mov ah, 9h
    int 21h
    mov dl, cl
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
    
    ;displayRemainder
    mov ax, @data
    mov ds, ax
    mov dx, offset msg4
    mov ah, 9h
    int 21h
    mov dl, ch
    add dl, 48
    mov ah, 2h
    int 21h
    
    
endp
end main