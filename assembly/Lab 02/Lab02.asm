.MODEL SMALL
 
.STACK 100H

.DATA  
; declare variables here



var_a db 23h    
var_c db ?
var_b dw 4567h
 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
 
; enter your code here  

  
;Task 2              
mov al,5
mov bl,10
mov ah,al
mov al,bl
mov bl,ah 


;Task 5
mov al,5
mov bl,10
mov cl,al
mov dl,bl
sub al,cl
add al,dl
sub bl,dl
add bl,cl   


;Task 8 of 4. C2A2 * ABCD / BED 
      
;in byte division divident is 16 bit and must be in AX
;Ah and AL - 8 bit remainder and answer/qoutient  
     
mov ax, 0C2A2h
mov cx, 0ABCDh
mul cx                 
              

mov bx, 0BEDh
div bx   


;Task 8 of 2. 8A32F4D5 / C9A5                

;in word division divident is 32 bit and must be in DX:AX
;DX and AX - 16 bit remainder and answer/qoutient

mov dx, 08A32h
mov ax, 0F4D5h
mov bx, 0C9A5h
div bx   
    





               
                
                
                
mov al,34h 
mov ah,57h

mov [1232h],ah   ;move ah to the location
mov bl, [1232h]  ;move contents of ah to bl

mov cl, var_a    ;move var_a to cl
mov var_c, cl    ;move cl to var_c  


;addition 

mov al,3
mov bl,4
add bl,al

;sub al,1
;inc al
;dec al
;neg al

;;multiplication
;multiply 3,5  

mov al, 03
mov bl, 05
mul bl   

        ;in byte multipl. one number is in the sourece 
        ;and other has to be in the AL. result is saved in AX      
        
        ;in word multipl. one in is source another in AX
        ;answer stored in dx - hogh , ax - low part.
mov ax, 1234h
mov bx, 223h
mul bx  



;in byte division divident is 16 bit and must be in AX
;Ah and AL - 8 bit remainder and answer/qoutient

;in word division divident is 32 bit and must be in DX:AX
;DX and AX - 16 bit remainder and answer/qoutient


mov ax, 21h
mov bl, 04h
div bl




 

;exit to DOS 
               
MOV AX,4C00H
INT 21H 

MAIN ENDP
    END MAIN 
  



