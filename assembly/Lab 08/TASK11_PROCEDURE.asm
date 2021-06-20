.MODEL SMALL
 
.STACK 100H

.DATA 

A DW "MACHINE LANGUAGE IS FUN$"

.CODE 
MAIN PROC 


MOV AX,@DATA 
MOV DS,AX 
 


CALL PRINT_STRING


 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP

PRINT_STRING PROC
    
MOV CX, 04H    ;input to CX
MOV AX, 0001	
MOV DX, 0000
L1: 
MUL CX
LOOP L1
MOV [0600], AX	
MOV [0601], DX ;output stored in al & ah. 
 
mov Dl,[0601]
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h

mov Dl,[0600]
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h 
    
    
PRINT_STRING ENDP

END MAIN 
  



