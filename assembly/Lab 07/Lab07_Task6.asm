.MODEL SMALL
 
.STACK 100H

.DATA 


.CODE 
MAIN PROC 

;iniitialize DS

;MOV AX,@DATA 
;MOV DS,AX 
 
   mov ax, 122d
   push ax
   mov ax, 49d
   push ax
   
   pop bx
   mov dx, bx
   mov ah,2
   int 21h
   pop bx
   mov dx, bx
   int 21h





 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



