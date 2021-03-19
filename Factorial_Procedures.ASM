.model small
.data
a dw 0001h
b dw 0005h
c dw 0000h

.code
start:
mov ax,@data
mov ds,ax
mov ax,a
mov bx,b

factorial PROC near
mul bx
dec bx
cmp bx,0001h
jnz l1
ret
factorial ENDP

l1:
CALL factorial

mov c,ax

mov ah,4ch
int 21h
end start