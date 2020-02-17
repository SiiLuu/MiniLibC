;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global rindex:function
        rindex:
            xor rax, rax

            .start:
            cmp BYTE [rdi], 0x0
            jz short .end
            cmp BYTE [rdi], sil
            jz short .occ
            inc rdi
            jmp .start

            .occ:
            mov rax, rdi
            inc rdi
            jmp .start

            .end:
            ret