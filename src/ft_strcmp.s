
section .text
global ft_strcmp

; We've moved previously str1 to rsi, and str2 rdi

ft_strcmp:
    xor  ecx, ecx
    loop_start:
        mov al, [rdi + rcx]
        cmp al, 0
        je loop_end
        mov dl, [rsi, rcx]
        cmp al, dl
        jne loop_end
        inc rcx
        jmp loop_start
    loop_end:
        mov al, [rdi + rcx]
        mov dl, [rsi, rcx]
        sub al, dl
        movsx rax, al
        ret