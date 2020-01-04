.model small
.data
.code

main proc  
        mov dl, 10
        add dl, 48
        mov cx, 5
    l1: 
        dec dl
         
        mov ah, 2h
        int 21h
    loop l1     
endp
end main