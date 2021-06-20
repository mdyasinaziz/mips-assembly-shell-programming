.MODEL SMALL
 
.STACK 100H

.DATA 

ms1  db 0ah, 0dh, "Enter a hex char ?"
ch1  db ?
ch2  db ?
ms222  db 0ah, 0dh, "In Decimal It Is: "
ch3  db ?, "$"
ms3  db 0ah, 0dh, "In Decimal It Is: 1"
c2   db ?, "$"
ms4  db 0ah, 0dh, "do you want to check more?", 0ah, 0dh, "here y for yes, n for no"
c3   db ?,"$"
ms5  db 0ah,0dh, "Invalid input$"


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
MOV ES,AX
 
; enter your code here

repeat:
   mov ah,9
   lea dx, ms1
   int 21h
   
   ;read a char.
   mov ah,1
   int 21h
   mov ch1,al
   
   ;checking hex char
   cmp ch1,39h  ;9
   jbe dig
   
   cmp ch1, 46h  ;F
   jbe character
   
   mov ah,9
   lea dx, ms5
   int 21h
   jmp repeat
   
   
input:
     ; if again input
     mov ah,9
     lea dx, ms4
     int 21h
     mov ah,1
     int 21h
     mov c3,al
     cmp c3, 'y'
     je repeat
     cmp c3, 'Y'
     je repeat
     jmp exit
     
     
character:
     ; calc
     sub al,11h
     mov c2,al
     mov ah,9
     lea dx,ms3
     int 21h
     jmp input
     
     dig:
       mov ah,9
       lea dx,ms222
       int 21h
       
       mov ah,2
       mov dl, ch1
       int 21h
       jmp input
       
     
     exit:
       mov ah,4ch
       int 21h
       MAIN ENDP

END MAIN
       
          


      

     
     
exit:
       
MOV AX,4C00H
INT 21H 
;exit to DOS / Program Close Function

MAIN ENDP
    END MAIN   
    

    


                    
