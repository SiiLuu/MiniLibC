;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strcspn:function

        strcspn:
            xor dl, dl
            xor rcx, rcx
            mov rax, rdi
            mov rcx, rsi

            .start:
            cmp BYTE [rcx], 0x0
            jz short .incr
            cmp BYTE [rax], 0x0
            jz short .end
            mov dl, BYTE [rax]
            cmp BYTE [rcx], dl
            jz short .end
            inc rcx
            jmp .start

            .incr:
            xor rcx, rcx
            mov rcx, rsi
            inc rax
            jmp short .start

            .end:
            sub rax, rdi
            ret