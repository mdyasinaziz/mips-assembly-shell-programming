.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " MaxNumberis: $" 

.CODE 
MAIN PROC 


MOV AX,@DATA 
MOV DS,AX 
 


CALL PRINT_STRING


 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP

PRINT_STRING PROC
    
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
    
PRINT_STRING ENDP

END MAIN 
  



