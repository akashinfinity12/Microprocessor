.model small
.data

a dw 16h
b db 04h
c db ?
d db ?

.code
start:
mov ax, @data
mov ds, ax
mov ax, a
mov bh, b
div bh
mov c, al
mov d, ah

mov ah, 4ch
int 21h
end start