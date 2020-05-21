BITS 64
section .text
global strchr

strchr:
    mov rax, 0
    cmp rdi, 0
    je return

loop:
    cmp byte[rdi], 0
    jz endstr
    cmp byte[rdi], sil
    je match
    inc rdi
    jmp loop

endstr:
    mov rax, 0
    jmp return

match:
    mov rax, rdi
    jmp return

return:
    ret