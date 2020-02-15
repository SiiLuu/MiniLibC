;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global memcpy

        memcpy:
            xor rcx, rcx
            xor bh, bh
            .start:
            cmp rcx, rdx
            jz short .end
            mov bh, BYTE [rsi + rcx]
            mov BYTE [rdi + rcx], bh
            inc rcx
            jmp short .start
            .end:
            mov rax, rdi
            ret