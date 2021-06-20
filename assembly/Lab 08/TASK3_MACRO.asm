.MODEL SMALL
    
    
DISPLAY MACRO VAR1
    
    MOV AH,9
    LEA DX,VAR1
    INT 21H

ENDM   
 

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



ASSUME CS:CODE,DS:DATA
START:
        MOV AX,DATA
        MOV DS,AX                
               
        DISPLAY MSG1
                    
        DISPLAY STR1
                       
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
       
        DISPLAY MSG2
                   
        DISPLAY STR2


 

               
MOV AX,4C00H
INT 21H 

MAIN ENDP
END MAIN 
  



