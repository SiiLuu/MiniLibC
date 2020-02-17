;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strstr

        strstr:
            xor dl, dl
            xor rcx, rcx

            .start:
            cmp BYTE [rdi], 0x0
            jz short .end
            mov dl, BYTE [rsi]
            cmp BYTE [rdi], dl
            jz short .check
            inc rdi
            jmp .start

            .check:
            inc rcx
            inc rdi
            inc rsi
            mov dl, BYTE [rsi]
            cmp BYTE [rdi], dl
            jz short .check
            cmp BYTE [rsi], 0x0 
            jz short .return
            jmp short .start

            .return:
            cmp rcx, 0
            jz short .end
            dec rcx
            dec rdi
            jmp short .return

            .end:
            mov rax, rdi
            ret