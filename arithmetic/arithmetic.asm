;   Arithmetic operation
;   ***************************************************************
;   Komolehin Israel

section .data
    bVal1   db 50
    bVal2   db 60
    bAns    db 0

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
