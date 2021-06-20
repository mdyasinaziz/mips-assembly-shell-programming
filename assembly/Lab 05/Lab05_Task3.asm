.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db "*$" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


mov ah,7
   int 21h
   int 21h
   int 21h
   int 21h
   int 21h
mov ah,2
mov dl,0dh
int 21h
mov cx,5
label:
   mov dl, 'X'
   int 21h
loop label


        
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
