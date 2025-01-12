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


;   perfrom the following basic operation using <mov>:
;   --------------------------------------------------
;   dValue  =   27
;   bAns    =   bNum
;   wAns    =   wNum
;   dAns    =   dNum
;   qAns    =   qNum
_start:
    ;   dValue  =   27
    mov dword   [dValue], 27

    ;   bAns    =   bNum
    mov al, byte [bNum]     ;   move data to register
    mov byte [bNum], al     ;   move data to destination

    ;   wAns    =   wNum
    mov ax, word [wNum]     ;   move data to register
    mov word [wAns], ax     ;   move data to destination

    ;   dAns    =   dNum
    mov eax, dword [dNum]   ;   move data to register
    mov dword [dAns], eax   ;   move data to destination

    ;   qAns    =   qNum
    mov rax, qword [qNum]   ;   move data to register
    mov qword [qAns], rax   ;   move data to destination
last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall
