.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Yes Triangle$" 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here


;--------Task 11--------    

mov bl,7  
mov cl,10
mov dl,5


add bl,cl
cmp al, dl
JG Task11Yes   
JMP End_If 
  

Task11Yes:  
add bl,dl
cmp al,cl
JG Task11Yes2 
JMP End_If 


Task11Yes2:
add cl,dl
cmp al,bl
JG Task11Yes3 
JMP End_If


Task11Yes3:
LEA DX,m1
mov AH,9
int 21h
mov al, 5 
  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    
    
;-----Task 11 End-------   




