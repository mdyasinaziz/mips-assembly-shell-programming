.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Even$" 
m2 db " Odd$"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 7--------

mov ah,1
int 21H



;in byte division divident is 16 bit and must be in AX
;Ah and AL - 8 bit remainder and answer/qoutient  
     
mov ax, ax
mov bl, 2 
div bl

cmp ah, 0

JE Task7Yes
JNE Task7NO

Task7Yes:
LEA DX,m1
mov AH,9
int 21h 
JMP End_If 

Task7NO:
LEA DX,m2
mov AH,9
int 21h 


  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    
    
;-----Task 7 End-------   












;cmp AL, 'Y'
;JE Task2yes
;cmp AL, 'y'
;JE Task2yes
;JMP End_If
;
;
;Task2yes:
;mov Dl,al
;mov AH,2             ;single char out - ah,2    string out - ah,9
;int 21h  
;JMP End_If
;
;Task1no:
;mov Dl,al
;mov AH,2             ;single char out - ah,2    string out - ah,9
;int 21h  




 
    

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



  

