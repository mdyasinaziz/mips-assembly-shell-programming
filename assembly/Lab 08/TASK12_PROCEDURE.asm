.MODEL SMALL
 
.STACK 100H

.DATA 

A DW "Machine Language is so fun :3$" 

    STR1 DB "MAHESH$"
    STR2 DB 7 DUP ('$')
    MSG1 DB 10,13,'STORED STRING IN MEMORY IS : $'
    MSG2 DB 10,13,'REVERSE STRING IS : $'

.CODE 
MAIN PROC 


MOV AX,@DATA 
MOV DS,AX 
 


CALL PRINT_STRING


 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP

PRINT_STRING PROC
    
ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX                
               
            MOV AH,9
    LEA DX,MSG1
    INT 21H
                    
            MOV AH,9
    LEA DX,STR1
    INT 21H
                       
        LEA SI,STR2
        LEA DI,STR1
        ADD DI,5
               
        MOV CX,6
REVERSE:
        MOV AL,[DI]
        MOV [SI],AL
        INC SI
        DEC DI
        LOOP REVERSE
       
            MOV AH,9
    LEA DX,MSG2
    INT 21H
                    
            MOV AH,9
    LEA DX,STR2
    INT 21H
        
         
    
    
PRINT_STRING ENDP

END MAIN 
  



