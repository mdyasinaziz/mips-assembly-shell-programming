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



;mov ah,1
;int 21H


mov cx,49
mov bx,1
mov ax,1


start:
add bx,3
add ax,bx
loop start  


mov cx,19
mov bx,5
mov ax,5


start:
add bx,5
add ax,bx
loop start



  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
