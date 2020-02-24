;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strstr:function

        strstr:
            xor dl, dl
            xor rcx, rcx

            .start:
            cmp BYTE [rsi], 0x0
            jz short .end
            cmp BYTE [rdi], 0x0
            jz short .notfound
            mov dl, BYTE [rsi]
            cmp BYTE [rdi], dl
            jz short .check
            inc rdi
            jmp .start

            .check:
            inc rcx
            inc rdi
            inc rsi
            cmp BYTE [rsi], 0x0
            jz short .return
            mov dl, BYTE [rsi]
            cmp BYTE [rdi], dl
            jz short .check
            jmp short .start

            .return:
            cmp rcx, 0
            jz short .end
            dec rcx
            dec rdi
            jmp short .return

            .notfound:
            xor rax, rax
            ret

            .end:
            mov rax, rdi
            ret