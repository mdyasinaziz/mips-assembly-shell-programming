.MODEL SMALL
 
.STACK 100H

.DATA 

string db 'this is a test'


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here 

mov si, offset string
mov cx, 14 ;length of the string

l1:
mov bx, [si]
push bx
inc si
loop l1

mov cx, 14 ;lenght of the string

l2:
pop dx
mov ah,2 
int 21h
loop l2





 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



