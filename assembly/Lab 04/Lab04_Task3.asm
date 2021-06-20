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


;--------Task 3--------



mov ax, -5

cmp ax, 0  
 
JL negative

JG positive 

JE equals


negative:
mov BX,-1
JMP End_If

positive:
mov BX,1
JMP End_If 

equals:
mov BX,0 
JMP End_If


     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   