.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Ooooooo$" 
m2 db " Eeeeeee$"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 5--------

         ;41h 5Ah
mov al, 59h   ;59h is Y

cmp al, 41h  
JGE check1    
  

check1:  

cmp al, 5Ah  
JLE check2  
JMP End_If 

check2:     
mov Dl,al
mov AH,2             
int 21h  

     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   