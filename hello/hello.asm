section .data;  where data is defined before compilation
    ;   db: define bytes
    ;   "Hello world": defined bytes
    ;   Each character in the string is a bytes
    ;   10: a newline characte
    ;   text: variable name 
    text1 db "What is your name? ", 10
    text2 db "Hello, "

section .bss
    name resb 16

section .text;  text section is where the actual code goes
    global _start

_start: ; entry point of the program. Essential for all programs
    call _printText1
    call _getName
    call _printText2
    call _printName


    mov rax, 60; syscall (sys_exit)
    mov rdi, 0; no error code
    syscall

_printText1:
    mov rax, 1; syscall id (sys_write)
    mov rdi, 1; id for standard output
    mov rsi, text1
    mov rdx, 19
    syscall
    ret

_printText2:
    mov rax, 1; syscall id (sys_write)
    mov rdi, 1; id for standard output
    mov rsi, text2
    mov rdx, 7
    syscall
    ret

_printName:
    mov rax, 1; syscall id (sys_write)
    mov rdi, 1; id for standard output
    mov rsi, name
    mov rdx, 16
    syscall
    ret

_getName:
    mov rax, 0; syscall id (sys_read)
    mov rdi, 0;  id for standard input
    mov rsi, name
    mov rdx, 16
    syscall
    ret