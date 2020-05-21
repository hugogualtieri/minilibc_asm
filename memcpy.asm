BITS 64

section .text

global memcpy

memcpy:
    mov rax, 0

loop:
    cmp rax, rdx
    je return
    mov r11b, byte[rsi + rax]
    mov [rdi + rax], r11b
    inc rax
    jmp loop

return:
    mov rax, rdi
    ret