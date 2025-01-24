;   Implement loops in assembly
;   Komolehin Israel


section .data

    EXIT_SUCCESS    equ 0
    SYS_EXIT        equ 60

    destination db 17   ;   iterate from 0 to 17
    value       db 0    ;   initial value
    counter     db 0
    
section .text
    global _start

_start:
   
    ;   mov counter into rcx
    ;   mov rcx into rax
    ;   mov rax into value
    ;   increment rcx
    ;   compare rcx to destination
    ;   jmp to start if not equal

    ;   ------------------------------------
    mov cl, byte [destination]      ;   8 bits of rcx
    mov rbx, 1                      ;   Initial value

;   iterate downward from destination - 0
_loop:
    mov rax, rbx                    ;   mov rbx into rax
    mov byte [value], al            ;   mov 8 bits of rax into value
    inc rbx                         ;   increament rbx 
    loop _loop  ;   ------ Implies  ; dec rcx 
                ;   ------ these 3  ; cmp rcx, 0
                ;   ------ lines    ; jne _loop                
                                    


;   iterate upwared from 0 - destination
;     mov rcx, 0
;     mov rbx, 1

; _loop:
;     mov rax, rbx
;     mov byte [value], al
;     inc rbx
;     inc rcx 
;     cmp cl, byte [destination]
;     jne _loop

last
    mov rax, SYS_EXIT           ;   call code for exit
    mov rdi, EXIT_SUCCESS       ;   exit with success
    syscall