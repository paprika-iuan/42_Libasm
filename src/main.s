section .data
s:
    db  `Ella se vuelve loca ca ca\n`, 0

section .text
global _start

extern ft_strlen
; rdi, rsi, rdx

_start:
    mov rdi, s
    call ft_strlen
    mov rdx, rax
    mov rax, 1
    mov rdi, 1
    mov rsi, s
    syscall
    mov rax, 60
    mov rdi, 0
    syscall



