.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Saturday $" 
m2 db " Sunday $" 
m3 db " Monday $" 
m4 db " Tuesday $"   
m5 db " Wednesday $"   
m6 db " Thursday $" 
m7 db " Friday $" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 13--------

;mov ah,1
;int 21H 

mov al, 6
 

cmp al, 1
JE w1  

cmp al, 2
JE w2

cmp al, 3
JE w3

cmp al, 4
JE w4

cmp al, 5
JE w5
        
cmp al, 6
JE w6

cmp al, 7
JE w7

     
JMP End_If      



w1:
LEA DX,m1
mov AH,9
int 21h  
JMP End_If    

w2:
LEA DX,m2
mov AH,9
int 21h  
JMP End_If 

w3:
LEA DX,m3
mov AH,9
int 21h  
JMP End_If 

w4:
LEA DX,m4
mov AH,9
int 21h  
JMP End_If 

w5:
LEA DX,m5
mov AH,9
int 21h  
JMP End_If 

w6:
LEA DX,m6
mov AH,9
int 21h  
JMP End_If 

w7:
LEA DX,m7
mov AH,9
int 21h  
JMP End_If 



  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   