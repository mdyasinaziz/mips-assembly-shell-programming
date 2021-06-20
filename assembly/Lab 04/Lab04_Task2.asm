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


;--------Task 2--------

;mov ah,1
;int 21H
mov al, 56h       ;56h is V
mov bl, 59h       ;59h is Y          

cmp al, bl  
 
JLE yes

JG no


yes:
mov Dl,al
mov AH,2            
int 21h  

no:
mov Dl,bl
mov AH,2            
int 21h  
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN 
    
    
    
    
    
    
    
;--------Task 2 End--------  