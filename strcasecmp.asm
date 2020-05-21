BITS 64

section .text

global strcasecmp

strcasecmp:
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
    add r10b, 32
    cmp r10b, r11b
    je goLoop
    jg returnMax
    jl returnMin

max:
    add r11b, 32
    cmp r10b, r11b
    je goLoop
    jg returnMax
    jl returnMin

returnMin:
    mov rax, -1
    jmp return

returnMax:
    mov rax, 1
    jmp return

goLoop:
    inc rdi
    inc rsi
    jmp loop

return:
    ret