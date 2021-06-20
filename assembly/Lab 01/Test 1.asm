.MODEL SMALL
 
.STACK 100H

.DATA 


;variables, char, array, strings, all declarations


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here     


mov al, 16                ;moves decimal 5 to register AL
;mov al, 8h               ;same sh
;mov al, 1011b            ;ykwim
                          ;AH ... or ... AL






 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  
