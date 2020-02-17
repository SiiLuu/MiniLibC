;
; EPITECH PROJECT, 2020
; ASM_minilibc_2019
; File description:
; ASM
;

BITS 64

section .text
    global strncmp:function

        strncmp:
            xor bl, bl
            xor cl, cl

            .start:
            cmp BYTE [rdi], 0x0
            jz short .verifsec
            cmp BYTE [rsi], 0x0
            jz short .veriffirst
            cmp edx, 0
            jz short .end
            
            add bl, BYTE [rdi]
            add cl, BYTE [rsi]
            cmp bl, cl
            jne .end
            inc rdi
            inc rsi
            dec edx
            jmp .start

            .verifsec:
            cmp BYTE [rsi], 0x0
            jz short .end
            add cl, BYTE [rsi]
            jmp short .end

            .veriffirst:
            cmp BYTE [rdi], 0x0
            jz short .end
            sub bl, BYTE [rdi]
            jmp short .end

            .end:
            sub bl, cl
            movsx rax, bl
            ret