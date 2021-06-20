.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " i $" 
m2 db " k $" 
m3 db " l $" 
m4 db " m $"   
m5 db " wrong input $" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 12--------


mov al,10

mov bl, 4
mov cl, 7
mov dl, 10  



cmp al, bl
JL task12yes1   

cmp al, cl
JL task12yes2  

cmp al, dl
JL task12yes3

cmp al, dl
JE task12yes4


LEA DX,m5
mov AH,9
int 21h       
JMP End_If      



task12yes1:
LEA DX,m1
mov AH,9
int 21h  
JMP End_If    

task12yes2:
LEA DX,m2
mov AH,9
int 21h  
JMP End_If

task12yes3:
LEA DX,m3
mov AH,9
int 21h  
JMP End_If

task12yes4:
LEA DX,m4
mov AH,9
int 21h  
JMP End_If



  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   