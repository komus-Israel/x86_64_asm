;   Implement data movement 
;   mov <dest> , <src>
;   ***********************************************

section .data  ; <variable name> <type> <value>

    ;   ---------
    ;   Define contants
    EXIT_SUCCESS equ 0  ;   successful operation
    SYS_EXIT equ 60     ;   call code to terminate


    ;   ---------
    ;   Byte (8 bits) variable initializations

    bVar1   db  17
    bvar2   db  9
    bResult db  0

    
    
    dValue dd 0; define double word (32 bits)
    wNum dw 5000; define word (16 bits)
    
section .text
    global _start

    


