
section .text
global ft_strlen

ft_strlen:
    mov rcx, 0
    loop_start:
        mov sil, [rdi + rcx]
        cmp sil, 0
        je  loop_end
        inc rcx
        jmp loop_start
    loop_end:
        mov rax, rcx
        ret