.MODEL SMALL
    
    
PRINT_STRING MACRO VAR1
    
mov Dl,[0601]
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h

ENDM   

PRINT_STRING2 MACRO VAR2
    
mov Dl,[0600]
mov AH,2             ;single char out - ah,2    string out - ah,9
int 21h

ENDM
 
.STACK 100H

.DATA 

A DW "Machine Language is so fun :3$"

.CODE 
MAIN PROC 


MOV AX,@DATA 
MOV DS,AX 



MOV CX, 04H    ;input to CX
MOV AX, 0001	
MOV DX, 0000
L1: 
MUL CX
LOOP L1
MOV [0600], AX	
MOV [0601], DX ;output stored in al & ah. 

  
 

PRINT_STRING A  
PRINT_STRING2 A




 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  



