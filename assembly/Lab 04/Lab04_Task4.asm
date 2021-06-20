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


;--------Task 4--------


mov al, 4

cmp al, 1  
JE found1or3     

cmp al, 3
JE found1or3

cmp al, 2
JE found2or4     

cmp al, 4
JE found2or4


found1or3:
LEA DX,m1
mov AH,9
int 21h  
JMP End_If

found2or4:
LEA DX,m2
mov AH,9
int 21h
mov al, 5
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   