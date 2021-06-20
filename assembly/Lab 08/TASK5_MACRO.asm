.MODEL SMALL
 
DISPLAY MACRO VAR1
    
    MOV AH,9
    LEA DX,VAR1
    INT 21H

ENDM  

.DATA 

m1 db " Max Number is $" 

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here

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
DISPLAY m1
mov Dl,bl
mov AH,2      
int 21h  
JMP End_If  

clisbig:
cmp cl,dl
JG clisbig2
JL dlisbigg

clisbig2:
DISPLAY m1
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
DISPLAY m1
mov DL,DL
mov AH,2      
int 21h 




  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN  