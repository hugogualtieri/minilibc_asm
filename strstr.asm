BITS 64

section .text

global strstr

strstr:
    mov rax, 0
    cmp rdi, 0
    je return
    cmp rsi, 0
    je return

loop:
    cmp byte[rdi], 0
    je returnNull
    mov rax, 0
    jmp firstCheck

firstCheck:
    mov r10b, byte[rdi + rax]
    mov r11b, byte[rsi + rax]
    cmp r10b, 0
    je checkNull
    cmp r11b, 0
    je returnOccur
    cmp r10b, r11b
    je reFirstCheck
    jmp goLoop

reFirstCheck:
    inc rax
    jmp firstCheck

goLoop:
    inc rdi
    jmp loop

checkNull:
    cmp r11b, 0
    je returnOccur
    jmp returnNull

returnNull:
    mov rax, 0
    jmp return

returnOccur:
    mov rax, rdi
    jmp return

return:
    ret