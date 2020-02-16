;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strcmp
        strcmp:

            xor cl, cl
            xor dl, dl

            .start:
            cmp BYTE [rdi], 0x0
            jz short .verifsec
            cmp BYTE [rsi], 0x0
            jz short .veriffirst
            cmp cl, dl
            jne .end
            add cl, BYTE [rdi]
            add dl, BYTE [rsi]
            inc rdi
            inc rsi
            jmp .start

            .verifsec:
            cmp BYTE [rsi], 0x0
            jz short .end
            sub dl, BYTE [rsi]
            jmp short .end

            .veriffirst:
            cmp BYTE [rdi], 0x0
            jz short .end
            sub dl, BYTE [rdi]
            jmp short .end

            .end:
            sub cl, dl
            movsx rax, cl
            ret