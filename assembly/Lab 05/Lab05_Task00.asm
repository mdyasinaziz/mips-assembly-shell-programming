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


mov cx,5 
mov dl,30h
mov ah,2
start:
int 21h
inc dl
loop start


;this program is for "dl will incream ent till 5 bc bound is cx=5"
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
