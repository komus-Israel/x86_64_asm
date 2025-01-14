;   Implement jump and loop
;   -----------------------------
;   Komolehin Israel
;   -----------------------------

;   Instruction
;   -----------------------------
;   Find the sum of squares from 1 to n

section .data
    ;   ------
    ;   Define contants
    EXIT_SUCCESS    equ 0   ;   successful operation
    SYS_EXIT        equ 60  ;   call code to terminate

    n               dd  10  ;   n is 10 in this case
    sum_of_squares  dq  0

section .text
    global _start

_start:

    ;   ---------------
    ;   Approach
    ;   for (i=1; i<=n; i++)
    ;       sum_of_squares += i^2



last:
    mov rax, SYS_EXIT           ;   call code for exit
    mov rdi, EXIT_SUCCESS       ;   exit with success
    syscall