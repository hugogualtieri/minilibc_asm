BITS 64

section .text

global memset

memset:
    mov rax, 0

loop:
    cmp rax, rdx
    je return
    mov [rdi + rax], sil
    inc rax
    jmp loop

return:
    mov rax, rdi
    ret