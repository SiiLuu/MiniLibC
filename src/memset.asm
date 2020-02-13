;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global memset

        mmemset:
            xor rcx, rcx
            .start:
            cmp rcx, rdx
            jz short .end
            mov BYTE [rdi + rcx], sil
            inc rcx
            jmp short .start
            .end:
            mov rax, rdi
            ret