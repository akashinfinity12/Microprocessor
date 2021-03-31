.model small
.data
s1 db "Enter your Name : $"
s2 db "Your name is : $"
s3 db 10,13,"$"
s4 db "Enter Your Roll No :$"
s5 db "Your Roll No is :$"
arr db 20 dup("$")
arr2 db 20 dup("$")


.code
start:
mov ax,@data
mov ds,ax

lea SI,arr

mov ah,09h
lea dx,s1
int 21h

mov ah,0ah
mov dx,SI
int 21h

mov ah,09h
lea dx,s3
int 21h

mov ah,09h
lea dx,s2
int 21h

mov ah,09h
lea dx,arr+2
int 21h

mov ah,09h
lea dx,s3
int 21h

lea SI,arr2

mov ah,09h
lea dx,s4
int 21h

mov ah,0ah
mov dx,SI
int 21h

mov ah,09h
lea dx,s3
int 21h

mov ah,09h
lea dx,s5
int 21h

mov ah,09h
lea dx,arr2+2
int 21h

mov ah,4ch
int 21h
end start