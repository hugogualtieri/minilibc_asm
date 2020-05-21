BITS 64

section .text

global strcspn

strcspn:
    mov rax, 0
    mov rbx, 0

loop:
    cmp byte[rdi + rax], 0
    je return
    mov r10b, byte[rdi + rax]
    jmp rsiLoop

rsiLoop:
    cmp byte[rsi + rbx], 0
    je goLoop
    mov r11b, byte[rsi + rbx]
    cmp r10b, r11b
    je return
    inc rbx
    jmp rsiLoop

goLoop:
    mov rbx, 0
    inc rax
    jmp loop

return:
    ret