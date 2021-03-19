.model small
.data
a db 05h
b db 02h
c dw ?

.code
start:
mov ax, @data
mov ds, ax

mov bh,a
mov al,b
mul bh
mov c,ax
mov ah,4ch
int 21h
end start