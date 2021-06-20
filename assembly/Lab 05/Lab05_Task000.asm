.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Yes$" 
m2 db " NO$"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here



;mov ah,1
;int 21H

repeat:
mov ah,1
int 21h
mov ah,2
mov dl,al
int 21h
cmp al,' '
jne repeat

; this program is for "when we input a space it ends"
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
