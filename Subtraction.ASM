.model small
.data
a db 05h
b db 02h
c db 00h

.code
start:
mov ax, @data
mov ds, ax
mov ah, a
mov bh, b
sub ah, bh
mov c, ah

mov ah,4ch
int 21h
end start