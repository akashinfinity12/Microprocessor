.model small
.data
s1 db "Enter a string : $"
s2 db "Reverse : $"
s3 db 10,13,"$"
arr db 20 dup("$")

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

mov bh,00h
mov bl,arr+1
add si,bx

l1:
mov dl,[si+1]
mov ah,06h
int 21h
dec si
dec bl
jnz l1

mov ah,4ch
int 21h
end start