BITS 64
section .text
global strlen

strlen:
    mov rax, 0
    cmp rdi, 0
    je return

loop:
    cmp byte[rdi + rax], 0
    jz return
    inc rax
    jmp loop

return:
    ret