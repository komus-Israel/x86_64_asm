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
    bNum    db  42
    bAns    db  0

    ;   ---------
    ;   Word (16 bits) variable initializations
    wNum    dw  5000
    wAns    dw  0

    ;   ---------
    ;   Double Word (32 bits) variable initializations
    dValue  dd  0
    dNum    dd  73000
    dAns    dd  0

    ;   ---------
    ;   Quad Word (64 bits) variable initializations
    qNum    dq  73000000
    qAns    dq  0

section .text
    global _start

_start:
    mov al, byte [bVar1]
    ; add al, [bVar2]
    ; mov [bResult], al   

last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall
