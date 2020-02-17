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
            ;xor dl, dl
            ;mov rax, rsi
;
            ;.start:
            ;cmp BYTE [rax], 0x0
            ;jz short .incr
            ;cmp BYTE [rdi], 0x0
            ;jz short .notfind
            ;mov dl, BYTE [rdi]
            ;cmp BYTE [rax], dl
            ;jz short .find
            ;inc rax
            ;jmp .start
;
            ;.incr:
            ;xor rax, rax
            ;mov rax, rsi
            ;inc rdi
            ;jmp short .start
;
            ;.end:
            ;sub rax, rdi
            ret