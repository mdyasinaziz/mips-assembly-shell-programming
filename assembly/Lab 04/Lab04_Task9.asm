.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Yes Divisible$" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 9--------


mov ax, 55    ;number to test


mov ax, ax
mov bl, 5 
div bl
cmp ah, 0
JE Task9Yes   
JMP End_If  


Task9Yes:  
mov bl, 11 
div bl
cmp ah, 0
JE Task9Yes2
JMP End_If 


Task9Yes2:
LEA DX,m1
mov AH,9
int 21h 
JMP End_If 


  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    
    
;-----Task 9 End-------   