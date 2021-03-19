.model small
.data
a dw 0001h
b dw 0005h
c dw 0000h

.code
start:
mov ax,@data
mov ds,ax
mov ax,0001h
mov bx,b
l1:
mul bx
dec bx
cmp bx,01h
jnz l1
mov c,ax
mov ah,4ch
int 21h
end start