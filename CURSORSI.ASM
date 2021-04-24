.model small
.data
.code
start:
mov ah,01h
mov cx,1015h
int 10h
mov ah,4ch
int 21h
end

