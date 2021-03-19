.model small
.data
Var db 03h,05h,02h,01h,08h,04h

.code
start:
mov ax,@data
mov ds,ax
mov cl,06h

Label2:
lea si,var
mov dl,05h

Label3:
mov ah,[si]
cmp ah,[si+1]
jnc label1

mov dh,[si+1] 
mov [si+1],ah 
mov [si],dh

Label1:
inc si
dec dl
jnz label3
dec cl
jnz label2

mov ah,4ch
int 21h
end start