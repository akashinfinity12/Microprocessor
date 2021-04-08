.model small
.data
s1 db "Enter a string : $"
s2 db "Length is : $"
s3 db 10,13,"$"
arr db 40 dup("$")

.code
start:
mov ax,@data
mov ds,ax
lea si,arr

mov ah,09h
lea dx,s1
int 21h

mov ah,0ah
mov dx,si
int 21h

mov ah,09h
lea dx,s3
int 21h

mov ah,09h
lea dx,s2
int 21h

lea si,arr
mov bl,arr+1
mov cl,0Ah

l1:
mov ax,00h
mov al,bl
div cl
cmp al,00h
jz l2
mov dl,al
mov bl,ah
add dl,30h
mov ah,06h
int 21h
jmp l1

l2:
mov dl,ah
add dl,30h
mov ah,06h
int 21h

mov ah,4ch
int 21h
end start
