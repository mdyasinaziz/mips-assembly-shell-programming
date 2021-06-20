.MODEL SMALL
    
    
PRINT_STRING MACRO VAR1
    
    MOV AH, 9
    LEA DX, VAR1
    INT 21H
ENDM
 
.STACK 100H

.DATA 

A DW "Machine Language is so fun :3$"

.CODE 
MAIN PROC 


MOV AX,@DATA 
MOV DS,AX 
 

PRINT_STRING A




 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  



