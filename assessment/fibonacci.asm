;   Fibonacci Sequence
;   ---------------------------
;   Komolehin Israel
;   ---------------------------


section .data

    SYS_EXIT        equ 60
    EXIT_SUCCESS    equ 0

    f_n     dq  0;      define (f(n)) as quadword (64 bits)
    f_n_1   dq  0;      define (f(n-1)) as quadword (64 bits)
    f_n_2   dq  0;      define (f(n-2)) as quadword (64 bits)


section .text
    global _start

_start:

last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall