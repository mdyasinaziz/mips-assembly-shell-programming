Data Segment
    arrprime db 20 dup (?)
    i db 02h
Data Ends

PRINT MACRO MSG
add dl,48
mov ah, 2 
int 21h
ENDM

Code Segment
    Assume cs:code, ds:data
Begin:   
    mov ax, data
    mov ds, ax
    mov es, ax

    mov dl, 01h
    mov cx, 10h
    lea di, arrprime
    
    L1:
       mov bl, 02
       add dl, 01h

       cmp dl, 02h
       je Insert
       cmp dl, 03h
       je Insert
       cmp dl, 04h
       jge Logic

    Logic:
          mov ah, 00
          mov al, dl
          div bl
          cmp ah, 00
      je L1
          add bl, 01h
          cmp bl, al  
          jle Logic
      jmp insert

    Insert:
       mov [di], dl
       PRINT MSG 
       inc di
       loop L1

    Exit:
       mov ax, 4c00h
       int 21h
Code Ends