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


mov ax,3
mov cx,2
mov dx,0
label:
add ax, dx
dec cx
cmp cx,0
jne label


        
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
