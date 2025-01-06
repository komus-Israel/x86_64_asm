section .data;  where data is defined before compilation
    ;   db: define bytes
    ;   "Hello world": defined bytes
    ;   Each character in the string is a bytes
    ;   10: a newline characte
    ;   text: variable name 
    text db "Hello, world!", 10

section .text;  text section is where the actual code goes
    global _start

_start: ; entry point of the program. Essential for all programs
    mov rax, 1; syscall id (sys_write)
    mov rdi, 1; id for standard output
    mov rsi, text
    mov rdx, 14
    syscall

    mov rax, 60; syscall (sys_exit)
    mov rdi, 0; no error code
    syscall