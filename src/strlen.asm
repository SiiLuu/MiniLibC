;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strlen:function

        strlen:
            mov rax, rdi
            .start:
            cmp BYTE [rax], 0x0
            jz short .end
            inc rax
            jmp short .start
            .end:
            sub rax, rdi
            ret