.model small
.data
var db 03h,04h,08h,09h,01h
c db ?

.code
start:
mov ax,@data
mov ds,ax

mov cx,04h
mov bl,00h
lea si,var
l1:
mov al,[si]
cmp al,bl
jl l2
mov bl,al
l2:
inc si
dec cx
jnz l1

mov c,bl
mov ah,4ch
int 21h
end start