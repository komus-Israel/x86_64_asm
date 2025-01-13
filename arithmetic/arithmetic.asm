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

section .text
    global _start 

_start:
    ; mov al, byte [bVal1]
    ; add al, byte [bVal2]
    ; mov byte [bAns], al 

    ; mov al, 1
    ; mov rdi, 1
    ; mov rsi, bVal1
    ; mov rdx, 255
    ; syscall

last:
    ; mov rax, 60
    ; mov rdi, 0
    ; syscall
