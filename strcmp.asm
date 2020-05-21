BITS 64

section .text

global strcmp

strcmp:
    mov rax, 0

loop:
    mov r10b, byte[rdi]
    mov r11b, byte[rsi]
    cmp r10b, 0
    je endstr
    cmp r11b, 0
    je endstr
    cmp r10b, r11b
    jg max
    jl min
    inc rdi
    inc rsi
    jmp loop

endstr:
    mov r10b, byte[rdi]
    mov r11b, byte[rsi]
    cmp r10b, 0
    jz endstr2
    mov rax, 1
    jmp return

endstr2:
    cmp r11b, 0
    jz endstr3
    mov rax, -1
    jmp return

endstr3:
    mov rax, 0
    jmp return

min:
    mov rax, -1
    jmp return

max:
    mov rax, 1
    jmp return

return:
    ret