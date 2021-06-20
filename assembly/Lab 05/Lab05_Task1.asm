.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db "*$" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here



;mov ah,1
;int 21H


mov cx,80 
mov bl,0
mov ah,9
start:
inc bl
LEA DX,m1
int 21h
loop start


;this program is for "dl will incream ent till 5 bc bound is cx=5"
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
