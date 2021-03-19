.model small
.data
a db 08h
b db 06h
ans db ?

.code
start:
mov ax,@data
mov ds,ax

mov al,a
mov bl,b
mov ah,00h
cmp al,bl
jg l1
xchg al,bl
l1:
mov cl,bl
div bl
cmp ah,00h
je l2
mov al,bl
mov bl,ah
mov ah,00h
jmp l1
l2:
mov ans,bl

mov ah,4ch
int 21h
end start