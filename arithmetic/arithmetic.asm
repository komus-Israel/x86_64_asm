;   Arithmetic operation
;   ***************************************************************
;   Komolehin Israel

section .data

    ;   ------------------
    ;   Define constants
    EXIT_SUCCESS equ 0  ;   successful operation
    SYS_EXIT equ 60     ;   call code to terminate

    ;   ------------------
    ;   Define byte (8 bits)
    bNum1   db  42
    bNum2   db  73
    bAns    db  0

    ;   ------------------
    ;   Define word (16 bits)
    wNum1   dw  4321
    wNum2   dw  1234
    wAns    dw  0

    ;   ------------------
    ;   Define double word (32 bits)
    dNum1   dd  42000
    dNum2   dd  73000
    dAns    dd  0

    ;   ------------------
    ;   Define quad word (64 bits)
    qNum1   dq  42000000
    qNum2   dq  73000000
    qAns    dq  0

section .text
    global _start 


;   perfrom the following basic operations:
;   ---------------------------------------
;   bAns = bNum1 + bNum2
;   wAns = wNum1 + wNum2
;   dAns = dNum1 + dNum2
;   qAns = qNum1 + qNum2
_start:

    ;   bAns = bNum1 + bNum2
    mov al, byte [bNum1]
    add al, byte [bNum2]
    mov byte [bAns], al

    ;   wAns = wNum1 + wNum2
    mov ax, word [wNum1]
    add ax, word [wNum2]
    mov word [wAns], ax

    ;   dAns = dNum1 + dNum2
    mov eax, dword [dNum1]
    add eax, dword [dNum2]
    mov dword[dAns], eax

    ;   qAns = qNum1 + qNum2
    mov rax, qword [qNum1]
    add rax, qword [qNum2]
    mov qword[qAns], rax

 

last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall
