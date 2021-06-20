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

mov ah,2
mov cl,0
mov dl, 80h
mov bl, 80h

while:
   mov dl,bl
   int 21h
   cmp dl,0ffh
   je exit
   inc dl
   mov bl,dl
   mov dl,20h
   int 21h
   inc cl
   cmp cl,10
   je line
   mov dl,bl
   jmp while
   
   line:
      mov dl,0ah
      int 21h
      mov dl,0dh
      int 21h
      mov cl,0
      jmp while
      

     
     
exit:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
