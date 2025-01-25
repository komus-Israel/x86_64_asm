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
    n       dq  10;      term for the fibonacci sequence where n>=0
    
section .text
    global _start

_start:
    mov rax, qword [n]
    cmp rax, 0
    je _set_0_or_1
    cmp rax, 1
    je _set_0_or_1
    cmp rax, 2
    jge _otherwise
    

;   set f_n to be n (f(0) = 0, f(1) = 1)
;   this is called for the above conditions
_set_0_or_1:
    mov qword [f_n], rax

_otherwise:
    mov rcx, [n];     set n as 10, which is destination
    sub rcx, 1;       iteration begins after f(1)

    mov rax, 1              ;   set rax for f(n-1)
    mov qword [f_n_1], rax  ;   set f(n-1)
    mov qword [f_n_2], rbx  ;   set f(n-2)

    jmp _compute_sequence

;   n >= 2
;   f(n) = f(n-1) + f(n-2)
;   ---------------------------------
;   starting with f(2) in the iteration
;   f(2-1) = f(1) = 1
;   f(2-2) = f(0) = 0
;   where f(n-1) > f(n-2)   
_compute_sequence;
    
    add rax, qword [f_n_2];   f(n-1) + f(n - 2)
    mov qword [f_n], rax

    mov rbx, qword [f_n_1]       ;   update register for new f(n-2) value using f(n-1)
    mov qword[f_n_2], rbx        ;   update f(n-2) 
    mov qword[f_n_1], rax        ;   update register for new f(n-1) value using f(n)
    loop _compute_sequence       ;   handle loop counter


last:
    mov rax, SYS_EXIT
    mov rdi, EXIT_SUCCESS
    syscall