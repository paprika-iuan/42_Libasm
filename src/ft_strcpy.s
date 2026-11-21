
section .text
global ft_strcpy

; rsi for pointer to memmory allocated by programmer.
; rdi for src string

ft_strcpy:
    xor ecx, ecx
    loop_start:
        cmp [rdi + rcx], 0
        je loop_end
        mov dl, [rdi + rcx]
        mov [rsi + rcx], dl
        inc rcx
        jmp loop_start
    loop_end:
        mov rax, [rsi + 0]
        ret