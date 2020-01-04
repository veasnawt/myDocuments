.model small
.data
.code

main proc
     
mov al, 10
mov bl, 20 
mov cl, 30

mov dl, al 
mov al, bl
mov bl, cl
mov cl, dl  

add cl, 48

mov ah, 2h
int 21h

endp   

end main