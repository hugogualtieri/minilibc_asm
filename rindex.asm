BITS 64

section .text

global rindex

rindex:
    mov rax, 0
    mov rbx, 0
    cmp rdi, 0
    je  return

loop:
    cmp byte[rdi], 0
    jz endstr
    cmp byte[rdi], sil
    je match
    inc rdi
    jmp loop

endstr:
    mov rax, rbx
    jmp return

match:
    mov rbx, rdi
    inc rdi
    jmp loop

return:
    ret

