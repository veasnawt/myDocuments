.model small
.data
.code
main proc
	mov al, 10
	mov bl , 20
	
	add al, bl
	mov dl, al
	
	mov ah, 2h
	int 21h
endp
end main
