;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strcspn

        strcspn:
            xor dl, dl
            mov rax, rdi

            .start:
            cmp BYTE [rsi], 0x0
            jz short .end
            cmp BYTE [rax], 0x0
            jz short .incr
            mov dl, BYTE [rsi]
            cmp BYTE [rax], dl
            jz short .end
            inc rax
            jmp short .start
            
            .incr:
            xor rax, rax
            mov rax, rdi
            inc rsi
            jmp short .start

            .end:
            sub rax, rdi
            ret