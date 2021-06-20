.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Yes Vowel ! $" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 8--------

mov ah,1
int 21H


cmp AL, 'A'
JE Task8yes   

cmp AL, 'E'
JE Task8yes

cmp AL, 'I'
JE Task8yes

cmp AL, 'O'
JE Task8yes

cmp AL, 'U'
JE Task8yes     

cmp AL, 'a'
JE Task8yes   

cmp AL, 'e'
JE Task8yes

cmp AL, 'i'
JE Task8yes

cmp AL, 'o'
JE Task8yes

cmp AL, 'u'
JE Task8yes
      
JMP End_If      



Task8yes:
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