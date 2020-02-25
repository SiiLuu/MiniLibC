;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strcasecmp:function

        strcasecmp:
            xor cl, cl
            xor dl, dl

            .start:
            cmp BYTE [rdi], 0x0
            jz short .verifsec
            cmp BYTE [rsi], 0x0
            jz short .veriffirst
            add cl, BYTE [rdi]
            add dl, BYTE [rsi]
            cmp cl, dl
            jne short .up
            inc rdi
            inc rsi
            jmp short .start

            .up:
            cmp BYTE [rdi], 65
            jl short .end
            cmp BYTE [rdi], 122
            jg short .end
            cmp BYTE [rsi], 65
            jl short .end
            cmp BYTE [rsi], 122
            jg short .end

            add dl, 32
            cmp cl, dl
            jne short .lower
            inc rdi
            inc rsi
            jmp short .start

            .lower:
            sub dl, 32
            add cl, 32
            cmp cl, dl
            jne short .not
            inc rdi
            inc rsi
            jmp short .start

            .not:
            add dl, 32
            sub cl, 32
            jmp short .end

            .verifsec:
            cmp BYTE [rsi], 0x0
            jz short .end
            add dl, BYTE [rsi]
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