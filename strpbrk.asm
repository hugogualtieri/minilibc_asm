BITS 64

section .text

global strpbrk

strpbrk:
    mov rax, 0
    mov rbx, 0

loop:
    cmp byte[rdi], 0
    je endstr
    jmp rsiLoop

rsiLoop:
    cmp byte[rsi + rbx], 0
    je goLoop
    mov r11b, byte[rsi + rbx]
    cmp byte[rdi], r11b
    je match
    inc rbx
    jmp rsiLoop

goLoop:
    mov rbx, 0
    inc rdi
    jmp loop

match:
    mov rax, rdi
    jmp return

endstr:
    mov rax, 0
    jmp return

return:
    ret