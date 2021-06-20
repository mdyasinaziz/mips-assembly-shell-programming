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


;--------Task 6--------

mov ah,1
int 21H


cmp AL, 'Y'
JE Task2yes
cmp AL, 'y'
JE Task2yes
JMP End_If


Task2yes:
mov Dl,al
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h  
JMP End_If

Task1no:
mov Dl,al
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h  

  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    
    
;-----Task 6 End-------    
    

;JA, JB | JG, JL | JMP                     
;AL=5
;BL=2          
;cmp AL, BL          
;JG Block1
;some code here
;Block1: print (''); 

;mov ah,1
;int 21H

;cmp AL, 'A'
;JNGE End_If
;cmp AL, 'Z'
;JNLE End_If

;mov dl,al
;mov ah,2
;int 21h    
  
;End_If:  
;LEA DX,m1
;mov AH,9
;int 21h


