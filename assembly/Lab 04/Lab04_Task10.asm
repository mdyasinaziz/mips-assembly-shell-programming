.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " MaxNumberis: $" 
m2 db " Odd$"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 10--------

mov ah,1
int 21H 
mov bl,al  

mov ah,1
int 21H 
mov cl,al  
  
mov ah,1 
int 21H 
mov dl,al   ;input taking ends


cmp bl,cl
JG blisbig   
JL clisbig

blisbig:
cmp bl,dl
JG blisbig2
JL dlisbig

blisbig2:
LEA DX,m1
mov AH,9
int 21h
mov Dl,bl
mov AH,2      
int 21h  
JMP End_If  

clisbig:
cmp cl,dl
JG clisbig2
JL dlisbigg

clisbig2:
LEA DX,m1
mov AH,9
int 21h
mov Dl,cl
mov AH,2      
int 21h   
JMP End_If  

dlisbig:
cmp dl,cl
JG dlisbig2

dlisbigg:
cmp dl,bl
JG dlisbig2
            
            
dlisbig2:
LEA DX,m1
mov AH,9
int 21h
mov DL,DL
mov AH,2      
int 21h 




  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    
    
;-----Task 10 End-------   












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



  

