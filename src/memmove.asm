;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global memmove

        memmove:
            xor bh, bh

            .start:
            cmp rdx, 0
            je .end
            mov bh, BYTE [rsi]
            mov BYTE [rdi], bh
            dec rdx
            inc rsi
            inc rdi
            jmp short .start

            .end:
            mov rax, rdi
            ret