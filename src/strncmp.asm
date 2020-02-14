;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strncmp
        strncmp:

            xor ecx, ecx
            xor bl, bl
            xor cl, cl

            .start:
            cmp BYTE [rdi], 0x0
            jz short .end
            cmp BYTE [rsi], 0x0
            jz short .end
            cmp ecx, edx
            jz short .end

            cmp bl, cl
            jne .end
            add bl, BYTE [rdi]
            add cl, BYTE [rsi]
            inc rdi
            inc rsi
            inc ecx
            jmp .start

            .end:
            sub bl, cl
            movsx rax, bl

            ret