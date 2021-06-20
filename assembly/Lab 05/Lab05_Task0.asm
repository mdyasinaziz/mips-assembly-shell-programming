.MODEL SMALL
 
.STACK 100H

.DATA 

m1 db " Yes$" 
m2 db " NO$"

.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here



;mov ah,1
;int 21H


mov ah,2
mov dl,30h ;the emu8086 uses hexadecimal. 30h is 0
start:
cmp dl,35h ;the emu8086 uses hexadecimal. 35h is 5
jge end
int 21h
inc dl
jmp start
end:


;This programm is for "dl gets increamented, when it's 5 or greater (jge) ends"


  
     
     
     
End_If:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
