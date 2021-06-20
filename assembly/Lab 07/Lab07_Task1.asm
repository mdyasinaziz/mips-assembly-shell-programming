.MODEL SMALL
 
.STACK 100H

.DATA

msg1 db 'enter elements: $'
msg2 db 'after sorting: $'
arr db 100 dup (0) 


.CODE 
MAIN PROC 

;iniitialize DS

MOV AX,@DATA 
MOV DS,AX 
mov ah, 9
 
; enter your code here

lea dx, msg1
int 21h
xor cx,cx
mov ah,1
int 21h
xor si,si
while_:
  cmp al, 0dh
  je end_while
  mov arr[si],al
  inc si
  inc cx
  mov ah,2
  mov dl, ' '
  int 21h
  mov ah,1
  int 21h
jmp while_

end_while:
  mov ah,2
  mov dl, 0dh
  int 21h
  mov dl, 0ah
  int 21h

jcxz exit
  lea si, arr
  mov bx, cx

call bubble_sort
  
  mov ah,9
  lea dx,msg2
  int 21h
  xor si,si
  top:
     mov ah,2
     mov dl, arr [si]
     int 21h
     mov dl, ' '
     int 21h
     inc si
     loop top
     
exit:
mov ah,4ch
int 21h
main endp


bubble_sort proc
    
    push ax
    push bx
    push cx
    push dx
    push di
    
    mov ax,si
    mov cx, bx
    dec cx
    
@outer_loop:
    mov bx,cx
    mov si,ax
    mov di,ax
    inc di
    @inner_loop:
    mov dl, [si]
    cmp dl, [di]
     jng @skip_exchange
     
     xchg dl, [di]
     mov [si], dl
     @skip_exchange:
     inc si
     inc di
     dec bx
     
  jnz @inner_loop
  loop @outer_loop
  
  pop di
  pop dx
  pop cx
  pop bx
  pop ax
  
  ret
  
  bubble_sort endp

    
  END MAIN






 

;exit to DOS 
               
;MOV AX,4C00H
;INT 21H 

;MAIN ENDP
;   END MAIN 
  



