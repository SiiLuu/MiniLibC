;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strchr:function

        strchr:
            xor rax, rax
            mov rax, rdi

            .start:
            cmp BYTE [rax], 0x0
            jz short .notfound
            cmp BYTE [rax], sil
            jz short .end
            inc rax
            jmp short .start

            .notfound:
            xor rax, rax
            ret

            .end:
            ret