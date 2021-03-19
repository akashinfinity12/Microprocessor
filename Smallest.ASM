.model small
.data
var db 08h,05h,02h,01h,04h
c db ?

.code
start:
mov ax,@data
mov ds,ax

mov cx,04h
lea si,var
mov bl,79h
l1:
mov al,[si]
cmp al,bl
jg l2
mov bl,al
l2:
inc si
dec cx
jnz l1

mov c,bl
mov ah,4ch
int 21h
end start